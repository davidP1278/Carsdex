# Carsdex
## Inhaltsverzeichnis
- [Carsdex](#carsdex)
  - [Inhaltsverzeichnis](#inhaltsverzeichnis)
  - [Projektbeschreibung](#projektbeschreibung)
  - [Ausgangslage](#ausgangslage)
  - [Vision](#vision)
  - [Funktionen](#funktionen)
    - [Posts erstellen](#posts-erstellen)
    - [Posts anzeigen](#posts-anzeigen)
    - [Posts sortieren](#posts-sortieren)
    - [Account funktionen](#account-funktionen)
  - [Kontakt](#kontakt)
  - [Weitere Dokus](#weitere-dokus)
  - [Glossar](#glossar)

## Projektbeschreibung
Carsdex ist eine Blazor-Webanwendung zur Verwaltung und Anzeige von Autofotos.
Das Projekt ermöglicht es, Fahrzeugbilder zu posten, zu durchsuchen und nach verschiedenen Kriterien wie Marken- und Modellnamen zu filtern. Zusätzlich werden Informationen wie Ort und Datum der Aufnahme angezeigt.

## Ausgangslage
Carsdex wird entwickelt, um meine Autofotos besser zu ordnen. Ich fotografiere gerne Autos. Diese Bilder sind momentan auf einem USB-Stick gespeichert, und es dauert oft lange, bis ich ein bestimmtes Auto, das ich einmal fotografiert habe, wiederfinde. Auf Carsdex können ich und andere interessierte Nutzer alle meine aufgenommenen Bilder ansehen. Ausserdem kann man nach Marken- und Modellnamen suchen und filtern. Zusätzlich sieht man, wann und wo die Fotos aufgenommen wurden.

## Vision
Am Ende soll es möglich sein, eigene Autofotos in das Produkt hochzuladen. Dabei sollen Datum und Ort automatisch aus den Bilddaten ausgelesen werden, sodass lediglich Marken- und Modellname manuell angegeben werden müssen. Zusätzlich sollen die Bilder nach verschiedenen Kriterien filter und durchsuchbar sein. Eine übersichtliche Navigation auf der linken Seite soll den schnellen Zugriff auf die Inhalte erleichtern.

## Funktionen
### Posts erstellen
Man kann verschiedene Posts von Autos erstellen und diese veröffentlichen. Dafür geht man auf der Hauptseite auf das Plus-Symbol unten links. Auf der Seite zum Erstellen eines Posts kann man eines von fünf verschiedenen Layouts auswählen und die Bilder in beliebiger Reihenfolge hinzufügen. Danach gibt man den Modell- und Markennamen, den Ort und das Datum an. Optional kann man weitere Bilder hinzufügen, die nicht direkt im Post sichtbar sind, sondern erst angezeigt werden, wenn man auf ein Bild klickt und die Bildergalerie öffnet.
### Posts anzeigen
Alle Posts werden auf der Hauptseite angezeigt, wobei der neuste Post zuoberst steht. Wenn man sich die Bilder genauer anschauen möchte, kann man direkt auf ein Bild klicken. Danach werden alle Bilder in einer Galerie angezeigt. Links werden ausserdem alle Modellnamen der nächsten Posts angezeigt, und rechts sieht man die Likes und Kommentare.
### Posts sortieren
Man kann Posts suchen und nach bestimmten Kriterien filtern. Die Posts können nach Marken- und Modellnamen gefiltert werden, sodass nur die gesuchten Posts angezeigt werden.
### Account funktionen
Wenn man möchte, kann man einen Account erstellen. Mit diesem Account kann man alle Posts kommentieren und liken. Ausserdem ist es möglich, Kommentare zu liken. Zusätzlich kann man über das Kontaktformular Fragen stellen und Feedback geben.

## Kontakt
E-Mail: david.provenzano@edu.gbssg.ch

## Weitere Dokus
- [Technische-Doku](Dokumentation/Technische-Doku.md)
- [Betriebshandbuch](Dokumentation/Betriebshandbuch.md)

## Glossar
| Begriff           | Bedeutung                                                                                                            |
| ----------------- | -------------------------------------------------------------------------------------------------------------------- |
| Post              | Ein Beitrag der Daten zum Auto enthält und die dazu gehörigen Bilder.                                                |
| posten            | Einen Post veröffentlichen, damit er für alle sichtbar ist.                                                          |
| Admin             | Ein Benutzer der rechte zum posten hat.                                                                              |
| Anonymer Benutzer | Ein Benutzer der nicht Regestriert ist.                                                                              |
| Markenname        | Der Markenname eines Autos (Bsp. Porsche)                                                                            |
| Modellname        | Der Modellname eines Autos (Bsp. 911 GT 3RS)                                                                         |
| Bildergalerie     | Eine Funktion, um Bilder eines Fahrzeugs in grösserer Darstellung anzuschauen.                                       |
| Startseite        | Die erste Seite, die beim Öffnen der Webseite angezeigt wird. Sie zeigt alle Beiträge an, sortiert von neu nach alt. |