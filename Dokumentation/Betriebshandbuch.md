# Betriebshandbuch
## Inhaltsverzeichnis
- [Betriebshandbuch](#betriebshandbuch)
  - [Inhaltsverzeichnis](#inhaltsverzeichnis)
  - [Umgebung](#umgebung)
    - [Datenbank](#datenbank)
      - [Tabellen](#tabellen)
      - [Datenbankschema](#datenbankschema)
      - [Beziehungen zwischen den Tabellen](#beziehungen-zwischen-den-tabellen)
    - [Ordnerstruktur](#ordnerstruktur)
  - [Bedienung](#bedienung)
    - [Startseite](#startseite)
      - [Sidebar](#sidebar)
      - [Suchleiste \& Filter](#suchleiste--filter)
      - [Bildergalerie](#bildergalerie)
      - [Bearbeitungs Button](#bearbeitungs-button)
    - [Add Post](#add-post)
  - [Glossar](#glossar)

## Umgebung
### Datenbank
#### Tabellen 
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

#### Datenbankschema
Hier ist das Datenbankschema, das das Ganze visuell darstellt.
[Datenbankschema](Bilder/ER-Diagram.png)

#### Beziehungen zwischen den Tabellen
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

### Ordnerstruktur
```
Carsdex/  
├── carsdex/  
│   ├── Components/
│   │   ├── Account/  
│   │   │   ├── Pages/    
│   │   │   │   └── Manage/   
│   │   │   └── Shared/   
│   │   ├── Layout/   
│   │   └── Pages/   
│   └── Data/   
│       └── Migrations/   
├── Dokumentation/  
│   └── Bilder/   
└── Planung/  
    ├── Datenbank/
    │   └── Hier befindet sich das ERD-Diagramm
    └── Design/ 
        └── Hier sind die Mockups von Carsdex 
```

## Bedienung
Die Benutzeroberfläche ist in den folgenden Mockups dargestellt:[Mockup](../Planung/Design/mockups_figma.md)

### Startseite
#### Sidebar
In der Sidebar werden immer die ersten vier Modellnamen angezeigt. Durch Anklicken eines Modells wird automatisch zum entsprechenden Beitrag navigiert.

#### Suchleiste & Filter
In der Suchleiste kann nach bestimmten Marken- und Modellnamen gesucht werden. Zusätzlich lassen sich die Posts nach **Markenname**, **Modellname** und **Ort** filtern.

#### Bildergalerie
Ein Post kann maximal fünf Bilder anzeigen. Wenn man jedoch auf ein Bild klickt, öffnet sich eine Bildergalerie, in der alle hochgeladenen Bilder des Posts angezeigt werden. Diese Funktion steht nur bei Posts zur Verfügung, die mehr als fünf Bilder enthalten. In der Bildergalerie kann man mit den Pfeiltasten nach links und rechts navigieren, mit der esc Taste verlässt man die Bildergalerie wieder.

#### Bearbeitungs Button
Durch Klicken auf den Button kann man den Post bearbeiten oder löschen. Ausserdem lassen sich die Kommentare des Posts ebenfalls bearbeiten oder löschen. Wenn man fertig ist, kann man auf den „Speichern“-Button klicken, wodurch alle Änderungen übernommen werden.

### Add Post
Wenn man auf der AddPost-Seite ist (man gelangt durch Klicken auf den Plus-Button auf der Startseite auf diese Seite), kann man eines von fünf Layouts auswählen, in die man Bilder einfügen und frei anordnen kann. Zudem können alle Daten in die Felder auf der rechten Seite eingetragen werden, und bei Bedarf lassen sich weitere Bilder hinzufügen. Wenn man fertig ist, kann man den Post hochladen oder ihn, falls man sich umentscheidet, einfach löschen.

## Glossar
| Begriff          | Erklärung                                                                                                            |
| ---------------- | -------------------------------------------------------------------------------------------------------------------- |
| Post             | Ein Beitrag der Daten zum Auto enthält und die dazu gehörigen Bilder.                                                |
| Sidebar          | Seitliche Navigation, in der die ersten vier Modellnamen angezeigt werden.                                           |
| Bildergalerie    | Ansicht, in der alle Bilder eines Posts angezeigt und durchgeblättert werden können.                                 |
| AddPost Seite    | Seite zum Erstellen eines neuen Posts mit Bildern und Daten.                                                         |
| Startseite       | Die erste Seite, die beim Öffnen der Webseite angezeigt wird. Sie zeigt alle Beiträge an, sortiert von neu nach alt. |
| ASP.NET Identity | System zur Verwaltung von Benutzerkonten und Authentifizierung.                                                      |
| ER-Diagramm      | Grafische Darstellung der Datenbankstruktur und ihrer Beziehungen.                                                   |