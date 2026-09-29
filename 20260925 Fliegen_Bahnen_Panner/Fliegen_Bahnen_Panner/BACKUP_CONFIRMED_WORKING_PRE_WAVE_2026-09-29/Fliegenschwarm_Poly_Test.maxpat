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
        "rect": [ 41.0, 103.0, 1601.0, 942.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 4,
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
                        "rect": [ 0.0, 0.0, 1344.0, 899.2 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "int" ],
                                    "patching_rect": [ 180.0, 283.0, 72.0, 22.0 ],
                                    "text": "capture 200"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 130.0, 223.0, 39.0, 22.0 ],
                                    "text": "atodb"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-40",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 79.0, 328.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-38",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 130.0, 317.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "meter~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 122.0, 177.0, 80.0, 13.0 ]
                                }
                            },
                            {
                                "box": {
                                    "channels": 1,
                                    "id": "obj-35",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 50.0, 191.0, 48.0, 136.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "live.gain~[1]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.gain~[1]",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "live.gain~[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 100.0, 70.0, 22.0 ],
                                    "text": "mc.pack~ 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 130.0, 92.0, 22.0 ],
                                    "text": "mc.mixdown~ 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-43",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-44",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 85.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-45",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 120.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-46",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 155.0, 40.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "order": 1,
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "order": 0,
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-35", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "order": 1,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "order": 0,
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 1 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 2 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 3 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 620.0, 841.0, 122.0, 22.0 ],
                    "text": "p monosignalmessen"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 548.0, 168.0, 45.0, 22.0 ],
                    "text": "gain 1."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-23",
                    "maxclass": "flonum",
                    "maximum": 20.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 140.0, 102.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 330.5, 107.0, 49.0, 22.0 ],
                    "text": "mode 2"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 270.5, 107.0, 49.0, 22.0 ],
                    "text": "mode 0"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 794.8298664093018, 109.21052527427673, 29.5, 22.0 ],
                    "text": "5"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 542.3298664093018, 128.0, 22.0 ],
                    "text": "print swarmvoicecount"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 85.52631497383118, 489.4736795425415, 50.0, 22.0 ],
                    "text": "target 0"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1010.5263061523438, 110.5263147354126, 29.5, 22.0 ],
                    "text": "20"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 64.5, 74.1649500131607, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.196078431372549, 0.196078431372549, 1.0 ],
                    "id": "obj-20",
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
                        "rect": [ 59.0, 111.0, 1344.0, 900.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-4",
                                    "linecount": 289,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 100.0, 683.0, 3881.0 ],
                                    "text": "Das Grundkonzept ist eine klare Trennung zwischen **zentraler Steuerung**, **50 selbstständigen Fliegenstimmen** und **gemeinsamer Audioausgabe**.\n\n```mermaid\nflowchart TD\n    GUI[\"Test-GUI<br/>globale und individuelle Befehle\"]\n    Manager[\"swarm_voice_count.js<br/>Stimmenverwaltung und Verteilung\"]\n    Poly[\"poly~ MS_FlyVoice_Poly 50\"]\n    Voice[\"50 × MS_FlyVoice_Poly<br/>je eine vollständige Fliege\"]\n    Audio[\"4 Audiokanäle<br/>Summen aller Stimmen\"]\n    Status[\"Statusausgang<br/>Voice-ID, X, Y\"]\n\n    GUI --> Manager\n    Manager --> Poly\n    Poly --> Voice\n    Voice --> Audio\n    Voice --> Status\n```\n\nIm Hauptpatch ist `poly~ MS_FlyVoice_Poly 50` der Container. Max erzeugt darin 50 voneinander unabhängige Instanzen des Patches `MS_FlyVoice_Poly.maxpat`. Jede Instanz hat eigene Flugbahndaten, eigenen Wiedergabezustand, eigenes Tempo, eigene Position und eigene Klangerzeugung.\n\n## Der Testpatch außen\n\nDie Bedienelemente erzeugen Nachrichten wie:\n\n```text\nstart\ntempo 1.2\nmode 1\nfirst 30\nlast 300\nloop 1\nexpand 100\ngain 1\n```\n\nDiese Nachrichten gehen nicht direkt in `poly~`, sondern zunächst in:\n\n```text\njs swarm_voice_count.js\n```\n\nDieses JavaScript ist die **Stimmenverwaltung**.\n\nEs weiß:\n\n- wie viele Stimmen derzeit aktiv sein sollen,\n- welche Stimme mit `target N` angesprochen wird,\n- dass `target 0` alle aktuell aktiven Stimmen bezeichnet,\n- welche Stimmen beim Erhöhen der Anzahl eingeschaltet werden,\n- welche beim Verringern gestoppt und deaktiviert werden,\n- wie individuelle Zufallstempi verteilt werden.\n\n### `target`\n\nMit:\n\n```text\ntarget 5\ntempo 2.\n```\n\nschickt das JavaScript an `poly~`:\n\n```text\ntarget 5\ntempo 2.\n```\n\nNur Stimme 5 bekommt den neuen Wert.\n\nBei:\n\n```text\ntarget 0\ntempo 2.\n```\n\ndurchläuft das JavaScript alle aktiven Stimmen:\n\n```text\ntarget 1, tempo 2.\ntarget 2, tempo 2.\ntarget 3, tempo 2.\n...\n```\n\n`target 0` bedeutet in unserer Architektur daher: **alle gegenwärtig zum Schwarm gehörenden Stimmen**.\n\n### Anzahl aktiver Stimmen\n\n`poly~` besitzt immer 50 geladene Instanzen. Das Zahlenfeld „Anzahl aktiver Fliegen“ entscheidet, wie viele davon arbeiten.\n\nWenn du von 4 auf 50 erhöhst, sendet die Verwaltung an die neu hinzukommenden Stimmen:\n\n```text\ntarget N\nactive 1\nstart\n```\n\nBeim Reduzieren erhält jede entfernte Stimme:\n\n```text\ntarget N\nstop\nactive 0\n```\n\n`active 0` wird innerhalb der Stimme zu `mute 1` für `thispoly~`. Dadurch wird die DSP-Berechnung dieser Stimme abgeschaltet. Die Instanz existiert weiterhin, verbraucht aber wesentlich weniger Rechenleistung.\n\n## Die zufällige Tempoverteilung\n\n`Tempo Min` und `Tempo Max` werden im Verwaltungs-JavaScript gespeichert. Beim Anklicken von `randomizetempo` erzeugt es für jede aktive Stimme einen eigenen Zufallswert:\n\n```text\ntarget 1, tempo 0.83\ntarget 2, tempo 1.41\ntarget 3, tempo 1.07\n...\ntarget 50, tempo 1.26\n```\n\nDamit bleiben Flugmodus, Bereich, Raumgeometrie und andere Einstellungen global, während die Stimmen zeitlich auseinanderlaufen. Genau dadurch verliert der Schwarm seine gekoppelte Bewegung.\n\n## Der Stimmenpatch innen\n\nOben in `MS_FlyVoice_Poly` kommt jede Nachricht über `in 1` herein:\n\n```text\nroute start stop flight tempo mode loop first last\n      expand spread rotate shiftx shifty shake center\n      smooth gain active resetquad\n```\n\n`route` zerlegt die Nachrichten nach ihrem ersten Wort.\n\nBeispiele:\n\n- `tempo 1.2` verlässt den Ausgang `tempo`.\n- `expand 80` verlässt den Ausgang `expand`.\n- `active 0` verlässt den Ausgang `active`.\n\nDie Objekte `prepend ...` übersetzen anschließend die äußeren, einheitlichen Namen in die Namen, welche die vorhandenen Abstraktionen erwarten:\n\n```text\ntempo 1.2  → prepend speed       → speed 1.2\nfirst 30   → prepend firstflight → firstflight 30\ngain 0.8   → prepend gain        → gain 0.8\n```\n\nDiese übersetzten Nachrichten werden an:\n\n```text\ns #0_voice_commands\n```\n\ngeschickt.\n\n`#0` ist in jeder Poly-Instanz eine andere, automatisch vergebene Nummer. Im Screenshot ist daraus beispielsweise geworden:\n\n```text\ns 3922_voice_commands\nr 3922_voice_commands\n```\n\nEine andere Stimme erhält etwa `4178_voice_commands`. Deshalb können sich die 50 Instanzen nicht gegenseitig beeinflussen.\n\n## Klangerzeugung und Panning innerhalb jeder Stimme\n\nDie eigentliche Stimme besteht aus zwei großen Teilen:\n\n```text\nMS_fly #0\nQuadpanner_FlyVoice\n```\n\n`MS_fly #0` erzeugt die Mono-Fliege. Dort liegen Synthese und bewegungsabhängige Klangveränderungen.\n\nDer Quadpanner enthält:\n\n- die Flugbahnen,\n- den gelben Positionspunkt,\n- Node-Geometrie,\n- Expand, Spread, Rotate und Shift,\n- die Verteilung der Monoquelle auf vier Lautsprecher.\n\nDie Instanz erzeugt daher direkt vier Audiosignale:\n\n```text\nLautsprecher 1\nLautsprecher 2\nLautsprecher 3\nLautsprecher 4\n```\n\n## Warum `send~` und `receive~` verwendet werden\n\nInnerhalb einer Stimme benutzt der Patch instanzbezogene Signalnamen, beispielsweise:\n\n```text\nsend~ 3922_Monosource\nreceive~ 3922panner1\nreceive~ 3922panner2\nreceive~ 3922panner3\nreceive~ 3922panner4\n```\n\nAuch hier isoliert die aus `#0` entstandene Nummer jede Stimme. Eine Fliege empfängt dadurch ausschließlich ihre eigenen vier Panning-Ausgänge.\n\nDie vier `out~`-Objekte verlassen anschließend die Poly-Stimme. `poly~` addiert automatisch alle gleich nummerierten Signalausgänge:\n\n```text\nAusgang 1 = Summe aller Stimmen auf Lautsprecher 1\nAusgang 2 = Summe aller Stimmen auf Lautsprecher 2\nAusgang 3 = Summe aller Stimmen auf Lautsprecher 3\nAusgang 4 = Summe aller Stimmen auf Lautsprecher 4\n```\n\nDeshalb besitzt der äußere Patch nur vier Audiokabel, obwohl im Inneren 50 Fliegen mit jeweils vier Kanälen laufen.\n\n## `active` und `thispoly~`\n\nDer rechte Strang verarbeitet:\n\n```text\nactive 1\n```\n\nüber:\n\n```text\nexpr 1-$i1\nprepend mute\nthispoly~\n```\n\nDaraus wird:\n\n```text\nactive 1 → mute 0\nactive 0 → mute 1\n```\n\nDie Umkehrung ist notwendig, weil „aktiv“ und „mute“ gegensätzliche Bedeutungen haben.\n\n- `active 1`: Stimme arbeitet.\n- `active 0`: Stimme wird stummgeschaltet und ihre DSP-Berechnung deaktiviert.\n\n## Der fünfte Ausgang\n\nUnten rechts empfängt jede Stimme ihre aktuellen Flugkoordinaten:\n\n```text\nreceive~ #0_Flugkoordinaten\n```\n\nDiese werden in Kontrollwerte umgewandelt und mit der Identität von `thispoly~` kombiniert:\n\n```text\nVoice-ID X Y\n```\n\nBeispielsweise:\n\n```text\n25 0.101706 0.436686\n```\n\nDas bedeutet:\n\n- Stimme 25\n- X-Position 0,101706\n- Y-Position 0,436686\n\nDieser Ausgang trägt kein Audio. Er ist für die kommende gemeinsame Schwarmdarstellung vorgesehen.\n\nDie Architektur besteht damit aus **einer zentralen Kommandoebene**, **50 voneinander isolierten vollständigen Fliegen** und **vier automatisch summierten Raumkanälen**. Jede Stimme bleibt einzeln adressierbar, während globale Befehle vom Verwaltungs-JavaScript auf den gesamten aktiven Schwarm verteilt werden."
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 620.0, 869.6968929767609, 81.0, 22.0 ],
                    "text": "p doku theory"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1049.9999899864197, 110.5263147354126, 29.5, 22.0 ],
                    "text": "22"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1093.4210422039032, 110.5263147354126, 29.5, 22.0 ],
                    "text": "33"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1139.4736733436584, 122.36841988563538, 29.5, 22.0 ],
                    "text": "48"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-26",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 560.0, 114.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 3.0, -83.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 3.0, -45.0, 75.0, 22.0 ],
                    "text": "counter 1 50"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 971.0526223182678, 110.5263147354126, 29.5, 22.0 ],
                    "text": "19"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 938.1578857898712, 110.5263147354126, 29.5, 22.0 ],
                    "text": "12"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 903.9473598003387, 110.5263147354126, 29.5, 22.0 ],
                    "text": "8"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 871.0526232719421, 110.5263147354126, 29.5, 22.0 ],
                    "text": "4"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-17",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 478.9473855495453, 126.578946352005, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 191.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 830.2631499767303, 109.21052527427673, 29.5, 22.0 ],
                    "text": "19"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 762.0, 107.0, 29.5, 22.0 ],
                    "text": "3"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 728.0, 107.0, 29.5, 22.0 ],
                    "text": "2"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 695.0, 107.0, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 690.0, 162.0, 52.0, 22.0 ],
                    "text": "open $1"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 545.5, 200.0, 45.0, 22.0 ],
                    "text": "gain 0."
                }
            },
            {
                "box": {
                    "channels": 4,
                    "id": "obj-3",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 4,
                    "numoutlets": 7,
                    "outlettype": [ "signal", "signal", "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 553.9071942567825, 645.3607885837555, 106.0, 137.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 0,
                    "patching_rect": [ 487.0, 841.0, 106.0, 22.0 ],
                    "text": "dac~ 1 2 3 4"
                }
            },
            {
                "box": {
                    "fontsize": 15.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1377.647116303444, -98.0, 650.0, 23.0 ],
                    "text": "Fliegenschwarm · Poly-Test mit bis zu 50 Stimmen"
                }
            },
            {
                "box": {
                    "id": "poly",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "signal", "signal", "signal", "signal", "", "" ],
                    "patching_rect": [ 607.25, 367.0, 185.0, 22.0 ],
                    "text": "poly~ MS_FlyVoice_Poly 50",
                    "varname": "poly~"
                }
            },
            {
                "box": {
                    "id": "targetnum",
                    "maxclass": "number",
                    "maximum": 50,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 4.0, 74.1649500131607, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "targetpre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4.0, 102.0, 90.0, 22.0 ],
                    "text": "prepend target"
                }
            },
            {
                "box": {
                    "id": "start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 30.0, 155.0, 38.0, 22.0 ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "id": "stop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 75.0, 155.0, 34.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "flight",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 120.0, 155.0, 52.0, 22.0 ],
                    "text": "flight 1"
                }
            },
            {
                "box": {
                    "id": "tempo",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 180.0, 155.0, 59.0, 22.0 ],
                    "text": "tempo $1"
                }
            },
            {
                "box": {
                    "id": "mode",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 211.8279663324356, 102.15054214000702, 49.0, 22.0 ],
                    "text": "mode 1"
                }
            },
            {
                "box": {
                    "id": "loop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 310.0, 155.0, 47.0, 22.0 ],
                    "text": "loop 1"
                }
            },
            {
                "box": {
                    "id": "first",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 365.0, 155.0, 45.0, 22.0 ],
                    "text": "first 20"
                }
            },
            {
                "box": {
                    "id": "last",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 420.0, 155.0, 51.0, 22.0 ],
                    "text": "last 300"
                }
            },
            {
                "box": {
                    "id": "expand",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 219.0, 65.0, 22.0 ],
                    "text": "expand $1"
                }
            },
            {
                "box": {
                    "id": "spread",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 115.0, 200.0, 74.0, 22.0 ],
                    "text": "spread 100."
                }
            },
            {
                "box": {
                    "id": "rotate",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 195.0, 200.0, 60.0, 22.0 ],
                    "text": "rotate 0."
                }
            },
            {
                "box": {
                    "id": "shiftx",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 265.0, 200.0, 60.0, 22.0 ],
                    "text": "shiftx 0."
                }
            },
            {
                "box": {
                    "id": "shifty",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 200.0, 60.0, 22.0 ],
                    "text": "shifty 0."
                }
            },
            {
                "box": {
                    "id": "shake",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 405.0, 200.0, 62.0, 22.0 ],
                    "text": "shake 0."
                }
            },
            {
                "box": {
                    "id": "center",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 475.0, 200.0, 62.0, 22.0 ],
                    "text": "center 0."
                }
            },
            {
                "box": {
                    "id": "smooth",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 478.9473855495453, 155.0, 65.0, 22.0 ],
                    "text": "smooth $1"
                }
            },
            {
                "box": {
                    "id": "gain",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 553.9071942567825, 137.0, 48.0, 22.0 ],
                    "text": "gain $1"
                }
            },
            {
                "box": {
                    "id": "meter1",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 445.0, 659.0, 100.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "meter2",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 445.0, 688.0, 100.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "meter3",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 445.0, 718.0, 100.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "meter4",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 445.0, 749.0, 100.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 731.7647364139557, 500.00002086162567, 164.7058892250061, 22.0 ],
                    "text": "3 0.339801 0.236406"
                }
            },
            {
                "box": {
                    "id": "statuslab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 731.7647364139557, 530.588257431984, 180.0, 20.0 ],
                    "text": "voice-ID X Y"
                }
            },
            {
                "box": {
                    "id": "msg-resetquad",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 780.0, 168.0, 68.0, 22.0 ],
                    "text": "resetquad"
                }
            },
            {
                "box": {
                    "id": "voicecount-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 41.23711109161377, 339.17523872852325, 180.0, 20.0 ],
                    "text": "Anzahl aktiver Fliegen (0–50)"
                }
            },
            {
                "box": {
                    "id": "voicecount",
                    "maxclass": "number",
                    "maximum": 50,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 12.37113332748413, 362.8865776062012, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "voicecount-js",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 19.736841917037964, 397.368417263031, 356.5789439678192, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "swarm_voice_count.js",
                        "parameter_enable": 0
                    },
                    "text": "js swarm_voice_count.js"
                }
            },
            {
                "box": {
                    "id": "voicecount-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 12.37113332748413, 314.432972073555, 70.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "randomtempo-min-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 30.0, 275.0, 70.0, 20.0 ],
                    "text": "Tempo Min"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "randomtempo-min",
                    "maxclass": "flonum",
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 186.0, -71.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "randomtempo-min-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 186.0, -45.0, 109.0, 22.0 ],
                    "text": "prepend tempomin"
                }
            },
            {
                "box": {
                    "id": "randomtempo-min-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 186.0, -108.0, 82.0, 22.0 ],
                    "text": "loadmess 0.7"
                }
            },
            {
                "box": {
                    "id": "randomtempo-max-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 290.0, 275.0, 75.0, 20.0 ],
                    "text": "Tempo Max"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "randomtempo-max",
                    "maxclass": "flonum",
                    "maximum": 20.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 351.0, -63.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "randomtempo-max-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 351.0, -40.0, 112.0, 22.0 ],
                    "text": "prepend tempomax"
                }
            },
            {
                "box": {
                    "id": "randomtempo-max-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 351.0, -98.0, 82.0, 22.0 ],
                    "text": "loadmess 1.5"
                }
            },
            {
                "box": {
                    "id": "randomtempo-trigger",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 676.8298664093018, 22.35294210910797, 118.0, 22.0 ],
                    "text": "randomizetempo"
                }
            },
            {
                "box": {
                    "id": "randomtempo-trigger-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 676.8298664093018, -2.3529412746429443, 130.0, 20.0 ],
                    "text": "NEU VERTEILEN"
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "swarm-display-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 978.8235702514648, 252.94118702411652, 440.0, 24.0 ],
                    "text": "SCHWARMDARSTELLUNG · gelber Punkt + Voice-ID"
                }
            },
            {
                "box": {
                    "filename": "swarm_display.js",
                    "id": "swarm-display",
                    "jsarguments": [ "swarm_display.js" ],
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 978.8235702514648, 283.5294235944748, 440.0, 440.0 ]
                }
            },
            {
                "box": {
                    "id": "swarm-display-voices",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 641.0, 314.432972073555, 95.0, 22.0 ],
                    "text": "prepend voices"
                }
            },
            {
                "box": {
                    "id": "swarm-display-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 978.8235702514648, 732.9412070512772, 440.0, 20.0 ],
                    "text": "Monitor: verändert weder Flugbahnen noch Audiopanning."
                }
            },
            {
                "box": {
                    "id": "randomflight-length",
                    "maxclass": "number",
                    "maximum": 700,
                    "minimum": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 708.3298664093018, -119.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "randomflight-length-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 708.3298664093018, -89.0, 148.0, 22.0 ],
                    "text": "prepend flightrangelength"
                }
            },
            {
                "box": {
                    "id": "randomflight-length-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 708.3298664093018, -147.0, 82.0, 22.0 ],
                    "text": "loadmess 50"
                }
            },
            {
                "box": {
                    "id": "randomflight-trigger",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 491.76472640037537, 18.823530197143555, 126.0, 22.0 ],
                    "text": "randomizeflights"
                }
            },
            {
                "box": {
                    "id": "moving-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 225.0, 339.0, 225.0, 20.0 ],
                    "text": "Davon in Bewegung (0–aktive Fliegen)"
                }
            },
            {
                "box": {
                    "id": "moving-count",
                    "maxclass": "number",
                    "maximum": 50,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 225.0, 362.9, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "moving-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 290.0, 362.9, 105.0, 22.0 ],
                    "text": "prepend moving"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "density-number",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 924.5526223182678, -20.0, 62.0, 22.0 ],
                    "varname": "swarm_density"
                }
            },
            {
                "box": {
                    "id": "density-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 924.5526223182678, 10.0, 76.0, 22.0 ],
                    "text": "density $1"
                }
            },
            {
                "box": {
                    "id": "density-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 924.5526223182678, 38.0, 170.0, 20.0 ],
                    "text": "Verdichtung zur Leitfliege (%)"
                }
            },
            {
                "box": {
                    "id": "density-init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 923.5526223182678, -49.0, 78.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "id": "swarm-autogain",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 540.9071942567825, 500.00002086162567, 145.0, 22.0 ],
                    "text": "MS_Swarm_AutoGain"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "grid-number",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1010.0, -20.0, 62.0, 22.0 ],
                    "varname": "swarm_grid"
                }
            },
            {
                "box": {
                    "id": "grid-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1010.0, 10.0, 62.0, 22.0 ],
                    "text": "grid $1"
                }
            },
            {
                "box": {
                    "id": "grid-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1010.0, 38.0, 150.0, 20.0 ],
                    "text": "Kreisformation (%)"
                }
            },
            {
                "box": {
                    "id": "grid-init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1010.0, -49.0, 78.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "id": "subswarms-count",
                    "maxclass": "number",
                    "maximum": 4,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1100.0, -20.0, 45.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "subswarms-count-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100.0, 10.0, 105.0, 22.0 ],
                    "text": "prepend swarms"
                }
            },
            {
                "box": {
                    "id": "subswarms-count-init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100.0, -49.0, 75.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "subswarms-count-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1100.0, 38.0, 130.0, 20.0 ],
                    "text": "Teil-Schwärme (1–4)"
                }
            },
            {
                "box": {
                    "id": "subswarms-target",
                    "maxclass": "number",
                    "maximum": 4,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1235.0, -20.0, 45.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "subswarms-target-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1235.0, 10.0, 135.0, 22.0 ],
                    "text": "prepend swarmtarget"
                }
            },
            {
                "box": {
                    "id": "subswarms-target-init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1235.0, -49.0, 75.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "subswarms-target-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1235.0, 38.0, 130.0, 20.0 ],
                    "text": "Bearbeiten: 0=Alle"
                }
            },
            {
                "box": {
                    "id": "subswarms-ui-route",
                    "linecount": 10,
                    "maxclass": "newobj",
                    "numinlets": 16,
                    "numoutlets": 16,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 737.0798664093018, 580.5294235944748, 165.0, 143.0 ],
                    "text": "route setdensity setgrid setorbit setringmode setorbitspread setpulseinner setpulseouter setpulsetempo setpulsephase setpulsetempospread setsnake setsnakespacing setalignment setescapestrength setescapereturn"
                }
            },
            {
                "box": {
                    "id": "subswarms-set-density",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 550.0, 430.0, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "subswarms-set-grid",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 610.0, 430.0, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "orbit-num",
                    "maxclass": "flonum",
                    "maximum": 10.0,
                    "minimum": -10.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1518.1816842556, 22.72727072238922, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "orbit-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1578.7877395153046, 22.72727072238922, 95.0, 22.0 ],
                    "text": "prepend orbit"
                }
            },
            {
                "box": {
                    "id": "orbit-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 0.0, 145.0, 20.0 ],
                    "text": "Orbit-Tempo"
                }
            },
            {
                "box": {
                    "id": "ringmode-num",
                    "maxclass": "number",
                    "maximum": 2,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1518.1816842556, 80.30302321910858, 45.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "ringmode-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1568.1816798448563, 80.30302321910858, 110.0, 22.0 ],
                    "text": "prepend ringmode"
                }
            },
            {
                "box": {
                    "id": "ringmode-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 57.57575249671936, 150.0, 20.0 ],
                    "text": "Ringrichtung 0/1/2"
                }
            },
            {
                "box": {
                    "id": "set-orbit",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 180.30301439762115, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "set-ringmode",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1572.727133989334, 180.30301439762115, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "orbitspread-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 116.66665637493134, 165.0, 20.0 ],
                    "text": "Ring-Tempo-Abweichung (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "orbitspread-num",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1518.1816842556, 137.87877571582794, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "orbitspread-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1578.7877395153046, 137.87877571582794, 116.0, 22.0 ],
                    "text": "prepend orbitspread"
                }
            },
            {
                "box": {
                    "id": "set-orbitspread",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1628.7877351045609, 180.30301439762115, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "randomgain-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 219.69695031642914, 175.0, 20.0 ],
                    "text": "RANDOM-VERTEILUNG GAIN"
                }
            },
            {
                "box": {
                    "id": "randomgain-min-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 245.4545238018036, 62.0, 20.0 ],
                    "text": "Gain Min"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "randomgain-min",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1583.3331936597824, 245.4545238018036, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "randomgain-min-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 272.72724866867065, 120.0, 22.0 ],
                    "text": "prepend gainmin"
                }
            },
            {
                "box": {
                    "id": "randomgain-min-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 389.393905043602, 82.0, 22.0 ],
                    "text": "loadmess 0.1"
                }
            },
            {
                "box": {
                    "id": "randomgain-max-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 301.51512491703033, 62.0, 20.0 ],
                    "text": "Gain Max"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "randomgain-max",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1583.3331936597824, 301.51512491703033, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "randomgain-max-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 328.7878497838974, 120.0, 22.0 ],
                    "text": "prepend gainmax"
                }
            },
            {
                "box": {
                    "id": "randomgain-max-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1603.0301616191864, 389.393905043602, 75.0, 22.0 ],
                    "text": "loadmess 1."
                }
            },
            {
                "box": {
                    "id": "randomgain-trigger",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 360.6060287952423, 120.0, 22.0 ],
                    "text": "randomizegain"
                }
            },
            {
                "box": {
                    "id": "pulse-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 415.15147852897644, 166.0, 20.0 ],
                    "text": "RADIALE PULSBEWEGUNG"
                }
            },
            {
                "box": {
                    "id": "pulseinner-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 439.3939006328583, 160.0, 20.0 ],
                    "text": "Puls innen (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "pulseinner-num",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1518.1816842556, 462.1211713552475, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "pulseinner-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1578.7877395153046, 462.1211713552475, 111.0, 22.0 ],
                    "text": "prepend pulseinner"
                }
            },
            {
                "box": {
                    "id": "pulseinner-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 486.36359345912933, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "pulseouter-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 512.1211669445038, 160.0, 20.0 ],
                    "text": "Puls außen (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "pulseouter-num",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1518.1816842556, 533.3332862854004, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "pulseouter-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1578.7877395153046, 533.3332862854004, 112.0, 22.0 ],
                    "text": "prepend pulseouter"
                }
            },
            {
                "box": {
                    "id": "pulseouter-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 559.0908597707748, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "pulseouter-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1572.727133989334, 559.0908597707748, 87.0, 22.0 ],
                    "text": "loadmess 100."
                }
            },
            {
                "box": {
                    "id": "pulsetempo-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 583.3332818746567, 160.0, 20.0 ],
                    "text": "Puls-Tempo"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "pulsetempo-num",
                    "maxclass": "flonum",
                    "maximum": 10.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1518.1816842556, 606.0605525970459, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "pulsetempo-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1578.7877395153046, 606.0605525970459, 118.0, 22.0 ],
                    "text": "prepend pulsetempo"
                }
            },
            {
                "box": {
                    "id": "pulsetempo-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 630.3029747009277, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "pulsephase-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 656.0605481863022, 160.0, 20.0 ],
                    "text": "Phasenversatz (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "pulsephase-num",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1518.1816842556, 677.2726675271988, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "pulsephase-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1578.7877395153046, 677.2726675271988, 117.0, 22.0 ],
                    "text": "prepend pulsephase"
                }
            },
            {
                "box": {
                    "id": "pulsephase-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 703.0302410125732, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "pulsetempospread-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 727.2726631164551, 160.0, 20.0 ],
                    "text": "Tempo-Abweichung (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "pulsetempospread-num",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1518.1816842556, 749.9999338388443, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "pulsetempospread-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1578.7877395153046, 749.9999338388443, 155.0, 22.0 ],
                    "text": "prepend pulsetempospread"
                }
            },
            {
                "box": {
                    "id": "pulsetempospread-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 775.7575073242188, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "snake-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 804.5453835725784, 160.0, 20.0 ],
                    "text": "SNAKE · DRACHE"
                }
            },
            {
                "box": {
                    "id": "snake-toggle",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1518.1816842556, 830.3029570579529, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "snake-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1548.4847118854523, 830.3029570579529, 100.0, 22.0 ],
                    "text": "prepend snake"
                }
            },
            {
                "box": {
                    "id": "snake-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1653.0301572084427, 830.3029570579529, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "snakespacing-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 860.6059846878052, 160.0, 20.0 ],
                    "text": "Snake-Abstand (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "snakespacing-num",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1518.1816842556, 881.8181040287018, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "snakespacing-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1578.7877395153046, 881.8181040287018, 129.0, 22.0 ],
                    "text": "prepend snakespacing"
                }
            },
            {
                "box": {
                    "id": "snakespacing-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 909.0908288955688, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "snakespacing-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1572.727133989334, 909.0908288955688, 85.0, 22.0 ],
                    "text": "loadmess 20."
                }
            },
            {
                "box": {
                    "id": "alignment-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 950.0, 175.0, 20.0 ],
                    "text": "ALIGNMENT"
                }
            },
            {
                "box": {
                    "id": "alignment-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 975.0, 160.0, 20.0 ],
                    "text": "Alignment (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "alignment-num",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1518.1816842556, 997.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "alignment-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1578.7877395153, 997.0, 115.0, 22.0 ],
                    "text": "prepend alignment"
                }
            },
            {
                "box": {
                    "id": "alignment-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 1024.0, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "escape-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 1065.0, 175.0, 20.0 ],
                    "text": "FLUCHTREAKTION"
                }
            },
            {
                "box": {
                    "id": "escape-trigger",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 1090.0, 80.0, 22.0 ],
                    "text": "escape"
                }
            },
            {
                "box": {
                    "id": "escape-strength-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 1120.0, 160.0, 20.0 ],
                    "text": "Fluchtstärke (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "escape-strength-num",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1518.1816842556, 1142.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "escape-strength-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1578.1816842556, 1142.0, 138.0, 22.0 ],
                    "text": "prepend escapestrength"
                }
            },
            {
                "box": {
                    "id": "escape-strength-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 1168.0, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "escape-strength-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1573.1816842556, 1168.0, 85.0, 22.0 ],
                    "text": "loadmess 50."
                }
            },
            {
                "box": {
                    "id": "escape-return-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 1198.0, 160.0, 20.0 ],
                    "text": "Rückkehrzeit (s)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "escape-return-num",
                    "maxclass": "flonum",
                    "maximum": 10.0,
                    "minimum": 0.2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1518.1816842556, 1220.0, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "escape-return-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1578.1816842556, 1220.0, 126.0, 22.0 ],
                    "text": "prepend escapereturn"
                }
            },
            {
                "box": {
                    "id": "escape-return-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1518.1816842556, 1246.0, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "escape-return-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1573.1816842556, 1246.0, 80.0, 22.0 ],
                    "text": "loadmess 2."
                }
            },
            {
                "box": {
                    "id": "portal-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 0.0, 210.0, 20.0 ],
                    "text": "PORTAL · SOURCE / SINK"
                }
            },
            {
                "box": {
                    "id": "portal-mode-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 25.0, 210.0, 20.0 ],
                    "text": "-1 Sink · 0 Aus · 1 Source"
                }
            },
            {
                "box": {
                    "id": "portal-mode-num",
                    "maxclass": "number",
                    "maximum": 1,
                    "minimum": -1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1806.25, 46.875, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "portal-mode-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1865.625, 46.875, 130.0, 22.0 ],
                    "text": "prepend portalmode"
                }
            },
            {
                "box": {
                    "id": "portal-x-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 76.5625, 110.0, 20.0 ],
                    "text": "Portal X (0–1)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "portal-x-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1806.25, 96.875, 62.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "portal-x-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1871.875, 96.875, 150.0, 22.0 ],
                    "text": "prepend portalx"
                }
            },
            {
                "box": {
                    "id": "portal-x-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2028.125, 96.875, 85.0, 22.0 ],
                    "text": "loadmess 0.5"
                }
            },
            {
                "box": {
                    "id": "portal-y-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 125.0, 110.0, 20.0 ],
                    "text": "Portal Y (0–1)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "portal-y-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1806.25, 146.875, 62.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "portal-y-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1871.875, 146.875, 150.0, 22.0 ],
                    "text": "prepend portaly"
                }
            },
            {
                "box": {
                    "id": "portal-y-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2028.125, 146.875, 85.0, 22.0 ],
                    "text": "loadmess 0.5"
                }
            },
            {
                "box": {
                    "id": "portal-direction-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 175.0, 150.0, 20.0 ],
                    "text": "Direction (°)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "portal-direction-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1806.25, 195.3125, 62.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "portal-direction-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1871.875, 195.3125, 150.0, 22.0 ],
                    "text": "prepend portaldirection"
                }
            },
            {
                "box": {
                    "id": "portal-direction-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2028.125, 195.3125, 85.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "id": "portal-width-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 223.4375, 150.0, 20.0 ],
                    "text": "Width (0–360°)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "portal-width-num",
                    "maxclass": "flonum",
                    "maximum": 360.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1806.25, 243.75, 62.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "portal-width-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1871.875, 243.75, 150.0, 22.0 ],
                    "text": "prepend portalwidth"
                }
            },
            {
                "box": {
                    "id": "portal-width-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2028.125, 243.75, 85.0, 22.0 ],
                    "text": "loadmess 45."
                }
            },
            {
                "box": {
                    "id": "portal-speed-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 271.875, 150.0, 20.0 ],
                    "text": "Tempo (Zyklen/s)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "portal-speed-num",
                    "maxclass": "flonum",
                    "maximum": 20.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1806.25, 293.75, 62.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "portal-speed-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1871.875, 293.75, 150.0, 22.0 ],
                    "text": "prepend portalspeed"
                }
            },
            {
                "box": {
                    "id": "portal-speed-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2028.125, 293.75, 87.0, 22.0 ],
                    "text": "loadmess 0.25"
                }
            },
            {
                "box": {
                    "id": "portal-deviation-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 321.875, 150.0, 20.0 ],
                    "text": "Deviation (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "portal-deviation-num",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1806.25, 342.1875, 62.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "portal-deviation-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1871.875, 342.1875, 150.0, 22.0 ],
                    "text": "prepend portaldeviation"
                }
            },
            {
                "box": {
                    "id": "portal-deviation-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2028.125, 342.1875, 85.0, 22.0 ],
                    "text": "loadmess 25."
                }
            },
            {
                "box": {
                    "id": "portal-mouse-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 370.3125, 300.0, 20.0 ],
                    "text": "Portal im Monitor klicken und ziehen."
                }
            },
            {
                "box": {
                    "id": "portal-mouse-route",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 978.0, 745.0, 110.0, 22.0 ],
                    "text": "route portalxy"
                }
            },
            {
                "box": {
                    "id": "portal-mouse-unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 1095.0, 745.0, 90.0, 22.0 ],
                    "text": "unpack 0. 0."
                }
            },
            {
                "box": {
                    "id": "portal-x-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1190.0, 745.0, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "portal-y-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1245.0, 745.0, 50.0, 22.0 ],
                    "text": "set $1"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "alignment-pre", 0 ],
                    "source": [ "alignment-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "alignment-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "alignment-num", 0 ],
                    "source": [ "alignment-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "center", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "density-number", 0 ],
                    "source": [ "density-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "density-message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "density-message", 0 ],
                    "source": [ "density-number", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "escape-return-num", 0 ],
                    "source": [ "escape-return-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "escape-return-pre", 0 ],
                    "source": [ "escape-return-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "escape-return-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "escape-return-num", 0 ],
                    "source": [ "escape-return-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "escape-strength-num", 0 ],
                    "source": [ "escape-strength-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "escape-strength-pre", 0 ],
                    "source": [ "escape-strength-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "escape-strength-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "escape-strength-num", 0 ],
                    "source": [ "escape-strength-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "escape-trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "expand", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "expand", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "first", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "flight", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "gain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "grid-number", 0 ],
                    "source": [ "grid-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "grid-message", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "grid-message", 0 ],
                    "source": [ "grid-number", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "last", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "loop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "mode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "moving-prepend", 0 ],
                    "source": [ "moving-count", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "moving-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "msg-resetquad", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "msg-resetquad", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "smooth", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "targetnum", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tempo", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "targetpre", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 3 ],
                    "order": 1,
                    "source": [ "obj-3", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 2 ],
                    "order": 1,
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-3", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 3 ],
                    "source": [ "obj-3", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 2 ],
                    "order": 0,
                    "source": [ "obj-3", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 1 ],
                    "order": 0,
                    "source": [ "obj-3", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "expand", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "poly", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "orbit-pre", 0 ],
                    "source": [ "orbit-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "orbit-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "orbitspread-pre", 0 ],
                    "source": [ "orbitspread-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "orbitspread-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "status", 1 ],
                    "order": 1,
                    "source": [ "poly", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-autogain", 4 ],
                    "source": [ "poly", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-autogain", 3 ],
                    "source": [ "poly", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-autogain", 2 ],
                    "source": [ "poly", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-autogain", 1 ],
                    "source": [ "poly", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "poly", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-deviation-num", 0 ],
                    "source": [ "portal-deviation-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-deviation-pre", 0 ],
                    "source": [ "portal-deviation-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "portal-deviation-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-direction-num", 0 ],
                    "source": [ "portal-direction-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-direction-pre", 0 ],
                    "source": [ "portal-direction-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "portal-direction-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "portal-direction-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-mode-pre", 0 ],
                    "source": [ "portal-mode-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "portal-mode-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "portal-mode-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-mouse-unpack", 0 ],
                    "source": [ "portal-mouse-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "portal-mouse-route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-x-set", 0 ],
                    "source": [ "portal-mouse-unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-y-set", 0 ],
                    "source": [ "portal-mouse-unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-speed-num", 0 ],
                    "source": [ "portal-speed-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-speed-pre", 0 ],
                    "source": [ "portal-speed-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "portal-speed-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-width-num", 0 ],
                    "source": [ "portal-width-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-width-pre", 0 ],
                    "source": [ "portal-width-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "portal-width-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "portal-width-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-x-num", 0 ],
                    "source": [ "portal-x-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-x-pre", 0 ],
                    "source": [ "portal-x-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "portal-x-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "portal-x-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-x-num", 0 ],
                    "source": [ "portal-x-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-y-num", 0 ],
                    "source": [ "portal-y-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-y-pre", 0 ],
                    "source": [ "portal-y-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "portal-y-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "portal-y-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-y-num", 0 ],
                    "source": [ "portal-y-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulseinner-pre", 0 ],
                    "source": [ "pulseinner-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "pulseinner-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulseinner-num", 0 ],
                    "source": [ "pulseinner-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulseouter-num", 0 ],
                    "source": [ "pulseouter-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulseouter-pre", 0 ],
                    "source": [ "pulseouter-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "pulseouter-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulseouter-num", 0 ],
                    "source": [ "pulseouter-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulsephase-pre", 0 ],
                    "source": [ "pulsephase-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "pulsephase-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulsephase-num", 0 ],
                    "source": [ "pulsephase-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulsetempo-pre", 0 ],
                    "source": [ "pulsetempo-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "pulsetempo-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulsetempo-num", 0 ],
                    "source": [ "pulsetempo-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulsetempospread-pre", 0 ],
                    "source": [ "pulsetempospread-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "pulsetempospread-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulsetempospread-num", 0 ],
                    "source": [ "pulsetempospread-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "randomflight-length-prepend", 0 ],
                    "source": [ "randomflight-length", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "randomflight-length", 0 ],
                    "source": [ "randomflight-length-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "randomflight-length-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "randomflight-trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "randomgain-max-pre", 0 ],
                    "source": [ "randomgain-max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "randomgain-max", 0 ],
                    "source": [ "randomgain-max-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "randomgain-max-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "randomgain-min-pre", 0 ],
                    "source": [ "randomgain-min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "randomgain-min", 0 ],
                    "source": [ "randomgain-min-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "randomgain-min-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "randomgain-trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "randomtempo-max-prepend", 0 ],
                    "source": [ "randomtempo-max", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "randomtempo-max", 0 ],
                    "source": [ "randomtempo-max-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "randomtempo-max-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "randomtempo-min-prepend", 0 ],
                    "source": [ "randomtempo-min", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "randomtempo-min", 0 ],
                    "source": [ "randomtempo-min-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "randomtempo-min-prepend", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "randomtempo-trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ringmode-pre", 0 ],
                    "source": [ "ringmode-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "ringmode-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "rotate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "rotate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "orbit-num", 0 ],
                    "source": [ "set-orbit", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "orbitspread-num", 0 ],
                    "source": [ "set-orbitspread", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ringmode-num", 0 ],
                    "source": [ "set-ringmode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "shake", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "shake", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "shiftx", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "shiftx", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "shifty", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "shifty", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "smooth", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "snake-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "snake-toggle", 0 ],
                    "source": [ "snake-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "snake-pre", 0 ],
                    "source": [ "snake-toggle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "snakespacing-num", 0 ],
                    "source": [ "snakespacing-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "snakespacing-pre", 0 ],
                    "source": [ "snakespacing-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "snakespacing-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "snakespacing-num", 0 ],
                    "source": [ "snakespacing-set", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "spread", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "spread", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "stop", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subswarms-count-pre", 0 ],
                    "source": [ "subswarms-count", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subswarms-count", 0 ],
                    "source": [ "subswarms-count-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 0,
                    "source": [ "subswarms-count-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 1,
                    "source": [ "subswarms-count-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "density-number", 0 ],
                    "source": [ "subswarms-set-density", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "grid-number", 0 ],
                    "source": [ "subswarms-set-grid", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subswarms-target-pre", 0 ],
                    "source": [ "subswarms-target", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subswarms-target", 0 ],
                    "source": [ "subswarms-target-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "subswarms-target-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "alignment-set", 0 ],
                    "source": [ "subswarms-ui-route", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "escape-return-set", 0 ],
                    "source": [ "subswarms-ui-route", 14 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "escape-strength-set", 0 ],
                    "source": [ "subswarms-ui-route", 13 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulseinner-set", 0 ],
                    "source": [ "subswarms-ui-route", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulseouter-set", 0 ],
                    "source": [ "subswarms-ui-route", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulsephase-set", 0 ],
                    "source": [ "subswarms-ui-route", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulsetempo-set", 0 ],
                    "source": [ "subswarms-ui-route", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pulsetempospread-set", 0 ],
                    "source": [ "subswarms-ui-route", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set-orbit", 0 ],
                    "source": [ "subswarms-ui-route", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set-orbitspread", 0 ],
                    "source": [ "subswarms-ui-route", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "set-ringmode", 0 ],
                    "source": [ "subswarms-ui-route", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "snake-set", 0 ],
                    "source": [ "subswarms-ui-route", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "snakespacing-set", 0 ],
                    "source": [ "subswarms-ui-route", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subswarms-set-density", 0 ],
                    "source": [ "subswarms-ui-route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subswarms-set-grid", 0 ],
                    "source": [ "subswarms-ui-route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter1", 0 ],
                    "order": 1,
                    "source": [ "swarm-autogain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter2", 0 ],
                    "order": 1,
                    "source": [ "swarm-autogain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter3", 0 ],
                    "order": 1,
                    "source": [ "swarm-autogain", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter4", 0 ],
                    "order": 1,
                    "source": [ "swarm-autogain", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 3 ],
                    "order": 0,
                    "source": [ "swarm-autogain", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 2 ],
                    "order": 0,
                    "source": [ "swarm-autogain", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "order": 0,
                    "source": [ "swarm-autogain", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 0,
                    "source": [ "swarm-autogain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "portal-mouse-route", 0 ],
                    "source": [ "swarm-display", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "source": [ "swarm-display-voices", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "targetpre", 0 ],
                    "source": [ "targetnum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "targetpre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "tempo", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-autogain", 0 ],
                    "order": 1,
                    "source": [ "voicecount", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display-voices", 0 ],
                    "order": 0,
                    "source": [ "voicecount", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 0 ],
                    "order": 2,
                    "source": [ "voicecount", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "moving-count", 0 ],
                    "source": [ "voicecount-js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 1 ],
                    "order": 1,
                    "source": [ "voicecount-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "poly", 0 ],
                    "order": 0,
                    "source": [ "voicecount-js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "subswarms-ui-route", 0 ],
                    "source": [ "voicecount-js", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount", 0 ],
                    "source": [ "voicecount-load", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-3": [ "live.gain~", "live.gain~", 0 ],
            "obj-47::obj-35": [ "live.gain~[1]", "live.gain~[1]", 0 ],
            "poly.10::synth::doppler-control::dop-amount": [ "doppler_amount[10]", "doppler_amount", 0 ],
            "poly.10::synth::obj-152::gain0": [ "Harmonic 2 Gain[6]", "H2 Gain", 0 ],
            "poly.10::synth::obj-152::gain1": [ "Harmonic 3 Gain[5]", "H3 Gain", 0 ],
            "poly.10::synth::obj-152::q0": [ "Harmonic 2 Q[11]", "H2 Q", 0 ],
            "poly.10::synth::obj-152::q1": [ "Harmonic 3 Q[11]", "H3 Q", 0 ],
            "poly.10::synth::orientation-radiation::amount": [ "Orientation Amount[12]", "Orient Amount", 0 ],
            "poly.11::synth::doppler-control::dop-amount": [ "doppler_amount[11]", "doppler_amount", 0 ],
            "poly.11::synth::obj-152::gain0": [ "Harmonic 2 Gain[7]", "H2 Gain", 0 ],
            "poly.11::synth::obj-152::gain1": [ "Harmonic 3 Gain[14]", "H3 Gain", 0 ],
            "poly.11::synth::obj-152::q0": [ "Harmonic 2 Q[12]", "H2 Q", 0 ],
            "poly.11::synth::obj-152::q1": [ "Harmonic 3 Q[12]", "H3 Q", 0 ],
            "poly.11::synth::orientation-radiation::amount": [ "Orientation Amount[13]", "Orient Amount", 0 ],
            "poly.12::synth::doppler-control::dop-amount": [ "doppler_amount[12]", "doppler_amount", 0 ],
            "poly.12::synth::obj-152::gain0": [ "Harmonic 2 Gain[14]", "H2 Gain", 0 ],
            "poly.12::synth::obj-152::gain1": [ "Harmonic 3 Gain[15]", "H3 Gain", 0 ],
            "poly.12::synth::obj-152::q0": [ "Harmonic 2 Q[13]", "H2 Q", 0 ],
            "poly.12::synth::obj-152::q1": [ "Harmonic 3 Q[13]", "H3 Q", 0 ],
            "poly.12::synth::orientation-radiation::amount": [ "Orientation Amount[14]", "Orient Amount", 0 ],
            "poly.13::synth::doppler-control::dop-amount": [ "doppler_amount[13]", "doppler_amount", 0 ],
            "poly.13::synth::obj-152::gain0": [ "Harmonic 2 Gain[15]", "H2 Gain", 0 ],
            "poly.13::synth::obj-152::gain1": [ "Harmonic 3 Gain[16]", "H3 Gain", 0 ],
            "poly.13::synth::obj-152::q0": [ "Harmonic 2 Q[14]", "H2 Q", 0 ],
            "poly.13::synth::obj-152::q1": [ "Harmonic 3 Q[14]", "H3 Q", 0 ],
            "poly.13::synth::orientation-radiation::amount": [ "Orientation Amount[15]", "Orient Amount", 0 ],
            "poly.14::synth::doppler-control::dop-amount": [ "doppler_amount[14]", "doppler_amount", 0 ],
            "poly.14::synth::obj-152::gain0": [ "Harmonic 2 Gain[16]", "H2 Gain", 0 ],
            "poly.14::synth::obj-152::gain1": [ "Harmonic 3 Gain[17]", "H3 Gain", 0 ],
            "poly.14::synth::obj-152::q0": [ "Harmonic 2 Q[15]", "H2 Q", 0 ],
            "poly.14::synth::obj-152::q1": [ "Harmonic 3 Q[15]", "H3 Q", 0 ],
            "poly.14::synth::orientation-radiation::amount": [ "Orientation Amount[16]", "Orient Amount", 0 ],
            "poly.15::synth::doppler-control::dop-amount": [ "doppler_amount[15]", "doppler_amount", 0 ],
            "poly.15::synth::obj-152::gain0": [ "Harmonic 2 Gain[17]", "H2 Gain", 0 ],
            "poly.15::synth::obj-152::gain1": [ "Harmonic 3 Gain[18]", "H3 Gain", 0 ],
            "poly.15::synth::obj-152::q0": [ "Harmonic 2 Q[16]", "H2 Q", 0 ],
            "poly.15::synth::obj-152::q1": [ "Harmonic 3 Q[16]", "H3 Q", 0 ],
            "poly.15::synth::orientation-radiation::amount": [ "Orientation Amount[17]", "Orient Amount", 0 ],
            "poly.16::synth::doppler-control::dop-amount": [ "doppler_amount[16]", "doppler_amount", 0 ],
            "poly.16::synth::obj-152::gain0": [ "Harmonic 2 Gain[18]", "H2 Gain", 0 ],
            "poly.16::synth::obj-152::gain1": [ "Harmonic 3 Gain[19]", "H3 Gain", 0 ],
            "poly.16::synth::obj-152::q0": [ "Harmonic 2 Q[17]", "H2 Q", 0 ],
            "poly.16::synth::obj-152::q1": [ "Harmonic 3 Q[17]", "H3 Q", 0 ],
            "poly.16::synth::orientation-radiation::amount": [ "Orientation Amount[18]", "Orient Amount", 0 ],
            "poly.17::synth::doppler-control::dop-amount": [ "doppler_amount[17]", "doppler_amount", 0 ],
            "poly.17::synth::obj-152::gain0": [ "Harmonic 2 Gain[19]", "H2 Gain", 0 ],
            "poly.17::synth::obj-152::gain1": [ "Harmonic 3 Gain[20]", "H3 Gain", 0 ],
            "poly.17::synth::obj-152::q0": [ "Harmonic 2 Q[18]", "H2 Q", 0 ],
            "poly.17::synth::obj-152::q1": [ "Harmonic 3 Q[18]", "H3 Q", 0 ],
            "poly.17::synth::orientation-radiation::amount": [ "Orientation Amount[19]", "Orient Amount", 0 ],
            "poly.18::synth::doppler-control::dop-amount": [ "doppler_amount[18]", "doppler_amount", 0 ],
            "poly.18::synth::obj-152::gain0": [ "Harmonic 2 Gain[20]", "H2 Gain", 0 ],
            "poly.18::synth::obj-152::gain1": [ "Harmonic 3 Gain[21]", "H3 Gain", 0 ],
            "poly.18::synth::obj-152::q0": [ "Harmonic 2 Q[19]", "H2 Q", 0 ],
            "poly.18::synth::obj-152::q1": [ "Harmonic 3 Q[19]", "H3 Q", 0 ],
            "poly.18::synth::orientation-radiation::amount": [ "Orientation Amount[20]", "Orient Amount", 0 ],
            "poly.19::synth::doppler-control::dop-amount": [ "doppler_amount[19]", "doppler_amount", 0 ],
            "poly.19::synth::obj-152::gain0": [ "Harmonic 2 Gain[21]", "H2 Gain", 0 ],
            "poly.19::synth::obj-152::gain1": [ "Harmonic 3 Gain[22]", "H3 Gain", 0 ],
            "poly.19::synth::obj-152::q0": [ "Harmonic 2 Q[20]", "H2 Q", 0 ],
            "poly.19::synth::obj-152::q1": [ "Harmonic 3 Q[20]", "H3 Q", 0 ],
            "poly.19::synth::orientation-radiation::amount": [ "Orientation Amount[21]", "Orient Amount", 0 ],
            "poly.1::synth::doppler-control::dop-amount": [ "doppler_amount[3]", "doppler_amount", 0 ],
            "poly.1::synth::obj-152::gain0": [ "Harmonic 2 Gain[10]", "H2 Gain", 0 ],
            "poly.1::synth::obj-152::gain1": [ "Harmonic 3 Gain[9]", "H3 Gain", 0 ],
            "poly.1::synth::obj-152::q0": [ "Harmonic 2 Q[2]", "H2 Q", 0 ],
            "poly.1::synth::obj-152::q1": [ "Harmonic 3 Q[8]", "H3 Q", 0 ],
            "poly.1::synth::orientation-radiation::amount": [ "Orientation Amount[8]", "Orient Amount", 0 ],
            "poly.20::synth::doppler-control::dop-amount": [ "doppler_amount[20]", "doppler_amount", 0 ],
            "poly.20::synth::obj-152::gain0": [ "Harmonic 2 Gain[22]", "H2 Gain", 0 ],
            "poly.20::synth::obj-152::gain1": [ "Harmonic 3 Gain[23]", "H3 Gain", 0 ],
            "poly.20::synth::obj-152::q0": [ "Harmonic 2 Q[21]", "H2 Q", 0 ],
            "poly.20::synth::obj-152::q1": [ "Harmonic 3 Q[21]", "H3 Q", 0 ],
            "poly.20::synth::orientation-radiation::amount": [ "Orientation Amount[22]", "Orient Amount", 0 ],
            "poly.21::synth::doppler-control::dop-amount": [ "doppler_amount[21]", "doppler_amount", 0 ],
            "poly.21::synth::obj-152::gain0": [ "Harmonic 2 Gain[23]", "H2 Gain", 0 ],
            "poly.21::synth::obj-152::gain1": [ "Harmonic 3 Gain[24]", "H3 Gain", 0 ],
            "poly.21::synth::obj-152::q0": [ "Harmonic 2 Q[22]", "H2 Q", 0 ],
            "poly.21::synth::obj-152::q1": [ "Harmonic 3 Q[22]", "H3 Q", 0 ],
            "poly.21::synth::orientation-radiation::amount": [ "Orientation Amount[23]", "Orient Amount", 0 ],
            "poly.22::synth::doppler-control::dop-amount": [ "doppler_amount[22]", "doppler_amount", 0 ],
            "poly.22::synth::obj-152::gain0": [ "Harmonic 2 Gain[24]", "H2 Gain", 0 ],
            "poly.22::synth::obj-152::gain1": [ "Harmonic 3 Gain[25]", "H3 Gain", 0 ],
            "poly.22::synth::obj-152::q0": [ "Harmonic 2 Q[23]", "H2 Q", 0 ],
            "poly.22::synth::obj-152::q1": [ "Harmonic 3 Q[23]", "H3 Q", 0 ],
            "poly.22::synth::orientation-radiation::amount": [ "Orientation Amount[24]", "Orient Amount", 0 ],
            "poly.23::synth::doppler-control::dop-amount": [ "doppler_amount[23]", "doppler_amount", 0 ],
            "poly.23::synth::obj-152::gain0": [ "Harmonic 2 Gain[25]", "H2 Gain", 0 ],
            "poly.23::synth::obj-152::gain1": [ "Harmonic 3 Gain[26]", "H3 Gain", 0 ],
            "poly.23::synth::obj-152::q0": [ "Harmonic 2 Q[24]", "H2 Q", 0 ],
            "poly.23::synth::obj-152::q1": [ "Harmonic 3 Q[24]", "H3 Q", 0 ],
            "poly.23::synth::orientation-radiation::amount": [ "Orientation Amount[25]", "Orient Amount", 0 ],
            "poly.24::synth::doppler-control::dop-amount": [ "doppler_amount[24]", "doppler_amount", 0 ],
            "poly.24::synth::obj-152::gain0": [ "Harmonic 2 Gain[26]", "H2 Gain", 0 ],
            "poly.24::synth::obj-152::gain1": [ "Harmonic 3 Gain[27]", "H3 Gain", 0 ],
            "poly.24::synth::obj-152::q0": [ "Harmonic 2 Q[25]", "H2 Q", 0 ],
            "poly.24::synth::obj-152::q1": [ "Harmonic 3 Q[25]", "H3 Q", 0 ],
            "poly.24::synth::orientation-radiation::amount": [ "Orientation Amount[26]", "Orient Amount", 0 ],
            "poly.25::synth::doppler-control::dop-amount": [ "doppler_amount[25]", "doppler_amount", 0 ],
            "poly.25::synth::obj-152::gain0": [ "Harmonic 2 Gain[27]", "H2 Gain", 0 ],
            "poly.25::synth::obj-152::gain1": [ "Harmonic 3 Gain[28]", "H3 Gain", 0 ],
            "poly.25::synth::obj-152::q0": [ "Harmonic 2 Q[26]", "H2 Q", 0 ],
            "poly.25::synth::obj-152::q1": [ "Harmonic 3 Q[26]", "H3 Q", 0 ],
            "poly.25::synth::orientation-radiation::amount": [ "Orientation Amount[27]", "Orient Amount", 0 ],
            "poly.26::synth::doppler-control::dop-amount": [ "doppler_amount[26]", "doppler_amount", 0 ],
            "poly.26::synth::obj-152::gain0": [ "Harmonic 2 Gain[28]", "H2 Gain", 0 ],
            "poly.26::synth::obj-152::gain1": [ "Harmonic 3 Gain[29]", "H3 Gain", 0 ],
            "poly.26::synth::obj-152::q0": [ "Harmonic 2 Q[27]", "H2 Q", 0 ],
            "poly.26::synth::obj-152::q1": [ "Harmonic 3 Q[27]", "H3 Q", 0 ],
            "poly.26::synth::orientation-radiation::amount": [ "Orientation Amount[28]", "Orient Amount", 0 ],
            "poly.27::synth::doppler-control::dop-amount": [ "doppler_amount[27]", "doppler_amount", 0 ],
            "poly.27::synth::obj-152::gain0": [ "Harmonic 2 Gain[29]", "H2 Gain", 0 ],
            "poly.27::synth::obj-152::gain1": [ "Harmonic 3 Gain[30]", "H3 Gain", 0 ],
            "poly.27::synth::obj-152::q0": [ "Harmonic 2 Q[28]", "H2 Q", 0 ],
            "poly.27::synth::obj-152::q1": [ "Harmonic 3 Q[28]", "H3 Q", 0 ],
            "poly.27::synth::orientation-radiation::amount": [ "Orientation Amount[29]", "Orient Amount", 0 ],
            "poly.28::synth::doppler-control::dop-amount": [ "doppler_amount[28]", "doppler_amount", 0 ],
            "poly.28::synth::obj-152::gain0": [ "Harmonic 2 Gain[30]", "H2 Gain", 0 ],
            "poly.28::synth::obj-152::gain1": [ "Harmonic 3 Gain[31]", "H3 Gain", 0 ],
            "poly.28::synth::obj-152::q0": [ "Harmonic 2 Q[29]", "H2 Q", 0 ],
            "poly.28::synth::obj-152::q1": [ "Harmonic 3 Q[29]", "H3 Q", 0 ],
            "poly.28::synth::orientation-radiation::amount": [ "Orientation Amount[30]", "Orient Amount", 0 ],
            "poly.29::synth::doppler-control::dop-amount": [ "doppler_amount[29]", "doppler_amount", 0 ],
            "poly.29::synth::obj-152::gain0": [ "Harmonic 2 Gain[31]", "H2 Gain", 0 ],
            "poly.29::synth::obj-152::gain1": [ "Harmonic 3 Gain[32]", "H3 Gain", 0 ],
            "poly.29::synth::obj-152::q0": [ "Harmonic 2 Q[30]", "H2 Q", 0 ],
            "poly.29::synth::obj-152::q1": [ "Harmonic 3 Q[30]", "H3 Q", 0 ],
            "poly.29::synth::orientation-radiation::amount": [ "Orientation Amount[31]", "Orient Amount", 0 ],
            "poly.2::synth::doppler-control::dop-amount": [ "doppler_amount[1]", "doppler_amount", 0 ],
            "poly.2::synth::obj-152::gain0": [ "Harmonic 2 Gain[1]", "H2 Gain", 0 ],
            "poly.2::synth::obj-152::gain1": [ "Harmonic 3 Gain[1]", "H3 Gain", 0 ],
            "poly.2::synth::obj-152::q0": [ "Harmonic 2 Q[3]", "H2 Q", 0 ],
            "poly.2::synth::obj-152::q1": [ "Harmonic 3 Q[1]", "H3 Q", 0 ],
            "poly.2::synth::orientation-radiation::amount": [ "Orientation Amount[1]", "Orient Amount", 0 ],
            "poly.30::synth::doppler-control::dop-amount": [ "doppler_amount[30]", "doppler_amount", 0 ],
            "poly.30::synth::obj-152::gain0": [ "Harmonic 2 Gain[32]", "H2 Gain", 0 ],
            "poly.30::synth::obj-152::gain1": [ "Harmonic 3 Gain[33]", "H3 Gain", 0 ],
            "poly.30::synth::obj-152::q0": [ "Harmonic 2 Q[31]", "H2 Q", 0 ],
            "poly.30::synth::obj-152::q1": [ "Harmonic 3 Q[31]", "H3 Q", 0 ],
            "poly.30::synth::orientation-radiation::amount": [ "Orientation Amount[32]", "Orient Amount", 0 ],
            "poly.31::synth::doppler-control::dop-amount": [ "doppler_amount[31]", "doppler_amount", 0 ],
            "poly.31::synth::obj-152::gain0": [ "Harmonic 2 Gain[33]", "H2 Gain", 0 ],
            "poly.31::synth::obj-152::gain1": [ "Harmonic 3 Gain[34]", "H3 Gain", 0 ],
            "poly.31::synth::obj-152::q0": [ "Harmonic 2 Q[32]", "H2 Q", 0 ],
            "poly.31::synth::obj-152::q1": [ "Harmonic 3 Q[32]", "H3 Q", 0 ],
            "poly.31::synth::orientation-radiation::amount": [ "Orientation Amount[33]", "Orient Amount", 0 ],
            "poly.32::synth::doppler-control::dop-amount": [ "doppler_amount[32]", "doppler_amount", 0 ],
            "poly.32::synth::obj-152::gain0": [ "Harmonic 2 Gain[34]", "H2 Gain", 0 ],
            "poly.32::synth::obj-152::gain1": [ "Harmonic 3 Gain[35]", "H3 Gain", 0 ],
            "poly.32::synth::obj-152::q0": [ "Harmonic 2 Q[33]", "H2 Q", 0 ],
            "poly.32::synth::obj-152::q1": [ "Harmonic 3 Q[33]", "H3 Q", 0 ],
            "poly.32::synth::orientation-radiation::amount": [ "Orientation Amount[34]", "Orient Amount", 0 ],
            "poly.33::synth::doppler-control::dop-amount": [ "doppler_amount[33]", "doppler_amount", 0 ],
            "poly.33::synth::obj-152::gain0": [ "Harmonic 2 Gain[35]", "H2 Gain", 0 ],
            "poly.33::synth::obj-152::gain1": [ "Harmonic 3 Gain[36]", "H3 Gain", 0 ],
            "poly.33::synth::obj-152::q0": [ "Harmonic 2 Q[34]", "H2 Q", 0 ],
            "poly.33::synth::obj-152::q1": [ "Harmonic 3 Q[34]", "H3 Q", 0 ],
            "poly.33::synth::orientation-radiation::amount": [ "Orientation Amount[35]", "Orient Amount", 0 ],
            "poly.34::synth::doppler-control::dop-amount": [ "doppler_amount[34]", "doppler_amount", 0 ],
            "poly.34::synth::obj-152::gain0": [ "Harmonic 2 Gain[36]", "H2 Gain", 0 ],
            "poly.34::synth::obj-152::gain1": [ "Harmonic 3 Gain[37]", "H3 Gain", 0 ],
            "poly.34::synth::obj-152::q0": [ "Harmonic 2 Q[35]", "H2 Q", 0 ],
            "poly.34::synth::obj-152::q1": [ "Harmonic 3 Q[35]", "H3 Q", 0 ],
            "poly.34::synth::orientation-radiation::amount": [ "Orientation Amount[36]", "Orient Amount", 0 ],
            "poly.35::synth::doppler-control::dop-amount": [ "doppler_amount[35]", "doppler_amount", 0 ],
            "poly.35::synth::obj-152::gain0": [ "Harmonic 2 Gain[37]", "H2 Gain", 0 ],
            "poly.35::synth::obj-152::gain1": [ "Harmonic 3 Gain[38]", "H3 Gain", 0 ],
            "poly.35::synth::obj-152::q0": [ "Harmonic 2 Q[36]", "H2 Q", 0 ],
            "poly.35::synth::obj-152::q1": [ "Harmonic 3 Q[36]", "H3 Q", 0 ],
            "poly.35::synth::orientation-radiation::amount": [ "Orientation Amount[37]", "Orient Amount", 0 ],
            "poly.36::synth::doppler-control::dop-amount": [ "doppler_amount[36]", "doppler_amount", 0 ],
            "poly.36::synth::obj-152::gain0": [ "Harmonic 2 Gain[38]", "H2 Gain", 0 ],
            "poly.36::synth::obj-152::gain1": [ "Harmonic 3 Gain[39]", "H3 Gain", 0 ],
            "poly.36::synth::obj-152::q0": [ "Harmonic 2 Q[37]", "H2 Q", 0 ],
            "poly.36::synth::obj-152::q1": [ "Harmonic 3 Q[37]", "H3 Q", 0 ],
            "poly.36::synth::orientation-radiation::amount": [ "Orientation Amount[38]", "Orient Amount", 0 ],
            "poly.37::synth::doppler-control::dop-amount": [ "doppler_amount[37]", "doppler_amount", 0 ],
            "poly.37::synth::obj-152::gain0": [ "Harmonic 2 Gain[39]", "H2 Gain", 0 ],
            "poly.37::synth::obj-152::gain1": [ "Harmonic 3 Gain[40]", "H3 Gain", 0 ],
            "poly.37::synth::obj-152::q0": [ "Harmonic 2 Q[38]", "H2 Q", 0 ],
            "poly.37::synth::obj-152::q1": [ "Harmonic 3 Q[38]", "H3 Q", 0 ],
            "poly.37::synth::orientation-radiation::amount": [ "Orientation Amount[39]", "Orient Amount", 0 ],
            "poly.38::synth::doppler-control::dop-amount": [ "doppler_amount[38]", "doppler_amount", 0 ],
            "poly.38::synth::obj-152::gain0": [ "Harmonic 2 Gain[40]", "H2 Gain", 0 ],
            "poly.38::synth::obj-152::gain1": [ "Harmonic 3 Gain[41]", "H3 Gain", 0 ],
            "poly.38::synth::obj-152::q0": [ "Harmonic 2 Q[39]", "H2 Q", 0 ],
            "poly.38::synth::obj-152::q1": [ "Harmonic 3 Q[39]", "H3 Q", 0 ],
            "poly.38::synth::orientation-radiation::amount": [ "Orientation Amount[40]", "Orient Amount", 0 ],
            "poly.39::synth::doppler-control::dop-amount": [ "doppler_amount[39]", "doppler_amount", 0 ],
            "poly.39::synth::obj-152::gain0": [ "Harmonic 2 Gain[41]", "H2 Gain", 0 ],
            "poly.39::synth::obj-152::gain1": [ "Harmonic 3 Gain[42]", "H3 Gain", 0 ],
            "poly.39::synth::obj-152::q0": [ "Harmonic 2 Q[40]", "H2 Q", 0 ],
            "poly.39::synth::obj-152::q1": [ "Harmonic 3 Q[40]", "H3 Q", 0 ],
            "poly.39::synth::orientation-radiation::amount": [ "Orientation Amount[41]", "Orient Amount", 0 ],
            "poly.3::synth::doppler-control::dop-amount": [ "doppler_amount[2]", "doppler_amount", 0 ],
            "poly.3::synth::obj-152::gain0": [ "Harmonic 2 Gain[2]", "H2 Gain", 0 ],
            "poly.3::synth::obj-152::gain1": [ "Harmonic 3 Gain[10]", "H3 Gain", 0 ],
            "poly.3::synth::obj-152::q0": [ "Harmonic 2 Q[4]", "H2 Q", 0 ],
            "poly.3::synth::obj-152::q1": [ "Harmonic 3 Q[2]", "H3 Q", 0 ],
            "poly.3::synth::orientation-radiation::amount": [ "Orientation Amount[9]", "Orient Amount", 0 ],
            "poly.40::synth::doppler-control::dop-amount": [ "doppler_amount[40]", "doppler_amount", 0 ],
            "poly.40::synth::obj-152::gain0": [ "Harmonic 2 Gain[42]", "H2 Gain", 0 ],
            "poly.40::synth::obj-152::gain1": [ "Harmonic 3 Gain[43]", "H3 Gain", 0 ],
            "poly.40::synth::obj-152::q0": [ "Harmonic 2 Q[41]", "H2 Q", 0 ],
            "poly.40::synth::obj-152::q1": [ "Harmonic 3 Q[41]", "H3 Q", 0 ],
            "poly.40::synth::orientation-radiation::amount": [ "Orientation Amount[42]", "Orient Amount", 0 ],
            "poly.41::synth::doppler-control::dop-amount": [ "doppler_amount[41]", "doppler_amount", 0 ],
            "poly.41::synth::obj-152::gain0": [ "Harmonic 2 Gain[43]", "H2 Gain", 0 ],
            "poly.41::synth::obj-152::gain1": [ "Harmonic 3 Gain[44]", "H3 Gain", 0 ],
            "poly.41::synth::obj-152::q0": [ "Harmonic 2 Q[42]", "H2 Q", 0 ],
            "poly.41::synth::obj-152::q1": [ "Harmonic 3 Q[42]", "H3 Q", 0 ],
            "poly.41::synth::orientation-radiation::amount": [ "Orientation Amount[43]", "Orient Amount", 0 ],
            "poly.42::synth::doppler-control::dop-amount": [ "doppler_amount[42]", "doppler_amount", 0 ],
            "poly.42::synth::obj-152::gain0": [ "Harmonic 2 Gain[44]", "H2 Gain", 0 ],
            "poly.42::synth::obj-152::gain1": [ "Harmonic 3 Gain[45]", "H3 Gain", 0 ],
            "poly.42::synth::obj-152::q0": [ "Harmonic 2 Q[43]", "H2 Q", 0 ],
            "poly.42::synth::obj-152::q1": [ "Harmonic 3 Q[43]", "H3 Q", 0 ],
            "poly.42::synth::orientation-radiation::amount": [ "Orientation Amount[44]", "Orient Amount", 0 ],
            "poly.43::synth::doppler-control::dop-amount": [ "doppler_amount[43]", "doppler_amount", 0 ],
            "poly.43::synth::obj-152::gain0": [ "Harmonic 2 Gain[45]", "H2 Gain", 0 ],
            "poly.43::synth::obj-152::gain1": [ "Harmonic 3 Gain[46]", "H3 Gain", 0 ],
            "poly.43::synth::obj-152::q0": [ "Harmonic 2 Q[44]", "H2 Q", 0 ],
            "poly.43::synth::obj-152::q1": [ "Harmonic 3 Q[44]", "H3 Q", 0 ],
            "poly.43::synth::orientation-radiation::amount": [ "Orientation Amount[45]", "Orient Amount", 0 ],
            "poly.44::synth::doppler-control::dop-amount": [ "doppler_amount[44]", "doppler_amount", 0 ],
            "poly.44::synth::obj-152::gain0": [ "Harmonic 2 Gain[46]", "H2 Gain", 0 ],
            "poly.44::synth::obj-152::gain1": [ "Harmonic 3 Gain[47]", "H3 Gain", 0 ],
            "poly.44::synth::obj-152::q0": [ "Harmonic 2 Q[45]", "H2 Q", 0 ],
            "poly.44::synth::obj-152::q1": [ "Harmonic 3 Q[45]", "H3 Q", 0 ],
            "poly.44::synth::orientation-radiation::amount": [ "Orientation Amount[46]", "Orient Amount", 0 ],
            "poly.45::synth::doppler-control::dop-amount": [ "doppler_amount[45]", "doppler_amount", 0 ],
            "poly.45::synth::obj-152::gain0": [ "Harmonic 2 Gain[47]", "H2 Gain", 0 ],
            "poly.45::synth::obj-152::gain1": [ "Harmonic 3 Gain[48]", "H3 Gain", 0 ],
            "poly.45::synth::obj-152::q0": [ "Harmonic 2 Q[46]", "H2 Q", 0 ],
            "poly.45::synth::obj-152::q1": [ "Harmonic 3 Q[46]", "H3 Q", 0 ],
            "poly.45::synth::orientation-radiation::amount": [ "Orientation Amount[47]", "Orient Amount", 0 ],
            "poly.46::synth::doppler-control::dop-amount": [ "doppler_amount[46]", "doppler_amount", 0 ],
            "poly.46::synth::obj-152::gain0": [ "Harmonic 2 Gain[48]", "H2 Gain", 0 ],
            "poly.46::synth::obj-152::gain1": [ "Harmonic 3 Gain[49]", "H3 Gain", 0 ],
            "poly.46::synth::obj-152::q0": [ "Harmonic 2 Q[47]", "H2 Q", 0 ],
            "poly.46::synth::obj-152::q1": [ "Harmonic 3 Q[47]", "H3 Q", 0 ],
            "poly.46::synth::orientation-radiation::amount": [ "Orientation Amount[48]", "Orient Amount", 0 ],
            "poly.47::synth::doppler-control::dop-amount": [ "doppler_amount[47]", "doppler_amount", 0 ],
            "poly.47::synth::obj-152::gain0": [ "Harmonic 2 Gain[49]", "H2 Gain", 0 ],
            "poly.47::synth::obj-152::gain1": [ "Harmonic 3 Gain[50]", "H3 Gain", 0 ],
            "poly.47::synth::obj-152::q0": [ "Harmonic 2 Q[48]", "H2 Q", 0 ],
            "poly.47::synth::obj-152::q1": [ "Harmonic 3 Q[48]", "H3 Q", 0 ],
            "poly.47::synth::orientation-radiation::amount": [ "Orientation Amount[49]", "Orient Amount", 0 ],
            "poly.48::synth::doppler-control::dop-amount": [ "doppler_amount[48]", "doppler_amount", 0 ],
            "poly.48::synth::obj-152::gain0": [ "Harmonic 2 Gain[50]", "H2 Gain", 0 ],
            "poly.48::synth::obj-152::gain1": [ "Harmonic 3 Gain[51]", "H3 Gain", 0 ],
            "poly.48::synth::obj-152::q0": [ "Harmonic 2 Q[49]", "H2 Q", 0 ],
            "poly.48::synth::obj-152::q1": [ "Harmonic 3 Q[49]", "H3 Q", 0 ],
            "poly.48::synth::orientation-radiation::amount": [ "Orientation Amount[50]", "Orient Amount", 0 ],
            "poly.49::synth::doppler-control::dop-amount": [ "doppler_amount[49]", "doppler_amount", 0 ],
            "poly.49::synth::obj-152::gain0": [ "Harmonic 2 Gain[51]", "H2 Gain", 0 ],
            "poly.49::synth::obj-152::gain1": [ "Harmonic 3 Gain[52]", "H3 Gain", 0 ],
            "poly.49::synth::obj-152::q0": [ "Harmonic 2 Q[50]", "H2 Q", 0 ],
            "poly.49::synth::obj-152::q1": [ "Harmonic 3 Q[50]", "H3 Q", 0 ],
            "poly.49::synth::orientation-radiation::amount": [ "Orientation Amount[51]", "Orient Amount", 0 ],
            "poly.4::synth::doppler-control::dop-amount": [ "doppler_amount[4]", "doppler_amount", 0 ],
            "poly.4::synth::obj-152::gain0": [ "Harmonic 2 Gain[3]", "H2 Gain", 0 ],
            "poly.4::synth::obj-152::gain1": [ "Harmonic 3 Gain[2]", "H3 Gain", 0 ],
            "poly.4::synth::obj-152::q0": [ "Harmonic 2 Q[5]", "H2 Q", 0 ],
            "poly.4::synth::obj-152::q1": [ "Harmonic 3 Q[3]", "H3 Q", 0 ],
            "poly.4::synth::orientation-radiation::amount": [ "Orientation Amount[2]", "Orient Amount", 0 ],
            "poly.50::synth::doppler-control::dop-amount": [ "doppler_amount[50]", "doppler_amount", 0 ],
            "poly.50::synth::obj-152::gain0": [ "Harmonic 2 Gain[52]", "H2 Gain", 0 ],
            "poly.50::synth::obj-152::gain1": [ "Harmonic 3 Gain[53]", "H3 Gain", 0 ],
            "poly.50::synth::obj-152::q0": [ "Harmonic 2 Q[51]", "H2 Q", 0 ],
            "poly.50::synth::obj-152::q1": [ "Harmonic 3 Q[51]", "H3 Q", 0 ],
            "poly.50::synth::orientation-radiation::amount": [ "Orientation Amount[52]", "Orient Amount", 0 ],
            "poly.5::synth::doppler-control::dop-amount": [ "doppler_amount[5]", "doppler_amount", 0 ],
            "poly.5::synth::obj-152::gain0": [ "Harmonic 2 Gain[4]", "H2 Gain", 0 ],
            "poly.5::synth::obj-152::gain1": [ "Harmonic 3 Gain[3]", "H3 Gain", 0 ],
            "poly.5::synth::obj-152::q0": [ "Harmonic 2 Q[6]", "H2 Q", 0 ],
            "poly.5::synth::obj-152::q1": [ "Harmonic 3 Q[9]", "H3 Q", 0 ],
            "poly.5::synth::orientation-radiation::amount": [ "Orientation Amount[3]", "Orient Amount", 0 ],
            "poly.6::synth::doppler-control::dop-amount": [ "doppler_amount[6]", "doppler_amount", 0 ],
            "poly.6::synth::obj-152::gain0": [ "Harmonic 2 Gain[11]", "H2 Gain", 0 ],
            "poly.6::synth::obj-152::gain1": [ "Harmonic 3 Gain[11]", "H3 Gain", 0 ],
            "poly.6::synth::obj-152::q0": [ "Harmonic 2 Q[7]", "H2 Q", 0 ],
            "poly.6::synth::obj-152::q1": [ "Harmonic 3 Q[10]", "H3 Q", 0 ],
            "poly.6::synth::orientation-radiation::amount": [ "Orientation Amount[10]", "Orient Amount", 0 ],
            "poly.7::synth::doppler-control::dop-amount": [ "doppler_amount[7]", "doppler_amount", 0 ],
            "poly.7::synth::obj-152::gain0": [ "Harmonic 2 Gain[12]", "H2 Gain", 0 ],
            "poly.7::synth::obj-152::gain1": [ "Harmonic 3 Gain[12]", "H3 Gain", 0 ],
            "poly.7::synth::obj-152::q0": [ "Harmonic 2 Q[8]", "H2 Q", 0 ],
            "poly.7::synth::obj-152::q1": [ "Harmonic 3 Q[4]", "H3 Q", 0 ],
            "poly.7::synth::orientation-radiation::amount": [ "Orientation Amount[11]", "Orient Amount", 0 ],
            "poly.8::synth::doppler-control::dop-amount": [ "doppler_amount[8]", "doppler_amount", 0 ],
            "poly.8::synth::obj-152::gain0": [ "Harmonic 2 Gain[13]", "H2 Gain", 0 ],
            "poly.8::synth::obj-152::gain1": [ "Harmonic 3 Gain[13]", "H3 Gain", 0 ],
            "poly.8::synth::obj-152::q0": [ "Harmonic 2 Q[9]", "H2 Q", 0 ],
            "poly.8::synth::obj-152::q1": [ "Harmonic 3 Q[5]", "H3 Q", 0 ],
            "poly.8::synth::orientation-radiation::amount": [ "Orientation Amount[4]", "Orient Amount", 0 ],
            "poly.9::synth::doppler-control::dop-amount": [ "doppler_amount[9]", "doppler_amount", 0 ],
            "poly.9::synth::obj-152::gain0": [ "Harmonic 2 Gain[5]", "H2 Gain", 0 ],
            "poly.9::synth::obj-152::gain1": [ "Harmonic 3 Gain[4]", "H3 Gain", 0 ],
            "poly.9::synth::obj-152::q0": [ "Harmonic 2 Q[10]", "H2 Q", 0 ],
            "poly.9::synth::obj-152::q1": [ "Harmonic 3 Q[6]", "H3 Q", 0 ],
            "poly.9::synth::orientation-radiation::amount": [ "Orientation Amount[5]", "Orient Amount", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}