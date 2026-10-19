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

[Zur Bedienungsanleitung](#bedienungsanleitung) · [PDF herunterladen](docs/THE_FLY_Bedienungsanleitung.pdf)

## Funktionen

- Bis zu 50 Fliegen mit individuellen Flugbahnen, Tempi und Pegeln, Vierkanal-Panning und gemeinsamer Visualisierung.
- Bis zu vier Teilschwärme, Density, Formation, Orbit und Puls.
- Snake-Flugketten, Parallelflug, Fluchtreaktionen und Source-/Sink-Portale.
- Horizontale, vertikale und radiale Wellen als Einzelimpuls oder kontinuierliche Bewegung.
- **Collective Landing:** gemeinsame Landepunkte mit gestaffeltem Starten und Landen.
- **Flocking:** lokale Schwarmorganisation durch Nachbarschaften und Mindestabstände.
- **Flow:** gerichteter Raumtransport mit Uniform, Counter und Mirror.
- **Form-Morphing:** fließende Übergänge zwischen Kreis, Dreieck und Quadrat.

## Bedienungsanleitung

[Bedienungsanleitung als PDF herunterladen](docs/THE_FLY_Bedienungsanleitung.pdf)

Stand: 19. Oktober 2026. Beschreibt die aktuelle Bedienoberfläche und die im lokalen Projekt hinterlegten Bewegungsregeln. Die Kombinationen sind damit dokumentiert; eine vollständige praktische Prüfung aller Kombinationen ist noch offen.

### 1. Einstieg und Grundprinzip

Jede Fliege besitzt eine eigene Flugbahn, Wiedergabegeschwindigkeit, Position und Klangerzeugung. Das Interface verbindet drei Ebenen:

**Flugbahndaten → Schwarmbewegung und Effekte → räumliche Klangverteilung.**

Die aufgezeichneten Flüge liefern die Grundbewegung. Formation und Bewegungsmodi verändern die Positionen. Diese steuern das Panning; Bewegung und Manöver beeinflussen außerdem den Klang. Die aus Messungen stammenden Bahnen und die im Projekt erzeugte Schwarmorganisation sind unterschiedliche Ebenen.

**Projekt öffnen:** `20260926 Ausbau_Fliegenschwarm/Fliegen_Bahnen_Panner/Fliegen_Bahnen_Panner.maxproj`. Der Hauptpatch heißt `Fliegenschwarm_Poly_Test.maxpat`. Das vollständige Projekt mit seiner Ordnerstruktur verwenden.

**Erster Durchlauf:**

1. Den Ausgangspegel zunächst niedrig einstellen und die Audioausgabe in Max einschalten.
2. Target/Voice und Schwarmadresse auf 0 setzen.
3. Snake, Collective Landing und Dauerwelle ausschalten; Portal auf 0 stellen. Flow-Stärke, Flocking-Stärke, Formation, Dichte, Angleichung, Umlauftempo und Pulstempo auf 0 setzen.
4. 20 aktive Fliegen und davon 20 in Bewegung einstellen, dann start drücken.
5. Formation langsam erhöhen. Mit Dichte 0 bleibt die Form gut erkennbar. Danach vorsichtig Dichte und Orbit hinzufügen.

**Anzahl aktiver Fliegen:** Schaltet bis zu 50 Stimmen ein. Bei 0 bleibt die Anzeige leer. **Davon in Bewegung:** Bestimmt, wie viele der aktiven Stimmen ihre Flugbahn abspielen. Eine stehende Fliege ist dadurch nicht automatisch stumm. **start / stop:** Startet beziehungsweise pausiert die Flugbahnwiedergabe; stop ist kein allgemeiner Audio-Aus-Schalter.

### 2. Flugbahnen, Tempo und Adressierung

| Bedienelement | Funktion |
|---|---|
| Tempo | Abspielgeschwindigkeit der Flugbahnen. 1 = normales Wiedergabetempo, 0,5 = halb so schnell, 2 = doppelt so schnell. Eigenständige Effekte haben zusätzliche Temporegler. |
| Tempomin / Tempomax | Grenzen für individuelle Zufallstempi. Erst randomizetempo verteilt die Werte auf die aktiven Fliegen. |
| Einzelflug | Spielt eine ausgewählte Flugbahn pro Stimme. |
| Bereich | Spielt eine Folge von Flugbahnen innerhalb eines begrenzten Bereichs. |
| Alle | Verwendet die gesamte Flugbahnsammlung. |
| Range/Bereich | Länge der Bereiche, die randomizeflights im Bereichsmodus zuweist. |
| randomizeflights | Verteilt im Einzelflugmodus einzelne Flüge und im Bereichsmodus unterschiedliche Bereiche. Im Modus Alle wird darüber keine neue Auswahl verteilt. |
| Target/Voice | 0 adressiert alle aktiven Stimmen; eine positive Nummer adressiert die betreffende Einzelstimme. |
| Gain | Pegelfaktor für die adressierten Stimmen. 1 entspricht unverändertem Pegel. |
| randomizegain | Verteilt individuelle Pegel zwischen den beiden daneben eingestellten Grenzen. |

**Zwei Adressierungen:** Target/Voice wählt Einzelstimmen für gewöhnliche Stimmenbefehle. Schwarmadresse wählt eine Gruppe für gruppenbezogene Bewegungsregler. Die beiden Felder sind keine allgemeine, gemeinsame Auswahl für sämtliche Regler. Tempo folgt bei Target/Voice 0 einer ausgewählten Schwarmadresse; die Zufallsverteilungen für Tempo, Gain und Flugbahnen erfassen alle aktiven Stimmen.

### 3. Formation, Teilschwärme und Orbit

| Bedienelement | Funktion |
|---|---|
| Form: 0 Kreis, 50 Dreieck, 100 Quadrat | Bestimmt die Geometrie. Zwischenwerte verwandeln die Formen ineinander. |
| Formation | Mischt von individuellen Flugpositionen bei 0 zu geordneten Formationsplätzen bei 100. |
| Dichte | Zieht die Positionen zum Führungstier des jeweiligen Teilschwarms zusammen. 0 lässt die volle Ausdehnung; 100 führt die Positionen am Führungspunkt zusammen. |
| Teilschwärme | Verteilt die Stimmen auf ein bis vier Gruppen. Bei zwei Gruppen gehören beispielsweise 1, 3, 5 usw. zur ersten und 2, 4, 6 usw. zur zweiten Gruppe. |
| Schwarmadresse | 0 = alle Gruppen; 1 bis 4 = jeweilige Gruppe für gruppenbezogene Parameter. |
| Umlauftempo (±) | Lässt die Formationsringe umlaufen. Betrag = Geschwindigkeit, Vorzeichen = Grundrichtung. |
| Drehrichtung (0–2) | 0: Ringe gleichsinnig. 1: abwechselnd gegensinnig. 2: Ringgruppen der inneren und äußeren Hälfte gegensinnig. |
| Tempo-Streuung | Erzeugt variable Geschwindigkeitsunterschiede zwischen den Ringen. |
| reset im ORBIT-Feld | Setzt die Orbit-Parameter zurück. Kein allgemeiner Projekt-Reset. |

**Wichtige Wechselwirkung:** Formation 100 und Dichte 92 ergeben eine stark zusammengedrückte Formation: Ihre Ausdehnung beträgt nur ungefähr 8 % gegenüber Dichte 0. Bei Dichte 100 ist die Form kaum noch erkennbar. Orbit wird bei ausgeprägter Formation und ausreichend großer Ausdehnung am deutlichsten sichtbar.

**PARALLELFLUG / Angleichung:** Gleicht die Bewegung an das Führungstier an und erhält dabei versetzte Positionen. 0 lässt die unabhängigen Bewegungen bestehen; hohe Werte erzeugen gemeinsame Bewegung.

**FLUCHTREAKTION:** escape löst ein kurzes, individuell gestaffeltes Auseinanderstieben aus. Fluchtstärke bestimmt die Auslenkung; Rückkehrzeit bestimmt den zeitlichen Rahmen der Rückkehr. Die tatsächlichen Einzelreaktionen variieren.

### 4. Welle, Snake und radiale Pulsbewegung

**WELLE:** Eine wandernde Auslenkung wird über die Fliegenpositionen gelegt.

| Bedienelement | Funktion |
|---|---|
| Impuls hinzufügen | Erzeugt ein einzelnes wanderndes Wellenpaket. |
| Dauerwelle an/aus | Aktiviert beziehungsweise beendet die fortlaufende Welle. Bereits ausgelöste Einzelimpulse können noch auslaufen. |
| Ausbreitungsrichtung | Horizontal, vertikal oder radial. |
| Bewegung zur Welle | Transversal = quer zur Ausbreitung; longitudinal = entlang der Ausbreitung. Bei radialer Ausbreitung bedeutet das tangential beziehungsweise nach innen und außen. |
| Auslenkung | Stärke der Positionsänderung. 0 bewirkt keine Auslenkung. |
| Wellenabstand | Räumlicher Abstand der Wellenberge. |
| Tempo | Geschwindigkeit der Ausbreitung in Feldbreiten pro Sekunde. |
| Paketbreite | Räumliche Breite einzelner Impulse; für die Dauerwelle ohne Bedeutung. |

**SNAKE / FLUGKETTE:** Die Tiere folgen hintereinander der zurückgelegten Spur ihres Führungstiers. Kettenabstand verändert die Abstände entlang der Spur. Deviation lockert die genaue Spurverfolgung auf. Snake übernimmt die Positionen und überdeckt dadurch die normale Formation weitgehend. Im normalen Snake-Betrieb ohne Collective Landing wird die Welle unterdrückt.

**RADIALE PULSBEWEGUNG:** Verändert die Ausdehnung um den Führungspunkt, ähnlich einem Atmen des Schwarms.

- Innerer und äußerer Radius legen die Grenzen der relativen Ausdehnung fest. Es handelt sich um Skalierungen um den Führungspunkt, nicht um Lautsprecherabstände in Metern.
- Pulstempo bestimmt die Geschwindigkeit. Bei 0 ist die Pulsbewegung deaktiviert.
- Phasenversatz lässt die einzelnen Fliegen zeitlich versetzt pulsieren.
- Tempo-Abweichung gibt ihnen unterschiedliche Pulsfrequenzen.

**Zum Ausprobieren:** Erst eine sichtbare Formation mit niedriger Dichte herstellen. Dann den äußeren Radius auf 100, den inneren auf 40 und Pulstempo über 0 setzen. Phasenversatz und Tempo-Abweichung zunächst bei 0 lassen, um den gemeinsamen Puls zu erkennen.

### 5. Flow, Flocking, Landing und Portal

**FLOW / Parallele Ströme** transportiert die Anordnung durch das Feld. Stärke 0 deaktiviert den Einfluss. Uniform erzeugt einen gemeinsamen gerichteten Strom, Counter gegensinnige Ströme in Schichten und Mirror gespiegelte Bewegungsanordnungen. Richtung/Mirror-Achse bestimmt die Richtung beziehungsweise Spiegelachse. Flow-Tempo steuert die Transportgeschwindigkeit; laut Oberflächenbeschriftung entspricht 1 etwa 0,2 Feld/s. Counter-Schichten bestimmt die Schichtanzahl im Counter-Modus, Mirror Center die Lage der Spiegelachse und Parallel-Offset den Versatz in Uniform/Counter.

**FLOCKING / lokale Nachbarschaften** organisiert die Bewegung anhand anderer Fliegen. Stärke 0 deaktiviert den Einfluss. Nachbarn/Organisation bestimmt die Zahl berücksichtigter Nachbarn und die Kopplung. Mindestabstand/Ausdehnung verstärkt den Abstand zwischen nahen Tieren. Formation gibt geometrische Plätze vor; Flocking erzeugt Ordnung durch lokale Beziehungen.

**COLLECTIVE LANDING** organisiert wiederkehrende Reisen zwischen gemeinsamen Landepunkten. Landepunkte bestimmt die Anzahl der Zielorte, Zyklusdauer den zeitlichen Rahmen. Startfenster verteilt Abflugzeiten, Landefenster verteilt Ankunftszeiten. Bei 0 entfällt die jeweilige zeitliche Streuung. Nächster Zyklus stößt einen neuen Zyklus mit neuen Zielen an. Noch reisende Fliegen können ihre aktuelle Reise zunächst beenden.

**Gemeinsamer Regler:** Die Krümmung der Landing-Anflüge verwendet Bahnabweichung im Portalbereich.

**PORTAL / EIN-/AUSFLUG:** −1 führt die Fliegen ins Portal hinein, 0 deaktiviert den Modus, 1 lässt sie vom Portal wegfliegen. Portal X/Y setzt die Position im normierten Feld von 0 bis 1; das Portal kann auch im Monitor verschoben werden. Strahlrichtung bestimmt die zentrale Richtung, Öffnungswinkel deren Auffächerung, Flugtempo die Geschwindigkeit und Bahnabweichung die organische Abweichung von geraden Wegen.

### 6. Zusammenspiel, Audio und Fehlersuche

**Welche Bewegung setzt sich durch?** Die Berechnung erfolgt in Stufen. Ein Reglerwert kann gespeichert bleiben, während ein späterer Modus seine sichtbare Wirkung überdeckt.

| Kombination | Verhalten |
|---|---|
| Formation + Dichte | Dichte verkleinert die Ausdehnung bis zum Führungspunkt. |
| Formation + Orbit + Puls | Formationsplätze können umlaufen und zugleich radial pulsieren. |
| Snake | Übernimmt die Positionen über die Spurverfolgung; Flocking und Flow werden zurückgenommen. |
| Portal | Übernimmt die Ein-/Ausflugbewegung; Flow wird zurückgenommen. |
| Collective Landing | Übernimmt die zuvor berechneten Hauptbewegungen; Flocking und Flow werden zurückgenommen. |
| Welle | Wird nach den übrigen Schritten hinzugefügt. Im normalen Snake-Betrieb ohne Landing wird sie unterdrückt. |

**Monitor und Audio:** Punkte zeigen die Fliegenpositionen. Die blauen Flächen zeigen die Einflussbereiche des Pannings. Die Kanalreihenfolge ist 1 FL (vorne links), 2 FR (vorne rechts), 3 RR (hinten rechts), 4 RL (hinten links). Nodes Range verändert die Größe und Überlappung dieser Bereiche. smooth panning glättet die Lautsprecherpegel in Millisekunden; 30 bedeutet 30 ms. resetquad setzt die Panning-Geometrie zurück. live.gain~ ist der gemeinsame Ausgangspegel; die vier Anzeigen zeigen die Raumkanalpegel. open instanzen öffnet die Detailansicht einer Einzelstimme.

Der Stereo-Ausgang fasst Kanal 1 + 4 links und 2 + 3 rechts zusammen. Die vorgesehene Stereo- oder Vierkanalausgabe verwenden.

**Wenn etwas unerwartet wirkt:**

- Leere Fläche: Anzahl aktiver Fliegen prüfen. Bei 0 gibt es keine sichtbaren Fliegen.
- Keine Grundbewegung: Davon in Bewegung, start und Tempo prüfen. Eigenständige Bewegungsmodi separat kontrollieren.
- Formation kaum sichtbar: Dichte reduzieren; Snake, Portal und Landing für den Vergleich deaktivieren.
- Flow oder Flocking ohne erkennbare Wirkung: Stärke und die oben genannten überlagernden Modi prüfen.
- Eine Änderung betrifft die falschen Tiere: Target/Voice und Schwarmadresse kontrollieren. Zufallsverteilungen erfassen alle aktiven Stimmen.
- Bewegung sichtbar, aber kein Ton: Audio in Max, Ausgangsweg, Masterpegel und Stimmen-Gain prüfen. Flugbahnstart und Audioausgabe sind getrennte Funktionen.

**Datenquelle:** Floris van Breugel (2022), *Data from: Active anemosensing hypothesis: How flying insects could estimate ambient wind direction*, [Dryad, DOI: 10.5061/dryad.gb5mkkwrv](https://doi.org/10.5061/dryad.gb5mkkwrv), CC0 1.0. Originalmessungen: [van Breugel & Dickinson (2014)](https://doi.org/10.1016/j.cub.2013.12.023). 700 gemessene 3D-Flugabschnitte; gemeinsame Formationen und Klangzuordnung entstehen im Projekt.

## Quelle der Fliegen-Flugbahnen

Die 700 Fruchtfliegen-Flugbahnen stammen aus **Floris van Breugel (2022): Data from: Active anemosensing hypothesis: How flying insects could estimate ambient wind direction**. Die Tiere flogen frei in einem Windkanal mit einer Ethanol-Geruchsfahne. Mehrere Kameras erfassten ihre Bewegungen; daraus wurden dreidimensionale Positionen über die Zeit rekonstruiert. Untersucht wurde, wie Fliegen mithilfe von Geruch, Wind und visuellen Orientierungshilfen eine Geruchsquelle suchen.

Die 2022 veröffentlichte Auswahl umfasst 700 Flugabschnitte von jeweils über einer Sekunde, mit mindestens einem Geruchskontakt und einer Bewegung im Mittel gegen den Wind bei 0,4 m/s Windgeschwindigkeit. Für Max wurden die Bahnen als `fruchtfliege_flug_*.json` exportiert. Sie beschreiben einzelne Flüge; gemeinsame Schwarmorganisation, Formationen und Klangzuordnung entstehen in THE FLY.

Dryad ist ein wissenschaftliches Datenarchiv mit dauerhaft zitierbaren Datensätzen.

**Originaldatensatz:** [Dryad · DOI: 10.5061/dryad.gb5mkkwrv](https://doi.org/10.5061/dryad.gb5mkkwrv), Originaldatei im Repo: [`df_fly_trajec_data_plumetracking.hdf`](20260926%20Ausbau_Fliegenschwarm/df_fly_trajec_data_plumetracking.hdf) (118 MB, Git LFS), Lizenz [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/). Die ursprünglichen Messungen beschreibt [van Breugel & Dickinson (2014)](https://doi.org/10.1016/j.cub.2013.12.023).

## Entwicklungsstand

Der aktuelle Forschungs- und Teststand enthält Änderungen bis **5. Oktober 2026**. Gegenüber dem Stand vom 29. September wurden insbesondere Collective Landing, Flocking, Flow und Form-Morphing ergänzt. Die Bedienung wurde in eigene Module gegliedert; Snake-Bahnverfolgung und Übergänge zwischen Bewegungszuständen wurden überarbeitet.

Die Funktionen sind im Code und im Hauptpatch angebunden. Eine abschließende Prüfung aller Kombinationen steht aus. Eine geführte Performance-Oberfläche und ein vollständiges Preset-System für die erweiterten Schwarmparameter sind noch offen.

Der ältere Projektstand und die Entwicklungssicherungen sind als ZIP-Archive erhalten. Im aktiven Max-Projekt liegen ausschließlich die aktuellen Patches und Skripte. Für die aktuelle Entwicklung die oben verlinkte Projektdatei öffnen.
