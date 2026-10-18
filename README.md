# THE FLY

Generative Fliegensynthese und räumliche Schwarmbewegung in Max/MSP. Bis zu 50 unabhängige Fliegenstimmen bewegen sich auf aufgezeichneten Flugbahnen. Geschwindigkeit und Manöver beeinflussen Klang und Lautstärke; die räumliche Ausgabe erfolgt über vier Audiokanäle.

## Aktuelles Projekt öffnen

**Diese Datei in Max öffnen:**

[**Fliegen_Bahnen_Panner.maxproj**](20260926%20Ausbau_Fliegenschwarm/Fliegen_Bahnen_Panner/Fliegen_Bahnen_Panner.maxproj)

```text
20260926 Ausbau_Fliegenschwarm/
└── Fliegen_Bahnen_Panner/
    └── Fliegen_Bahnen_Panner.maxproj
```

Die Projektdatei verwendet **`Fliegenschwarm_Poly_Test.maxpat` als Hauptpatch**. Falls dessen Fenster nicht automatisch erscheint, diesen Patch im Max-Projektfenster öffnen. Das vollständige Repository herunterladen oder klonen und die Ordnerstruktur beibehalten; der Hauptpatch benötigt die zugehörigen Patches, Skripte und Daten.

## Funktionen

- Bis zu 50 Fliegen mit individuellen Flugbahnen, Tempi und Pegeln, Vierkanal-Panning und gemeinsamer Visualisierung.
- Bis zu vier Teilschwärme, Density, Formation, Orbit und Puls.
- Snake-Flugketten, Parallelflug, Fluchtreaktionen und Source-/Sink-Portale.
- Horizontale, vertikale und radiale Wellen als Einzelimpuls oder kontinuierliche Bewegung.
- **Collective Landing:** gemeinsame Landepunkte mit gestaffeltem Starten und Landen.
- **Flocking:** lokale Schwarmorganisation durch Nachbarschaften und Mindestabstände.
- **Flow:** gerichteter Raumtransport mit Uniform, Counter und Mirror.
- **Form-Morphing:** fließende Übergänge zwischen Kreis, Dreieck und Quadrat.

## Entwicklungsstand

Der aktuelle Forschungs- und Teststand enthält Änderungen bis **5. Oktober 2026**. Gegenüber dem Stand vom 29. September wurden insbesondere Collective Landing, Flocking, Flow und Form-Morphing ergänzt. Die Bedienung wurde in eigene Module gegliedert; Snake-Bahnverfolgung und Übergänge zwischen Bewegungszuständen wurden überarbeitet.

Die Funktionen sind im Code und im Hauptpatch angebunden. Eine abschließende Prüfung aller Kombinationen steht aus. Eine geführte Performance-Oberfläche und ein vollständiges Preset-System für die erweiterten Schwarmparameter sind noch offen.

Der ältere Projektstand bleibt im Ordner `20260925 Fliegen_Bahnen_Panner` erhalten. Für die aktuelle Entwicklung den oben verlinkten Projektstand verwenden.
