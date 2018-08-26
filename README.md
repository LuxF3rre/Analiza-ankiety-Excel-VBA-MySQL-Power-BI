# Analiza wyników ankiety za pomocą Microsoft Power BI
## Opis przypadku
Celem opisywanego przypadku jest analiza wyników ankiety dostarczonych przez klienta, której wynikiem będzie interaktywny raport, pozwalający odpowiedzieć na pytania:
1. Czy istnieje potrzeba przeprowadzenia projektu?
2. Kto jest jego odbiorcą, a kto early adopterem?
3. Jakie mają oni preferencję (co do przedmiotu i formuły projektu)?
4. Jakie i jak duże są potrzeby odbiorców w obszarze tworzenia drużyn?

Do analizy wykorzystamy dane zebrane poprzez [Formularz Google](https://www.google.com/intl/pl_pl/forms/about/), które zostały wyeksportowane do pliku *.xls. Dane zebrane przez ankietę zostały wstępnie przetworzone:
* odrzucenie niepoprawnych wpisów;
* ujednolicenie wyrażeń podawanych przez ankietowanych w pytaniach otwartych (za pomocą wyrażeń regularnych);
* zmiana kolumny z podanym adresem e-mail na kolumnę o typie Prawda/Fałsz *"Czy podał mail"* (za pomocą narzędzia Power Query -> Dodaj kolumnę warunkową -> dla wartości `null` przypisać `Fałsz` w przeciwnym razie `Prawda`).

Wstępnie przetworzone dane dostępne są w pliku [**1a. Dane.xlsm**](https://github.com/LuxF3rre/Data-Science-Analiza-ankiety-Excel-VBA-MySQL-Power-BI/blob/master/1a.%20Dane.xlsm) w arkuszu *Wyniki ankiety*.
## Założenia 
Podczas tworzenia tego przypadku przyjąłem następujące założenia:
* model musi dynamicznie reagować na zmiany w danych;
* dane muszą być przechowywane w kontenerze, który może zostać użyty w różnych narzędziach analitycznych;
* zastosowanie automatyzacji zadań trywialnych;
* obranie ścieżki wykonania nie najkrótszej (choć jest wspomniane o możliwych działaniach), ale pokazującej wykorzystanie różnych technologii;
* optymalizacja kodu.
## Workflow
Zastosowano następujące kroki:
1. Import wyników ankiety do Excela.
2. Tworzenie tabel przy użyciu Power Query.
3. Zautomatyzowany przez VBA eksport tabel do *.csv.
4. Stworzenie bazy danych, tabel i widoków w serwerze MySQL.
5. Import danych z plików *.csv do odpowiednich tabel w bazie danych.
6. Import widoków z bazy danych do programu Power BI.
7. Korekta relacji w modelu Power BI.
8. Stworzenie raportów w Power BI.
## Schemat tabel w relacyjnej bazie danych
![Schemat tabel w relacyjnej bazie danych](https://github.com/LuxF3rre/Data-Science-Analiza-ankiety-Excel-VBA-MySQL-Power-BI/blob/master/Pliki%20pomocnicze/schemat%20tabel.png)
## Microsoft Excel
### Tworzenie tabel przy użyciu Power Query
Używając narzędzia Power Query zostały stworzone i załadowane do oddzielnych arkuszy zapytania tworzące tabele:
* słownikowe - zainteresowanie_esport, zainteresowanie_turniej, druzyny, plec;
* normalne - gry_regularne, gry_turniejowe, wydzial, odpowiedzi;
* przechodnie - przech_odp_gry_regularne, przech_odp_gry_turniejowe, przech_odp_zainteresowanie_esport, przech_odp_zainteresowanie_turniej, przech_odp_druzyny.
  
W szczegółności wykorzystano funkcje:
* utwórz zapytanie;
* usuń kolumny;
* zmień nazwę kolumny;
* sortuj rosnąco;
* dodaj kolumnę indeksującą;
* dodaj kolumnę warunkową;
* podział przez ogranicznik (w każdym miejscu występowania, na wiersze, ogranicznik: `, `);
* usuń puste, usuń duplikaty;
* scal zapytania.

Dzięki zastosowaniu Power Query, utworzone tabele mogą zostać odświerzone przy zmianie danych w arkuszu *"Wyniki ankiety"*.

W celu przypisania odpowiedziom odpowiedniego `id_` z tabel słownikowych i normalnych do tabel przechodnich wykrzystano funkcję scal zapytania w edytorze Power Query.

Warto wspomnieć o sposobie przypisania odpowiedniego `id_odp` w tabelach przechodnich. Po stworzeniu zapytania i usunięciu niepotrzebnych kolumn:
1. dodana została kolumna indeksująca nazwana `id_odp` z indeksem odpowiadających odpowiedzi (kolejność wierszy odpowiada kolejności udzielanych odpowedzi);
2. odpowiednia kolumna została podzielona ogranicznikiem (w każdym miejscu występowania, na wiersze, ogranicznik `, `);
3. dodana została kolumna indeksująca nazwana `id_przech_odp_` z indeksem elementów tablicy przechodniej.
### Automatyczny eksport tabel do *.csv za pomocą VBA
W celu automatyzacji eksporu tabel napisany i uruchomiony został następujący skrypt VBA ([wersja ogólna eksportująca wszystkie arkusze do *.csv UTF-8](https://github.com/LuxF3rre/Handy-VBA-Scripts/blob/master/Excel/MassExportToCSV_UTF8.vb)). Miejscem docelowym eksportu jest folder zawierający skoroszyt.
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
### Tworzenie tabel w bazie danych

### Import danych do bazy danych

## Microsoft Power BI
### Import danych i zmiana ustawień relacji

### Tworzenie raportów
