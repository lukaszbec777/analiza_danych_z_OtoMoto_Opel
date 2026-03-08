# Analiza Rynku Wtórnego Samochodów Marki Opel w Polsce (R)

W ramach 2 tygodniowego mini projektu na studiach miałem za zadanie przeanalizować dane zebrane z serwisu OtoMoto dotyczące samochodów marki Opel. Głównym celem analizy było sprawdzenie jak wypada województwo lubelskie na tle krajowym.

## Wstęp i Cel Projektu
W ramach 2 tygodniowego mini projektu na studiach miałem za zadanie przeanalizować dane zebrane z serwisu OtoMoto dotyczące samochodów marki Opel. Głównym celem analizy było sprawdzenie jak wypada województwo lubelskie na tle krajowym.

Analiza odpowiada na pytanie: *Czy opłaca się kupić Opla w wojewódzwie lubelskim*

---

## Kluczowe Odkrycia

* **Różnica Cenowa:** Stwierdzono, że średnia cena Opli w woj. lubelskim jest jedną z najniższych w kraju
* **Wpływ Skrzyni Biegów:** Przeanalizowano popularność skrzyń automatycznych vs. manualnych w regionach Polski.

## Tech Stack

| Kategoria | Narzędzia / Pakiety | Cel Użycia |
| :--- | :--- | :--- |
| **Język** | R | Podstawowy język analizy i wizualizacji. |
| **Manipulacja Danymi** | `dplyr`, `tidyr` (Tidyverse) | Czyszczenie i transformacja danych. |
| **Wizualizacja** | `ggplot2`, `highcharter`, `plotly` | Generowanie statycznych i interaktywnych wykresów. |
| **Analiza Przestrzenna** | `sf`, `scatterpie` | Tworzenie i analiza map województw. |
| **Raportowanie** | RMarkdown | Generowanie raportu końcowego (HTML). |

## Struktura Repozytorium

* `Mini_Projekt.Rmd`: Pełny kod źródłowy analizy i raportu.
* `DataFrame_OtoMoto.csv`: Zbiór danych użyty do analizy.
* `Mini_Projekt.html`: Wygenerowany i gotowy do podglądu raport końcowy.
* `OTOMOTO_SCRAP.R`: Skrypt do ściągniacia danych z strony OtoMoto

## Jak Odtworzyć Projekt

1.  Sklonuj repozytorium: `git clone [adres Twojego repo]`
2.  Otwórz plik `Mini_Projekt.Rmd` w środowisku RStudio.
3.  Zainstaluj brakujące pakiety R (jeśli to konieczne, użyj komendy `install.packages()`).
