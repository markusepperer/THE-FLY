{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 5,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ -1886.0, 92.0, 1296.0, 905.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-8",
                    "linecount": 3,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1233.3333921432495, 1263.444504737854, 58.0, 49.0 ],
                    "text": "receive~ #1_Monosource"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1298.7324112653732, 1263.444504737854, 146.0, 22.0 ],
                    "text": "receive #1_Mastervolume"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1298.7324112653732, 1318.8889517784119, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "masterlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1374.6772200465202, 1291.0000615119934, 78.18181538581848, 20.0 ],
                    "text": "Master 0–1 "
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.796078431372549, 0.043137254901960784, 0.043137254901960784, 1.0 ],
                    "format": 6,
                    "id": "master",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1298.7324112653732, 1290.0000615119934, 70.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1840.0625, 9.5625, 74.66411119699478, 22.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 1246.8805602788925, 1345.5556197166443, 70.0, 22.0 ],
                    "text": "mc.pack~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1340.7536352276802, 1894.0476009845734, 102.0, 22.0 ],
                    "text": "send~ #1panner4"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1121.9780768156052, 1888.2882871627808, 102.0, 22.0 ],
                    "text": "send~ #1panner3"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 867.0330094099045, 1888.2882871627808, 102.0, 22.0 ],
                    "text": "send~ #1panner2"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 605.6923373937607, 1888.2882871627808, 102.0, 22.0 ],
                    "text": "send~ #1panner1"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1394.6583451032639, 1484.4445152282715, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1705.6875, 34.5625, 100.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1311.8805602788925, 1433.3125, 142.0, 22.0 ],
                    "text": "rampsmooth~ 2880 2880"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1246.8805602788925, 1373.3333988189697, 84.0, 22.0 ],
                    "text": "mc.unpack~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 5,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 111.0, 1344.0, 899.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "resetgeo",
                                    "linecount": 4,
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 138.0, 101.0, 161.6438238620758, 62.0 ],
                                    "text": "setnode 1 0.15 0.15 0.63 1, setnode 2 0.85 0.15 0.63 1, setnode 3 0.15 0.85 0.63 1, setnode 4 0.85 0.85 0.63 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "resetcontrols",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 145.58823347091675, 207.54290914535522, 75.0, 22.0 ],
                                    "text": "set 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "percent-reset",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 201.35258519649506, 85.0, 22.0 ],
                                    "text": "set 100."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 91.79410114854431, 40.00001163159175, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-29",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 126.79410114854431, 40.00001163159175, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.00003414854427, 289.54291963159176, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-31",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 111.57327614854421, 289.54291963159176, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-32",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 145.58829114854439, 289.54291963159176, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "percent-reset", 0 ],
                                    "order": 1,
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "resetcontrols", 0 ],
                                    "order": 0,
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "resetgeo", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "percent-reset", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "resetcontrols", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "resetgeo", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1384.7826202511787, 858.715167760849, 57.971014976501465, 22.0 ],
                    "text": "p SET"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "bang", "", "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 5,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 111.0, 1344.0, 899.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial Bold",
                                    "fontsize": 10.0,
                                    "id": "geo0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 5,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 100.0, 100.0, 730.0, 400.0 ],
                                        "default_fontsize": 10.0,
                                        "default_fontname": "Arial Bold",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 25.0, 30.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "scale",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 30.0, 75.0, 210.0, 22.0 ],
                                                    "text": "* 0.0063"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "msg",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 125.0, 210.0, 22.0 ],
                                                    "text": "nsize $1 $1 $1 $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 30.0, 320.0, 30.0, 22.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "scale", 0 ],
                                                    "source": [ "in", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "msg", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "msg", 0 ],
                                                    "source": [ "scale", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 63.51351261138916, 100.0, 160.0, 20.0 ],
                                    "saved_object_attributes": {
                                        "fontname": "Arial Bold",
                                        "fontsize": 10.0
                                    },
                                    "text": "p Einflussgroesse_Prozent"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial Bold",
                                    "fontsize": 10.0,
                                    "id": "geo1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 5,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 25.0, 69.0, 233.0, 538.0 ],
                                        "default_fontsize": 10.0,
                                        "default_fontname": "Arial Bold",
                                        "gridsize": [ 8.0, 8.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 16.0, 155.0, 79.0, 18.0 ],
                                                    "text": "Infinite scrolling"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-78",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 136.0, 272.0, 71.0, 18.0 ],
                                                    "text": "< Nodes alias"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 48.0, 328.0, 34.5, 18.0 ],
                                                    "text": "gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 104.0, 208.0, 34.5, 18.0 ],
                                                    "text": "b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 64.0, 208.0, 34.5, 18.0 ],
                                                    "text": "b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-10",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 144.0, 248.0, 32.5, 16.0 ],
                                                    "text": "5."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-9",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 104.0, 248.0, 32.5, 16.0 ],
                                                    "text": "-5."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-135",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 81.0, 408.0, 39.0, 16.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-134",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 440.0, 50.0, 18.0 ],
                                                    "text": "prepend"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-132",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 384.0, 98.0, 18.0 ],
                                                    "text": "pack 0. 0. 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-130",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "float", "float", "float", "int" ],
                                                    "patching_rect": [ 64.0, 296.0, 109.0, 18.0 ],
                                                    "text": "unpack 0. 0. 0. 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-104",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 248.0, 38.0, 16.0 ],
                                                    "text": "dump"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "color": [ 0.180392, 0.631373, 1.0, 1.0 ],
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-105",
                                                    "linecount": 3,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 64.0, 272.0, 71.0, 18.0 ],
                                                    "saved_object_attributes": {
                                                        "embed": 0,
                                                        "precision": 6
                                                    },
                                                    "text": "coll #0-quad-nodes"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-113",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 464.0, 91.0, 18.0 ],
                                                    "text": "prepend setnode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-115",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 5,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 25.0, 69.0, 268.0, 389.0 ],
                                                        "default_fontsize": 10.0,
                                                        "default_fontname": "Arial Bold",
                                                        "gridsize": [ 8.0, 8.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-4",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 152.0, 160.0, 18.0, 18.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-3",
                                                                    "index": 2,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 104.0, 336.0, 18.0, 18.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-2",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 72.0, 336.0, 18.0, 18.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-1",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 104.0, 24.0, 18.0, 18.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-51",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 72.0, 24.0, 18.0, 18.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-251",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 104.0, 304.0, 86.5, 18.0 ],
                                                                    "text": "scale -1. 1. 1. 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-252",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 72.0, 280.0, 86.5, 18.0 ],
                                                                    "text": "scale -1. 1. 0. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-238",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "float", "float" ],
                                                                    "patching_rect": [ 72.0, 256.0, 51.0, 18.0 ],
                                                                    "text": "poltocar"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-237",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 104.0, 232.0, 59.0, 18.0 ],
                                                                    "text": "* 3.141593"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-236",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 104.0, 208.0, 36.0, 18.0 ],
                                                                    "text": "/ 180."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-234",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 104.0, 184.0, 66.5, 18.0 ],
                                                                    "text": "+ 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-230",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 104.0, 160.0, 37.0, 18.0 ],
                                                                    "text": "* 180."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-229",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 104.0, 136.0, 58.0, 18.0 ],
                                                                    "text": "/ 3.141593"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-223",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 104.0, 88.0, 86.5, 18.0 ],
                                                                    "text": "scale 0. 1. 1. -1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-222",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 72.0, 64.0, 86.5, 18.0 ],
                                                                    "text": "scale 0. 1. -1. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-221",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "float", "float" ],
                                                                    "patching_rect": [ 72.0, 112.0, 51.0, 18.0 ],
                                                                    "text": "cartopol"
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-223", 0 ],
                                                                    "source": [ "obj-1", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-229", 0 ],
                                                                    "source": [ "obj-221", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-238", 0 ],
                                                                    "source": [ "obj-221", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-221", 0 ],
                                                                    "source": [ "obj-222", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-221", 1 ],
                                                                    "source": [ "obj-223", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-230", 0 ],
                                                                    "source": [ "obj-229", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-234", 0 ],
                                                                    "source": [ "obj-230", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-236", 0 ],
                                                                    "source": [ "obj-234", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-237", 0 ],
                                                                    "source": [ "obj-236", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-238", 1 ],
                                                                    "source": [ "obj-237", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-251", 0 ],
                                                                    "source": [ "obj-238", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-252", 0 ],
                                                                    "source": [ "obj-238", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-3", 0 ],
                                                                    "source": [ "obj-251", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-252", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-234", 1 ],
                                                                    "source": [ "obj-4", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-222", 0 ],
                                                                    "source": [ "obj-51", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 64.0, 360.0, 59.0, 18.0 ],
                                                    "saved_object_attributes": {
                                                        "fontname": "Arial Bold",
                                                        "fontsize": 10.0
                                                    },
                                                    "text": "p Convert"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-290",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 64.0, 496.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 40.0, 136.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-51",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 16.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-82",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 64.0, 184.0, 59.0, 18.0 ],
                                                    "text": "gate 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-81",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 120.0, 144.0, 32.5, 18.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-80",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 105.0, 39.0, 16.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-77",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 120.0, 120.0, 32.5, 18.0 ],
                                                    "text": "< 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-76",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "float", "float" ],
                                                    "patching_rect": [ 104.0, 88.0, 51.0, 18.0 ],
                                                    "text": "t b f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-75",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 72.0, 24.0, 16.0 ],
                                                    "text": "-1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-73",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 72.0, 24.0, 16.0 ],
                                                    "text": "1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-67",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "bang", "" ],
                                                    "patching_rect": [ 40.0, 48.0, 83.0, 18.0 ],
                                                    "text": "sel -1. 1."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 2 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-105", 0 ],
                                                    "source": [ "obj-104", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-130", 0 ],
                                                    "source": [ "obj-105", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-135", 0 ],
                                                    "source": [ "obj-105", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-104", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-11", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-290", 0 ],
                                                    "source": [ "obj-113", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-132", 1 ],
                                                    "source": [ "obj-115", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-132", 0 ],
                                                    "source": [ "obj-115", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-12", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-104", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 1 ],
                                                    "source": [ "obj-130", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-132", 2 ],
                                                    "source": [ "obj-130", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "midpoints": [ 163.5, 320.5, 57.5, 320.5 ],
                                                    "source": [ "obj-130", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 1 ],
                                                    "source": [ "obj-130", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-134", 0 ],
                                                    "source": [ "obj-132", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-134", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-134", 0 ],
                                                    "source": [ "obj-135", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "source": [ "obj-67", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "source": [ "obj-67", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-76", 0 ],
                                                    "source": [ "obj-67", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-80", 0 ],
                                                    "source": [ "obj-73", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-80", 0 ],
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "source": [ "obj-76", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 1 ],
                                                    "source": [ "obj-76", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 1 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-81", 0 ],
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-80", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-80", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 0 ],
                                                    "source": [ "obj-81", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-82", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-82", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 2 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 241.89187908172607, 100.0, 160.0, 20.0 ],
                                    "saved_object_attributes": {
                                        "fontname": "Arial Bold",
                                        "fontsize": 10.0
                                    },
                                    "text": "p Rotate"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial Bold",
                                    "fontsize": 10.0,
                                    "id": "geo2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 5,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 25.0, 69.0, 229.0, 536.0 ],
                                        "default_fontsize": 10.0,
                                        "default_fontname": "Arial Bold",
                                        "gridsize": [ 8.0, 8.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 16.0, 155.0, 79.0, 18.0 ],
                                                    "text": "Infinite scrolling"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-78",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 136.0, 272.0, 71.0, 18.0 ],
                                                    "text": "< Nodes alias"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 48.0, 328.0, 34.5, 18.0 ],
                                                    "text": "gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 104.0, 208.0, 34.5, 18.0 ],
                                                    "text": "b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 64.0, 208.0, 34.5, 18.0 ],
                                                    "text": "b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-10",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 152.0, 248.0, 32.5, 16.0 ],
                                                    "text": "0.02"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-9",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 112.0, 248.0, 33.0, 16.0 ],
                                                    "text": "-0.02"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-135",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 81.0, 408.0, 39.0, 16.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-134",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 440.0, 50.0, 18.0 ],
                                                    "text": "prepend"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-132",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 384.0, 79.0, 18.0 ],
                                                    "text": "pack 0. 0. 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-130",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "float", "float", "float", "int" ],
                                                    "patching_rect": [ 64.0, 296.0, 109.0, 18.0 ],
                                                    "text": "unpack 0. 0. 0. 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-104",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 248.0, 38.0, 16.0 ],
                                                    "text": "dump"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "color": [ 0.180392, 0.631373, 1.0, 1.0 ],
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-105",
                                                    "linecount": 3,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 64.0, 272.0, 71.0, 18.0 ],
                                                    "saved_object_attributes": {
                                                        "embed": 0,
                                                        "precision": 6
                                                    },
                                                    "text": "coll #0-quad-nodes"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-113",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 464.0, 91.0, 18.0 ],
                                                    "text": "prepend setnode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-115",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 64.0, 360.0, 32.5, 18.0 ],
                                                    "text": "+ 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-290",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 64.0, 496.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 40.0, 136.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-51",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 16.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-82",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 64.0, 184.0, 59.0, 18.0 ],
                                                    "text": "gate 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-81",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 120.0, 144.0, 32.5, 18.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-80",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 105.0, 39.0, 16.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-77",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 120.0, 120.0, 32.5, 18.0 ],
                                                    "text": "> 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-76",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "float", "float" ],
                                                    "patching_rect": [ 104.0, 88.0, 51.0, 18.0 ],
                                                    "text": "t b f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-75",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 72.0, 24.0, 16.0 ],
                                                    "text": "-1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-73",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 72.0, 24.0, 16.0 ],
                                                    "text": "1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-67",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "bang", "" ],
                                                    "patching_rect": [ 40.0, 48.0, 83.0, 18.0 ],
                                                    "text": "sel -1. 1."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 1 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-105", 0 ],
                                                    "source": [ "obj-104", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-130", 0 ],
                                                    "source": [ "obj-105", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-135", 0 ],
                                                    "source": [ "obj-105", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-104", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-11", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-290", 0 ],
                                                    "source": [ "obj-113", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-132", 0 ],
                                                    "source": [ "obj-115", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-12", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-104", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-132", 2 ],
                                                    "source": [ "obj-130", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-132", 1 ],
                                                    "source": [ "obj-130", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "midpoints": [ 163.5, 320.5, 57.5, 320.5 ],
                                                    "source": [ "obj-130", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 1 ],
                                                    "source": [ "obj-130", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-134", 0 ],
                                                    "source": [ "obj-132", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-134", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-134", 0 ],
                                                    "source": [ "obj-135", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "source": [ "obj-67", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "source": [ "obj-67", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-76", 0 ],
                                                    "source": [ "obj-67", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-80", 0 ],
                                                    "source": [ "obj-73", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-80", 0 ],
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "source": [ "obj-76", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 1 ],
                                                    "source": [ "obj-76", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 1 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-81", 0 ],
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-80", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-80", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 0 ],
                                                    "source": [ "obj-81", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-82", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-82", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 1 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 447.2972707748413, 100.0, 160.0, 20.0 ],
                                    "saved_object_attributes": {
                                        "fontname": "Arial Bold",
                                        "fontsize": 10.0
                                    },
                                    "text": "p ShiftX"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial Bold",
                                    "fontsize": 10.0,
                                    "id": "geo3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 5,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 34.0, 92.0, 578.0, 636.0 ],
                                        "default_fontsize": 10.0,
                                        "default_fontname": "Arial Bold",
                                        "gridsize": [ 8.0, 8.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-7",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 16.0, 155.0, 79.0, 18.0 ],
                                                    "text": "Infinite scrolling"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-78",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 193.0, 273.0, 71.0, 18.0 ],
                                                    "text": "< Nodes alias"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 48.0, 328.0, 34.5, 20.0 ],
                                                    "text": "gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-3",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 81.0, 384.0, 39.0, 20.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 360.0, 83.0, 20.0 ],
                                                    "text": "pack 0. 0. 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "float", "float", "float", "int" ],
                                                    "patching_rect": [ 64.0, 296.0, 115.0, 20.0 ],
                                                    "text": "unpack 0. 0. 0. 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "color": [ 0.180392, 0.631373, 1.0, 1.0 ],
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-6",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 64.0, 272.0, 100.0, 20.0 ],
                                                    "saved_object_attributes": {
                                                        "embed": 0,
                                                        "precision": 6
                                                    },
                                                    "text": "coll #0-quad-nodes"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-115",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 96.0, 328.0, 34.5, 20.0 ],
                                                    "text": "+ 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 104.0, 208.0, 34.5, 20.0 ],
                                                    "text": "b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 64.0, 208.0, 34.5, 20.0 ],
                                                    "text": "b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-10",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 152.0, 248.0, 32.5, 20.0 ],
                                                    "text": "0.02"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-9",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 112.0, 248.0, 33.0, 20.0 ],
                                                    "text": "-0.02"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-134",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 416.0, 50.0, 20.0 ],
                                                    "text": "prepend"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-104",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 248.0, 38.0, 20.0 ],
                                                    "text": "dump"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-113",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 64.0, 440.0, 91.0, 20.0 ],
                                                    "text": "prepend setnode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-290",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 64.0, 472.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 40.0, 136.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-51",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 16.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-82",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 64.0, 184.0, 59.0, 20.0 ],
                                                    "text": "gate 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-81",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 120.0, 144.0, 32.5, 20.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-80",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 105.0, 39.0, 20.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-77",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 120.0, 120.0, 32.5, 20.0 ],
                                                    "text": "< 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-76",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "float", "float" ],
                                                    "patching_rect": [ 104.0, 88.0, 51.0, 20.0 ],
                                                    "text": "t b f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-75",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 72.0, 24.0, 20.0 ],
                                                    "text": "-1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-73",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 72.0, 24.0, 20.0 ],
                                                    "text": "1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-67",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "bang", "" ],
                                                    "patching_rect": [ 40.0, 48.0, 83.0, 20.0 ],
                                                    "text": "sel -1. 1."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 1 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-104", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-104", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-11", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-290", 0 ],
                                                    "source": [ "obj-113", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 1 ],
                                                    "source": [ "obj-115", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-12", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-104", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-134", 0 ]
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
                                                    "destination": [ "obj-134", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-134", 0 ],
                                                    "source": [ "obj-4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 0 ],
                                                    "source": [ "obj-5", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "midpoints": [ 169.5, 320.5, 57.5, 320.5 ],
                                                    "source": [ "obj-5", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 1 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 2 ],
                                                    "source": [ "obj-5", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-6", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "source": [ "obj-67", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "source": [ "obj-67", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-76", 0 ],
                                                    "source": [ "obj-67", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-80", 0 ],
                                                    "source": [ "obj-73", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-80", 0 ],
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "source": [ "obj-76", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 1 ],
                                                    "source": [ "obj-76", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 1 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-81", 0 ],
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-80", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-80", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 0 ],
                                                    "source": [ "obj-81", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-82", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-82", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 1 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 50.0, 254.05404376983643, 160.0, 20.0 ],
                                    "saved_object_attributes": {
                                        "fontname": "Arial Bold",
                                        "fontsize": 10.0
                                    },
                                    "text": "p ShiftY"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial Bold",
                                    "fontsize": 10.0,
                                    "id": "geo4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 5,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 100.0, 100.0, 730.0, 400.0 ],
                                        "default_fontsize": 10.0,
                                        "default_fontname": "Arial Bold",
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 25.0, 30.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "scale",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 30.0, 70.0, 210.0, 22.0 ],
                                                    "text": "* 0.0035"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "trigger",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "float", "float" ],
                                                    "patching_rect": [ 30.0, 110.0, 210.0, 22.0 ],
                                                    "text": "t f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "hi",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 270.0, 155.0, 210.0, 22.0 ],
                                                    "text": "+ 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "lo",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 30.0, 155.0, 210.0, 22.0 ],
                                                    "text": "!- 0.5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pair",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 200.0, 210.0, 22.0 ],
                                                    "text": "pack 0. 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "msg",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 250.0, 650.0, 22.0 ],
                                                    "text": "setnode 1 $1 $1, setnode 2 $2 $1, setnode 3 $1 $2, setnode 4 $2 $2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 30.0, 320.0, 30.0, 22.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "pair", 1 ],
                                                    "source": [ "hi", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "scale", 0 ],
                                                    "source": [ "in", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pair", 0 ],
                                                    "source": [ "lo", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "msg", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "msg", 0 ],
                                                    "source": [ "pair", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "trigger", 0 ],
                                                    "source": [ "scale", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "hi", 0 ],
                                                    "source": [ "trigger", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "lo", 0 ],
                                                    "source": [ "trigger", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 228.3783664703369, 254.05404376983643, 160.0, 20.0 ],
                                    "saved_object_attributes": {
                                        "fontname": "Arial Bold",
                                        "fontsize": 10.0
                                    },
                                    "text": "p Abstand_Prozent"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial Bold",
                                    "fontsize": 10.0,
                                    "id": "geo5",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 5,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 134.0, 167.0, 299.0, 434.0 ],
                                        "default_fontsize": 10.0,
                                        "default_fontname": "Arial Bold",
                                        "gridsize": [ 8.0, 8.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-4",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 16.0, 155.0, 79.0, 18.0 ],
                                                    "text": "Infinite scrolling"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-78",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 176.0, 152.0, 71.0, 18.0 ],
                                                    "text": "< Nodes alias"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 88.0, 208.0, 34.5, 20.0 ],
                                                    "text": "gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "float", "float", "float", "int" ],
                                                    "patching_rect": [ 104.0, 176.0, 109.0, 20.0 ],
                                                    "text": "unpack 0. 0. 0. 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 200.0, 48.0, 36.0, 20.0 ],
                                                    "text": "/ 100."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 184.0, 104.0, 34.5, 20.0 ],
                                                    "text": "f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-13",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 200.0, 16.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 160.0, 48.0, 36.0, 20.0 ],
                                                    "text": "/ 100."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 144.0, 104.0, 34.5, 20.0 ],
                                                    "text": "f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-7",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 160.0, 16.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 104.0, 72.0, 58.5, 20.0 ],
                                                    "text": "b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-135",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 121.0, 296.0, 39.0, 20.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-134",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 104.0, 328.0, 50.0, 20.0 ],
                                                    "text": "prepend"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-132",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 104.0, 264.0, 99.0, 20.0 ],
                                                    "text": "pack 0. 0. 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-104",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 104.0, 128.0, 38.0, 20.0 ],
                                                    "text": "dump"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "color": [ 0.180392, 0.631373, 1.0, 1.0 ],
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-105",
                                                    "linecount": 3,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 104.0, 152.0, 71.0, 42.0 ],
                                                    "saved_object_attributes": {
                                                        "embed": 0,
                                                        "precision": 6
                                                    },
                                                    "text": "coll #0-quad-nodes"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-113",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 104.0, 352.0, 91.0, 20.0 ],
                                                    "text": "prepend setnode"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-115",
                                                    "maxclass": "newobj",
                                                    "numinlets": 5,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "float", "float", "float" ],
                                                    "patcher": {
                                                        "fileversion": 1,
                                                        "appversion": {
                                                            "major": 9,
                                                            "minor": 1,
                                                            "revision": 5,
                                                            "architecture": "x64",
                                                            "modernui": 1
                                                        },
                                                        "classnamespace": "box",
                                                        "rect": [ 416.0, 119.0, 429.0, 314.0 ],
                                                        "default_fontsize": 10.0,
                                                        "default_fontname": "Arial Bold",
                                                        "gridsize": [ 8.0, 8.0 ],
                                                        "boxes": [
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-53",
                                                                    "index": 5,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 312.0, 32.0, 18.0, 18.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-42",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 296.0, 112.0, 34.5, 18.0 ],
                                                                    "text": "!/ 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-43",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 296.0, 208.0, 34.5, 18.0 ],
                                                                    "text": "* 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-44",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 312.0, 184.0, 86.5, 18.0 ],
                                                                    "text": "scale 0 1 -1. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-45",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 312.0, 160.0, 42.0, 18.0 ],
                                                                    "text": "decide"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-46",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "float", "bang" ],
                                                                    "patching_rect": [ 296.0, 136.0, 34.5, 18.0 ],
                                                                    "text": "t f b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-47",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 280.0, 232.0, 34.5, 18.0 ],
                                                                    "text": "+ 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-48",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 296.0, 88.0, 67.0, 18.0 ],
                                                                    "text": "random 100"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-49",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "float", "bang" ],
                                                                    "patching_rect": [ 280.0, 64.0, 34.5, 18.0 ],
                                                                    "text": "t f b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-50",
                                                                    "index": 3,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 280.0, 264.0, 18.0, 18.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-52",
                                                                    "index": 4,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 280.0, 32.0, 18.0, 18.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-32",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 176.0, 112.0, 34.5, 18.0 ],
                                                                    "text": "!/ 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-33",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 176.0, 208.0, 34.5, 18.0 ],
                                                                    "text": "* 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-34",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 192.0, 184.0, 86.5, 18.0 ],
                                                                    "text": "scale 0 1 -1. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-35",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 192.0, 160.0, 42.0, 18.0 ],
                                                                    "text": "decide"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-36",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "float", "bang" ],
                                                                    "patching_rect": [ 176.0, 136.0, 34.5, 18.0 ],
                                                                    "text": "t f b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-37",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 160.0, 232.0, 34.5, 18.0 ],
                                                                    "text": "+ 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-38",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 176.0, 88.0, 67.0, 18.0 ],
                                                                    "text": "random 100"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-39",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "float", "bang" ],
                                                                    "patching_rect": [ 160.0, 64.0, 34.5, 18.0 ],
                                                                    "text": "t f b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-40",
                                                                    "index": 2,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 160.0, 264.0, 18.0, 18.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-41",
                                                                    "index": 2,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 160.0, 32.0, 18.0, 18.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-30",
                                                                    "index": 3,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 192.0, 32.0, 18.0, 18.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-28",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 56.0, 112.0, 32.5, 18.0 ],
                                                                    "text": "!/ 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-23",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 56.0, 208.0, 34.5, 18.0 ],
                                                                    "text": "* 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-24",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 6,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 72.0, 184.0, 86.5, 18.0 ],
                                                                    "text": "scale 0 1 -1. 1."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-25",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "int" ],
                                                                    "patching_rect": [ 72.0, 160.0, 42.0, 18.0 ],
                                                                    "text": "decide"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-26",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "float", "bang" ],
                                                                    "patching_rect": [ 56.0, 136.0, 34.5, 18.0 ],
                                                                    "text": "t f b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-22",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "float" ],
                                                                    "patching_rect": [ 40.0, 232.0, 34.5, 18.0 ],
                                                                    "text": "+ 0."
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-6",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 2,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 56.0, 88.0, 67.0, 18.0 ],
                                                                    "text": "random 100"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "fontname": "Arial Bold",
                                                                    "fontsize": 10.0,
                                                                    "id": "obj-5",
                                                                    "maxclass": "newobj",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 2,
                                                                    "outlettype": [ "float", "bang" ],
                                                                    "patching_rect": [ 40.0, 64.0, 34.5, 18.0 ],
                                                                    "text": "t f b"
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-2",
                                                                    "index": 1,
                                                                    "maxclass": "outlet",
                                                                    "numinlets": 1,
                                                                    "numoutlets": 0,
                                                                    "patching_rect": [ 40.0, 264.0, 18.0, 18.0 ]
                                                                }
                                                            },
                                                            {
                                                                "box": {
                                                                    "comment": "",
                                                                    "id": "obj-51",
                                                                    "index": 1,
                                                                    "maxclass": "inlet",
                                                                    "numinlets": 0,
                                                                    "numoutlets": 1,
                                                                    "outlettype": [ "" ],
                                                                    "patching_rect": [ 40.0, 32.0, 18.0, 18.0 ]
                                                                }
                                                            }
                                                        ],
                                                        "lines": [
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-2", 0 ],
                                                                    "source": [ "obj-22", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-22", 1 ],
                                                                    "source": [ "obj-23", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-23", 1 ],
                                                                    "source": [ "obj-24", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-24", 0 ],
                                                                    "source": [ "obj-25", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-23", 0 ],
                                                                    "source": [ "obj-26", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-25", 0 ],
                                                                    "source": [ "obj-26", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-26", 0 ],
                                                                    "source": [ "obj-28", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-28", 1 ],
                                                                    "order": 1,
                                                                    "source": [ "obj-30", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-32", 1 ],
                                                                    "order": 0,
                                                                    "source": [ "obj-30", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-36", 0 ],
                                                                    "source": [ "obj-32", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-37", 1 ],
                                                                    "source": [ "obj-33", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-33", 1 ],
                                                                    "source": [ "obj-34", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-34", 0 ],
                                                                    "source": [ "obj-35", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-33", 0 ],
                                                                    "source": [ "obj-36", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-35", 0 ],
                                                                    "source": [ "obj-36", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-40", 0 ],
                                                                    "source": [ "obj-37", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-32", 0 ],
                                                                    "source": [ "obj-38", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-37", 0 ],
                                                                    "source": [ "obj-39", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-38", 0 ],
                                                                    "source": [ "obj-39", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-39", 0 ],
                                                                    "source": [ "obj-41", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-46", 0 ],
                                                                    "source": [ "obj-42", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-47", 1 ],
                                                                    "source": [ "obj-43", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-43", 1 ],
                                                                    "source": [ "obj-44", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-44", 0 ],
                                                                    "source": [ "obj-45", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-43", 0 ],
                                                                    "source": [ "obj-46", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-45", 0 ],
                                                                    "source": [ "obj-46", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-50", 0 ],
                                                                    "source": [ "obj-47", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-42", 0 ],
                                                                    "source": [ "obj-48", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-47", 0 ],
                                                                    "source": [ "obj-49", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-48", 0 ],
                                                                    "source": [ "obj-49", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-22", 0 ],
                                                                    "source": [ "obj-5", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-6", 0 ],
                                                                    "source": [ "obj-5", 1 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-5", 0 ],
                                                                    "source": [ "obj-51", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-49", 0 ],
                                                                    "source": [ "obj-52", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-42", 1 ],
                                                                    "source": [ "obj-53", 0 ]
                                                                }
                                                            },
                                                            {
                                                                "patchline": {
                                                                    "destination": [ "obj-28", 0 ],
                                                                    "source": [ "obj-6", 0 ]
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    "patching_rect": [ 104.0, 240.0, 99.0, 20.0 ],
                                                    "saved_object_attributes": {
                                                        "fontname": "Arial Bold",
                                                        "fontsize": 10.0
                                                    },
                                                    "text": "p ScaledRandom"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-290",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 104.0, 384.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-1",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 40.0, 136.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-51",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 16.0, 18.0, 18.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-80",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 105.0, 39.0, 20.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-75",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 72.0, 72.0, 24.0, 20.0 ],
                                                    "text": "-1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-73",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 72.0, 24.0, 20.0 ],
                                                    "text": "1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial Bold",
                                                    "fontsize": 10.0,
                                                    "id": "obj-67",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "bang", "bang", "" ],
                                                    "patching_rect": [ 40.0, 48.0, 83.0, 20.0 ],
                                                    "text": "sel -1. 1."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 1 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-105", 0 ],
                                                    "source": [ "obj-104", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-135", 0 ],
                                                    "source": [ "obj-105", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-105", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 1 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-290", 0 ],
                                                    "source": [ "obj-113", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-132", 2 ],
                                                    "source": [ "obj-115", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-132", 1 ],
                                                    "source": [ "obj-115", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-132", 0 ],
                                                    "source": [ "obj-115", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 4 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-134", 0 ],
                                                    "source": [ "obj-132", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-134", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-134", 0 ],
                                                    "source": [ "obj-135", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 3 ],
                                                    "source": [ "obj-3", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 1 ],
                                                    "source": [ "obj-3", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "midpoints": [ 203.5, 200.5, 97.5, 200.5 ],
                                                    "source": [ "obj-3", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 1 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-104", 0 ],
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-6", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-6", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "source": [ "obj-67", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "source": [ "obj-67", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "source": [ "obj-67", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-80", 0 ],
                                                    "source": [ "obj-73", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-80", 0 ],
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-80", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 2 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 409.45943546295166, 254.05404376983643, 160.0, 20.0 ],
                                    "saved_object_attributes": {
                                        "fontname": "Arial Bold",
                                        "fontsize": 10.0
                                    },
                                    "text": "p RandPosition"
                                }
                            },
                            {
                                "box": {
                                    "id": "applygeo",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 220.27025890350342, 362.1621446609497, 100.0, 22.0 ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "shakeamt0",
                                    "maxclass": "flonum",
                                    "maximum": 100.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 585.1350994110107, 175.08108234405518, 85.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "shakeinit0",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 585.1350994110107, 150.45050406455994, 110.0, 22.0 ],
                                    "text": "loadmess 10."
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "shakeamt1",
                                    "maxclass": "flonum",
                                    "maximum": 100.0,
                                    "minimum": 0.0,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 585.1350994110107, 227.0270185470581, 85.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "shakeinit1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 582.4323968887329, 205.40539836883545, 110.0, 22.0 ],
                                    "text": "loadmess 10."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-9",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 49.999949150573684, 39.999973316650426, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-10",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 84.99994915057368, 39.999973316650426, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 228.3783671505737, 39.999973316650426, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-12",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 263.3783671505737, 39.999973316650426, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-13",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 409.45954415057395, 39.999973316650426, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-14",
                                    "index": 6,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 447.2971911505738, 39.999973316650426, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-15",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 49.999949150573684, 444.1621433166504, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-16",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 220.27021315057368, 444.1621433166504, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-17",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 255.27021315057368, 444.1621433166504, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-18",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 290.2702131505737, 444.1621433166504, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-19",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 409.45954415057395, 444.1621433166504, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-20",
                                    "index": 6,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 447.2971911505738, 444.1621433166504, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "applygeo", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "applygeo", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "applygeo", 0 ],
                                    "source": [ "geo0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "applygeo", 0 ],
                                    "source": [ "geo1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "source": [ "geo1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "applygeo", 0 ],
                                    "source": [ "geo2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "geo2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "applygeo", 0 ],
                                    "source": [ "geo3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "geo3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "applygeo", 0 ],
                                    "source": [ "geo4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "applygeo", 0 ],
                                    "source": [ "geo5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "geo5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "geo0", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "geo4", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "geo1", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "geo5", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "geo2", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "geo3", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "geo5", 1 ],
                                    "source": [ "shakeamt0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "geo5", 2 ],
                                    "source": [ "shakeamt1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "shakeamt0", 0 ],
                                    "source": [ "shakeinit0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "shakeamt1", 0 ],
                                    "source": [ "shakeinit1", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1288.7324112653732, 967.6056464910507, 443.3686555624008, 22.0 ],
                    "text": "p Calculations"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1061.7441457509995, 1643.956124305725, 53.84615647792816, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1783.8125, 343.9375, 69.80972522497177, 20.0 ],
                    "text": "Smooth"
                }
            },
            {
                "box": {
                    "args": [ "#1" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "MS_Bewegung_und_Recorder.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patching_rect": [ 665.3333531618118, 397.33334517478943, 1428.0000425577164, 360.00001072883606 ],
                    "presentation": 1,
                    "presentation_rect": [ -7.8125, 7.8125, 1353.125, 359.375 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "annotation": "Doppelklick: maßstäbliche Raumskizze mit Hörplatz. Nur Orientierung.",
                    "id": "studio-reference",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 5,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 100.0, 100.0, 560.0, 490.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 22.0,
                                    "id": "title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 20.0, 400.0, 31.0 ],
                                    "text": "Studio · reale Aufstellung"
                                }
                            },
                            {
                                "box": {
                                    "angle": 0.0,
                                    "bgcolor": [ 0.4, 0.4, 0.4, 1.0 ],
                                    "id": "edge0",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 120.0, 130.0, 140.0, 4.0 ]
                                }
                            },
                            {
                                "box": {
                                    "angle": 0.0,
                                    "bgcolor": [ 0.4, 0.4, 0.4, 1.0 ],
                                    "id": "edge1",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 120.0, 330.0, 140.0, 4.0 ]
                                }
                            },
                            {
                                "box": {
                                    "angle": 0.0,
                                    "bgcolor": [ 0.4, 0.4, 0.4, 1.0 ],
                                    "id": "edge2",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 120.0, 130.0, 4.0, 200.0 ]
                                }
                            },
                            {
                                "box": {
                                    "angle": 0.0,
                                    "bgcolor": [ 0.4, 0.4, 0.4, 1.0 ],
                                    "id": "edge3",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 260.0, 130.0, 4.0, 200.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 16.0,
                                    "id": "fldot",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 113.0, 119.0, 22.0, 24.0 ],
                                    "text": "●"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "fl",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 95.0, 95.0, 70.0, 20.0 ],
                                    "text": "1 FL"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 16.0,
                                    "id": "frdot",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 253.0, 119.0, 22.0, 24.0 ],
                                    "text": "●"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "fr",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 235.0, 95.0, 70.0, 20.0 ],
                                    "text": "2 FR"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 16.0,
                                    "id": "rldot",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 113.0, 319.0, 22.0, 24.0 ],
                                    "text": "●"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "rl",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 95.0, 344.0, 70.0, 20.0 ],
                                    "text": "4 RL"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 16.0,
                                    "id": "rrdot",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 253.0, 319.0, 22.0, 24.0 ],
                                    "text": "●"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "rr",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 235.0, 344.0, 70.0, 20.0 ],
                                    "text": "3 RR"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "width",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 164.0, 88.0, 100.0, 20.0 ],
                                    "text": "140 cm"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "depth",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 280.0, 223.0, 100.0, 20.0 ],
                                    "text": "200 cm"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 23.0,
                                    "id": "listener",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 181.0, 188.4142842854285, 28.0, 32.0 ],
                                    "text": "⊕",
                                    "textcolor": [ 0.85, 0.1, 0.1, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "listenername",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 211.0, 196.4142842854285, 100.0, 20.0 ],
                                    "text": "Hörplatz"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "distances",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.0, 390.0, 326.0, 47.0 ],
                                    "text": "Hörplatz: je 100 cm zu FL und FR.\n70 cm von links, 71,4 cm hinter der vorderen Speaker-Linie.\nAusgänge: 1 FL · 2 FR · 3 RR · 4 RL."
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [ 838.3561034202576, 2061.333394765854, 180.0, 22.0 ],
                    "text": "p Studio_Raumskizze"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1298.591566324234, 1053.521140575409, 112.0, 22.0 ],
                    "text": "0.641484 0.209166"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1061.7441457509995, 1420.3125, 120.0, 35.0 ],
                    "text": "mouseidle 0.010271 0.087448 0 0 0 0 0 0"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 838.3561034202576, 1996.0000594854355, 381.42858052253723, 33.0 ],
                    "text": "QUAD / NODES → DIRECT OUT"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 838.3561034202576, 2038.666727423668, 469.0, 20.0 ],
                    "text": "nodes → Pegelausgleich mit Randabfall → Mittenanhebung → Glättung → Ausgänge"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "front",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 683.7837381362915, 937.8377752304077, 390.0, 20.0 ],
                    "text": "VORNE: 1 FL                                      2 FR"
                }
            },
            {
                "box": {
                    "annotation": "Normierte Panning-Steuerfläche, kein maßstäblicher Raumplan. Symmetrische Grundstellung mit überlappenden Einflussbereichen.",
                    "bgcolor": [ 0.93, 0.95, 0.97, 1.0 ],
                    "displayknob": 1,
                    "fontsize": 13.0,
                    "id": "nodes",
                    "knobcolor": [ 1.0, 0.72, 0.12, 1.0 ],
                    "maxclass": "nodes",
                    "mousemode": 2,
                    "nodecolor": [ 0.3, 0.5, 0.7, 0.22 ],
                    "nodenumber": 4,
                    "nodesnames": [ "1 FL", "2 FR", "4 RL", "3 RR" ],
                    "nsize": [ 0.4788, 0.4788, 0.4788, 0.4788 ],
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 662.1621179580688, 983.7837181091309, 380.0, 380.0 ],
                    "pointcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1346.3125, 8.0, 359.0, 359.0 ],
                    "textcolor": [ 0.49411764705882355, 0.49411764705882355, 1.0, 1.0 ],
                    "varname": "quad_nodes",
                    "xplace": [ 0.15, 0.85, 0.15, 0.85 ],
                    "yplace": [ 0.15, 0.15, 0.85, 0.85 ]
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "rear",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 683.7837381362915, 1367.567476272583, 390.0, 20.0 ],
                    "text": "HINTEN: 4 RL                                    3 RR"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "usage",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 664.8648204803467, 1454.0539569854736, 371.0, 33.0 ],
                    "text": "Gelb: Panning-Position. Quadrat = normierte Steuerfläche.\nRESET: symmetrische Nodes + Einflussgröße 0,63."
                }
            },
            {
                "box": {
                    "id": "init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 745.1219689846039, 858.715167760849, 70.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "center",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 745.1219689846039, 894.0810222625732, 75.0, 22.0 ],
                    "text": "0.5 0.5"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "centerlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 537.8378019332886, 854.0539970397949, 200.0, 20.0 ],
                    "text": "Mitte / Startposition"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "rootlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1120.0708723068237, 806.0975801944733, 72.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1708.8125, 343.9375, 69.31818115711212, 20.0 ],
                    "text": "Mitte (dB)"
                }
            },
            {
                "box": {
                    "id": "rootinit",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1039.5830655097961, 780.4878234863281, 90.0, 22.0 ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "annotation": "Mittenanhebung in dB: 0 = aus; Maximum nur bei X=0.5 Y=0.5.",
                    "format": 6,
                    "id": "root",
                    "maxclass": "flonum",
                    "maximum": 6.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1039.5830655097961, 806.0975801944733, 65.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1708.8125, 315.8125, 65.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "rt",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "float" ],
                    "patching_rect": [ 1043.2416021823883, 830.487824678421, 50.0, 22.0 ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "id": "curve",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 5,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 100.0, 100.0, 1160.0, 720.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "weights",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 30.0, 30.0, 30.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "xy",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 380.0, 30.0, 30.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "db",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 800.0, 30.0, 30.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "cache",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 30.0, 85.0, 260.0, 22.0 ],
                                    "text": "zl reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "tr",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 30.0, 130.0, 260.0, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "sq",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 180.0, 175.0, 260.0, 22.0 ],
                                    "text": "vexpr $f1 * $f1"
                                }
                            },
                            {
                                "box": {
                                    "id": "sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 180.0, 215.0, 260.0, 22.0 ],
                                    "text": "zl sum"
                                }
                            },
                            {
                                "box": {
                                    "id": "den",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 180.0, 255.0, 260.0, 22.0 ],
                                    "text": "expr sqrt($f1)"
                                }
                            },
                            {
                                "box": {
                                    "id": "safe",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "int" ],
                                    "patching_rect": [ 180.0, 295.0, 260.0, 22.0 ],
                                    "text": "maximum 0.000001"
                                }
                            },
                            {
                                "box": {
                                    "id": "norm",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 345.0, 260.0, 22.0 ],
                                    "text": "vexpr $f1 / $f2 @scalarmode 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "unxy",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 380.0, 85.0, 260.0, 22.0 ],
                                    "text": "unpack 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "shape",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 380.0, 135.0, 740.0, 22.0 ],
                                    "text": "expr pow(max(0. \\, 1.-(($f1-0.5)*($f1-0.5)+($f2-0.5)*($f2-0.5))/0.1225) \\, 2.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "pair",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 600.0, 200.0, 260.0, 22.0 ],
                                    "text": "pak 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "both",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 600.0, 245.0, 260.0, 22.0 ],
                                    "text": "unpack 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "factor",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 600.0, 290.0, 260.0, 22.0 ],
                                    "text": "expr pow(10. \\, $f1*$f2/20.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "multiply",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 410.0, 260.0, 22.0 ],
                                    "text": "vexpr $f1 * $f2 @scalarmode 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "one",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 600.0, 350.0, 260.0, 22.0 ],
                                    "text": "loadmess 1."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 475.0, 30.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "info",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 540.0, 1100.0, 74.0 ],
                                    "text": "Gain = aktuelles Gewicht / max(aktuelle Gewichtsnorm, Reset-Gewichtsnorm am selben XY, 1e-6).\nReset: Equal Power. Kleinere Einflussbereiche: Pegel fällt relativ zu Reset ab.\nStärkere Bereiche: auf Equal Power begrenzt. Alle Gewichte null: Stille.\nDie Reset-Referenz wird aus den vier festen Positionen und Radien berechnet.\nMittenanhebung folgt danach; line~-Rampen können Übergangspegel kurz absenken."
                                }
                            },
                            {
                                "box": {
                                    "id": "reset-reference",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 5,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 100.0, 100.0, 850.0, 750.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 30.0, 30.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "un",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "float", "float" ],
                                                    "patching_rect": [ 30.0, 70.0, 300.0, 22.0 ],
                                                    "text": "unpack 0. 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "xorder",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "float", "float", "float", "float" ],
                                                    "patching_rect": [ 30.0, 110.0, 300.0, 22.0 ],
                                                    "text": "t f f f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "w0",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 170.0, 750.0, 22.0 ],
                                                    "text": "expr max(0. \\, 1.-sqrt(($f1-0.15)*($f1-0.15)+($f2-0.15)*($f2-0.15))/0.63)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "w1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 230.0, 750.0, 22.0 ],
                                                    "text": "expr max(0. \\, 1.-sqrt(($f1-0.85)*($f1-0.85)+($f2-0.15)*($f2-0.15))/0.63)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "w2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 290.0, 750.0, 22.0 ],
                                                    "text": "expr max(0. \\, 1.-sqrt(($f1-0.15)*($f1-0.15)+($f2-0.85)*($f2-0.85))/0.63)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "w3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 350.0, 750.0, 22.0 ],
                                                    "text": "expr max(0. \\, 1.-sqrt(($f1-0.85)*($f1-0.85)+($f2-0.85)*($f2-0.85))/0.63)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pack",
                                                    "maxclass": "newobj",
                                                    "numinlets": 4,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 440.0, 300.0, 22.0 ],
                                                    "text": "pack 0. 0. 0. 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "sq",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 480.0, 300.0, 22.0 ],
                                                    "text": "vexpr $f1 * $f1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "sum",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 30.0, 520.0, 300.0, 22.0 ],
                                                    "text": "zl sum"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "norm",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 30.0, 560.0, 300.0, 22.0 ],
                                                    "text": "expr sqrt($f1)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 30.0, 605.0, 30.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "note",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 30.0, 650.0, 750.0, 45.0 ],
                                                    "text": "Feste Reset-Geometrie: radiale lineare nodes-Gewichte.\nKein zweites nodes-Objekt. Diese Berechnung verändert keine Speaker-Position."
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "un", 0 ],
                                                    "source": [ "in", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "norm", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "sq", 0 ],
                                                    "source": [ "pack", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "sum", 0 ],
                                                    "source": [ "sq", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "norm", 0 ],
                                                    "source": [ "sum", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "w0", 1 ],
                                                    "order": 3,
                                                    "source": [ "un", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "w1", 1 ],
                                                    "order": 2,
                                                    "source": [ "un", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "w2", 1 ],
                                                    "order": 1,
                                                    "source": [ "un", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "w3", 1 ],
                                                    "order": 0,
                                                    "source": [ "un", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "xorder", 0 ],
                                                    "source": [ "un", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pack", 0 ],
                                                    "source": [ "w0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pack", 1 ],
                                                    "source": [ "w1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pack", 2 ],
                                                    "source": [ "w2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pack", 3 ],
                                                    "source": [ "w3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "w0", 0 ],
                                                    "source": [ "xorder", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "w1", 0 ],
                                                    "source": [ "xorder", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "w2", 0 ],
                                                    "source": [ "xorder", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "w3", 0 ],
                                                    "source": [ "xorder", 3 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 800.0, 90.0, 190.0, 22.0 ],
                                    "text": "p Reset_Referenz"
                                }
                            },
                            {
                                "box": {
                                    "id": "reference-denominator",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "int" ],
                                    "patching_rect": [ 340.0, 295.0, 150.0, 22.0 ],
                                    "text": "maximum 0."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "factor", 1 ],
                                    "source": [ "both", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "factor", 0 ],
                                    "source": [ "both", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "tr", 0 ],
                                    "source": [ "cache", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pair", 1 ],
                                    "source": [ "db", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "reference-denominator", 0 ],
                                    "source": [ "den", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "multiply", 1 ],
                                    "source": [ "factor", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "out", 0 ],
                                    "source": [ "multiply", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "multiply", 0 ],
                                    "source": [ "norm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "multiply", 1 ],
                                    "source": [ "one", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "both", 0 ],
                                    "source": [ "pair", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "safe", 0 ],
                                    "source": [ "reference-denominator", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "reference-denominator", 1 ],
                                    "source": [ "reset-reference", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "norm", 1 ],
                                    "source": [ "safe", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "pair", 0 ],
                                    "source": [ "shape", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sum", 0 ],
                                    "source": [ "sq", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "den", 0 ],
                                    "source": [ "sum", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "norm", 0 ],
                                    "source": [ "tr", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "sq", 0 ],
                                    "source": [ "tr", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "shape", 1 ],
                                    "source": [ "unxy", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "shape", 0 ],
                                    "source": [ "unxy", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "cache", 0 ],
                                    "source": [ "weights", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "reset-reference", 0 ],
                                    "order": 0,
                                    "source": [ "xy", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "unxy", 0 ],
                                    "order": 1,
                                    "source": [ "xy", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 880.4878258705139, 875.6097769737244, 212.7537763118744, 22.0 ],
                    "text": "p Pegelausgleich_Resetreferenz"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "smoothlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 986.0464763641357, 1588.3022680282593, 143.6893184185028, 20.0 ],
                    "text": "Glättung in ms (Start: 30)"
                }
            },
            {
                "box": {
                    "id": "smoothinit",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 986.0464763641357, 1609.3022680282593, 100.0, 22.0 ],
                    "text": "loadmess 30."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "smooth",
                    "maxclass": "flonum",
                    "maximum": 1000.0,
                    "minimum": 5.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 986.0464763641357, 1637.209243774414, 70.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1783.8125, 315.8125, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "sourcehead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1464.7887516021729, 1039.436633348465, 260.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1705.6875, 9.5625, 133.99999928474426, 24.0 ],
                    "text": "MONO-QUELLE"
                }
            },
            {
                "box": {
                    "id": "mono",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1246.8805602788925, 1475.5556259155273, 55.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontsize": 12.0,
                    "id": "connectnote",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 838.3561034202576, 1961.3333917856216, 322.0, 33.0 ],
                    "text": "Eigene Monoquelle: an linken Eingang von *~ anschließen.\nQuelle wählen, Master langsam erhöhen, DSP einschalten."
                }
            },
            {
                "box": {
                    "id": "unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "float", "float", "float", "float" ],
                    "patching_rect": [ 895.3270958662033, 1547.6635394096375, 300.0, 22.0 ],
                    "text": "unpack 0. 0. 0. 0."
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "label0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 635.1648662090302, 1706.5934900045395, 59.340662240982056, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1710.375, 168.9375, 90.0, 24.0 ],
                    "text": "1  FL "
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "value0",
                    "ignoreclick": 1,
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 620.87915122509, 1738.461623430252, 90.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1710.375, 193.9375, 90.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "pack0",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 607.6923373937607, 1776.9231637716293, 100.0, 22.0 ],
                    "text": "pack 0. 30"
                }
            },
            {
                "box": {
                    "id": "line0",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 651.6483834981918, 1814.2858029603958, 90.0, 22.0 ],
                    "text": "line~ 0."
                }
            },
            {
                "box": {
                    "id": "gain0",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 607.6923373937607, 1857.1429479122162, 60.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "meter0",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 702.1978365182877, 1857.1429479122162, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1710.375, 217.375, 100.0, 18.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "label1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 894.505538225174, 1706.5934900045395, 59.340662240982056, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1818.1875, 168.9375, 89.77272641658783, 24.0 ],
                    "text": "2  FR "
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "value1",
                    "ignoreclick": 1,
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 878.0220209360123, 1738.461623430252, 90.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1818.1875, 193.9375, 90.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "pack1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 867.0330094099045, 1776.9231637716293, 100.0, 22.0 ],
                    "text": "pack 0. 30"
                }
            },
            {
                "box": {
                    "id": "line1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 916.4835612773895, 1819.7803087234497, 90.0, 22.0 ],
                    "text": "line~ 0."
                }
            },
            {
                "box": {
                    "id": "gain1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 867.0330094099045, 1857.1429479122162, 60.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "meter1",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 961.5385085344315, 1857.1429479122162, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1818.1875, 217.375, 100.0, 18.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "label2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1395.5155394673347, 1702.3809361457825, 59.340662240982056, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1710.375, 237.6875, 94.31818091869354, 24.0 ],
                    "text": "4 · RL"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "value2",
                    "ignoreclick": 1,
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1390.753634750843, 1733.3333168029785, 90.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1710.375, 259.5625, 90.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "pack2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1390.753634750843, 1776.1904592514038, 100.0, 22.0 ],
                    "text": "pack 0. 30"
                }
            },
            {
                "box": {
                    "id": "line2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 1390.753634750843, 1810.7142684459686, 90.0, 22.0 ],
                    "text": "line~ 0."
                }
            },
            {
                "box": {
                    "id": "gain2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1340.7536352276802, 1854.7618870735168, 60.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "meter2",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1438.37268191576, 1854.7618870735168, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1710.375, 283.0, 100.0, 18.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "label3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1149.4506056308746, 1706.5934900045395, 59.340662240982056, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1818.1875, 237.6875, 90.0, 24.0 ],
                    "text": "3 · RR"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "value3",
                    "ignoreclick": 1,
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1121.9780768156052, 1738.461623430252, 90.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1818.1875, 259.5625, 90.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "pack3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1121.9780768156052, 1776.9231637716293, 100.0, 22.0 ],
                    "text": "pack 0. 30"
                }
            },
            {
                "box": {
                    "id": "line3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 1162.9780768156052, 1819.7803087234497, 90.0, 22.0 ],
                    "text": "line~ 0."
                }
            },
            {
                "box": {
                    "id": "gain3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1121.9780768156052, 1857.1429479122162, 60.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "meter3",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1219.7802793979645, 1857.1429479122162, 100.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1818.1875, 283.0, 100.0, 18.0 ]
                }
            },
            {
                "box": {
                    "id": "settings",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 564.8648271560669, 881.0810222625732, 63.0, 35.0 ],
                    "text": ";\rdsp status"
                }
            },
            {
                "box": {
                    "fontsize": 22.0,
                    "id": "geohead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1461.971850156784, 998.5915623903275, 270.6666747331619, 31.0 ],
                    "text": "NODES / GEOMETRIE"
                }
            },
            {
                "box": {
                    "id": "name0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1288.7324112653732, 853.5211379528046, 74.66666889190674, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1705.6875, 58.0, 76.61224460601807, 20.0 ],
                    "text": "Expand (%)"
                }
            },
            {
                "box": {
                    "annotation": "100 % = Reset. Verändert ausschließlich die Kreisradien.",
                    "format": 6,
                    "id": "geoctl0",
                    "maxclass": "flonum",
                    "maximum": 200.0,
                    "minimum": 1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1288.7324112653732, 876.0563495159149, 90.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1710.375, 78.3125, 47.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "name1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1473.2394559383392, 850.7042365074158, 74.66666889190674, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1780.6875, 58.0, 59.0, 20.0 ],
                    "text": "Rotate"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "geoctl1",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": -1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1473.2394559383392, 876.0563495159149, 90.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1780.6875, 78.3125, 54.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "name2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1642.2535426616669, 850.7042365074158, 74.66666889190674, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1852.5625, 58.0, 61.0, 20.0 ],
                    "text": "Shift X"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "geoctl2",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": -1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1642.2535426616669, 876.0563495159149, 90.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1858.8125, 78.3125, 57.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "name3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1288.7324112653732, 909.8591668605804, 74.1063312292099, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1710.375, 104.875, 59.617045402526855, 20.0 ],
                    "text": "Shift Y"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "geoctl3",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": -1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1288.7324112653732, 933.8028291463852, 90.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1710.375, 128.3125, 52.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "name4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1469.014103770256, 907.0422654151917, 74.1063312292099, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1780.6875, 104.875, 76.19047546386719, 20.0 ],
                    "text": "Spread (%)"
                }
            },
            {
                "box": {
                    "annotation": "100 % = Reset. Absolute quadratische Anordnung um die Feldmitte; überschreibt Positionen aus Rotate, Shift und Shake. Kreisgrößen bleiben erhalten.",
                    "format": 6,
                    "id": "geoctl4",
                    "maxclass": "flonum",
                    "maximum": 140.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1473.2394559383392, 933.8028291463852, 90.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1780.6875, 128.3125, 54.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "name5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1642.2535426616669, 907.0422654151917, 74.1063312292099, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1858.8125, 104.875, 57.0, 20.0 ],
                    "text": "Shake"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "geoctl5",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": -1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1642.2535426616669, 933.8028291463852, 90.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1858.8125, 128.3125, 57.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "noderoute",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 838.3561034202576, 1391.7807207107544, 110.0, 22.0 ],
                    "text": "route node"
                }
            },
            {
                "box": {
                    "id": "nodecache",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 838.3561034202576, 1424.3242292404175, 170.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll #0-quad-nodes"
                }
            },
            {
                "box": {
                    "id": "xyroute",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1276.0563547611237, 1007.0422667264938, 100.0, 22.0 ],
                    "text": "route xy"
                }
            },
            {
                "box": {
                    "id": "xyreg",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1145.0704375505447, 1053.521140575409, 150.0, 22.0 ],
                    "text": "zl reg 0.5 0.5"
                }
            },
            {
                "box": {
                    "id": "capture",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 880.4878258705139, 830.487824678421, 75.0, 22.0 ],
                    "text": "t l b"
                }
            },
            {
                "box": {
                    "id": "getxy",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 932.9268515110016, 907.3170948028564, 65.0, 22.0 ],
                    "text": "getxy"
                }
            },
            {
                "box": {
                    "id": "geoload",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1413.7681277394295, 778.9855137467384, 85.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "geodefer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1413.7681277394295, 802.8985574245453, 85.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "resetsequence",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "bang", "bang", "bang", "bang" ],
                    "patching_rect": [ 1293.7826202511787, 802.8985574245453, 110.0, 22.0 ],
                    "text": "t b b b b"
                }
            },
            {
                "box": {
                    "id": "resetnear",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1293.7826202511787, 765.2173976898193, 110.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1810.375, 34.5625, 104.0, 22.0 ],
                    "text": "RESET Quad",
                    "texton": "RESET Quad"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "curve", 0 ],
                    "source": [ "capture", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "getxy", 0 ],
                    "source": [ "capture", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "nodes", 0 ],
                    "source": [ "center", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "unpack", 0 ],
                    "midpoints": [ 889.9878258705139, 900.0, 1008.0, 900.0, 1008.0, 924.0, 1083.0, 924.0, 1083.0, 1407.0, 1047.0, 1407.0, 1047.0, 1533.0, 904.8270958662033, 1533.0 ],
                    "source": [ "curve", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter0", 0 ],
                    "order": 0,
                    "source": [ "gain0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "order": 1,
                    "source": [ "gain0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter1", 0 ],
                    "order": 0,
                    "source": [ "gain1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "order": 1,
                    "source": [ "gain1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter2", 0 ],
                    "order": 0,
                    "source": [ "gain2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "order": 1,
                    "source": [ "gain2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "meter3", 0 ],
                    "order": 0,
                    "source": [ "gain3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "order": 1,
                    "source": [ "gain3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 1 ],
                    "source": [ "geoctl0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 3 ],
                    "source": [ "geoctl1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 5 ],
                    "source": [ "geoctl2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "geoctl3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 2 ],
                    "source": [ "geoctl4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 4 ],
                    "source": [ "geoctl5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "resetsequence", 0 ],
                    "source": [ "geodefer", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "geodefer", 0 ],
                    "source": [ "geoload", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "nodes", 0 ],
                    "source": [ "getxy", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "center", 0 ],
                    "source": [ "init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain0", 1 ],
                    "source": [ "line0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain1", 1 ],
                    "source": [ "line1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain2", 1 ],
                    "source": [ "line2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain3", 1 ],
                    "source": [ "line3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain0", 0 ],
                    "midpoints": [ 1256.3805602788925, 1504.6409534811974, 617.1923373937607, 1504.6409534811974 ],
                    "order": 4,
                    "source": [ "mono", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain1", 0 ],
                    "midpoints": [ 1256.3805602788925, 1504.6409534811974, 876.5330094099045, 1504.6409534811974 ],
                    "order": 3,
                    "source": [ "mono", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain2", 0 ],
                    "midpoints": [ 1256.3805602788925, 1504.6409534811974, 1350.2536352276802, 1504.6409534811974 ],
                    "order": 1,
                    "source": [ "mono", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain3", 0 ],
                    "midpoints": [ 1256.3805602788925, 1692.0, 1107.0, 1692.0, 1107.0, 1842.0, 1131.4780768156052, 1842.0 ],
                    "order": 2,
                    "source": [ "mono", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "order": 0,
                    "source": [ "mono", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "nodecache", 0 ],
                    "source": [ "noderoute", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "capture", 0 ],
                    "midpoints": [ 671.6621179580688, 1425.817429125309, 601.2259291410446, 1425.817429125309, 601.2259291410446, 816.4056538939476, 889.9878258705139, 816.4056538939476 ],
                    "source": [ "nodes", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "noderoute", 0 ],
                    "order": 1,
                    "source": [ "nodes", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "order": 0,
                    "source": [ "nodes", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 1032.6621179580688, 1365.0, 1044.0, 1365.0, 1044.0, 969.0, 669.0, 969.0, 669.0, 885.0, 738.0, 885.0, 738.0, 744.0, 651.0, 744.0, 651.0, 393.0, 674.8333531618118, 393.0 ],
                    "order": 1,
                    "source": [ "nodes", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "xyroute", 0 ],
                    "midpoints": [ 852.1621179580688, 1365.0, 834.0, 1365.0, 834.0, 1413.0, 960.0, 1413.0, 960.0, 1398.0, 1131.0, 1398.0, 1131.0, 1002.0, 1285.5563547611237, 1002.0 ],
                    "order": 0,
                    "source": [ "nodes", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-10", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mono", 1 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "geoctl1", 0 ],
                    "source": [ "obj-21", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "geoctl2", 0 ],
                    "source": [ "obj-21", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "geoctl3", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "geoctl5", 0 ],
                    "source": [ "obj-21", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "nodes", 0 ],
                    "midpoints": [ 1383.1061423778533, 990.0, 1053.0, 990.0, 1053.0, 969.0, 671.6621179580688, 969.0 ],
                    "source": [ "obj-21", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "xyreg", 0 ],
                    "midpoints": [ 1467.9798734903336, 990.0, 1446.0, 990.0, 1446.0, 1038.0, 1154.5704375505447, 1038.0 ],
                    "source": [ "obj-21", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "nodes", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "geoctl0", 0 ],
                    "order": 1,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "geoctl1", 0 ],
                    "order": 2,
                    "source": [ "obj-33", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "geoctl2", 0 ],
                    "order": 1,
                    "source": [ "obj-33", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "geoctl3", 0 ],
                    "order": 3,
                    "source": [ "obj-33", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "geoctl4", 0 ],
                    "order": 0,
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "geoctl5", 0 ],
                    "order": 0,
                    "source": [ "obj-33", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "nodes", 0 ],
                    "source": [ "obj-33", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "master", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "line0", 0 ],
                    "source": [ "pack0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "line1", 0 ],
                    "source": [ "pack1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "line2", 0 ],
                    "source": [ "pack2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "line3", 0 ],
                    "source": [ "pack3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "resetsequence", 0 ],
                    "source": [ "resetnear", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "nodes", 0 ],
                    "source": [ "resetsequence", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "resetsequence", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 1 ],
                    "source": [ "resetsequence", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "xyreg", 0 ],
                    "midpoints": [ 1303.2826202511787, 907.4788849949837, 1154.5704375505447, 907.4788849949837 ],
                    "source": [ "resetsequence", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rt", 0 ],
                    "source": [ "root", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "root", 0 ],
                    "source": [ "rootinit", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "curve", 2 ],
                    "source": [ "rt", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "curve", 0 ],
                    "source": [ "rt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack0", 1 ],
                    "order": 3,
                    "source": [ "smooth", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack1", 1 ],
                    "order": 2,
                    "source": [ "smooth", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack2", 1 ],
                    "order": 0,
                    "source": [ "smooth", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack3", 1 ],
                    "order": 1,
                    "source": [ "smooth", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "smooth", 0 ],
                    "source": [ "smoothinit", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "value0", 0 ],
                    "source": [ "unpack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "value1", 0 ],
                    "source": [ "unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "value2", 0 ],
                    "source": [ "unpack", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "value3", 0 ],
                    "source": [ "unpack", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack0", 0 ],
                    "source": [ "value0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack1", 0 ],
                    "source": [ "value1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack2", 0 ],
                    "source": [ "value2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack3", 0 ],
                    "source": [ "value3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "nodes", 0 ],
                    "midpoints": [ 1154.5704375505447, 1077.0, 1053.0, 1077.0, 1053.0, 969.0, 671.6621179580688, 969.0 ],
                    "source": [ "xyreg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "curve", 1 ],
                    "midpoints": [ 1285.5563547611237, 1032.0, 1104.0, 1032.0, 1104.0, 861.0, 986.8647140264511, 861.0 ],
                    "order": 2,
                    "source": [ "xyroute", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "midpoints": [ 1285.5563547611237, 1032.0, 1401.091566324234, 1032.0 ],
                    "order": 0,
                    "source": [ "xyroute", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "xyreg", 1 ],
                    "order": 1,
                    "source": [ "xyroute", 0 ]
                }
            }
        ]
    }
}