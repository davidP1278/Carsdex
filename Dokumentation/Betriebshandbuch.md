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
  - [Bilderverzeichnis](#bilderverzeichnis)
  - [Tabellenverzeichnis](#tabellenverzeichnis)
  - [Glossar](#glossar)
  - [Quellen](#quellen)

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
| Von         | Zu      | Beziehung | Beschreibung                                             |
| ----------- | ------- | --------- | -------------------------------------------------------- |
| aspnetusers | comment | 1 : n     | Ein User kann mehrere Kommentare schreiben               |

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
│   ├── Data/   
│   │   └── Migrations/   
├── Dokumentation/  
│   └── Bilder/   
└── Planung/  
    ├── Datenbank/  
    └── Design/  
```
## Bedienung
## Bilderverzeichnis
## Tabellenverzeichnis
## Glossar
## Quellen