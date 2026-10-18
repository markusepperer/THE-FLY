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
        "rect": [ 41.0, 96.0, 1601.0, 942.0 ],
        "boxes": [
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-12",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Parallelflug.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 968.8623216152191, 904.1641384363174, 58.139532804489136, 58.139532804489136 ],
                    "presentation": 1,
                    "presentation_rect": [ 183.1524646282196, 622.2222719192505, 58.139532804489136, 58.139532804489136 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-9",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Wellen_Impuls.maxpat",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 1307.7650275230408, -118.87517189979553, 260.4166567325592, 191.66665935516357 ],
                    "presentation": 1,
                    "presentation_rect": [ 397.14290803670883, 501.5151072740555, 260.4166567325592, 191.66665935516357 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-19",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Formation_Orbit.maxpat",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 762.0, 883.0, 173.0, 100.46780967712402 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.55556416511536, 493.05557906627655, 173.0, 100.46780967712402 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 534.0000165700912, 143.8202362060547, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 445.0, 172.00000512599945, 77.0, 22.0 ],
                    "text": "loadmess 30"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1289.0244209766388, 108.91718888282776, 83.0, 22.0 ],
                    "text": "loadmess 100"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1092.7088458538055, -91.30434608459473, 150.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 243.0555671453476, 433.33335399627686, 104.12370550632477, 33.0 ],
                    "text": "Schwarmadresse\n0= Alle"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 270.1030776500702, 402.06183314323425, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 248.61112296581268, 402.7777969837189, 93.81442773342133, 20.0 ],
                    "text": "# Teilschwärme"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 891.3043308258057, -69.56521606445312, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 251.38890087604523, 368.0555731058121, 72.15189778804779, 20.0 ],
                    "text": "Formation"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 798.8888640403748, -69.56521606445312, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 251.38890087604523, 330.55557131767273, 55.69620180130005, 20.0 ],
                    "text": "Dichte"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-61",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "ZufälligePegel.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 690.4674427509308, -188.13559770584106, 93.0, 46.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 531.4607166051865, -30.23356831073761, 93.0, 46.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 0.0, 0.0, 1344.0, 900.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 129.10447657108307, 52.0, 22.0 ],
                                    "text": "open $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 50.0, 100.0, 29.5, 22.0 ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-56",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 49.999985806144764, 40.00000257350159, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-57",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 84.99998580614476, 40.00000257350159, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-58",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.999985806144764, 211.10446357350156, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 620.8954983949661, 193.2835751771927, 100.0, 22.0 ],
                    "text": "p open instanzen"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 558.9564733505249, 230.0000067949295, 54.878050088882446, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 457.14285230636597, -13.095237970352173, 36.90476155281067, 20.0 ],
                    "text": "Gain"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 487.7011502981186, 262.9213693141937, 104.59769940376282, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 847.1910789012909, 121.26470971107483, 55.05618417263031, 33.0 ],
                    "text": "smooth panning"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1289.0244209766388, 194.2835751771927, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 847.3118653297424, 72.04301393032074, 82.79570257663727, 20.0 ],
                    "text": "Nodes Range"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 502.0000066757202, 8.97436010837555, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 254.16667878627777, 275.00001311302185, 51.32743775844574, 33.0 ],
                    "text": "Range/Bereich"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "obj-36",
                    "maxclass": "live.tab",
                    "num_lines_patching": 1,
                    "num_lines_presentation": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 273.33334147930145, 156.0000046491623, 160.0, 18.329866409301758 ],
                    "presentation": 1,
                    "presentation_rect": [ 181.94445312023163, 250.00001192092896, 194.95249235630035, 23.517255306243896 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "Einzelflug", "Bereich", "Alle" ],
                            "parameter_longname": "live.tab",
                            "parameter_mmax": 2,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.tab",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 378.00000262260437, 67.0000034570694, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 259.72223460674286, 177.7777862548828, 71.29629510641098, 20.0 ],
                    "text": "Tempomax"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 201.99999737739563, 67.0000034570694, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 184.72223103046417, 177.7777862548828, 67.77781265974045, 20.0 ],
                    "text": "Tempomin"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 191.549298286438, 256.9411870241165, 54.92957818508148, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 186.11111998558044, 126.38889491558075, 50.0, 20.0 ],
                    "text": "Tempo"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.459160566329956, 116.66665637493134, 84.82394552230835, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 400.2381463646889, -23.0, 48.80952334403992, 33.0 ],
                    "text": "Target/Voice"
                }
            },
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
                    "format": 6,
                    "id": "obj-23",
                    "maxclass": "flonum",
                    "maximum": 20.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 184.00000548362732, 200.00000596046448, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 186.11111998558044, 104.1666716337204, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 273.33334147930145, 180.00000536441803, 55.0, 22.0 ],
                    "text": "mode $1"
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
                    "patching_rect": [ 6.5, 462.1211713552475, 50.0, 22.0 ],
                    "text": "target 0"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 68.00000202655792, 148.0000044107437, 29.5, 22.0 ],
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
                    "format": 6,
                    "id": "obj-26",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 556.0000165700912, 172.00000512599945, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 457.14285230636597, 15.957446694374084, 50.0, 22.0 ]
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
                    "patching_rect": [ 482.6666810512543, 200.00000596046448, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 847.4690924882889, 98.26470971107483, 50.0, 22.0 ]
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
                    "patching_rect": [ 1289.0244209766388, 135.74698841571808, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 847.4690924882889, 46.5753390789032, 50.0, 22.0 ]
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
                    "presentation": 1,
                    "presentation_rect": [ 809.0908377170563, 250.5, 122.0, 240.0 ],
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
                    "patching_rect": [ 989.0244209766388, -172.0, 650.0, 23.0 ],
                    "text": "Fliegenschwarm · Poly-Test mit bis zu 50 Stimmen"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.0, 0.0, 1.0 ],
                    "fontsize": 18.0,
                    "id": "poly",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "signal", "signal", "signal", "signal", "", "" ],
                    "patching_rect": [ 607.25, 367.0, 232.0, 29.0 ],
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
                    "patching_rect": [ 8.000000238418579, 148.0000044107437, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 397.14290803670883, 15.957446694374084, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "targetpre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8.000000238418579, 176.00000524520874, 90.0, 22.0 ],
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
                    "patching_rect": [ 33.33333432674408, 228.0000067949295, 38.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 184.72223103046417, 204.16667640209198, 38.0, 22.0 ],
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
                    "patching_rect": [ 78.66666901111603, 228.0000067949295, 34.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 261.11112356185913, 204.16667640209198, 34.0, 22.0 ],
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
                    "patching_rect": [ 124.00000369548798, 228.0000067949295, 52.0, 22.0 ],
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
                    "patching_rect": [ 184.00000548362732, 228.0000067949295, 59.0, 22.0 ],
                    "text": "tempo $1"
                }
            },
            {
                "box": {
                    "id": "loop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 313.33334267139435, 228.0000067949295, 47.0, 22.0 ],
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
                    "patching_rect": [ 368.00001096725464, 228.0000067949295, 45.0, 22.0 ],
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
                    "patching_rect": [ 424.0000126361847, 228.0000067949295, 51.0, 22.0 ],
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
                    "patching_rect": [ 1289.0244209766388, 163.795769572258, 65.0, 22.0 ],
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
                    "patching_rect": [ 846.835431933403, 193.2835751771927, 74.0, 22.0 ],
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
                    "patching_rect": [ 926.582266330719, 193.2835751771927, 60.0, 22.0 ],
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
                    "patching_rect": [ 996.202518582344, 193.2835751771927, 60.0, 22.0 ],
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
                    "patching_rect": [ 1065.8227708339691, 193.2835751771927, 60.0, 22.0 ],
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
                    "patching_rect": [ 1136.7088458538055, 193.2835751771927, 62.0, 22.0 ],
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
                    "patching_rect": [ 1206.3290981054306, 193.2835751771927, 62.0, 22.0 ],
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
                    "patching_rect": [ 482.6666810512543, 228.0000067949295, 65.0, 22.0 ],
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
                    "patching_rect": [ 556.0000165700912, 205.33333945274353, 48.0, 22.0 ],
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
                    "text": "12 0.395252 0.454081"
                }
            },
            {
                "box": {
                    "id": "statuslab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 731.7647364139557, 530.588257431984, 180.0, 20.0 ],
                    "text": "Stimmen-ID · X · Y"
                }
            },
            {
                "box": {
                    "id": "msg-resetquad",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1012.4320880174637, 108.91718888282776, 68.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 847.1910789012909, 158.6206979751587, 68.0, 22.0 ],
                    "text": "resetquad"
                }
            },
            {
                "box": {
                    "id": "voicecount-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 12.37113332748413, 339.0, 180.0, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 4,
                    "presentation_rect": [ 188.888897895813, 4.166666865348816, 51.0, 60.0 ],
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
                    "patching_rect": [ 12.37113332748413, 362.8865776062012, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 186.11111998558044, 65.27778089046478, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "color": [ 1.0, 0.933333333333333, 0.0, 1.0 ],
                    "fontsize": 16.0,
                    "id": "voicecount-js",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 12.98701286315918, 419.4805154800415, 389.6103858947754, 26.0 ],
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
                    "patching_rect": [ 12.37113332748413, 314.432972073555, 77.0, 22.0 ],
                    "text": "loadmess 50"
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
                    "patching_rect": [ 208.66666424274445, 15.000001907348633, 60.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 184.72223103046417, 154.1666740179062, 52.77777689695358, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "randomtempo-min-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 208.66666424274445, 40.33333599567413, 109.0, 22.0 ],
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
                    "patching_rect": [ 208.66666424274445, -22.333332538604736, 82.0, 22.0 ],
                    "text": "loadmess 0.7"
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
                    "patching_rect": [ 372.6666691303253, 23.000002145767212, 60.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 259.72223460674286, 154.1666740179062, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "randomtempo-max-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 372.6666691303253, 45.666669487953186, 112.0, 22.0 ],
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
                    "patching_rect": [ 372.6666691303253, -11.66666555404663, 82.0, 22.0 ],
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
                    "patching_rect": [ 290.0, -49.0, 118.0, 22.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 256.9444566965103, 104.1666716337204, 65.0, 35.0 ],
                    "text": "randomizetempo"
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
                    "patching_rect": [ 978.8235702514648, 283.5294235944748, 440.0, 440.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 397.14290803670883, 42.857148349285126, 440.0, 440.0 ]
                }
            },
            {
                "box": {
                    "id": "swarm-display-voices",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.835431933403, 160.44775545597076, 95.0, 22.0 ],
                    "text": "prepend voices"
                }
            },
            {
                "box": {
                    "id": "swarm-display-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 974.2857375144958, 724.5294235944748, 440.0, 20.0 ],
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
                    "patching_rect": [ 503.28205811977386, -55.128212094306946, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 184.72223103046417, 279.16667997837067, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "randomflight-length-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 503.28205811977386, -24.358977437019348, 148.0, 22.0 ],
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
                    "patching_rect": [ 503.28205811977386, -82.0512924194336, 82.0, 22.0 ],
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
                    "patching_rect": [ 514.0000066757202, 104.33333790302277, 126.0, 22.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 315.27779281139374, 275.00001311302185, 62.0, 35.0 ],
                    "text": "randomizeflights"
                }
            },
            {
                "box": {
                    "id": "moving-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 201.99999737739563, 338.9869569778442, 225.0, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 4,
                    "presentation_rect": [ 256.9444566965103, 5.555555820465088, 69.0, 60.0 ],
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
                    "patching_rect": [ 201.99999737739563, 362.9, 55.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 261.11112356185913, 65.27778089046478, 55.0, 22.0 ]
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
                    "patching_rect": [ 798.8888640403748, -17.925927996635437, 62.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.55556416511536, 330.55557131767273, 62.0, 22.0 ],
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
                    "patching_rect": [ 798.8888640403748, 12.93827199935913, 76.0, 22.0 ],
                    "text": "density $1"
                }
            },
            {
                "box": {
                    "id": "density-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 798.8888640403748, 41.33333599567413, 170.0, 20.0 ],
                    "text": "Verdichtung (%)"
                }
            },
            {
                "box": {
                    "id": "density-init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 798.8888640403748, -46.32099199295044, 78.0, 22.0 ],
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
                    "patching_rect": [ 885.3086240291595, -17.925927996635437, 62.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.55556416511536, 366.6666841506958, 62.0, 22.0 ],
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
                    "patching_rect": [ 885.3086240291595, 12.93827199935913, 62.0, 22.0 ],
                    "text": "grid $1"
                }
            },
            {
                "box": {
                    "id": "grid-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 885.3086240291595, 41.33333599567413, 150.0, 20.0 ],
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
                    "patching_rect": [ 885.3086240291595, -46.32099199295044, 78.0, 22.0 ],
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
                    "patching_rect": [ 975.4320880174637, -17.925927996635437, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.55556416511536, 402.7777969837189, 45.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "subswarms-count-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 975.4320880174637, 12.93827199935913, 105.0, 22.0 ],
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
                    "patching_rect": [ 975.4320880174637, -46.32099199295044, 75.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "subswarms-count-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 975.4320880174637, 41.33333599567413, 130.0, 20.0 ],
                    "text": "Teilschwärme (1–4)"
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
                    "patching_rect": [ 1092.716048002243, -17.925927996635437, 45.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 180.55556416511536, 438.88890981674194, 45.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "subswarms-target-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1092.716048002243, 12.93827199935913, 135.0, 22.0 ],
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
                    "patching_rect": [ 1092.716048002243, -47.55555999279022, 75.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "subswarms-target-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1110.0, 41.33333599567413, 130.0, 20.0 ],
                    "text": "Schwarm · 0 = alle"
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
                    "id": "randomgain-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 680.2979509830475, -140.677969455719, 121.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 521.3483562469482, 16.957446694374084, 121.0, 20.0 ],
                    "text": "ZUFÄLLIGE PEGEL"
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
                    "text": "Innerer Radius (%)"
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
                    "text": "Äußerer Radius (%)"
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
                    "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
                    "id": "pulsetempo-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1518.1816842556, 583.3332818746567, 160.0, 20.0 ],
                    "text": "Pulstempo (Faktor)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
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
                    "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
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
                    "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
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
                    "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
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
                    "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
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
                    "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
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
                    "hint": "Geschwindigkeitsfaktor der Pulsbewegung; kein Wert in Hertz.",
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
                    "patching_rect": [ 1506.4218926429749, 856.8806624412537, 160.0, 20.0 ],
                    "text": "SNAKE · FLUGKETTE"
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
                    "patching_rect": [ 1506.4218926429749, 883.4861648082733, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "snake-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1536.697119474411, 883.4861648082733, 100.0, 22.0 ],
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
                    "patching_rect": [ 1641.2842667102814, 883.4861648082733, 41.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "hint": "Reglerskala für Abstand entlang der gespeicherten Flugbahn; kein prozentualer Raumabstand.",
                    "id": "snakespacing-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1506.4218926429749, 913.7613916397095, 160.0, 20.0 ],
                    "text": "Kettenabstand (0–100)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "hint": "Reglerskala für Abstand entlang der gespeicherten Flugbahn; kein prozentualer Raumabstand.",
                    "id": "snakespacing-num",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1506.4218926429749, 934.8623073101044, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hint": "Reglerskala für Abstand entlang der gespeicherten Flugbahn; kein prozentualer Raumabstand.",
                    "id": "snakespacing-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1566.9723463058472, 934.8623073101044, 129.0, 22.0 ],
                    "text": "prepend snakespacing"
                }
            },
            {
                "box": {
                    "hint": "Reglerskala für Abstand entlang der gespeicherten Flugbahn; kein prozentualer Raumabstand.",
                    "id": "snakespacing-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1506.4218926429749, 961.467809677124, 50.0, 22.0 ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "hint": "Reglerskala für Abstand entlang der gespeicherten Flugbahn; kein prozentualer Raumabstand.",
                    "id": "snakespacing-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1561.4677596092224, 961.467809677124, 85.0, 22.0 ],
                    "text": "loadmess 20."
                }
            },
            {
                "box": {
                    "id": "alignment-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 958.2562619447708, 970.8307992219925, 99.99999642372131, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 183.719147503376, 683.9506719112396, 69.78397971391678, 33.0 ],
                    "text": "PARALLELFLUG"
                }
            },
            {
                "box": {
                    "id": "escape-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1532.7877395153046, 1216.0, 175.0, 20.0 ],
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
                    "patching_rect": [ 1532.7877395153046, 1241.6880712509155, 80.0, 22.0 ],
                    "text": "escape"
                }
            },
            {
                "box": {
                    "id": "escape-strength-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1532.7877395153046, 1271.0458669662476, 160.0, 20.0 ],
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
                    "patching_rect": [ 1532.7877395153046, 1293.0642137527466, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "escape-strength-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1593.3381931781769, 1293.0642137527466, 138.0, 22.0 ],
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
                    "patching_rect": [ 1532.7877395153046, 1319.6697161197662, 50.0, 22.0 ],
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
                    "patching_rect": [ 1587.8336064815521, 1319.6697161197662, 85.0, 22.0 ],
                    "text": "loadmess 50."
                }
            },
            {
                "box": {
                    "id": "escape-return-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1532.7877395153046, 1349.0275118350983, 160.0, 20.0 ],
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
                    "patching_rect": [ 1532.7877395153046, 1371.0458586215973, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "escape-return-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1593.3381931781769, 1371.0458586215973, 126.0, 22.0 ],
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
                    "patching_rect": [ 1532.7877395153046, 1397.651360988617, 50.0, 22.0 ],
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
                    "patching_rect": [ 1587.8336064815521, 1397.651360988617, 80.0, 22.0 ],
                    "text": "loadmess 2."
                }
            },
            {
                "box": {
                    "id": "portal-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1826.6053521633148, -95.99749112129211, 210.0, 20.0 ],
                    "text": "PORTAL · EIN-/AUSFLUG"
                }
            },
            {
                "box": {
                    "id": "portal-mode-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1826.6053521633148, -71.22685098648071, 210.0, 20.0 ],
                    "text": "−1 Einflug · 0 Aus · 1 Ausflug"
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
                    "patching_rect": [ 1826.6053521633148, -49.20850419998169, 55.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "portal-mode-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1886.238374710083, -49.20850419998169, 130.0, 22.0 ],
                    "text": "prepend portalmode"
                }
            },
            {
                "box": {
                    "id": "portal-x-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1826.6053521633148, -19.850708484649658, 110.0, 20.0 ],
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
                    "patching_rect": [ 1826.6053521633148, 0.3327760696411133, 62.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "portal-x-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1892.660392522812, 0.3327760696411133, 150.0, 22.0 ],
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
                    "patching_rect": [ 2048.6236822605133, 0.3327760696411133, 85.0, 22.0 ],
                    "text": "loadmess 0.5"
                }
            },
            {
                "box": {
                    "id": "portal-y-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1826.6053521633148, 28.77314066886902, 110.0, 20.0 ],
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
                    "patching_rect": [ 1826.6053521633148, 50.79148745536804, 62.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "portal-y-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1892.660392522812, 50.79148745536804, 150.0, 22.0 ],
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
                    "patching_rect": [ 2048.6236822605133, 50.79148745536804, 85.0, 22.0 ],
                    "text": "loadmess 0.5"
                }
            },
            {
                "box": {
                    "id": "portal-direction-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1826.6053521633148, 78.31442093849182, 150.0, 20.0 ],
                    "text": "Strahlrichtung (°)"
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
                    "patching_rect": [ 1826.6053521633148, 98.49790549278259, 62.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "portal-direction-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1892.660392522812, 98.49790549278259, 150.0, 22.0 ],
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
                    "patching_rect": [ 2048.6236822605133, 98.49790549278259, 85.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "id": "portal-width-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1826.6053521633148, 126.9382700920105, 150.0, 20.0 ],
                    "text": "Öffnungswinkel (°)"
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
                    "patching_rect": [ 1826.6053521633148, 147.12175464630127, 62.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "portal-width-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1892.660392522812, 147.12175464630127, 150.0, 22.0 ],
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
                    "patching_rect": [ 2048.6236822605133, 147.12175464630127, 85.0, 22.0 ],
                    "text": "loadmess 45."
                }
            },
            {
                "box": {
                    "hint": "Geschwindigkeitsregler mit Weglängenausgleich; keine feste Anzahl von Zyklen pro Sekunde.",
                    "id": "portal-speed-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1826.6053521633148, 175.56211924552917, 150.0, 20.0 ],
                    "text": "Flugtempo (0–20)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "hint": "Geschwindigkeitsregler mit Weglängenausgleich; keine feste Anzahl von Zyklen pro Sekunde.",
                    "id": "portal-speed-num",
                    "maxclass": "flonum",
                    "maximum": 20.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1826.6053521633148, 197.5804660320282, 62.0, 22.0 ]
                }
            },
            {
                "box": {
                    "hint": "Geschwindigkeitsregler mit Weglängenausgleich; keine feste Anzahl von Zyklen pro Sekunde.",
                    "id": "portal-speed-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1892.660392522812, 197.5804660320282, 150.0, 22.0 ],
                    "text": "prepend portalspeed"
                }
            },
            {
                "box": {
                    "hint": "Geschwindigkeitsregler mit Weglängenausgleich; keine feste Anzahl von Zyklen pro Sekunde.",
                    "id": "portal-speed-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2048.6236822605133, 197.5804660320282, 87.0, 22.0 ],
                    "text": "loadmess 0.25"
                }
            },
            {
                "box": {
                    "id": "portal-deviation-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1826.6053521633148, 225.10339951515198, 150.0, 20.0 ],
                    "text": "Bahnabweichung (%)"
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
                    "patching_rect": [ 1826.6053521633148, 245.28688406944275, 62.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "portal-deviation-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1892.660392522812, 245.28688406944275, 150.0, 22.0 ],
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
                    "patching_rect": [ 2048.6236822605133, 245.28688406944275, 85.0, 22.0 ],
                    "text": "loadmess 25."
                }
            },
            {
                "box": {
                    "id": "portal-mouse-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1826.6053521633148, 273.72724866867065, 300.0, 20.0 ],
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
            },
            {
                "box": {
                    "id": "landing-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 1005.0, 240.0, 20.0 ],
                    "text": "COLLECTIVE LANDING"
                }
            },
            {
                "box": {
                    "id": "landing-mode-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 1030.0, 155.0, 20.0 ],
                    "text": "Landing-Modus"
                }
            },
            {
                "box": {
                    "hint": "Schaltet Collective Landing als Hauptbewegung ein oder aus.",
                    "id": "landing-mode",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1806.25, 1052.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "landing-mode-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1840.25, 1052.0, 145.0, 22.0 ],
                    "text": "prepend landingmode"
                }
            },
            {
                "box": {
                    "id": "landing-mode-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1995.25, 1052.0, 75.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "landing-points-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 1084.0, 180.0, 20.0 ],
                    "text": "Landepunkte (1–50)"
                }
            },
            {
                "box": {
                    "hint": "Die aktiven Fliegen werden möglichst gleichmäßig auf diese Anzahl zufälliger Punkte verteilt.",
                    "id": "landing-points",
                    "maxclass": "number",
                    "maximum": 50,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1806.25, 1106.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "landing-points-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1881.25, 1106.0, 150.0, 22.0 ],
                    "text": "prepend landingpoints"
                }
            },
            {
                "box": {
                    "id": "landing-points-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2041.25, 1106.0, 75.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "landing-cycle-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 1138.0, 180.0, 20.0 ],
                    "text": "Zyklusdauer (s)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "hint": "Globaler Starttakt. Ist eine Fliege beim nächsten Takt noch unterwegs, behält sie ihr Ziel; freie Fliegen dürfen bereits neu starten.",
                    "id": "landing-cycle",
                    "maxclass": "flonum",
                    "maximum": 120.0,
                    "minimum": 0.5,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1806.25, 1160.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "landing-cycle-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1881.25, 1160.0, 150.0, 22.0 ],
                    "text": "prepend landingcycle"
                }
            },
            {
                "box": {
                    "id": "landing-cycle-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2041.25, 1160.0, 85.0, 22.0 ],
                    "text": "loadmess 10."
                }
            },
            {
                "box": {
                    "id": "landing-start-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 1192.0, 180.0, 20.0 ],
                    "text": "Startfenster (s)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "hint": "0: alle starten gleichzeitig. Größere Werte verteilen die Starts über dieses Zeitfenster.",
                    "id": "landing-start",
                    "maxclass": "flonum",
                    "maximum": 120.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1806.25, 1214.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "landing-start-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1881.25, 1214.0, 180.0, 22.0 ],
                    "text": "prepend landingstartwindow"
                }
            },
            {
                "box": {
                    "id": "landing-start-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2071.25, 1214.0, 75.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "id": "landing-end-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 1246.0, 180.0, 20.0 ],
                    "text": "Landefenster (s)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "hint": "0: alle landen gleichzeitig. Größere Werte verteilen die Landungen über dieses Zeitfenster.",
                    "id": "landing-end",
                    "maxclass": "flonum",
                    "maximum": 120.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1806.25, 1268.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "landing-end-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1881.25, 1268.0, 180.0, 22.0 ],
                    "text": "prepend landingendwindow"
                }
            },
            {
                "box": {
                    "id": "landing-end-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2071.25, 1268.0, 75.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "hint": "Erzeugt sofort neue zufällige Landepunkte.",
                    "id": "landing-trigger",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1806.25, 1305.0, 145.0, 26.0 ],
                    "text": "Nächster Zyklus",
                    "texton": "Nächster Zyklus"
                }
            },
            {
                "box": {
                    "id": "landing-trigger-msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1961.25, 1307.0, 95.0, 22.0 ],
                    "text": "landingtrigger"
                }
            },
            {
                "box": {
                    "id": "landing-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1806.25, 1340.0, 360.0, 20.0 ],
                    "text": "Anflugkrümmung: vorhandener Regler Bahnabweichung (%)"
                }
            },
            {
                "box": {
                    "id": "landing-controller",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2196.9695031642914, 1069.696875333786, 165.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "landing_control.js",
                        "parameter_enable": 0
                    },
                    "text": "js landing_control.js"
                }
            },
            {
                "box": {
                    "id": "landing-broadcast-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2196.9695031642914, 1104.5453571081161, 205.0, 22.0 ],
                    "text": "s 3922_landing_commands"
                }
            },
            {
                "box": {
                    "id": "landing-target-recv",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 803.2608542442322, 272.72724866867065, 205.0, 22.0 ],
                    "text": "r 3922_landing_targets"
                }
            },
            {
                "box": {
                    "id": "flocking-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1014.8936097621918, 260.0, 20.0 ],
                    "text": "FLOCKING · lokale Nachbarschaften"
                }
            },
            {
                "box": {
                    "id": "flocking-amount-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1040.4255244731903, 150.0, 20.0 ],
                    "text": "Flocking-Stärke (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "flocking-amount",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 596.3298664093018, 1061.702120065689, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "flocking-amount-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 670.7979509830475, 1061.702120065689, 140.0, 22.0 ],
                    "text": "prepend flocking"
                }
            },
            {
                "box": {
                    "id": "flocking-amount-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 821.8617796897888, 1061.702120065689, 75.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "id": "flocking-neighbors-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1093.6170134544373, 177.0, 20.0 ],
                    "text": "Nachbarn / Organisation (1–20)"
                }
            },
            {
                "box": {
                    "id": "flocking-neighbors",
                    "maxclass": "number",
                    "maximum": 20,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 596.3298664093018, 1114.893609046936, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "flocking-neighbors-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 670.7979509830475, 1114.893609046936, 165.0, 22.0 ],
                    "text": "prepend flockneighbors"
                }
            },
            {
                "box": {
                    "id": "flocking-neighbors-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 845.2660348415375, 1114.893609046936, 75.0, 22.0 ],
                    "text": "loadmess 6"
                }
            },
            {
                "box": {
                    "id": "flocking-separation-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1146.8085024356842, 192.0, 20.0 ],
                    "text": "Mindestabstand / Ausdehnung (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "flocking-separation",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 596.3298664093018, 1170.2127575874329, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "flocking-separation-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 670.7979509830475, 1170.2127575874329, 175.0, 22.0 ],
                    "text": "prepend flockseparation"
                }
            },
            {
                "box": {
                    "id": "flocking-separation-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 855.9043326377869, 1170.2127575874329, 85.0, 22.0 ],
                    "text": "loadmess 35."
                }
            },
            {
                "box": {
                    "id": "flocking-broadcast-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 960.1596510410309, 1061.702120065689, 205.0, 22.0 ],
                    "text": "s 3922_flocking_commands"
                }
            },
            {
                "box": {
                    "id": "flocking-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1204.255310535431, 672.0, 20.0 ],
                    "text": "Mehr Nachbarn = größere Reichweite und stärkere Organisation; Mindestabstand öffnet den Raum. Gruppenfilter bleibt aktiv."
                }
            },
            {
                "box": {
                    "id": "flow-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1260.0, 310.0, 20.0 ],
                    "text": "FORMATIONSGEOMETRIE UND FLOW"
                }
            },
            {
                "box": {
                    "id": "formation-shape-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1285.0, 226.0, 20.0 ],
                    "text": "Form: 0 Kreis · 50 Dreieck · 100 Quadrat"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "formation-shape",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 596.3298664093018, 1307.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "formation-shape-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 671.3298664093018, 1307.0, 165.0, 22.0 ],
                    "text": "prepend formationshape"
                }
            },
            {
                "box": {
                    "id": "formation-shape-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.3298664093018, 1307.0, 90.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "id": "flow-mode-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1343.0, 150.0, 20.0 ],
                    "text": "Flow-Modus"
                }
            },
            {
                "box": {
                    "id": "flow-mode",
                    "items": [ "Uniform", ",", "Counter", ",", "Mirror" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 596.3298664093018, 1365.0, 125.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "flow-mode-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 731.3298664093018, 1365.0, 135.0, 22.0 ],
                    "text": "prepend flowmode"
                }
            },
            {
                "box": {
                    "id": "flow-mode-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 876.3298664093018, 1365.0, 75.0, 22.0 ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "flow-amount-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1397.0, 210.0, 20.0 ],
                    "text": "Flow-Stärke (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "flow-amount",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 596.3298664093018, 1419.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "flow-amount-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 671.3298664093018, 1419.0, 165.0, 22.0 ],
                    "text": "prepend flowamount"
                }
            },
            {
                "box": {
                    "id": "flow-amount-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.3298664093018, 1419.0, 90.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "id": "flow-direction-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1451.0, 210.0, 20.0 ],
                    "text": "Richtung / Mirror-Achse (°)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "flow-direction",
                    "maxclass": "flonum",
                    "maximum": 360.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 596.3298664093018, 1473.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "flow-direction-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 671.3298664093018, 1473.0, 165.0, 22.0 ],
                    "text": "prepend flowdirection"
                }
            },
            {
                "box": {
                    "id": "flow-direction-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.3298664093018, 1473.0, 90.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "id": "flow-speed-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1505.0, 210.0, 20.0 ],
                    "text": "Flow-Tempo (1 = 0,2 Feld/s)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "flow-speed",
                    "maxclass": "flonum",
                    "maximum": 5.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 596.3298664093018, 1527.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "flow-speed-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 671.3298664093018, 1527.0, 165.0, 22.0 ],
                    "text": "prepend flowspeed"
                }
            },
            {
                "box": {
                    "id": "flow-speed-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.3298664093018, 1527.0, 90.0, 22.0 ],
                    "text": "loadmess 0.2"
                }
            },
            {
                "box": {
                    "id": "flow-layers-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1559.0, 210.0, 20.0 ],
                    "text": "Counter-Schichten (1–4)"
                }
            },
            {
                "box": {
                    "id": "flow-layers",
                    "maxclass": "number",
                    "maximum": 4,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 596.3298664093018, 1581.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "flow-layers-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 671.3298664093018, 1581.0, 165.0, 22.0 ],
                    "text": "prepend flowlayers"
                }
            },
            {
                "box": {
                    "id": "flow-layers-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.3298664093018, 1581.0, 90.0, 22.0 ],
                    "text": "loadmess 2"
                }
            },
            {
                "box": {
                    "id": "flow-center-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1613.0, 210.0, 20.0 ],
                    "text": "Mirror Center (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "flow-center",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 596.3298664093018, 1635.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "flow-center-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 671.3298664093018, 1635.0, 165.0, 22.0 ],
                    "text": "prepend flowcenter"
                }
            },
            {
                "box": {
                    "id": "flow-center-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.3298664093018, 1635.0, 90.0, 22.0 ],
                    "text": "loadmess 50."
                }
            },
            {
                "box": {
                    "id": "flow-broadcast-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1004.3956534862518, 1432.9671030044556, 190.0, 22.0 ],
                    "text": "s 3922_flow_commands"
                }
            },
            {
                "box": {
                    "id": "flow-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1721.0, 700.0, 20.0 ],
                    "text": "Uniform und Counter: Parallel-Offset verschiebt alle Bahnen quer zur Flugrichtung. Mirror ignoriert diesen Wert."
                }
            },
            {
                "box": {
                    "id": "swarm-sync-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1040.1596510410309, 1275.8242381811142, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "swarm-sync-metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1040.1596510410309, 1305.0, 70.0, 22.0 ],
                    "text": "qmetro 20"
                }
            },
            {
                "box": {
                    "id": "swarm-sync-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 1040.1596510410309, 1330.7692958116531, 45.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "swarm-sync-leader",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1051.6484030485153, 1405.494574189186, 110.0, 22.0 ],
                    "text": "swarmtickleader"
                }
            },
            {
                "box": {
                    "id": "swarm-sync-render",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1051.6484030485153, 1374.7253419160843, 110.0, 22.0 ],
                    "text": "swarmtickrender"
                }
            },
            {
                "box": {
                    "id": "flow-offset-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 596.3298664093018, 1667.0, 260.0, 20.0 ],
                    "text": "Parallel-Offset Uniform/Counter (%)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "flow-offset",
                    "maxclass": "flonum",
                    "maximum": 100.0,
                    "minimum": -100.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 596.3298664093018, 1689.0, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "flow-offset-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 671.3298664093018, 1689.0, 165.0, 22.0 ],
                    "text": "prepend flowoffset"
                }
            },
            {
                "box": {
                    "id": "flow-offset-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.3298664093018, 1689.0, 90.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 620.8954983949661, 160.44775545597076, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "number",
                    "maximum": 50,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 701.8954983949661, 160.44775545597076, 50.0, 22.0 ]
                }
            }
        ],
        "lines": [
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
                    "destination": [ "flocking-amount-pre", 0 ],
                    "source": [ "flocking-amount", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flocking-amount", 0 ],
                    "source": [ "flocking-amount-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flocking-broadcast-send", 0 ],
                    "source": [ "flocking-amount-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flocking-neighbors-pre", 0 ],
                    "source": [ "flocking-neighbors", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flocking-neighbors", 0 ],
                    "source": [ "flocking-neighbors-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flocking-broadcast-send", 0 ],
                    "source": [ "flocking-neighbors-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flocking-separation-pre", 0 ],
                    "source": [ "flocking-separation", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flocking-separation", 0 ],
                    "source": [ "flocking-separation-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flocking-broadcast-send", 0 ],
                    "source": [ "flocking-separation-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-amount-pre", 0 ],
                    "source": [ "flow-amount", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-amount", 0 ],
                    "source": [ "flow-amount-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-broadcast-send", 0 ],
                    "source": [ "flow-amount-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-center-pre", 0 ],
                    "source": [ "flow-center", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-center", 0 ],
                    "source": [ "flow-center-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-broadcast-send", 0 ],
                    "source": [ "flow-center-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-direction-pre", 0 ],
                    "source": [ "flow-direction", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-direction", 0 ],
                    "source": [ "flow-direction-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-broadcast-send", 0 ],
                    "source": [ "flow-direction-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-layers-pre", 0 ],
                    "source": [ "flow-layers", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-layers", 0 ],
                    "source": [ "flow-layers-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-broadcast-send", 0 ],
                    "source": [ "flow-layers-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-mode-pre", 0 ],
                    "source": [ "flow-mode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-mode", 0 ],
                    "source": [ "flow-mode-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-broadcast-send", 0 ],
                    "source": [ "flow-mode-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-offset-pre", 0 ],
                    "source": [ "flow-offset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-offset", 0 ],
                    "source": [ "flow-offset-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-broadcast-send", 0 ],
                    "source": [ "flow-offset-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-speed-pre", 0 ],
                    "source": [ "flow-speed", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-speed", 0 ],
                    "source": [ "flow-speed-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-broadcast-send", 0 ],
                    "source": [ "flow-speed-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "formation-shape-pre", 0 ],
                    "source": [ "formation-shape", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "formation-shape", 0 ],
                    "source": [ "formation-shape-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-broadcast-send", 0 ],
                    "source": [ "formation-shape-pre", 0 ]
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
                    "destination": [ "landing-broadcast-send", 0 ],
                    "order": 0,
                    "source": [ "landing-controller", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "order": 1,
                    "source": [ "landing-controller", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-cycle-pre", 0 ],
                    "source": [ "landing-cycle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-cycle", 0 ],
                    "source": [ "landing-cycle-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-controller", 0 ],
                    "source": [ "landing-cycle-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-end-pre", 0 ],
                    "source": [ "landing-end", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-end", 0 ],
                    "source": [ "landing-end-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-controller", 0 ],
                    "source": [ "landing-end-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-mode-pre", 0 ],
                    "source": [ "landing-mode", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-mode", 0 ],
                    "source": [ "landing-mode-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-controller", 0 ],
                    "source": [ "landing-mode-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-points-pre", 0 ],
                    "source": [ "landing-points", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-points", 0 ],
                    "source": [ "landing-points-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-controller", 0 ],
                    "source": [ "landing-points-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-start-pre", 0 ],
                    "source": [ "landing-start", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-start", 0 ],
                    "source": [ "landing-start-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-controller", 0 ],
                    "source": [ "landing-start-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-display", 0 ],
                    "source": [ "landing-target-recv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-trigger-msg", 0 ],
                    "source": [ "landing-trigger", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "landing-controller", 0 ],
                    "source": [ "landing-trigger-msg", 0 ]
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
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-12", 0 ]
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
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-2", 0 ]
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
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-36", 0 ]
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
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "poly", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 1 ],
                    "source": [ "obj-8", 0 ]
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
                    "destination": [ "obj-9", 0 ],
                    "order": 1,
                    "source": [ "subswarms-target-pre", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "voicecount-js", 1 ],
                    "order": 0,
                    "source": [ "subswarms-target-pre", 0 ]
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
                    "destination": [ "obj-12", 0 ],
                    "source": [ "subswarms-ui-route", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 2 ],
                    "source": [ "subswarms-ui-route", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 1 ],
                    "source": [ "subswarms-ui-route", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "subswarms-ui-route", 2 ]
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
                    "destination": [ "flow-broadcast-send", 0 ],
                    "source": [ "swarm-sync-leader", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-sync-metro", 0 ],
                    "source": [ "swarm-sync-load", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-sync-trigger", 0 ],
                    "source": [ "swarm-sync-metro", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "flow-broadcast-send", 0 ],
                    "source": [ "swarm-sync-render", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-sync-leader", 0 ],
                    "source": [ "swarm-sync-trigger", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "swarm-sync-render", 0 ],
                    "source": [ "swarm-sync-trigger", 0 ]
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
            "obj-36": [ "live.tab", "live.tab", 0 ],
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
        "autosave": 0,
        "boxgroups": [
            {
                "boxes": [ "randomgain-title", "obj-61" ]
            }
        ]
    }
}