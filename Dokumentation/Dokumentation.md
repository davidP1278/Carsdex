# Carsdex
## Inhaltsverzeichnis
- Warum Carsdex
- Projektbeschreibung
  - Posts erstellen
  - Posts anzeigen
  - Posts sortieren
  - Account erstellen
  - Posts liken und kommentieren
  - Kontaktformular ausfüllen
- Projektzustand
  - Was gemacht ist
  - Was noch gemacht werden muss
- Diagramme
  - ERD (Datenbankschema)
  - UML (Klassendiagramm)
- Glossar
- Quellen

## Warum Carsdex
Carsdex wird entwickelt, um meine Autofotos besser zu ordnen. Ich fotografiere gerne Autos. Diese Bilder sind momentan auf einem USB-Stick gespeichert, und es dauert oft lange, bis ich ein bestimmtes Auto, das ich einmal fotografiert habe, wiederfinde. Auf Carsdex können ich und andere interessierte Nutzer alle meine aufgenommenen Bilder ansehen. Ausserdem kann man nach Marken- und Modellnamen suchen und filtern. Zusätzlich sieht man, wann und wo die Fotos aufgenommen wurden.

## Projektbeschreibung
Das Projekt ist eine Blazor-Webseite, auf der ich verschiedene Fotos von Autos posten kann. So können ich und andere User die Fotos nach verschiedenen Kriterien suchen und filtern. Dadurch lassen sich die Fotos schneller finden und anschauen. (Hier sind die [Desgins](../Planung/Design/mockups_figma.md))

### Posts erstellen
Man kann verschiedene Posts von Autos erstellen und diese veröffentlichen. Dafür geht man auf der Hauptseite auf das Plus-Symbol unten links. Auf der Seite zum Erstellen eines Posts kann man eines von fünf verschiedenen Layouts auswählen und die Bilder in beliebiger Reihenfolge hinzufügen. Danach gibt man den Modell- und Markennamen, den Ort und das Datum an. Optional kann man weitere Bilder hinzufügen, die nicht direkt im Post sichtbar sind, sondern erst angezeigt werden, wenn man auf ein Bild klickt und die Bildergalerie öffnet.

### Posts anzeigen
Alle Posts werden auf der Hauptseite angezeigt, wobei der neuste Post zuoberst steht. Wenn man sich die Bilder genauer anschauen möchte, kann man direkt auf ein Bild klicken. Danach werden alle Bilder in einer Galerie angezeigt. Links werden ausserdem alle Modellnamen der nächsten Posts angezeigt, und rechts sieht man die Likes und Kommentare.

### Posts sortieren
Man kann Posts suchen und nach bestimmten Kriterien filtern. Die Posts können nach Marken- und Modellnamen gefiltert werden, sodass nur die gesuchten Posts angezeigt werden.

### Account funktionen
Wenn man möchte, kann man einen Account erstellen. Mit diesem Account kann man alle Posts kommentieren und liken. Ausserdem ist es möglich, Kommentare zu liken. Zusätzlich kann man über das Kontaktformular Fragen stellen und Feedback geben.

## Projektzustand


### Was gemacht ist
### Was noch gemacht werden muss

## Diagramme
### ERD (Datenbankschema)
  <img src="Bilder/ER-Diagram.png" width="80%">

### UML (Klassendiagramm)
  <img src="Bilder/UML_Carsdex.png" width="80%">

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

## Quellen
Telerik, 08.01.2026, ImagePreview: https://www.telerik.com/blazor-ui/documentation/knowledge-base/upload-preview-image

Stackoverflow, 08.01.2026, RenderFragment: https://stackoverflow.com/questions/75757982/referencing-a-blazor-component-renderfragment-inline-rather-than-as-nested-child
