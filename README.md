# Analiza Rynku Wtórnego Samochodów Marki Opel w Polsce (R)

W ramach 2 tygodniowego mini projektu na studiach miałem za zadanie przeanalizować dane zebrane z serwisu OtoMoto dotyczące samochodów marki Opel. Głównym celem analizy było sprawdzenie jak wypada województwo lubelskie na tle krajowym.

## Wstęp i Cel Projektu
W ramach 2 tygodniowego mini projektu na studiach miałem za zadanie przeanalizować dane zebrane z serwisu OtoMoto dotyczące samochodów marki Opel. Głównym celem analizy było sprawdzenie jak wypada województwo lubelskie na tle krajowym.

Analiza odpowiada na pytanie: *Czy opłaca się kupić Opla w wojewódzwie lubelskim*

---

## Kluczowe Odkrycia (The Punchline)

* **Różnica Cenowa:** Stwierdzono, że średnia cena Opli w woj. lubelskim jest niższa o [Wstaw wartość, np. 8-15%] w porównaniu do średniej krajowej.
* **Wpływ Skrzyni Biegów:** Przeanalizowano popularność skrzyń automatycznych vs. manualnych w regionach Polski.
* **Wnioski dla Kupujących:** Stworzono rekomendacje, w których rocznikach i klasach przebiegu różnica cen jest najbardziej zauważalna.

## Stos Technologiczny (Tech Stack)

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

## Jak Odtworzyć Projekt

1.  Sklonuj repozytorium: `git clone [adres Twojego repo]`
2.  Otwórz plik `Mini_Projekt.Rmd` w środowisku RStudio.
3.  Zainstaluj brakujące pakiety R (jeśli to konieczne, użyj komendy `install.packages()`).
4.  Użyj funkcji `Knit` w RStudio, aby wygenerować raport HTML.
