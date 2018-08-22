# Analiza wyników ankiety za pomocą Microsoft Power BI

## Opis przypadku
Celem opisywanego przypadku jest analiza wyników ankiety dostarczonych przez klienta, której wynikiem będzie interaktywny raport, pozwalający odpowiedzieć na pytania:
1. Czy jest potrzeba przeprowadzenia projektu?
2. Kto jest jego odbiorcą?
3. Jakie ma preferencję (co do przedmiotu i formuły projektu)?
4. Jakie i jak duże są przeszkody przeszkadzające odbiorcy w uczestnictwie w projekcie?

Do analizy wykorzystamy dane zebrane poprzez [Formularz Google](https://www.google.com/intl/pl_pl/forms/about/), które zostały wyeksportowane do pliku *.xls. Dane zebrane przez ankietę zostały wstępnie przetworzone:
* odrzucenie niepoprawnych wpisów (wierszy/rekordów);
* ujednolicenie wyrażeń podawanych przez ankietowanych w pytaniach otwartych;
* zmiana kolumny z podanym mailem na kolumnę o typie Prawda/Fałsz, czy ankietowany  podał e-maila (za pomocą narzędzia Power Query -> Dodaj kolumnę warunkową -> dla wartości *null* przypisać *Fałsz* w przeciwnym razie *Prawda*).

Wstępnie przetworzone dane dostępne są w pliku **1a. Dane.xlsm** w arkuszu *Wyniki ankiety*.
## Założenia 
Podczas tworzenia tego przypadku przyjąłem następujące założenia:
* model musi reagować dynamicznie na zmiany w danych;
* dane muszą być przechowywane w kontenerze, który może zostać użyty w różnych narzędziach analitycznych;
* zastosowanie automatyzacji zadań trywialnych;
* obranie ścieżki wykonania nie najkrótszej  (choć jest wspomniane o możliwych działaniach), ale pokazującą wykorzystanie różnych technologii.
## Workflow

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
