# Betriebshandbuch
## Inhaltsverzeichnis
- [Betriebshandbuch](#betriebshandbuch)
  - [Inhaltsverzeichnis](#inhaltsverzeichnis)
  - [Ordnerstruktur](#ordnerstruktur)
  - [Bedienung](#bedienung)
    - [Startseite](#startseite)
      - [Sidebar](#sidebar)
      - [Suchleiste \& Filter](#suchleiste--filter)
      - [Bildergalerie](#bildergalerie)
      - [Bearbeitungs Button](#bearbeitungs-button)
    - [Add Post](#add-post)
  - [Setup](#setup)
  - [Glossar](#glossar)

## Ordnerstruktur
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
Die Benutzeroberfläche ist in den folgenden Mockups dargestellt: [Mockup](../Planung/Design/mockups_figma.md)

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

## Setup
Um die Blazor-Webanwendung lokal einzurichten:
```bash
git clone https://github.com/davidP1278/Carsdex
cd Carsdex
```
Anwendung builden und starten
```bash
dotnet restore
dotnet build
dotnet run
```

## Glossar
| Begriff       | Erklärung                                                                                                            |
| ------------- | -------------------------------------------------------------------------------------------------------------------- |
| Post          | Ein Beitrag der Daten zum Auto enthält und die dazu gehörigen Bilder.                                                |
| Sidebar       | Seitliche Navigation, in der die ersten vier Modellnamen angezeigt werden.                                           |
| Bildergalerie | Ansicht, in der alle Bilder eines Posts angezeigt und durchgeblättert werden können.                                 |
| AddPost Seite | Seite zum Erstellen eines neuen Posts mit Bildern und Daten.                                                         |
| Startseite    | Die erste Seite, die beim Öffnen der Webseite angezeigt wird. Sie zeigt alle Beiträge an, sortiert von neu nach alt. |