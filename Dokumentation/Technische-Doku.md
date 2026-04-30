# Technische Doku
## Inhaltsverzeichnis
- [Technische Doku](#technische-doku)
  - [Inhaltsverzeichnis](#inhaltsverzeichnis)
  - [Datenbank](#datenbank)
    - [Tabellen](#tabellen)
    - [Datenbankschema](#datenbankschema)
    - [Beziehungen zwischen den Tabellen](#beziehungen-zwischen-den-tabellen)
  - [Frontend](#frontend)
    - [Sidebar](#sidebar)
    - [Startseite](#startseite)
  - [Erweiterungen](#erweiterungen)
    - [Auslesen von Metadaten aus Bildern](#auslesen-von-metadaten-aus-bildern)
  - [Technologien](#technologien)
  - [ToDo](#todo)
  - [Glossar](#glossar)

## Datenbank
### Tabellen 
| Tabelle       | Beschreibung                                                           |
| ------------- | ---------------------------------------------------------------------- |
| `post`        | Enthält die Hauptinformationen eines Posts (Datum, Ort, Marke, Modell) |
| `picture`     | Speichert die URL der Bilder, die zu einem Post gehören                |
| `markenname`  | Enthält alle Automarken                                                |
| `modelname`   | Enthält alle Automodelle                                               |
| `comment`     | Speichert Kommentare zu Posts                                          |
| `like`        | Speichert Likes von Usern zu Posts oder Kommentaren                    |
| `aspnetusers` | Benutzerkonten (ASP.NET Identity)                                      |
| `contact`     | Nachrichten aus dem Kontaktformular                                    |

### Datenbankschema
Hier ist das Datenbankschema, das das Ganze visuell darstellt:
[Datenbankschema](Bilder/ER-Diagram.png)

### Beziehungen zwischen den Tabellen
**post <-> picture**
| Von     | Zu      | Beziehung | Beschreibung                                |
| ------- | ------- | --------- | ------------------------------------------- |
| post    | picture | 1 : n     | Ein Post kann ein oder mehrere Bilder haben |
| picture | post    | n : 1     | Jedes Bild gehört genau zu einem Post       |

**post <-> modelname**
| Von       | Zu        | Beziehung | Beschreibung                                    |
| --------- | --------- | --------- | ----------------------------------------------- |
| post      | modelname | 1 : 1     | Ein Post hat genau einen Modellnamen            |
| modelname | post      | 1 : n     | Ein Modellname kann in mehreren Posts vorkommen |

**post <-> markenname**
| Von        | Zu         | Beziehung | Beschreibung                                    |
| ---------- | ---------- | --------- | ----------------------------------------------- |
| post       | markenname | 1 : 1     | Ein Post hat genau einen Markennamen            |
| markenname | post       | 1 : n     | Ein Markenname kann in mehreren Posts vorkommen |

**post <-> like**
| Von  | Zu   | Beziehung | Beschreibung                                 |
| ---- | ---- | --------- | -------------------------------------------- |
| post | like | 1 : n     | Ein Post kann keinen bis mehrere Likes haben |

**post <-> comment**
| Von     | Zu      | Beziehung | Beschreibung                                      |
| ------- | ------- | --------- | ------------------------------------------------- |
| post    | comment | 1 : n     | Ein Post kann keinen bis mehrere Kommentare haben |
| comment | post    | n : 1     | Jeder Kommentar gehört zu genau einem Post        |

**like <-> aspnetusers**
| Von                | Zu   | Beziehung | Beschreibung                              |
| ------------------ | ---- | --------- | ----------------------------------------- |
| aspnetusers        | like | 1 : n     | Ein User kann mehrere Likes vergeben      |
| aspnetusers + post | like | 1 : 1     | Ein User kann einen Post nur einmal liken |

**aspnetusers <-> comment**
| Von         | Zu      | Beziehung | Beschreibung                               |
| ----------- | ------- | --------- | ------------------------------------------ |
| aspnetusers | comment | 1 : n     | Ein User kann mehrere Kommentare schreiben |

**aspnetusers <-> contact**
| Von         | Zu          | Beziehung | Beschreibung                                 |
| ----------- | ----------- | --------- | -------------------------------------------- |
| aspnetusers | contact     | 1 : n     | Ein User kann mehrere Kontaktanfragen senden |
| contact     | aspnetusers | n : 1     | Jede Anfrage gehört zu einem User            |

## Frontend
### Sidebar
Eine vertikale Seitenleiste listet die Fahrzeugmodelle der aktuell ausgewählten Marke auf. Der aktive Eintrag wird fett hervorgehoben.

### Startseite
Die Startseite verfügt über einen Infinite Scroll, sodass neue Posts automatisch nachgeladen werden.

## Erweiterungen
### Auslesen von Metadaten aus Bildern
Eine Erweiterung ist das man die Daten wie Ort und Datum aus dem erstem Hochgeladene Bild herauslesen kann, damit man es nicht selbst eintragen muss.

## Technologien
| Technologie                  | Verwendungszweck                                 |
| ---------------------------- | ------------------------------------------------ |
| Blazor (.NET 8)              | Für die Entwicklung der Webanwendung             |
| Microsoft SQL Server (MSSQL) | Für die Speicherung und Verwaltung von Daten     |
| Figma                        | Für die Planung und Gestaltung des UI/UX-Designs |
| MySQL Workbench              | Für die Erstellung des ERD-Diagramms             |

## ToDo
Alle im GitHub-Repository dokumentierten offenen Issues müssen noch gemacht werden.
Die aktuelle Übersicht der offenen Punkte ist hier zu finden: https://github.com/davidP1278/Carsdex/issues

## Glossar
| Begriff         | Erklärung                                                                                                            |
| --------------- | -------------------------------------------------------------------------------------------------------------------- |
| Post            | Ein Beitrag der Daten zum Auto enthält und die dazu gehörigen Bilder.                                                |
| Markenname      | Der Markenname eines Autos (Bsp. Porsche)                                                                            |
| Modellname      | Der Modellname eines Autos (Bsp. 911 GT 3RS)                                                                         |
| AspNetUsers     | Tabelle für Benutzerkonten (ASP.NET Identity).                                                                       |
| Sidebar         | Seitliche Navigation, in der die ersten vier Modellnamen angezeigt werden.                                           |
| Datenbankschema | Visuelle Darstellung der Datenbankstruktur (ER-Diagramm).                                                            |
| Startseite      | Die erste Seite, die beim Öffnen der Webseite angezeigt wird. Sie zeigt alle Beiträge an, sortiert von neu nach alt. |