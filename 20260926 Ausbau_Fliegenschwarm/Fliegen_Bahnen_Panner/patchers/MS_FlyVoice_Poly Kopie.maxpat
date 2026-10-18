{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            483.0,
            137.0,
            1091.0,
            980.0
        ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1090.0000519752502,
                        406.66668605804443,
                        150.0,
                        20.0
                    ],
                    "text": "On Off Singel Voices"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1132.222276210785,
                        572.0430359840393,
                        150.0,
                        47.0
                    ],
                    "text": "Flugkoordinaten und Voice ID Poly verschr\u00e4nken."
                }
            },
            {
                "box": {
                    "color": [
                        1.0,
                        0.196078431372549,
                        0.196078431372549,
                        1.0
                    ],
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            59.0,
                            111.0,
                            1344.0,
                            900.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-4",
                                    "linecount": 289,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        683.0,
                                        3881.0
                                    ],
                                    "text": "Das Grundkonzept ist eine klare Trennung zwischen **zentraler Steuerung**, **50 selbstst\u00e4ndigen Fliegenstimmen** und **gemeinsamer Audioausgabe**.\n\n```mermaid\nflowchart TD\n    GUI[\"Test-GUI<br/>globale und individuelle Befehle\"]\n    Manager[\"swarm_voice_count.js<br/>Stimmenverwaltung und Verteilung\"]\n    Poly[\"poly~ MS_FlyVoice_Poly 50\"]\n    Voice[\"50 \u00d7 MS_FlyVoice_Poly<br/>je eine vollst\u00e4ndige Fliege\"]\n    Audio[\"4 Audiokan\u00e4le<br/>Summen aller Stimmen\"]\n    Status[\"Statusausgang<br/>Voice-ID, X, Y\"]\n\n    GUI --> Manager\n    Manager --> Poly\n    Poly --> Voice\n    Voice --> Audio\n    Voice --> Status\n```\n\nIm Hauptpatch ist `poly~ MS_FlyVoice_Poly 50` der Container. Max erzeugt darin 50 voneinander unabh\u00e4ngige Instanzen des Patches `MS_FlyVoice_Poly.maxpat`. Jede Instanz hat eigene Flugbahndaten, eigenen Wiedergabezustand, eigenes Tempo, eigene Position und eigene Klangerzeugung.\n\n## Der Testpatch au\u00dfen\n\nDie Bedienelemente erzeugen Nachrichten wie:\n\n```text\nstart\ntempo 1.2\nmode 1\nfirst 30\nlast 300\nloop 1\nexpand 100\ngain 1\n```\n\nDiese Nachrichten gehen nicht direkt in `poly~`, sondern zun\u00e4chst in:\n\n```text\njs swarm_voice_count.js\n```\n\nDieses JavaScript ist die **Stimmenverwaltung**.\n\nEs wei\u00df:\n\n- wie viele Stimmen derzeit aktiv sein sollen,\n- welche Stimme mit `target N` angesprochen wird,\n- dass `target 0` alle aktuell aktiven Stimmen bezeichnet,\n- welche Stimmen beim Erh\u00f6hen der Anzahl eingeschaltet werden,\n- welche beim Verringern gestoppt und deaktiviert werden,\n- wie individuelle Zufallstempi verteilt werden.\n\n### `target`\n\nMit:\n\n```text\ntarget 5\ntempo 2.\n```\n\nschickt das JavaScript an `poly~`:\n\n```text\ntarget 5\ntempo 2.\n```\n\nNur Stimme 5 bekommt den neuen Wert.\n\nBei:\n\n```text\ntarget 0\ntempo 2.\n```\n\ndurchl\u00e4uft das JavaScript alle aktiven Stimmen:\n\n```text\ntarget 1, tempo 2.\ntarget 2, tempo 2.\ntarget 3, tempo 2.\n...\n```\n\n`target 0` bedeutet in unserer Architektur daher: **alle gegenw\u00e4rtig zum Schwarm geh\u00f6renden Stimmen**.\n\n### Anzahl aktiver Stimmen\n\n`poly~` besitzt immer 50 geladene Instanzen. Das Zahlenfeld \u201eAnzahl aktiver Fliegen\u201c entscheidet, wie viele davon arbeiten.\n\nWenn du von 4 auf 50 erh\u00f6hst, sendet die Verwaltung an die neu hinzukommenden Stimmen:\n\n```text\ntarget N\nactive 1\nstart\n```\n\nBeim Reduzieren erh\u00e4lt jede entfernte Stimme:\n\n```text\ntarget N\nstop\nactive 0\n```\n\n`active 0` wird innerhalb der Stimme zu `mute 1` f\u00fcr `thispoly~`. Dadurch wird die DSP-Berechnung dieser Stimme abgeschaltet. Die Instanz existiert weiterhin, verbraucht aber wesentlich weniger Rechenleistung.\n\n## Die zuf\u00e4llige Tempoverteilung\n\n`Tempo Min` und `Tempo Max` werden im Verwaltungs-JavaScript gespeichert. Beim Anklicken von `randomizetempo` erzeugt es f\u00fcr jede aktive Stimme einen eigenen Zufallswert:\n\n```text\ntarget 1, tempo 0.83\ntarget 2, tempo 1.41\ntarget 3, tempo 1.07\n...\ntarget 50, tempo 1.26\n```\n\nDamit bleiben Flugmodus, Bereich, Raumgeometrie und andere Einstellungen global, w\u00e4hrend die Stimmen zeitlich auseinanderlaufen. Genau dadurch verliert der Schwarm seine gekoppelte Bewegung.\n\n## Der Stimmenpatch innen\n\nOben in `MS_FlyVoice_Poly` kommt jede Nachricht \u00fcber `in 1` herein:\n\n```text\nroute start stop flight tempo mode loop first last\n      expand spread rotate shiftx shifty shake center\n      smooth gain active resetquad\n```\n\n`route` zerlegt die Nachrichten nach ihrem ersten Wort.\n\nBeispiele:\n\n- `tempo 1.2` verl\u00e4sst den Ausgang `tempo`.\n- `expand 80` verl\u00e4sst den Ausgang `expand`.\n- `active 0` verl\u00e4sst den Ausgang `active`.\n\nDie Objekte `prepend ...` \u00fcbersetzen anschlie\u00dfend die \u00e4u\u00dferen, einheitlichen Namen in die Namen, welche die vorhandenen Abstraktionen erwarten:\n\n```text\ntempo 1.2  \u2192 prepend speed       \u2192 speed 1.2\nfirst 30   \u2192 prepend firstflight \u2192 firstflight 30\ngain 0.8   \u2192 prepend gain        \u2192 gain 0.8\n```\n\nDiese \u00fcbersetzten Nachrichten werden an:\n\n```text\ns #0_voice_commands\n```\n\ngeschickt.\n\n`#0` ist in jeder Poly-Instanz eine andere, automatisch vergebene Nummer. Im Screenshot ist daraus beispielsweise geworden:\n\n```text\ns 3922_voice_commands\nr 3922_voice_commands\n```\n\nEine andere Stimme erh\u00e4lt etwa `4178_voice_commands`. Deshalb k\u00f6nnen sich die 50 Instanzen nicht gegenseitig beeinflussen.\n\n## Klangerzeugung und Panning innerhalb jeder Stimme\n\nDie eigentliche Stimme besteht aus zwei gro\u00dfen Teilen:\n\n```text\nMS_fly #0\nQuadpanner_FlyVoice\n```\n\n`MS_fly #0` erzeugt die Mono-Fliege. Dort liegen Synthese und bewegungsabh\u00e4ngige Klangver\u00e4nderungen.\n\nDer Quadpanner enth\u00e4lt:\n\n- die Flugbahnen,\n- den gelben Positionspunkt,\n- Node-Geometrie,\n- Expand, Spread, Rotate und Shift,\n- die Verteilung der Monoquelle auf vier Lautsprecher.\n\nDie Instanz erzeugt daher direkt vier Audiosignale:\n\n```text\nLautsprecher 1\nLautsprecher 2\nLautsprecher 3\nLautsprecher 4\n```\n\n## Warum `send~` und `receive~` verwendet werden\n\nInnerhalb einer Stimme benutzt der Patch instanzbezogene Signalnamen, beispielsweise:\n\n```text\nsend~ 3922_Monosource\nreceive~ 3922panner1\nreceive~ 3922panner2\nreceive~ 3922panner3\nreceive~ 3922panner4\n```\n\nAuch hier isoliert die aus `#0` entstandene Nummer jede Stimme. Eine Fliege empf\u00e4ngt dadurch ausschlie\u00dflich ihre eigenen vier Panning-Ausg\u00e4nge.\n\nDie vier `out~`-Objekte verlassen anschlie\u00dfend die Poly-Stimme. `poly~` addiert automatisch alle gleich nummerierten Signalausg\u00e4nge:\n\n```text\nAusgang 1 = Summe aller Stimmen auf Lautsprecher 1\nAusgang 2 = Summe aller Stimmen auf Lautsprecher 2\nAusgang 3 = Summe aller Stimmen auf Lautsprecher 3\nAusgang 4 = Summe aller Stimmen auf Lautsprecher 4\n```\n\nDeshalb besitzt der \u00e4u\u00dfere Patch nur vier Audiokabel, obwohl im Inneren 50 Fliegen mit jeweils vier Kan\u00e4len laufen.\n\n## `active` und `thispoly~`\n\nDer rechte Strang verarbeitet:\n\n```text\nactive 1\n```\n\n\u00fcber:\n\n```text\nexpr 1-$i1\nprepend mute\nthispoly~\n```\n\nDaraus wird:\n\n```text\nactive 1 \u2192 mute 0\nactive 0 \u2192 mute 1\n```\n\nDie Umkehrung ist notwendig, weil \u201eaktiv\u201c und \u201emute\u201c gegens\u00e4tzliche Bedeutungen haben.\n\n- `active 1`: Stimme arbeitet.\n- `active 0`: Stimme wird stummgeschaltet und ihre DSP-Berechnung deaktiviert.\n\n## Der f\u00fcnfte Ausgang\n\nUnten rechts empf\u00e4ngt jede Stimme ihre aktuellen Flugkoordinaten:\n\n```text\nreceive~ #0_Flugkoordinaten\n```\n\nDiese werden in Kontrollwerte umgewandelt und mit der Identit\u00e4t von `thispoly~` kombiniert:\n\n```text\nVoice-ID X Y\n```\n\nBeispielsweise:\n\n```text\n25 0.101706 0.436686\n```\n\nDas bedeutet:\n\n- Stimme 25\n- X-Position 0,101706\n- Y-Position 0,436686\n\nDieser Ausgang tr\u00e4gt kein Audio. Er ist f\u00fcr die kommende gemeinsame Schwarmdarstellung vorgesehen.\n\nDie Architektur besteht damit aus **einer zentralen Kommandoebene**, **50 voneinander isolierten vollst\u00e4ndigen Fliegen** und **vier automatisch summierten Raumkan\u00e4len**. Jede Stimme bleibt einzeln adressierbar, w\u00e4hrend globale Befehle vom Verwaltungs-JavaScript auf den gesamten aktiven Schwarm verteilt werden."
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [
                        562.3656162023544,
                        275.0,
                        81.0,
                        22.0
                    ],
                    "text": "p doku theory"
                }
            },
            {
                "box": {
                    "fontsize": 15.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        18.0,
                        720.0,
                        23.0
                    ],
                    "text": "MS_FlyVoice_Poly \u00b7 poly~-Stimme mit vier Raumkan\u00e4len"
                }
            },
            {
                "box": {
                    "id": "ctrl",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        30.10752820968628,
                        -43.01075458526611,
                        35.0,
                        22.0
                    ],
                    "text": "in 1"
                }
            },
            {
                "box": {
                    "id": "router",
                    "maxclass": "newobj",
                    "numinlets": 22,
                    "numoutlets": 40,
                    "outlettype": [
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        30.10752820968628,
                        51.612905502319336,
                        1080.0,
                        22.0
                    ],
                    "text": "route start stop flight tempo mode loop first last expand spread rotate shiftx shifty shake center smooth gain active resetquad density grid gridvoices swarms densitygroup gridgroup orbitgroup ringmodegroup orbitspreadgroup pulseinnergroup pulseoutergroup pulsetempogroup pulsephasegroup pulsetempospreadgroup snakegroup snakespacinggroup alignmentgroup escapegroup escapestrengthgroup escapereturngroup"
                }
            },
            {
                "box": {
                    "id": "m-start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        30.483837246894836,
                        112.0,
                        38.0,
                        22.0
                    ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "id": "m-stop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        75.64512956142426,
                        112.0,
                        34.0,
                        22.0
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "p-flight",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        120.80642187595367,
                        112.0,
                        82.0,
                        22.0
                    ],
                    "text": "prepend flight"
                }
            },
            {
                "box": {
                    "id": "p-tempo",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        210.05373764038086,
                        112.0,
                        89.0,
                        22.0
                    ],
                    "text": "prepend speed"
                }
            },
            {
                "box": {
                    "id": "p-mode",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        300.3763222694397,
                        112.0,
                        86.0,
                        22.0
                    ],
                    "text": "prepend mode"
                }
            },
            {
                "box": {
                    "id": "p-loop",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390.69890689849854,
                        112.0,
                        79.0,
                        22.0
                    ],
                    "text": "prepend loop"
                }
            },
            {
                "box": {
                    "id": "p-first",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        475.6451472043991,
                        112.0,
                        105.0,
                        22.0
                    ],
                    "text": "prepend firstflight"
                }
            },
            {
                "box": {
                    "id": "p-last",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        590.698915719986,
                        112.0,
                        102.0,
                        22.0
                    ],
                    "text": "prepend lastflight"
                }
            },
            {
                "box": {
                    "id": "p-expand",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        30.0,
                        180.0,
                        95.0,
                        22.0
                    ],
                    "text": "prepend expand"
                }
            },
            {
                "box": {
                    "id": "p-spread",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        130.0,
                        180.0,
                        93.0,
                        22.0
                    ],
                    "text": "prepend spread"
                }
            },
            {
                "box": {
                    "id": "p-rotate",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        230.0,
                        180.0,
                        88.0,
                        22.0
                    ],
                    "text": "prepend rotate"
                }
            },
            {
                "box": {
                    "id": "p-shiftx",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        325.0,
                        180.0,
                        84.0,
                        22.0
                    ],
                    "text": "prepend shiftx"
                }
            },
            {
                "box": {
                    "id": "p-shifty",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        415.0,
                        180.0,
                        84.0,
                        22.0
                    ],
                    "text": "prepend shifty"
                }
            },
            {
                "box": {
                    "id": "p-shake",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        505.0,
                        180.0,
                        88.0,
                        22.0
                    ],
                    "text": "prepend shake"
                }
            },
            {
                "box": {
                    "id": "p-center",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        600.0,
                        180.0,
                        89.0,
                        22.0
                    ],
                    "text": "prepend center"
                }
            },
            {
                "box": {
                    "id": "p-smooth",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        695.0,
                        180.0,
                        95.0,
                        22.0
                    ],
                    "text": "prepend smooth"
                }
            },
            {
                "box": {
                    "id": "p-gain",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        795.0,
                        180.0,
                        79.0,
                        22.0
                    ],
                    "text": "prepend gain"
                }
            },
            {
                "box": {
                    "id": "cmd-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        386.0,
                        275.0,
                        155.0,
                        22.0
                    ],
                    "text": "s #0_voice_commands"
                }
            },
            {
                "box": {
                    "id": "thispoly",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        970.0000462532043,
                        433.33335399627686,
                        65.0,
                        22.0
                    ],
                    "text": "thispoly~"
                }
            },
            {
                "box": {
                    "id": "cmd-recv",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        30.0,
                        291.0,
                        155.0,
                        22.0
                    ],
                    "text": "r #0_voice_commands"
                }
            },
            {
                "box": {
                    "color": [
                        1.0,
                        0.933333333333333,
                        0.0,
                        1.0
                    ],
                    "fontsize": 16.0,
                    "id": "synth",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        204.5,
                        291.0,
                        106.0,
                        26.0
                    ],
                    "text": "MS_fly #0",
                    "varname": "MS_fly"
                }
            },
            {
                "box": {
                    "id": "mono-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        204.5,
                        330.0,
                        151.0,
                        22.0
                    ],
                    "text": "send~ #0_Monosource"
                }
            },
            {
                "box": {
                    "args": [
                        "#0",
                        "#1"
                    ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "panner",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Quadpanner_FlyVoice.maxpat",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "patching_rect": [
                        30.0,
                        375.0,
                        641.0,
                        302.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        641.0,
                        302.0
                    ],
                    "varname": "Quadpanner_FlyVoice",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "r1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30.0,
                        780.0,
                        135.0,
                        22.0
                    ],
                    "text": "receive~ #0panner1"
                }
            },
            {
                "box": {
                    "id": "r2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        210.0,
                        780.0,
                        135.0,
                        22.0
                    ],
                    "text": "receive~ #0panner2"
                }
            },
            {
                "box": {
                    "id": "r3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        390.0,
                        780.0,
                        135.0,
                        22.0
                    ],
                    "text": "receive~ #0panner3"
                }
            },
            {
                "box": {
                    "id": "r4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        570.0,
                        780.0,
                        135.0,
                        22.0
                    ],
                    "text": "receive~ #0panner4"
                }
            },
            {
                "box": {
                    "id": "out1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        848.3146744966507,
                        45.0,
                        22.0
                    ],
                    "text": "out~ 1"
                }
            },
            {
                "box": {
                    "id": "out2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        209.77529525756836,
                        848.3146744966507,
                        45.0,
                        22.0
                    ],
                    "text": "out~ 2"
                }
            },
            {
                "box": {
                    "id": "out3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        390.0,
                        848.3146744966507,
                        45.0,
                        22.0
                    ],
                    "text": "out~ 3"
                }
            },
            {
                "box": {
                    "id": "out4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        570.0,
                        848.3146744966507,
                        45.0,
                        22.0
                    ],
                    "text": "out~ 4"
                }
            },
            {
                "box": {
                    "id": "xy-recv",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        959.0,
                        530.0000252723694,
                        177.0,
                        22.0
                    ],
                    "text": "receive #0_Flugkoordinaten"
                }
            },
            {
                "box": {
                    "id": "xy-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        959.0,
                        572.0430359840393,
                        42.0,
                        22.0
                    ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "xy-unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        1023.5161318778992,
                        572.0430359840393,
                        80.0,
                        22.0
                    ],
                    "text": "unpack 0. 0."
                }
            },
            {
                "box": {
                    "id": "voice-store",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        959.0,
                        607.5269085168839,
                        30.0,
                        22.0
                    ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "xy-pack",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1004.1612923145294,
                        641.9355121850967,
                        85.0,
                        22.0
                    ],
                    "text": "pack 0 0. 0."
                }
            },
            {
                "box": {
                    "id": "status-out",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1004.1612923145294,
                        681.7204601764679,
                        38.0,
                        22.0
                    ],
                    "text": "out 1"
                }
            },
            {
                "box": {
                    "id": "status-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1098.7849524021149,
                        632.2580924034119,
                        162.0,
                        20.0
                    ],
                    "text": "Statusausgang: voice-ID X Y"
                }
            },
            {
                "box": {
                    "id": "m-resetquad",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        795.0,
                        112.0,
                        68.0,
                        22.0
                    ],
                    "text": "resetquad"
                }
            },
            {
                "box": {
                    "id": "active-sel",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [
                        "bang",
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        872.5,
                        112.0,
                        55.0,
                        22.0
                    ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "fade-out",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        683.1461219787598,
                        623.5955554246902,
                        48.0,
                        22.0
                    ],
                    "text": "0. 100"
                }
            },
            {
                "box": {
                    "id": "mute-delay",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        1004.1612923145294,
                        347.7777943611145,
                        61.0,
                        22.0
                    ],
                    "text": "delay 105"
                }
            },
            {
                "box": {
                    "id": "mute-one",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        966.0,
                        380.6451780796051,
                        50.0,
                        22.0
                    ],
                    "text": "mute 1"
                }
            },
            {
                "box": {
                    "id": "active-trig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        879.0,
                        185.0,
                        42.0,
                        22.0
                    ],
                    "text": "t b b b"
                }
            },
            {
                "box": {
                    "id": "mute-zero",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        902.0,
                        380.6451780796051,
                        50.0,
                        22.0
                    ],
                    "text": "mute 0"
                }
            },
            {
                "box": {
                    "id": "fade-in",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        737.0787105560303,
                        623.5955554246902,
                        48.0,
                        22.0
                    ],
                    "text": "1. 100"
                }
            },
            {
                "box": {
                    "id": "fade-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        683.1461219787598,
                        658.4270188808441,
                        55.0,
                        22.0
                    ],
                    "text": "line~ 1."
                }
            },
            {
                "box": {
                    "id": "fade-mul1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30.0,
                        815.0,
                        35.0,
                        22.0
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "fade-mul2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        210.0,
                        815.0,
                        35.0,
                        22.0
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "fade-mul3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        390.0,
                        815.0,
                        35.0,
                        22.0
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "fade-mul4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        570.0,
                        815.0,
                        35.0,
                        22.0
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "cancel-mute",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1004.1612923145294,
                        312.22223711013794,
                        35.0,
                        22.0
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "p-density",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        696.0752644538879,
                        112.0,
                        94.0,
                        22.0
                    ],
                    "text": "prepend density"
                }
            },
            {
                "box": {
                    "id": "voiceid-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        570.0,
                        340.86023008823395,
                        105.0,
                        22.0
                    ],
                    "text": "prepend voiceid"
                }
            },
            {
                "box": {
                    "id": "p-grid",
                    "maxclass": "newobj",
                    "patching_rect": [
                        980.0,
                        180.0,
                        78.0,
                        22.0
                    ],
                    "text": "prepend grid"
                }
            },
            {
                "box": {
                    "id": "p-gridvoices",
                    "maxclass": "newobj",
                    "patching_rect": [
                        1070.0,
                        180.0,
                        112.0,
                        22.0
                    ],
                    "text": "prepend gridvoices"
                }
            },
            {
                "box": {
                    "id": "tempo-safety-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        115.05373764038086,
                        112.0,
                        82.0,
                        22.0
                    ],
                    "text": "clip 0. 20."
                }
            },
            {
                "box": {
                    "id": "p-swarms",
                    "maxclass": "newobj",
                    "patching_rect": [
                        1190,
                        180.0,
                        120.0,
                        22.0
                    ],
                    "text": "prepend swarms"
                }
            },
            {
                "box": {
                    "id": "p-densitygroup",
                    "maxclass": "newobj",
                    "patching_rect": [
                        1290,
                        180.0,
                        120.0,
                        22.0
                    ],
                    "text": "prepend densitygroup"
                }
            },
            {
                "box": {
                    "id": "p-gridgroup",
                    "maxclass": "newobj",
                    "patching_rect": [
                        1420,
                        180.0,
                        120.0,
                        22.0
                    ],
                    "text": "prepend gridgroup"
                }
            },
            {
                "box": {
                    "id": "p-orbitgroup",
                    "maxclass": "newobj",
                    "text": "prepend orbitgroup",
                    "patching_rect": [
                        1550.0,
                        180.0,
                        120.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "p-ringmodegroup",
                    "maxclass": "newobj",
                    "text": "prepend ringmodegroup",
                    "patching_rect": [
                        1680.0,
                        180.0,
                        120.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "p-orbitspreadgroup",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180.0,
                        300.0,
                        145.0,
                        22.0
                    ],
                    "text": "prepend orbitspreadgroup"
                }
            },
            {
                "box": {
                    "id": "p-pulseinnergroup",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180.0,
                        340.0,
                        175.0,
                        22.0
                    ],
                    "text": "prepend pulseinnergroup"
                }
            },
            {
                "box": {
                    "id": "p-pulseoutergroup",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180.0,
                        368.0,
                        175.0,
                        22.0
                    ],
                    "text": "prepend pulseoutergroup"
                }
            },
            {
                "box": {
                    "id": "p-pulsetempogroup",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180.0,
                        396.0,
                        175.0,
                        22.0
                    ],
                    "text": "prepend pulsetempogroup"
                }
            },
            {
                "box": {
                    "id": "p-pulsephasegroup",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180.0,
                        424.0,
                        175.0,
                        22.0
                    ],
                    "text": "prepend pulsephasegroup"
                }
            },
            {
                "box": {
                    "id": "p-pulsetempospreadgroup",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180.0,
                        452.0,
                        175.0,
                        22.0
                    ],
                    "text": "prepend pulsetempospreadgroup"
                }
            },
            {
                "box": {
                    "id": "p-snakegroup",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180.0,
                        500.0,
                        165.0,
                        22.0
                    ],
                    "text": "prepend snakegroup"
                }
            },
            {
                "box": {
                    "id": "p-snakespacinggroup",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180.0,
                        528.0,
                        165.0,
                        22.0
                    ],
                    "text": "prepend snakespacinggroup"
                }
            },
            {
                "box": {
                    "id": "p-alignmentgroup",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180.0,
                        560.0,
                        155.0,
                        22.0
                    ],
                    "text": "prepend alignmentgroup"
                }
            },
            {
                "box": {
                    "id": "p-escapegroup",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180.0,
                        600.0,
                        185.0,
                        22.0
                    ],
                    "text": "prepend escapegroup"
                }
            },
            {
                "box": {
                    "id": "p-escapestrengthgroup",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180.0,
                        628.0,
                        185.0,
                        22.0
                    ],
                    "text": "prepend escapestrengthgroup"
                }
            },
            {
                "box": {
                    "id": "p-escapereturngroup",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180.0,
                        656.0,
                        185.0,
                        22.0
                    ],
                    "text": "prepend escapereturngroup"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "active-trig",
                        0
                    ],
                    "source": [
                        "active-sel",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fade-out",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "active-sel",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mute-delay",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "active-sel",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cancel-mute",
                        0
                    ],
                    "source": [
                        "active-trig",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fade-in",
                        0
                    ],
                    "source": [
                        "active-trig",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mute-zero",
                        0
                    ],
                    "source": [
                        "active-trig",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mute-delay",
                        0
                    ],
                    "source": [
                        "cancel-mute",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "panner",
                        0
                    ],
                    "source": [
                        "cmd-recv",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "router",
                        0
                    ],
                    "source": [
                        "ctrl",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fade-line",
                        0
                    ],
                    "source": [
                        "fade-in",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fade-mul1",
                        1
                    ],
                    "order": 3,
                    "source": [
                        "fade-line",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fade-mul2",
                        1
                    ],
                    "order": 2,
                    "source": [
                        "fade-line",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fade-mul3",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "fade-line",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fade-mul4",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "fade-line",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "out1",
                        0
                    ],
                    "source": [
                        "fade-mul1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "out2",
                        0
                    ],
                    "source": [
                        "fade-mul2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "out3",
                        0
                    ],
                    "source": [
                        "fade-mul3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "out4",
                        0
                    ],
                    "source": [
                        "fade-mul4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fade-line",
                        0
                    ],
                    "source": [
                        "fade-out",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "m-resetquad",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "m-start",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "m-stop",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mute-one",
                        0
                    ],
                    "source": [
                        "mute-delay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "thispoly",
                        0
                    ],
                    "source": [
                        "mute-one",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "thispoly",
                        0
                    ],
                    "source": [
                        "mute-zero",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-center",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-density",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-expand",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-first",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-flight",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-last",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-loop",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-rotate",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-shake",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-shiftx",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-shifty",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-smooth",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-spread",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "cmd-send",
                        0
                    ],
                    "source": [
                        "p-tempo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fade-mul1",
                        0
                    ],
                    "source": [
                        "r1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fade-mul2",
                        0
                    ],
                    "source": [
                        "r2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fade-mul3",
                        0
                    ],
                    "source": [
                        "r3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fade-mul4",
                        0
                    ],
                    "source": [
                        "r4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "active-sel",
                        0
                    ],
                    "source": [
                        "router",
                        17
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "m-resetquad",
                        0
                    ],
                    "source": [
                        "router",
                        18
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "m-start",
                        0
                    ],
                    "source": [
                        "router",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "m-stop",
                        0
                    ],
                    "source": [
                        "router",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-center",
                        0
                    ],
                    "source": [
                        "router",
                        14
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-density",
                        0
                    ],
                    "source": [
                        "router",
                        19
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-expand",
                        0
                    ],
                    "source": [
                        "router",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-first",
                        0
                    ],
                    "source": [
                        "router",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-flight",
                        0
                    ],
                    "source": [
                        "router",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-gain",
                        0
                    ],
                    "source": [
                        "router",
                        16
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-last",
                        0
                    ],
                    "source": [
                        "router",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-loop",
                        0
                    ],
                    "source": [
                        "router",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-mode",
                        0
                    ],
                    "source": [
                        "router",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-rotate",
                        0
                    ],
                    "source": [
                        "router",
                        10
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-shake",
                        0
                    ],
                    "source": [
                        "router",
                        13
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-shiftx",
                        0
                    ],
                    "source": [
                        "router",
                        11
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-shifty",
                        0
                    ],
                    "source": [
                        "router",
                        12
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-smooth",
                        0
                    ],
                    "source": [
                        "router",
                        15
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-spread",
                        0
                    ],
                    "source": [
                        "router",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "tempo-safety-clip",
                        0
                    ],
                    "source": [
                        "router",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mono-send",
                        0
                    ],
                    "source": [
                        "synth",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voice-store",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "thispoly",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voiceid-prepend",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "thispoly",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "xy-pack",
                        0
                    ],
                    "source": [
                        "voice-store",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "panner",
                        0
                    ],
                    "source": [
                        "voiceid-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "status-out",
                        0
                    ],
                    "source": [
                        "xy-pack",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "xy-trigger",
                        0
                    ],
                    "source": [
                        "xy-recv",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voice-store",
                        0
                    ],
                    "source": [
                        "xy-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "xy-unpack",
                        0
                    ],
                    "source": [
                        "xy-trigger",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "xy-pack",
                        2
                    ],
                    "source": [
                        "xy-unpack",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "xy-pack",
                        1
                    ],
                    "source": [
                        "xy-unpack",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        20
                    ],
                    "destination": [
                        "p-grid",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        21
                    ],
                    "destination": [
                        "p-gridvoices",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-grid",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-gridvoices",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "tempo-safety-clip",
                        0
                    ],
                    "destination": [
                        "p-tempo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        22
                    ],
                    "destination": [
                        "p-swarms",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-swarms",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        23
                    ],
                    "destination": [
                        "p-densitygroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-densitygroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        24
                    ],
                    "destination": [
                        "p-gridgroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-gridgroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        25
                    ],
                    "destination": [
                        "p-orbitgroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-orbitgroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        26
                    ],
                    "destination": [
                        "p-ringmodegroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-ringmodegroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        27
                    ],
                    "destination": [
                        "p-orbitspreadgroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-orbitspreadgroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        28
                    ],
                    "destination": [
                        "p-pulseinnergroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-pulseinnergroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        29
                    ],
                    "destination": [
                        "p-pulseoutergroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-pulseoutergroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        30
                    ],
                    "destination": [
                        "p-pulsetempogroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-pulsetempogroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        31
                    ],
                    "destination": [
                        "p-pulsephasegroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-pulsephasegroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        32
                    ],
                    "destination": [
                        "p-pulsetempospreadgroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-pulsetempospreadgroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        33
                    ],
                    "destination": [
                        "p-snakegroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-snakegroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        34
                    ],
                    "destination": [
                        "p-snakespacinggroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-snakespacinggroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        35
                    ],
                    "destination": [
                        "p-alignmentgroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-alignmentgroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        36
                    ],
                    "destination": [
                        "p-escapegroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-escapegroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        37
                    ],
                    "destination": [
                        "p-escapestrengthgroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-escapestrengthgroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "router",
                        38
                    ],
                    "destination": [
                        "p-escapereturngroup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "p-escapereturngroup",
                        0
                    ],
                    "destination": [
                        "cmd-send",
                        0
                    ]
                }
            }
        ]
    }
}