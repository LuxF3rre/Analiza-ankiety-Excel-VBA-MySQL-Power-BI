# Analiza wyników ankiety za pomocą Microsoft Power BI

## Opis przypadku
Celem opisywanego przypadku jest analiza wyników ankiety dostarczonych przez klienta, której wynikiem będzie interaktywny raport, pozwalający odpowiedzieć na pytania:
1. Czy istnieje potrzeba przeprowadzenia projektu?
2. Kto jest jego odbiorcą, a kto early adopterem?
3. Jakie mają oni preferencję (co do przedmiotu i formuły projektu)?
4. Jakie i jak duże są potrzeby odbiorców w obszarze tworzenia drużyn?

Do analizy wykorzystamy dane zebrane poprzez [Formularz Google](https://www.google.com/intl/pl_pl/forms/about/), które zostały wyeksportowane do pliku *.xls. Dane zebrane przez ankietę zostały wstępnie przetworzone:
* odrzucenie niepoprawnych wpisów;
* ujednolicenie wyrażeń podawanych przez ankietowanych w pytaniach otwartych (przez wyrażenia regularne);
* zmiana kolumny z podanym adresem e-mail na kolumnę o typie Prawda/Fałsz *"Czy podał mail"* (za pomocą narzędzia Power Query -> Dodaj kolumnę warunkową -> dla wartości *null* przypisać *Fałsz* w przeciwnym razie *Prawda*).

Wstępnie przetworzone dane dostępne są w pliku **1a. Dane.xlsm** w arkuszu *Wyniki ankiety*.
## Założenia 
Podczas tworzenia tego przypadku przyjąłem następujące założenia:
* model musi dynamicznie reagować na zmiany w danych;
* dane muszą być przechowywane w kontenerze, który może zostać użyty w różnych narzędziach analitycznych;
* zastosowanie automatyzacji zadań trywialnych;
* obranie ścieżki wykonania nie najkrótszej (choć jest wspomniane o możliwych działaniach), ale pokazującej wykorzystanie różnych technologii;
* optymalizacja wykorzystania pamięci.
## Workflow
Zastosowano następujące kroki:
1. Import wyników ankiety do Excela.
2. Tworzenie tabel przy użyciu Power Query.
3. Dodanie wymaganych kolumn.
4. Zautomatyzowany przez VBA eksport tabel do *.csv.
5. Stworzenie bazy danych, tabel i widoków w serwerze MySQL.
6. Import plików danych z plików *.csv do odpowiednich tabel w bazie danych.
7. Import widoków z bazy danych do programu Power BI.
8. Korekta relacji w modelu Power BI.
9. Stworzenie raportów w Power BI.

## Schemat tablic w relacyjnej bazie danych

## Microsoft Excel
### Tworzenie tablic przy użyciu Power Query

### Automatyczny eksport tablic do *.csv za pomocą VBA

## Oracle MySQL
### Tworzenie tablic w bazie danych

### Import danych do bazy danych

## Microsoft Power BI
### Import danych i zmiana ustawień relacji

### Tworzenie raportów
