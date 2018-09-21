# Analiza wyników ankiety za pomocą Microsoft Power BI
## Opis przypadku
Celem opisywanego przypadku jest analiza wyników ankiety dostarczonych przez klienta, której wynikiem będzie interaktywny raport, pozwalający odpowiedzieć na pytania:
1. Czy istnieje potrzeba przeprowadzenia projektu?
2. Kto jest jego głównym uczestnikiem, a kto early adopterem?
3. Jakie mają oni preferencję (co do przedmiotu i formuły projektu)?
4. Jakie i jak duże są potrzeby odbiorców w obszarze tworzenia drużyn?

Do analizy wykorzystamy dane zebrane poprzez [Formularz Google](https://www.google.com/intl/pl_pl/forms/about/), które zostały wyeksportowane do pliku *.xls. Dane zebrane przez ankietę zostały wstępnie przetworzone:
* odrzucenie niepoprawnych wpisów;
* ujednolicenie wyrażeń podawanych przez ankietowanych w pytaniach otwartych (za pomocą wyrażeń regularnych; lepszym rozwiązaniem byłoby wykorzystanie [OpenRefine](http://openrefine.org/));
* zmiana kolumny z podanym adresem e-mail na kolumnę o typie Prawda/Fałsz *"Czy podał mail"* (za pomocą narzędzia Power Query -> Dodaj kolumnę warunkową -> dla wartości `null` przypisać `Fałsz` w przeciwnym razie `Prawda`).

Wstępnie przetworzone dane dostępne są w pliku [**1a. Dane.xlsm**](https://github.com/LuxF3rre/Data-Science-Analiza-ankiety-Excel-VBA-MySQL-Power-BI/blob/master/1a.%20Dane.xlsm) w arkuszu *Wyniki ankiety*.
## Założenia 
Podczas tworzenia tego przypadku przyjąłem następujące założenia:
* model musi dynamicznie reagować na zmiany w danych;
* dane muszą być przechowywane w kontenerze, który może zostać użyty w różnych narzędziach analitycznych;
* zastosowanie automatyzacji zadań trywialnych;
* obranie ścieżki wykonania nie najkrótszej (choć jest wspomniane o możliwych działaniach), ale pokazującej wykorzystanie różnych technologii;
* optymalizacja kodu.

Zakładamy, że grupa na której prowadzone były badania jest reprezentatywna, więc można na jej podstawie wyciągać wnioski na temat całej populacji.
## Workflow
Zastosowałem następujące kroki:
1. Import wyników ankiety do Excela.
2. Tworzenie tabel przy użyciu Power Query.
3. Zautomatyzowany eksport tabel do *.csv przez VBA.
4. Stworzenie bazy danych, tabel i widoków w serwerze MySQL.
5. Import danych z plików *.csv do odpowiednich tabel w bazie danych.
6. Import widoków z bazy danych do programu Power BI.
7. Korekta relacji w modelu Power BI.
8. Stworzenie raportów w Power BI.
## Schemat tabel w relacyjnej bazie danych
![Schemat tabel w relacyjnej bazie danych](https://github.com/LuxF3rre/Data-Science-Analiza-ankiety-Excel-VBA-MySQL-Power-BI/blob/master/Pliki%20pomocnicze/schemat%20tabel.png)
## Microsoft Excel
### Tworzenie tabel przy użyciu Power Query
Używając narzędzia Power Query, stworzyłem i załadowałem do oddzielnych arkuszy zapytania tworzące tabele:
* słownikowe - zainteresowanie_esport, zainteresowanie_turniej, druzyny, plec;
* normalne - gry_regularne, gry_turniejowe, wydzial, odpowiedzi;
* przechodnie - przech_odp_gry_regularne, przech_odp_gry_turniejowe, przech_odp_zainteresowanie_esport, przech_odp_zainteresowanie_turniej, przech_odp_druzyny.
  
W szczegółności wykorzystałem funkcje:
* utwórz zapytanie;
* usuń kolumny;
* zmień nazwę kolumny;
* sortuj rosnąco;
* dodaj kolumnę indeksującą;
* dodaj kolumnę warunkową;
* podział przez ogranicznik (w każdym miejscu występowania, na wiersze, ogranicznik: `, `);
* usuń puste, usuń duplikaty;
* scal zapytania.

Dzięki zastosowaniu Power Query utworzone tabele mogą zostać odświeżone przy zmianie danych w arkuszu *"Wyniki ankiety"*.

W celu przypisania odpowiedziom odpowiedniego `id_` z tabel słownikowych i normalnych do tabel przechodnich wykrzystałem funkcję *scal zapytania* w edytorze Power Query.

Warto wspomnieć o sposobie przypisania odpowiedniego `id_odp` w tabelach przechodnich. Po stworzeniu zapytania i usunięciu niepotrzebnych kolumn:
1. dodałem kolumnę indeksująca nazwana `id_odp` z indeksem odpowiadających odpowiedzi (kolejność wierszy odpowiada kolejności udzielanych odpowedzi);
2. odpowiednią kolumnę podzieliłem ogranicznikiem (w każdym miejscu występowania, na wiersze, ogranicznik `, `);
3. dodałem kolumnę indeksująca nazwana `id_przech_odp_` z indeksem elementów tablicy przechodniej.

Powyższe działania mogłyby zostać zastąpione poprzez zaimportowanie wstępnie obrobionych danych do modelu w programie Power BI, gdzie nastąpiłaby ich dalsza obróbka. Jednak w ten sposób przetworzone dane byłyby dostępne tylko dla programu Power BI.
### Automatyczny eksport tabel do *.csv za pomocą VBA
W przypadku wykorzystania dodatku [MySQL for Excel](https://www.mysql.com/why-mysql/windows/excel/) do exportu danych, krok ten się pomija.

W celu automatyzacji eksporu tabel napisałem i uruchomiłem następujący skrypt VBA ([wersja ogólna eksportująca wszystkie arkusze do *.csv UTF-8](https://github.com/LuxF3rre/Handy-VBA-Scripts/blob/master/Excel/MassExportToCSV_UTF8.vb)). Miejscem docelowym eksportu jest folder zawierający skoroszyt.
```vbnet
' Eksportuje wszystkie arkusze, oprócz arkusza "Wyniki ankiety" do plików *.csv z kodowaniem UTF-8.
' Uwaga: zapisuje plik przed eksportem, nadpisuje pliki.
' Poniższy skrypt jest zmodyfikowaną wersją skryptu opublikowanego przez Bena Strombecka na https://stackoverflow.com/questions/10551353/saving-excel-worksheet-to-csv-files-with-filenameworksheet-name-using-vb
Sub eksportDoCSVUTF8()
    Dim sciezkaZapisu As String
    Dim nazwaPliku As String
    Dim formatPliku As Byte
    
    nazwaPliku = ThisWorkbook.FullName
    formatPliku = ThisWorkbook.FileFormat
    
    With Application
        .ScreenUpdating = False
        .DisplayAlerts = False
    End With
    
    ThisWorkbook.SaveAs Filename:=nazwaPliku, FileFormat:=formatPliku
    sciezkaZapisu = ActiveWorkbook.Path & "\"
        
    For Each arkusz In ThisWorkbook.Worksheets
        If arkusz.Name <> "Wyniki ankiety" Then
            Sheets(arkusz.Name).Copy
            ActiveWorkbook.SaveAs Filename:=sciezkaZapisu & "1b. " & arkusz.Name & ".csv", FileFormat:=xlCSVUTF8
            ActiveWorkbook.Close savechanges:=False
            ThisWorkbook.Activate
        End If
    Next
    
    ThisWorkbook.SaveAs Filename:=nazwaPliku, FileFormat:=formatPliku
    
    With Application
        .ScreenUpdating = True
        .DisplayAlerts = True
    End With
End Sub
```
## Oracle MySQL
### Tworzenie bazy danych, tabel i widoków
W celu stworzenia bazy danych, tabel i widoków uruchomiłem skrypt [**2a. tworzenie tabel.sql**](https://github.com/LuxF3rre/Data-Science-Analiza-ankiety-Excel-VBA-MySQL-Power-BI/blob/master/2a.%20tworzenie%20tabel.sql).

Skrypt:
* tworzy bazę danych, jeżeli nie istnieje: wyniki_ankiety;
* stosuje kodowanie: UTF-8;
* tworzy tabele, jeżeli nie istnieją:
    * *słownikowe*: zainteresowanie_esport, zainteresowanie_turniej, druzyny, plec;
    * *normalne*: gry_regularne, gry_turniejowe, wydzial, odpowiedzi;
    * *przechodnie*: przech_odp_gry_regularne, przech_odp_gry_turniejowe, przech_odp_zainteresowanie_esport, przech_odp_zainteresowanie_turniej, przech_odp_druzyny;
* tworzy lub zmienia widoki: Gry regularne, Gry turniejowe, Zainteresowanie e-sportem, Zainteresowanie turniejem, Stan drużyn, Odpowiedzi ankietowanych.

Krok ten może być zastąpiony i równocześnie wykonany z krokiem importu danych przy wykorzystaniu dodatku [MySQL for Excel](https://www.mysql.com/why-mysql/windows/excel/) (utworzenie bazy danych i tabel, **bez widoków**). Niestety, kreator importu nie pozwala na precyzyjne określenie typów kolumn (strata na wydajności) ani kluczy pochodnych. Analogicznie sytuacja wygląda przy tworzeniu tabel podczas importu z wykorzystaniem [Table Data Import Wizard](https://dev.mysql.com/doc/workbench/en/wb-admin-export-import-table.html) programu MySQL Workbench.

Typy kolumn zostały tak dobrane, aby umożliwić swobodne importowanie kolejnych danych z uwzględnieniem wydajności.
### Import danych do bazy danych
Kolejne dane z plików *.csv zostały zaimportowane do odpowiednich tabel za pomocą narzędzia [Table Data Import Wizard](https://dev.mysql.com/doc/workbench/en/wb-admin-export-import-table.html) programu MySQL Workbench. Import ten mógłby zostać wykonany również bezpośrednio z programu Excel przy użyciu dodatku [MySQL for Excel](https://www.mysql.com/why-mysql/windows/excel/) lub np. narzędzia [mysqlimport](https://dev.mysql.com/doc/refman/8.0/en/mysqlimport.html) z wiersza poleceń.

Pliki *.csv mogłoby również zostać zaimportowane bezpośrednio do programu Power BI.
## Microsoft Power BI
### Import danych i zmiana ustawień relacji
Do programu [Power BI](https://powerbi.microsoft.com/en-us/) importujemy **widoki** (import tablic stwarza problemy: uzyskujemy 13 zamiast 6 tabel; nazwy kolumn są mało intuicyjne; trzeba uwzględniać występowanie tabel przechodnich przy tworzeniu wykresów; potencjalny problem z integralnością modelu w Power BI przy zmianie struktury bazy MySQL) z bazy MySQL.

Power BI automatycznie wykrywa występujące relacje (przez wspólną kolumnę `ID`). Zmieniłem **kierunek filtrowania krzyżowego** na wartość `Oba` we wszystkich relacjach. Umożliwia to filtrowanie np. kolumny płeć przez określony stan drużyn.
### Tworzenie raportów
Raporty można podzielić na kategorię:
* dotyczące wszystkich osób z próbki populacji;
* dotyczące early adopterów;
* dotyczące osób, które zdeklarowały się na uczestnictwo.

Każda kategoria zawiera dwa raporty, które składają się z wizualizacji:
* demografia, zainteresowanie e-sportem i turniejem:
    * podział płci;
    * czy weźmie udział;
    * czy zostawił adres e-mail;
    * struktura wiekowa;
    * zainteresowania e-sportem;
    * zainteresowanie turniejem;
* gry i drużyny:
    * struktura gier regularnych;
    * struktura gier turniejowych;
    * stan drużyn.
  
Do każdego raportu został dołączony zestaw kontrolek do nakładania filtrów na stronę.
## Wnioski z raportów
### Czy istnieje potrzeba przeprowadzenia projektu?
**Tak**, prawie 70% ankietowanych zdeklarowało się na udziału w projekcie.
### Kto jest jego odbiorcą, a kto early adopterem?
Podział na głównych uczestników i early adopterów jest następujący: uczestnicy zdeklarowali się na udziału w turnieju, ale nie zostawili adresu e-mail, a early adopterzy zrobili obie te rzeczy.

Główny uczestnik (% populacji; grupa rozłączna z early adopterami) to:
* mężczyzna;
* w wieku 19-22 lat (są one na 1-3 roku studiów I stopnia<sup>1</sup>);
* studiuje na wydziale Matematyki, Informatyki i Mechaniki lub Zarządzania.

Early adopter (% populacji) to:
* mężczyzna;
* wiek 20-22 lat (są one na 1-3 roku studiów I stopnia<sup>1</sup>);
* studiuje na wydziale Matematyki, Informatyki i Mechaniki, Zarządzania lub Nauk Ekonomicznych.

Ze względu na możliwe inne potrzeby (w tym sposób i środek komunikacji) oraz oczekiwania można wydzielić niszę dla kobiet:
* uczestnik (% populacji grupa rozłączna z early adopterami):
    * w wiek 20-22 lat (są one na 1-3 roku studiów I stopnia<sup>1</sup>);
    * studiuje na wydziale Psychologi lub Zarządzania;
* early adopter (% populacji):
    * w wieku 19-21 lat (są one na 1-3 roku studiów I stopnia<sup>1</sup>);
    * nie ma wyraźnej przynależności do wydziału.

#### Uwagi
1. Zakładając, że osoby te udały się na studia od razu po maturze po szkole średniej, a ich edukacja przebiegała zgodnie z oczekiwaniami (szkoła podstawowa -> gimnazium -> liceum / technikum).

### Jakie mają oni preferencję (co do przedmiotu i formuły projektu)?

### Jakie i jak duże są potrzeby odbiorców w obszarze tworzenia drużyn?

## Raport doświadczeń