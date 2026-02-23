# Datenbank Dokumentation (Geplant)
Diese Dokumentation beschreibt die geplante Datenbank für das Projekt **Carsdex**. Die Datenbank befindet sich aktuell noch in der Planungsphase und ist teilweise noch nicht implementiert. Sie dient als Grundlage für die weitere Entwicklung des Backends.

## Allgemeines
- Datenbank: Microsoft SQL Server (MSSQL)
- Backend: ASP.NET Core
- Frontend: Blazor

## Datenbank-Übersicht (MSSQL)
## Tabellen
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

## Datenbankschema
Hier ist das Datenbankschema, das das Ganze visuell darstellt.
[Datenbankschema](Bilder/ER-Diagram.png)

## Beziehungen zwischen den Tabellen
### Post <-> Bilder
| Von     | Zu      | Beziehung | Beschreibung                                |
| ------- | ------- | --------- | ------------------------------------------- |
| post    | picture | 1 : n     | Ein Post kann ein oder mehrere Bilder haben |
| picture | post    | n : 1     | Jedes Bild gehört genau zu einem Post       |

### Post <-> Markenname
| Von        | Zu         | Beziehung | Beschreibung                                |
| ---------- | ---------- | --------- | ------------------------------------------- |
| post       | markenname | 1 : 1     | Ein Post hat genau einen Markennamen        |
| markenname | post       | 1 : n     | Eine Marke kann in mehreren Posts vorkommen |

### Post <-> Modellname
| Von       | Zu        | Beziehung | Beschreibung                                |
| --------- | --------- | --------- | ------------------------------------------- |
| post      | modelname | 1 : 1     | Ein Post hat genau einen Modellnamen        |
| modelname | post      | 1 : n     | Ein Modell kann in mehreren Posts vorkommen |

### Post <-> Likes
| Von                | Zu   | Beziehung | Beschreibung                                 |
| ------------------ | ---- | --------- | -------------------------------------------- |
| post               | like | 1 : n     | Ein Post kann keinen bis mehrere Likes haben |
| aspnetusers        | like | 1 : n     | Ein User kann mehrere Likes vergeben         |
| aspnetusers + post | like | 1 : 1     | Ein User kann einen Post nur einmal liken    |

### Post <-> Kommentare
| Von         | Zu      | Beziehung | Beschreibung                                      |
| ----------- | ------- | --------- | ------------------------------------------------- |
| post        | comment | 1 : n     | Ein Post kann keinen bis mehrere Kommentare haben |
| aspnetusers | comment | 1 : n     | Ein User kann mehrere Kommentare schreiben        |

### User <-> Kommentare
| Von         | Zu      | Beziehung | Beschreibung                                             |
| ----------- | ------- | --------- | -------------------------------------------------------- |
| aspnetusers | comment | 1 : n     | Ein User kann mehrere Kommentare unter einem Post machen |
| comment     | post    | n : 1     | Jeder Kommentar gehört zu genau einem Post               |

### User <-> Kontaktformular
| Von         | Zu          | Beziehung | Beschreibung                                 |
| ----------- | ----------- | --------- | -------------------------------------------- |
| aspnetusers | contact     | 1 : n     | Ein User kann mehrere Kontaktanfragen senden |
| contact     | aspnetusers | n : 1     | Jede Anfrage gehört zu einem User            |