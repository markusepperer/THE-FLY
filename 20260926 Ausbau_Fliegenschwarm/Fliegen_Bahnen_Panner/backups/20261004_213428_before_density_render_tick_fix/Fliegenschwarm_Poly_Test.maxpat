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
            -1479.0,
            92.0,
            1601.0,
            942.0
        ],
        "boxes": [
            {
                "box": {
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-80",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Flugbahnensteuerung.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        484.9462579488754,
                        4.0000001192092896,
                        208.60215973854065,
                        82.79570257663727
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        628.5407482981682,
                        -44.49308925867081,
                        208.60215973854065,
                        82.79570257663727
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
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
                            0.0,
                            0.0,
                            1344.0,
                            900.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "portal-mouse-route",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        110.0,
                                        22.0
                                    ],
                                    "text": "route portalxy"
                                }
                            },
                            {
                                "box": {
                                    "id": "portal-mouse-unpack",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "float"
                                    ],
                                    "patching_rect": [
                                        126.0757485628128,
                                        129.81638979911804,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "unpack 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "portal-x-set",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        126.0757485628128,
                                        159.93687283992767,
                                        50.0,
                                        22.0
                                    ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "portal-y-set",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        183.64902448654175,
                                        163.55133080482483,
                                        50.0,
                                        22.0
                                    ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-72",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.000029485504115,
                                        39.99999963846585,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-73",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        126.07571248550425,
                                        245.55133063846586,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-74",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        161.07571248550425,
                                        245.55133063846586,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-75",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        196.07571248550425,
                                        245.55133063846586,
                                        30.0,
                                        30.0
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "portal-mouse-route",
                                        0
                                    ],
                                    "source": [
                                        "obj-72",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-74",
                                        0
                                    ],
                                    "source": [
                                        "portal-mouse-route",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "portal-mouse-unpack",
                                        0
                                    ],
                                    "source": [
                                        "portal-mouse-route",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "portal-x-set",
                                        0
                                    ],
                                    "source": [
                                        "portal-mouse-unpack",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "portal-y-set",
                                        0
                                    ],
                                    "source": [
                                        "portal-mouse-unpack",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-73",
                                        0
                                    ],
                                    "source": [
                                        "portal-x-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-75",
                                        0
                                    ],
                                    "source": [
                                        "portal-y-set",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        974.285738,
                        708.737854,
                        85.0,
                        22.0
                    ],
                    "text": "p Route Portal"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
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
                            0.0,
                            0.0,
                            1344.0,
                            900.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "spread",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        74.0,
                                        22.0
                                    ],
                                    "text": "spread 100."
                                }
                            },
                            {
                                "box": {
                                    "id": "rotate",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        128.89907598495483,
                                        100.0,
                                        60.0,
                                        22.0
                                    ],
                                    "text": "rotate 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "shiftx",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        198.6238408088684,
                                        100.0,
                                        60.0,
                                        22.0
                                    ],
                                    "text": "shiftx 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "shifty",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        268.348605632782,
                                        100.0,
                                        60.0,
                                        22.0
                                    ],
                                    "text": "shifty 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "shake",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        339.9082326889038,
                                        100.0,
                                        62.0,
                                        22.0
                                    ],
                                    "text": "shake 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "center",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        408.71556639671326,
                                        100.0,
                                        62.0,
                                        22.0
                                    ],
                                    "text": "center 0."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-69",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        191.1559356785126,
                                        182.00000026210023,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-70",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        408.71556767851257,
                                        182.00000026210023,
                                        30.0,
                                        30.0
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-70",
                                        0
                                    ],
                                    "source": [
                                        "center",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-69",
                                        0
                                    ],
                                    "source": [
                                        "rotate",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-69",
                                        0
                                    ],
                                    "source": [
                                        "shake",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-69",
                                        0
                                    ],
                                    "source": [
                                        "shiftx",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-69",
                                        0
                                    ],
                                    "source": [
                                        "shifty",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-69",
                                        0
                                    ],
                                    "source": [
                                        "spread",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        899.9999914169312,
                        193.42105078697205,
                        127.0,
                        22.0
                    ],
                    "text": "p Advanced Nodes Ctl"
                }
            },
            {
                "box": {
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-64",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "tempominmaxrndm.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        342.26363456249237,
                        4.0000001192092896,
                        130.5263204574585,
                        67.36842346191406
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        196.33839690685272,
                        152.83184027671814,
                        142.04545319080353,
                        66.04545390605927
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        383.59739875793457,
                        281.05264163017273,
                        58.0,
                        22.0
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-58",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Formation.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        707.5269129276276,
                        8.374605655670166,
                        138.25503957271576,
                        91.27517175674438
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        198.61112415790558,
                        234.65002131462097,
                        138.25503957271576,
                        91.27517175674438
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-39",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Teilschwärme_Adressierung.maxpat",
                    "numinlets": 0,
                    "numoutlets": 2,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        978.8235702514648,
                        23.524385929107666,
                        145.12195467948914,
                        60.975611209869385
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        198.61112415790558,
                        340.3318384885788,
                        146.01852971315384,
                        69.85714834928513
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 8,
                    "outlettype": [
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        ""
                    ],
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
                            0.0,
                            0.0,
                            1344.0,
                            900.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "formation-shape-load",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "loadmess 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "flow-mode-load",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        80.0,
                                        158.0,
                                        75.0,
                                        22.0
                                    ],
                                    "text": "loadmess 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "flow-amount-load",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        212.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "loadmess 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "flow-direction-load",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        266.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "loadmess 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "flow-speed-load",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        320.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "loadmess 0.2"
                                }
                            },
                            {
                                "box": {
                                    "id": "flow-layers-load",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        374.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "loadmess 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "flow-center-load",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        428.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "loadmess 50."
                                }
                            },
                            {
                                "box": {
                                    "id": "flow-offset-load",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        482.0,
                                        90.0,
                                        22.0
                                    ],
                                    "text": "loadmess 0."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.00002859069821,
                                        564.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-13",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        85.00002859069821,
                                        564.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-14",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        120.00002859069821,
                                        564.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-16",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        155.0000285906982,
                                        564.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-21",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        190.0000285906982,
                                        564.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-22",
                                    "index": 6,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        225.0000285906982,
                                        564.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-28",
                                    "index": 7,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        260.0000285906982,
                                        564.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-30",
                                    "index": 8,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        295.0000285906982,
                                        564.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-13",
                                        0
                                    ],
                                    "source": [
                                        "flow-amount-load",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-22",
                                        0
                                    ],
                                    "source": [
                                        "flow-center-load",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-14",
                                        0
                                    ],
                                    "source": [
                                        "flow-direction-load",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-21",
                                        0
                                    ],
                                    "source": [
                                        "flow-layers-load",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-30",
                                        0
                                    ],
                                    "source": [
                                        "flow-mode-load",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-28",
                                        0
                                    ],
                                    "source": [
                                        "flow-offset-load",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-16",
                                        0
                                    ],
                                    "source": [
                                        "flow-speed-load",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-7",
                                        0
                                    ],
                                    "source": [
                                        "formation-shape-load",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        435.95509099960327,
                        1473.0338255167007,
                        92.5,
                        22.0
                    ],
                    "text": "p loadmessen"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.8705882352941177,
                        0.8705882352941177,
                        0.8705882352941177,
                        1.0
                    ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-18",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "PortalInout.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1708.8234968185425,
                        213.2352900505066,
                        164.99998426437378,
                        331.24996840953827
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1147.4998905658722,
                        356.37503135204315,
                        164.99998426437378,
                        331.24996840953827
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [
                        1.0,
                        0.9686274509803922,
                        0.9411764705882353,
                        1.0
                    ],
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-11",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "collective landing.maxpat",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1536.7646765708923,
                        212.8602693080902,
                        141.3333375453949,
                        332.00000989437103
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        984.0000293254852,
                        356.00001060962677,
                        141.3333375453949,
                        332.00000989437103
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-49",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "radial pulse.maxpat",
                    "numinlets": 5,
                    "numoutlets": 1,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1077.1084735393524,
                        908.4337685108185,
                        160.869559943676,
                        175.6521681547165
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        786.3636288642883,
                        501.5151072740555,
                        160.869559943676,
                        175.6521681547165
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-27",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Fluchtreaktion.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1409.6386063098907,
                        924.0964196920395,
                        118.25397008657455,
                        146.03174829483032
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        261.11112356185913,
                        547.1500183343887,
                        118.25397008657455,
                        146.03174829483032
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-15",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "Snake Flugkette.maxpat",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1267.4699263572693,
                        908.4337685108185,
                        87.44185733795166,
                        181.3953423500061
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        679.5454480648041,
                        501.5151072740555,
                        87.44185733795166,
                        181.3953423500061
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 2,
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
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        972.2891925573349,
                        969.8795539140701,
                        58.139532804489136,
                        58.139532804489136
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        177.02021527290344,
                        557.3772909641266,
                        65.55557942390442,
                        86.24999177455902
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 2,
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
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "patching_rect": [
                        1253.6231988668442,
                        -107.16666221618652,
                        260.4166567325592,
                        191.66665935516357
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        405.6818143129349,
                        501.5151072740555,
                        260.4166567325592,
                        191.66665935516357
                    ],
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
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        765.0602692365646,
                        949.3976254463196,
                        173.0,
                        100.46780967712402
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        189.52021515369415,
                        443.74092841148376,
                        173.0,
                        100.46780967712402
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        382.5267947912216,
                        113.21053421497345,
                        70.0,
                        22.0
                    ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        270.65790581703186,
                        171.42105996608734,
                        77.0,
                        22.0
                    ],
                    "text": "loadmess 30"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1095.0,
                        142.15790235996246,
                        83.0,
                        22.0
                    ],
                    "text": "loadmess 100"
                }
            },
            {
                "box": {
                    "bgmode": 2,
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
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        179.33883303403854,
                        -38.01652681827545,
                        119.83470410108566,
                        66.94214504957199
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        507.9545406103134,
                        -13.636363506317139,
                        112.4999989271164,
                        51.59381020069122
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
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
                            0.0,
                            0.0,
                            1344.0,
                            900.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        129.10447657108307,
                                        52.0,
                                        22.0
                                    ],
                                    "text": "open $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        29.5,
                                        22.0
                                    ],
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
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        49.999985806144764,
                                        40.00000257350159,
                                        30.0,
                                        30.0
                                    ]
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
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        84.99998580614476,
                                        40.00000257350159,
                                        30.0,
                                        30.0
                                    ]
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
                                    "patching_rect": [
                                        49.999985806144764,
                                        211.10446357350156,
                                        30.0,
                                        30.0
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-6",
                                        0
                                    ],
                                    "source": [
                                        "obj-56",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-6",
                                        1
                                    ],
                                    "source": [
                                        "obj-57",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-7",
                                        0
                                    ],
                                    "source": [
                                        "obj-6",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-58",
                                        0
                                    ],
                                    "source": [
                                        "obj-7",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        607.25,
                        331.5789442062378,
                        100.0,
                        22.0
                    ],
                    "text": "p open instanzen"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        385.15837371349335,
                        200.0526386499405,
                        54.878050088882446,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        457.14285230636597,
                        -13.095237970352173,
                        36.90476155281067,
                        20.0
                    ],
                    "text": "Gain"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        269.08652448654175,
                        256.9411870241165,
                        104.59769940376282,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [
                        847.1910789012909,
                        121.26470971107483,
                        55.05618417263031,
                        33.0
                    ],
                    "text": "smooth panning"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1095.0,
                        227.87218725681305,
                        150.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        847.3118653297424,
                        72.04301393032074,
                        82.79570257663727,
                        20.0
                    ],
                    "text": "Nodes Range"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        191.549298286438,
                        256.9411870241165,
                        54.92957818508148,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        211.36363434791565,
                        110.22727167606354,
                        50.0,
                        20.0
                    ],
                    "text": "Tempo"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        8.459160566329956,
                        116.66665637493134,
                        84.82394552230835,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [
                        400.2381463646889,
                        -23.0,
                        48.80952334403992,
                        33.0
                    ],
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
                        "rect": [
                            0.0,
                            0.0,
                            1344.0,
                            899.2
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        180.0,
                                        283.0,
                                        72.0,
                                        22.0
                                    ],
                                    "text": "capture 200"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        130.0,
                                        223.0,
                                        39.0,
                                        22.0
                                    ],
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
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        79.0,
                                        328.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-38",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        130.0,
                                        317.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "meter~",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        122.0,
                                        177.0,
                                        80.0,
                                        13.0
                                    ]
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
                                    "outlettype": [
                                        "signal",
                                        "",
                                        "float",
                                        "list"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        50.0,
                                        191.0,
                                        48.0,
                                        136.0
                                    ],
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
                                    "outlettype": [
                                        "multichannelsignal"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        100.0,
                                        70.0,
                                        22.0
                                    ],
                                    "text": "mc.pack~ 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "multichannelsignal"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        130.0,
                                        92.0,
                                        22.0
                                    ],
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
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
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
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        85.0,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
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
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        120.0,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
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
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        155.0,
                                        40.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-35",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-30",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-36",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-30",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-30",
                                        0
                                    ],
                                    "source": [
                                        "obj-33",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-40",
                                        0
                                    ],
                                    "source": [
                                        "obj-35",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-41",
                                        0
                                    ],
                                    "source": [
                                        "obj-36",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-38",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "obj-41",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-42",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "obj-41",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-33",
                                        0
                                    ],
                                    "source": [
                                        "obj-43",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-33",
                                        1
                                    ],
                                    "source": [
                                        "obj-44",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-33",
                                        2
                                    ],
                                    "source": [
                                        "obj-45",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-33",
                                        3
                                    ],
                                    "source": [
                                        "obj-46",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        620.0,
                        841.0,
                        122.0,
                        22.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        184.00000548362732,
                        200.00000596046448,
                        50.0,
                        22.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        209.0909070968628,
                        87.49999916553497,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        28.0,
                        542.3298664093018,
                        128.0,
                        22.0
                    ],
                    "text": "print swarmvoicecount"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        6.5,
                        462.1211713552475,
                        50.0,
                        22.0
                    ],
                    "text": "target 0"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        68.00000202655792,
                        148.0000044107437,
                        29.5,
                        22.0
                    ],
                    "text": "0"
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
                                    "text": "Das Grundkonzept ist eine klare Trennung zwischen **zentraler Steuerung**, **50 selbstständigen Fliegenstimmen** und **gemeinsamer Audioausgabe**.\n\n```mermaid\nflowchart TD\n    GUI[\"Test-GUI<br/>globale und individuelle Befehle\"]\n    Manager[\"swarm_voice_count.js<br/>Stimmenverwaltung und Verteilung\"]\n    Poly[\"poly~ MS_FlyVoice_Poly 50\"]\n    Voice[\"50 × MS_FlyVoice_Poly<br/>je eine vollständige Fliege\"]\n    Audio[\"4 Audiokanäle<br/>Summen aller Stimmen\"]\n    Status[\"Statusausgang<br/>Voice-ID, X, Y\"]\n\n    GUI --> Manager\n    Manager --> Poly\n    Poly --> Voice\n    Voice --> Audio\n    Voice --> Status\n```\n\nIm Hauptpatch ist `poly~ MS_FlyVoice_Poly 50` der Container. Max erzeugt darin 50 voneinander unabhängige Instanzen des Patches `MS_FlyVoice_Poly.maxpat`. Jede Instanz hat eigene Flugbahndaten, eigenen Wiedergabezustand, eigenes Tempo, eigene Position und eigene Klangerzeugung.\n\n## Der Testpatch außen\n\nDie Bedienelemente erzeugen Nachrichten wie:\n\n```text\nstart\ntempo 1.2\nmode 1\nfirst 30\nlast 300\nloop 1\nexpand 100\ngain 1\n```\n\nDiese Nachrichten gehen nicht direkt in `poly~`, sondern zunächst in:\n\n```text\njs swarm_voice_count.js\n```\n\nDieses JavaScript ist die **Stimmenverwaltung**.\n\nEs weiß:\n\n- wie viele Stimmen derzeit aktiv sein sollen,\n- welche Stimme mit `target N` angesprochen wird,\n- dass `target 0` alle aktuell aktiven Stimmen bezeichnet,\n- welche Stimmen beim Erhöhen der Anzahl eingeschaltet werden,\n- welche beim Verringern gestoppt und deaktiviert werden,\n- wie individuelle Zufallstempi verteilt werden.\n\n### `target`\n\nMit:\n\n```text\ntarget 5\ntempo 2.\n```\n\nschickt das JavaScript an `poly~`:\n\n```text\ntarget 5\ntempo 2.\n```\n\nNur Stimme 5 bekommt den neuen Wert.\n\nBei:\n\n```text\ntarget 0\ntempo 2.\n```\n\ndurchläuft das JavaScript alle aktiven Stimmen:\n\n```text\ntarget 1, tempo 2.\ntarget 2, tempo 2.\ntarget 3, tempo 2.\n...\n```\n\n`target 0` bedeutet in unserer Architektur daher: **alle gegenwärtig zum Schwarm gehörenden Stimmen**.\n\n### Anzahl aktiver Stimmen\n\n`poly~` besitzt immer 50 geladene Instanzen. Das Zahlenfeld „Anzahl aktiver Fliegen“ entscheidet, wie viele davon arbeiten.\n\nWenn du von 4 auf 50 erhöhst, sendet die Verwaltung an die neu hinzukommenden Stimmen:\n\n```text\ntarget N\nactive 1\nstart\n```\n\nBeim Reduzieren erhält jede entfernte Stimme:\n\n```text\ntarget N\nstop\nactive 0\n```\n\n`active 0` wird innerhalb der Stimme zu `mute 1` für `thispoly~`. Dadurch wird die DSP-Berechnung dieser Stimme abgeschaltet. Die Instanz existiert weiterhin, verbraucht aber wesentlich weniger Rechenleistung.\n\n## Die zufällige Tempoverteilung\n\n`Tempo Min` und `Tempo Max` werden im Verwaltungs-JavaScript gespeichert. Beim Anklicken von `randomizetempo` erzeugt es für jede aktive Stimme einen eigenen Zufallswert:\n\n```text\ntarget 1, tempo 0.83\ntarget 2, tempo 1.41\ntarget 3, tempo 1.07\n...\ntarget 50, tempo 1.26\n```\n\nDamit bleiben Flugmodus, Bereich, Raumgeometrie und andere Einstellungen global, während die Stimmen zeitlich auseinanderlaufen. Genau dadurch verliert der Schwarm seine gekoppelte Bewegung.\n\n## Der Stimmenpatch innen\n\nOben in `MS_FlyVoice_Poly` kommt jede Nachricht über `in 1` herein:\n\n```text\nroute start stop flight tempo mode loop first last\n      expand spread rotate shiftx shifty shake center\n      smooth gain active resetquad\n```\n\n`route` zerlegt die Nachrichten nach ihrem ersten Wort.\n\nBeispiele:\n\n- `tempo 1.2` verlässt den Ausgang `tempo`.\n- `expand 80` verlässt den Ausgang `expand`.\n- `active 0` verlässt den Ausgang `active`.\n\nDie Objekte `prepend ...` übersetzen anschließend die äußeren, einheitlichen Namen in die Namen, welche die vorhandenen Abstraktionen erwarten:\n\n```text\ntempo 1.2  → prepend speed       → speed 1.2\nfirst 30   → prepend firstflight → firstflight 30\ngain 0.8   → prepend gain        → gain 0.8\n```\n\nDiese übersetzten Nachrichten werden an:\n\n```text\ns #0_voice_commands\n```\n\ngeschickt.\n\n`#0` ist in jeder Poly-Instanz eine andere, automatisch vergebene Nummer. Im Screenshot ist daraus beispielsweise geworden:\n\n```text\ns 3922_voice_commands\nr 3922_voice_commands\n```\n\nEine andere Stimme erhält etwa `4178_voice_commands`. Deshalb können sich die 50 Instanzen nicht gegenseitig beeinflussen.\n\n## Klangerzeugung und Panning innerhalb jeder Stimme\n\nDie eigentliche Stimme besteht aus zwei großen Teilen:\n\n```text\nMS_fly #0\nQuadpanner_FlyVoice\n```\n\n`MS_fly #0` erzeugt die Mono-Fliege. Dort liegen Synthese und bewegungsabhängige Klangveränderungen.\n\nDer Quadpanner enthält:\n\n- die Flugbahnen,\n- den gelben Positionspunkt,\n- Node-Geometrie,\n- Expand, Spread, Rotate und Shift,\n- die Verteilung der Monoquelle auf vier Lautsprecher.\n\nDie Instanz erzeugt daher direkt vier Audiosignale:\n\n```text\nLautsprecher 1\nLautsprecher 2\nLautsprecher 3\nLautsprecher 4\n```\n\n## Warum `send~` und `receive~` verwendet werden\n\nInnerhalb einer Stimme benutzt der Patch instanzbezogene Signalnamen, beispielsweise:\n\n```text\nsend~ 3922_Monosource\nreceive~ 3922panner1\nreceive~ 3922panner2\nreceive~ 3922panner3\nreceive~ 3922panner4\n```\n\nAuch hier isoliert die aus `#0` entstandene Nummer jede Stimme. Eine Fliege empfängt dadurch ausschließlich ihre eigenen vier Panning-Ausgänge.\n\nDie vier `out~`-Objekte verlassen anschließend die Poly-Stimme. `poly~` addiert automatisch alle gleich nummerierten Signalausgänge:\n\n```text\nAusgang 1 = Summe aller Stimmen auf Lautsprecher 1\nAusgang 2 = Summe aller Stimmen auf Lautsprecher 2\nAusgang 3 = Summe aller Stimmen auf Lautsprecher 3\nAusgang 4 = Summe aller Stimmen auf Lautsprecher 4\n```\n\nDeshalb besitzt der äußere Patch nur vier Audiokabel, obwohl im Inneren 50 Fliegen mit jeweils vier Kanälen laufen.\n\n## `active` und `thispoly~`\n\nDer rechte Strang verarbeitet:\n\n```text\nactive 1\n```\n\nüber:\n\n```text\nexpr 1-$i1\nprepend mute\nthispoly~\n```\n\nDaraus wird:\n\n```text\nactive 1 → mute 0\nactive 0 → mute 1\n```\n\nDie Umkehrung ist notwendig, weil „aktiv“ und „mute“ gegensätzliche Bedeutungen haben.\n\n- `active 1`: Stimme arbeitet.\n- `active 0`: Stimme wird stummgeschaltet und ihre DSP-Berechnung deaktiviert.\n\n## Der fünfte Ausgang\n\nUnten rechts empfängt jede Stimme ihre aktuellen Flugkoordinaten:\n\n```text\nreceive~ #0_Flugkoordinaten\n```\n\nDiese werden in Kontrollwerte umgewandelt und mit der Identität von `thispoly~` kombiniert:\n\n```text\nVoice-ID X Y\n```\n\nBeispielsweise:\n\n```text\n25 0.101706 0.436686\n```\n\nDas bedeutet:\n\n- Stimme 25\n- X-Position 0,101706\n- Y-Position 0,436686\n\nDieser Ausgang trägt kein Audio. Er ist für die kommende gemeinsame Schwarmdarstellung vorgesehen.\n\nDie Architektur besteht damit aus **einer zentralen Kommandoebene**, **50 voneinander isolierten vollständigen Fliegen** und **vier automatisch summierten Raumkanälen**. Jede Stimme bleibt einzeln adressierbar, während globale Befehle vom Verwaltungs-JavaScript auf den gesamten aktiven Schwarm verteilt werden."
                                }
                            }
                        ],
                        "lines": []
                    },
                    "patching_rect": [
                        620.0,
                        869.6968929767609,
                        81.0,
                        22.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        382.5267947912216,
                        142.15790235996246,
                        50.0,
                        22.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        457.14285230636597,
                        15.957446694374084,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-17",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        275.9210636615753,
                        199.0526386499405,
                        50.0,
                        22.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        847.4690924882889,
                        98.26470971107483,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1095.0,
                        169.53885447978973,
                        50.0,
                        22.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        847.4690924882889,
                        46.5753390789032,
                        50.0,
                        22.0
                    ]
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
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        553.9071942567825,
                        645.3607885837555,
                        106.0,
                        137.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        809.0908377170563,
                        250.5,
                        122.0,
                        240.0
                    ],
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
                    "patching_rect": [
                        487.0,
                        841.0,
                        106.0,
                        22.0
                    ],
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
                    "patching_rect": [
                        989.0244209766388,
                        -172.0,
                        650.0,
                        23.0
                    ],
                    "text": "Fliegenschwarm · Poly-Test mit bis zu 50 Stimmen"
                }
            },
            {
                "box": {
                    "color": [
                        1.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "fontsize": 18.0,
                    "id": "poly",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        607.25,
                        367.0,
                        232.0,
                        29.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        8.000000238418579,
                        148.0000044107437,
                        55.0,
                        22.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        397.14290803670883,
                        15.957446694374084,
                        55.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "targetpre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        8.000000238418579,
                        176.00000524520874,
                        90.0,
                        22.0
                    ],
                    "text": "prepend target"
                }
            },
            {
                "box": {
                    "id": "start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        496.17035257816315,
                        193.2835751771927,
                        38.0,
                        22.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        269.3181792497635,
                        87.49999916553497,
                        38.0,
                        22.0
                    ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "id": "stop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        540.9071942567825,
                        193.2835751771927,
                        34.0,
                        22.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        314.7727242708206,
                        87.49999916553497,
                        34.0,
                        22.0
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "tempo",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        184.00000548362732,
                        228.0000067949295,
                        59.0,
                        22.0
                    ],
                    "text": "tempo $1"
                }
            },
            {
                "box": {
                    "id": "loop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        383.59739875793457,
                        309.4736952781677,
                        47.0,
                        22.0
                    ],
                    "text": "loop 1"
                }
            },
            {
                "box": {
                    "id": "expand",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1095.0,
                        198.11028277873993,
                        65.0,
                        22.0
                    ],
                    "text": "expand $1"
                }
            },
            {
                "box": {
                    "id": "smooth",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        275.9210636615753,
                        228.0000067949295,
                        65.0,
                        22.0
                    ],
                    "text": "smooth $1"
                }
            },
            {
                "box": {
                    "id": "gain",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        382.5267947912216,
                        175.05263888835907,
                        48.0,
                        22.0
                    ],
                    "text": "gain $1"
                }
            },
            {
                "box": {
                    "id": "meter1",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        445.0,
                        659.0,
                        100.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "meter2",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        445.0,
                        688.0,
                        100.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "meter3",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        445.0,
                        718.0,
                        100.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "meter4",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        445.0,
                        749.0,
                        100.0,
                        18.0
                    ]
                }
            },
            {
                "box": {
                    "id": "status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        731.7647364139557,
                        500.00002086162567,
                        164.7058892250061,
                        22.0
                    ],
                    "text": "50 0.521934 0.326875"
                }
            },
            {
                "box": {
                    "id": "statuslab",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        731.7647364139557,
                        530.588257431984,
                        180.0,
                        20.0
                    ],
                    "text": "Stimmen-ID · X · Y"
                }
            },
            {
                "box": {
                    "id": "msg-resetquad",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        999.0,
                        142.15790235996246,
                        68.0,
                        22.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        847.1910789012909,
                        158.6206979751587,
                        68.0,
                        22.0
                    ],
                    "text": "resetquad"
                }
            },
            {
                "box": {
                    "id": "voicecount-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        12.37113332748413,
                        339.0,
                        180.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_linecount": 4,
                    "presentation_rect": [
                        211.36363434791565,
                        -1.1363636255264282,
                        51.0,
                        60.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        12.37113332748413,
                        362.8865776062012,
                        55.0,
                        22.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        209.0909070968628,
                        60.227272152900696,
                        55.0,
                        22.0
                    ]
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
                    "id": "voicecount-js",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        12.98701286315918,
                        419.4805154800415,
                        389.6103858947754,
                        26.0
                    ],
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
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        12.37113332748413,
                        314.432972073555,
                        77.0,
                        22.0
                    ],
                    "text": "loadmess 50"
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "swarm-display-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        978.8235702514648,
                        252.94118702411652,
                        440.0,
                        24.0
                    ],
                    "text": "SCHWARMDARSTELLUNG · gelber Punkt + Voice-ID"
                }
            },
            {
                "box": {
                    "filename": "swarm_display.js",
                    "id": "swarm-display",
                    "jsarguments": [
                        "swarm_display.js"
                    ],
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        974.2857375144958,
                        256.9411870241165,
                        440.0,
                        440.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        397.14290803670883,
                        42.857148349285126,
                        440.0,
                        440.0
                    ]
                }
            },
            {
                "box": {
                    "id": "swarm-display-voices",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        846.835431933403,
                        160.44775545597076,
                        95.0,
                        22.0
                    ],
                    "text": "prepend voices"
                }
            },
            {
                "box": {
                    "id": "swarm-display-note",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1415.2857375144958,
                        645.3607885837555,
                        124.09639012813568,
                        47.0
                    ],
                    "text": "Monitor: verändert weder Flugbahnen noch Audiopanning."
                }
            },
            {
                "box": {
                    "id": "moving-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        201.99999737739563,
                        338.9869569778442,
                        225.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_linecount": 4,
                    "presentation_rect": [
                        279.54545187950134,
                        0.0,
                        69.0,
                        60.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        201.99999737739563,
                        362.9,
                        55.0,
                        22.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        284.09090638160706,
                        60.227272152900696,
                        55.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "moving-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        290.0,
                        362.9,
                        105.0,
                        22.0
                    ],
                    "text": "prepend moving"
                }
            },
            {
                "box": {
                    "id": "swarm-autogain",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        540.9071942567825,
                        500.00002086162567,
                        145.0,
                        22.0
                    ],
                    "text": "MS_Swarm_AutoGain"
                }
            },
            {
                "box": {
                    "id": "subswarms-ui-route",
                    "linecount": 11,
                    "maxclass": "newobj",
                    "numinlets": 17,
                    "numoutlets": 17,
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
                        ""
                    ],
                    "patching_rect": [
                        737.0798664093018,
                        580.5294235944748,
                        165.0,
                        156.0
                    ],
                    "text": "route setdensity setgrid setorbit setringmode setorbitspread setpulseinner setpulseouter setpulsetempo setpulsephase setpulsetempospread setsnake setsnakespacing setalignment setescapestrength setescapereturn setsnakedeviation"
                }
            },
            {
                "box": {
                    "id": "subswarms-set-density",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        550.0,
                        430.0,
                        50.0,
                        22.0
                    ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "subswarms-set-grid",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        610.0,
                        430.0,
                        50.0,
                        22.0
                    ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "landing-target-recv",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1260.526303768158,
                        225.87218725681305,
                        205.0,
                        22.0
                    ],
                    "text": "r 3922_landing_targets"
                }
            },
            {
                "box": {
                    "id": "flocking-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        598.7952028512955,
                        1080.7229315042496,
                        260.0,
                        20.0
                    ],
                    "text": "FLOCKING · lokale Nachbarschaften"
                }
            },
            {
                "box": {
                    "id": "flocking-amount-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        598.7952028512955,
                        1107.228956580162,
                        150.0,
                        20.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        598.7952028512955,
                        1127.7108850479126,
                        65.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "flocking-amount-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        673.4940007925034,
                        1127.7108850479126,
                        140.0,
                        22.0
                    ],
                    "text": "prepend flocking"
                }
            },
            {
                "box": {
                    "id": "flocking-amount-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        825.3012353181839,
                        1127.7108850479126,
                        75.0,
                        22.0
                    ],
                    "text": "loadmess 0."
                }
            },
            {
                "box": {
                    "id": "flocking-neighbors-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        598.7952028512955,
                        1160.241006731987,
                        177.0,
                        20.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        598.7952028512955,
                        1180.7229351997375,
                        65.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "flocking-neighbors-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        673.4940007925034,
                        1180.7229351997375,
                        165.0,
                        22.0
                    ],
                    "text": "prepend flockneighbors"
                }
            },
            {
                "box": {
                    "id": "flocking-neighbors-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        848.1928024291992,
                        1180.7229351997375,
                        75.0,
                        22.0
                    ],
                    "text": "loadmess 6"
                }
            },
            {
                "box": {
                    "id": "flocking-separation-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        598.7952028512955,
                        1213.253056883812,
                        192.0,
                        20.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        598.7952028512955,
                        1236.1446239948273,
                        65.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "flocking-separation-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        673.4940007925034,
                        1236.1446239948273,
                        175.0,
                        22.0
                    ],
                    "text": "prepend flockseparation"
                }
            },
            {
                "box": {
                    "id": "flocking-separation-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        859.0361763238907,
                        1236.1446239948273,
                        85.0,
                        22.0
                    ],
                    "text": "loadmess 35."
                }
            },
            {
                "box": {
                    "id": "flocking-broadcast-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        972.2891925573349,
                        1203.6145023107529,
                        205.0,
                        22.0
                    ],
                    "text": "s 3922_flocking_commands"
                }
            },
            {
                "box": {
                    "id": "flocking-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        598.7952028512955,
                        1271.0843843221664,
                        672.0,
                        20.0
                    ],
                    "text": "Mehr Nachbarn = größere Reichweite und stärkere Organisation; Mindestabstand öffnet den Raum. Gruppenfilter bleibt aktiv."
                }
            },
            {
                "box": {
                    "id": "flow-mode-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1343.0,
                        150.0,
                        20.0
                    ],
                    "text": "Flow-Modus"
                }
            },
            {
                "box": {
                    "id": "flow-mode",
                    "items": [
                        "Uniform",
                        ",",
                        "Counter",
                        ",",
                        "Mirror"
                    ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1365.0,
                        125.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "flow-mode-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        731.3298664093018,
                        1365.0,
                        135.0,
                        22.0
                    ],
                    "text": "prepend flowmode"
                }
            },
            {
                "box": {
                    "id": "flow-amount-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1397.0,
                        210.0,
                        20.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1419.0,
                        65.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "flow-amount-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        671.3298664093018,
                        1419.0,
                        165.0,
                        22.0
                    ],
                    "text": "prepend flowamount"
                }
            },
            {
                "box": {
                    "id": "flow-direction-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1451.0,
                        210.0,
                        20.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1473.0,
                        65.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "flow-direction-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        671.3298664093018,
                        1473.0,
                        165.0,
                        22.0
                    ],
                    "text": "prepend flowdirection"
                }
            },
            {
                "box": {
                    "id": "flow-speed-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1505.0,
                        210.0,
                        20.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1527.0,
                        65.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "flow-speed-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        671.3298664093018,
                        1527.0,
                        165.0,
                        22.0
                    ],
                    "text": "prepend flowspeed"
                }
            },
            {
                "box": {
                    "id": "flow-layers-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1559.0,
                        210.0,
                        20.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1581.0,
                        65.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "flow-layers-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        671.3298664093018,
                        1581.0,
                        165.0,
                        22.0
                    ],
                    "text": "prepend flowlayers"
                }
            },
            {
                "box": {
                    "id": "flow-center-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1613.0,
                        210.0,
                        20.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1635.0,
                        65.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "flow-center-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        671.3298664093018,
                        1635.0,
                        165.0,
                        22.0
                    ],
                    "text": "prepend flowcenter"
                }
            },
            {
                "box": {
                    "id": "flow-broadcast-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        998.9130244255066,
                        1454.3477983474731,
                        190.0,
                        22.0
                    ],
                    "text": "s 3922_flow_commands"
                }
            },
            {
                "box": {
                    "id": "flow-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1721.0,
                        700.0,
                        20.0
                    ],
                    "text": "Uniform und Counter: Parallel-Offset verschiebt alle Bahnen quer zur Flugrichtung. Mirror ignoriert diesen Wert."
                }
            },
            {
                "box": {
                    "id": "swarm-sync-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1080.4347620010376,
                        1276.086932182312,
                        70.0,
                        22.0
                    ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "swarm-sync-metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        1080.4347620010376,
                        1305.4347577095032,
                        70.0,
                        22.0
                    ],
                    "text": "qmetro 20"
                }
            },
            {
                "box": {
                    "id": "swarm-sync-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        1080.4347620010376,
                        1330.434757232666,
                        45.0,
                        22.0
                    ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "swarm-sync-leader",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1051.6484030485153,
                        1405.494574189186,
                        110.0,
                        22.0
                    ],
                    "text": "swarmtickleader"
                }
            },
            {
                "box": {
                    "id": "swarm-sync-render",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1051.6484030485153,
                        1374.7253419160843,
                        110.0,
                        22.0
                    ],
                    "text": "swarmtickleader"
                }
            },
            {
                "box": {
                    "id": "flow-offset-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1667.0,
                        260.0,
                        20.0
                    ],
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        596.3298664093018,
                        1689.0,
                        65.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "flow-offset-pre",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        671.3298664093018,
                        1689.0,
                        165.0,
                        22.0
                    ],
                    "text": "prepend flowoffset"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        607.25,
                        298.6842076778412,
                        24.0,
                        24.0
                    ]
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
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        687.5131571292877,
                        298.6842076778412,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "swarm-manager-recv",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        300.0,
                        460.0,
                        225.0,
                        22.0
                    ],
                    "text": "r 3922_swarm_manager_commands"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "swarm-display",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "expand",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "expand",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flocking-amount-pre",
                        0
                    ],
                    "source": [
                        "flocking-amount",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flocking-amount",
                        0
                    ],
                    "source": [
                        "flocking-amount-load",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flocking-broadcast-send",
                        0
                    ],
                    "source": [
                        "flocking-amount-pre",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flocking-neighbors-pre",
                        0
                    ],
                    "source": [
                        "flocking-neighbors",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flocking-neighbors",
                        0
                    ],
                    "source": [
                        "flocking-neighbors-load",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flocking-broadcast-send",
                        0
                    ],
                    "source": [
                        "flocking-neighbors-pre",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flocking-separation-pre",
                        0
                    ],
                    "source": [
                        "flocking-separation",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flocking-separation",
                        0
                    ],
                    "source": [
                        "flocking-separation-load",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flocking-broadcast-send",
                        0
                    ],
                    "source": [
                        "flocking-separation-pre",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-amount-pre",
                        0
                    ],
                    "source": [
                        "flow-amount",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-broadcast-send",
                        0
                    ],
                    "source": [
                        "flow-amount-pre",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-center-pre",
                        0
                    ],
                    "source": [
                        "flow-center",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-broadcast-send",
                        0
                    ],
                    "source": [
                        "flow-center-pre",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-direction-pre",
                        0
                    ],
                    "source": [
                        "flow-direction",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-broadcast-send",
                        0
                    ],
                    "source": [
                        "flow-direction-pre",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-layers-pre",
                        0
                    ],
                    "source": [
                        "flow-layers",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-broadcast-send",
                        0
                    ],
                    "source": [
                        "flow-layers-pre",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-mode-pre",
                        0
                    ],
                    "source": [
                        "flow-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-broadcast-send",
                        0
                    ],
                    "source": [
                        "flow-mode-pre",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-offset-pre",
                        0
                    ],
                    "source": [
                        "flow-offset",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-broadcast-send",
                        0
                    ],
                    "source": [
                        "flow-offset-pre",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-speed-pre",
                        0
                    ],
                    "source": [
                        "flow-speed",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-broadcast-send",
                        0
                    ],
                    "source": [
                        "flow-speed-pre",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-display",
                        0
                    ],
                    "source": [
                        "landing-target-recv",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "loop",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "moving-prepend",
                        0
                    ],
                    "source": [
                        "moving-count",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "moving-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-display",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "msg-resetquad",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "msg-resetquad",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-display",
                        0
                    ],
                    "source": [
                        "obj-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "obj-12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "obj-15",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "smooth",
                        0
                    ],
                    "source": [
                        "obj-17",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-display",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-18",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "obj-18",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "obj-18",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "obj-19",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-4",
                        0
                    ],
                    "source": [
                        "obj-2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "tempo",
                        0
                    ],
                    "source": [
                        "obj-23",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "targetpre",
                        0
                    ],
                    "source": [
                        "obj-25",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "gain",
                        0
                    ],
                    "source": [
                        "obj-26",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "obj-27",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-1",
                        3
                    ],
                    "order": 1,
                    "source": [
                        "obj-3",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-1",
                        2
                    ],
                    "order": 1,
                    "source": [
                        "obj-3",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-1",
                        1
                    ],
                    "source": [
                        "obj-3",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-1",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-47",
                        3
                    ],
                    "source": [
                        "obj-3",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-47",
                        2
                    ],
                    "order": 0,
                    "source": [
                        "obj-3",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-47",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "obj-3",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-47",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-amount",
                        0
                    ],
                    "source": [
                        "obj-34",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-center",
                        0
                    ],
                    "source": [
                        "obj-34",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-direction",
                        0
                    ],
                    "source": [
                        "obj-34",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-layers",
                        0
                    ],
                    "source": [
                        "obj-34",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-mode",
                        0
                    ],
                    "source": [
                        "obj-34",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-offset",
                        0
                    ],
                    "source": [
                        "obj-34",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-speed",
                        0
                    ],
                    "source": [
                        "obj-34",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-9",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-39",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-display",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-39",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "expand",
                        0
                    ],
                    "source": [
                        "obj-4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "obj-49",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-17",
                        0
                    ],
                    "source": [
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-59",
                        0
                    ],
                    "source": [
                        "obj-55",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "poly",
                        0
                    ],
                    "source": [
                        "obj-59",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-26",
                        0
                    ],
                    "source": [
                        "obj-6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "obj-61",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "loop",
                        0
                    ],
                    "source": [
                        "obj-62",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "obj-64",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-display",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-71",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "obj-71",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "obj-71",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-18",
                        1
                    ],
                    "source": [
                        "obj-76",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-18",
                        0
                    ],
                    "source": [
                        "obj-76",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "obj-76",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-59",
                        1
                    ],
                    "source": [
                        "obj-8",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "obj-80",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "status",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "poly",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-autogain",
                        4
                    ],
                    "source": [
                        "poly",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-autogain",
                        3
                    ],
                    "source": [
                        "poly",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-autogain",
                        2
                    ],
                    "source": [
                        "poly",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-autogain",
                        1
                    ],
                    "source": [
                        "poly",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-display",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "poly",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "smooth",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "start",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "stop",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-58",
                        0
                    ],
                    "source": [
                        "subswarms-set-density",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-58",
                        1
                    ],
                    "source": [
                        "subswarms-set-grid",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-12",
                        0
                    ],
                    "source": [
                        "subswarms-ui-route",
                        12
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-15",
                        1
                    ],
                    "source": [
                        "subswarms-ui-route",
                        15
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-15",
                        0
                    ],
                    "source": [
                        "subswarms-ui-route",
                        11
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-15",
                        2
                    ],
                    "source": [
                        "subswarms-ui-route",
                        10
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-19",
                        2
                    ],
                    "source": [
                        "subswarms-ui-route",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-19",
                        1
                    ],
                    "source": [
                        "subswarms-ui-route",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-19",
                        0
                    ],
                    "source": [
                        "subswarms-ui-route",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-27",
                        1
                    ],
                    "source": [
                        "subswarms-ui-route",
                        14
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-27",
                        0
                    ],
                    "source": [
                        "subswarms-ui-route",
                        13
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-49",
                        4
                    ],
                    "source": [
                        "subswarms-ui-route",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-49",
                        3
                    ],
                    "source": [
                        "subswarms-ui-route",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-49",
                        2
                    ],
                    "source": [
                        "subswarms-ui-route",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-49",
                        1
                    ],
                    "source": [
                        "subswarms-ui-route",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-49",
                        0
                    ],
                    "source": [
                        "subswarms-ui-route",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "subswarms-set-density",
                        0
                    ],
                    "source": [
                        "subswarms-ui-route",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "subswarms-set-grid",
                        0
                    ],
                    "source": [
                        "subswarms-ui-route",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "meter1",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "swarm-autogain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "meter2",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "swarm-autogain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "meter3",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "swarm-autogain",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "meter4",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "swarm-autogain",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-3",
                        3
                    ],
                    "order": 0,
                    "source": [
                        "swarm-autogain",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-3",
                        2
                    ],
                    "order": 0,
                    "source": [
                        "swarm-autogain",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-3",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "swarm-autogain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-3",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "swarm-autogain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-76",
                        0
                    ],
                    "source": [
                        "swarm-display",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-display",
                        0
                    ],
                    "source": [
                        "swarm-display-voices",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-broadcast-send",
                        0
                    ],
                    "source": [
                        "swarm-sync-leader",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-sync-metro",
                        0
                    ],
                    "source": [
                        "swarm-sync-load",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-sync-trigger",
                        0
                    ],
                    "source": [
                        "swarm-sync-metro",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "flow-broadcast-send",
                        0
                    ],
                    "source": [
                        "swarm-sync-render",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-sync-leader",
                        0
                    ],
                    "source": [
                        "swarm-sync-trigger",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-sync-render",
                        0
                    ],
                    "source": [
                        "swarm-sync-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "targetpre",
                        0
                    ],
                    "source": [
                        "targetnum",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "targetpre",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        1
                    ],
                    "source": [
                        "tempo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-autogain",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "voicecount",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "swarm-display-voices",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "voicecount",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount-js",
                        0
                    ],
                    "order": 2,
                    "source": [
                        "voicecount",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "moving-count",
                        0
                    ],
                    "source": [
                        "voicecount-js",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-31",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "voicecount-js",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "poly",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "voicecount-js",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "subswarms-ui-route",
                        0
                    ],
                    "source": [
                        "voicecount-js",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "voicecount",
                        0
                    ],
                    "source": [
                        "voicecount-load",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "swarm-manager-recv",
                        0
                    ],
                    "destination": [
                        "voicecount-js",
                        1
                    ]
                }
            }
        ],
        "parameters": {
            "obj-3": [
                "live.gain~",
                "live.gain~",
                0
            ],
            "obj-47::obj-35": [
                "live.gain~[1]",
                "live.gain~[1]",
                0
            ],
            "obj-80::obj-36": [
                "live.tab",
                "live.tab",
                0
            ],
            "poly.10::synth::doppler-control::dop-amount": [
                "doppler_amount[10]",
                "doppler_amount",
                0
            ],
            "poly.10::synth::obj-152::gain0": [
                "Harmonic 2 Gain[6]",
                "H2 Gain",
                0
            ],
            "poly.10::synth::obj-152::gain1": [
                "Harmonic 3 Gain[5]",
                "H3 Gain",
                0
            ],
            "poly.10::synth::obj-152::q0": [
                "Harmonic 2 Q[11]",
                "H2 Q",
                0
            ],
            "poly.10::synth::obj-152::q1": [
                "Harmonic 3 Q[11]",
                "H3 Q",
                0
            ],
            "poly.10::synth::orientation-radiation::amount": [
                "Orientation Amount[12]",
                "Orient Amount",
                0
            ],
            "poly.11::synth::doppler-control::dop-amount": [
                "doppler_amount[11]",
                "doppler_amount",
                0
            ],
            "poly.11::synth::obj-152::gain0": [
                "Harmonic 2 Gain[7]",
                "H2 Gain",
                0
            ],
            "poly.11::synth::obj-152::gain1": [
                "Harmonic 3 Gain[14]",
                "H3 Gain",
                0
            ],
            "poly.11::synth::obj-152::q0": [
                "Harmonic 2 Q[12]",
                "H2 Q",
                0
            ],
            "poly.11::synth::obj-152::q1": [
                "Harmonic 3 Q[12]",
                "H3 Q",
                0
            ],
            "poly.11::synth::orientation-radiation::amount": [
                "Orientation Amount[13]",
                "Orient Amount",
                0
            ],
            "poly.12::synth::doppler-control::dop-amount": [
                "doppler_amount[12]",
                "doppler_amount",
                0
            ],
            "poly.12::synth::obj-152::gain0": [
                "Harmonic 2 Gain[14]",
                "H2 Gain",
                0
            ],
            "poly.12::synth::obj-152::gain1": [
                "Harmonic 3 Gain[15]",
                "H3 Gain",
                0
            ],
            "poly.12::synth::obj-152::q0": [
                "Harmonic 2 Q[13]",
                "H2 Q",
                0
            ],
            "poly.12::synth::obj-152::q1": [
                "Harmonic 3 Q[13]",
                "H3 Q",
                0
            ],
            "poly.12::synth::orientation-radiation::amount": [
                "Orientation Amount[14]",
                "Orient Amount",
                0
            ],
            "poly.13::synth::doppler-control::dop-amount": [
                "doppler_amount[13]",
                "doppler_amount",
                0
            ],
            "poly.13::synth::obj-152::gain0": [
                "Harmonic 2 Gain[15]",
                "H2 Gain",
                0
            ],
            "poly.13::synth::obj-152::gain1": [
                "Harmonic 3 Gain[16]",
                "H3 Gain",
                0
            ],
            "poly.13::synth::obj-152::q0": [
                "Harmonic 2 Q[14]",
                "H2 Q",
                0
            ],
            "poly.13::synth::obj-152::q1": [
                "Harmonic 3 Q[14]",
                "H3 Q",
                0
            ],
            "poly.13::synth::orientation-radiation::amount": [
                "Orientation Amount[15]",
                "Orient Amount",
                0
            ],
            "poly.14::synth::doppler-control::dop-amount": [
                "doppler_amount[14]",
                "doppler_amount",
                0
            ],
            "poly.14::synth::obj-152::gain0": [
                "Harmonic 2 Gain[16]",
                "H2 Gain",
                0
            ],
            "poly.14::synth::obj-152::gain1": [
                "Harmonic 3 Gain[17]",
                "H3 Gain",
                0
            ],
            "poly.14::synth::obj-152::q0": [
                "Harmonic 2 Q[15]",
                "H2 Q",
                0
            ],
            "poly.14::synth::obj-152::q1": [
                "Harmonic 3 Q[15]",
                "H3 Q",
                0
            ],
            "poly.14::synth::orientation-radiation::amount": [
                "Orientation Amount[16]",
                "Orient Amount",
                0
            ],
            "poly.15::synth::doppler-control::dop-amount": [
                "doppler_amount[15]",
                "doppler_amount",
                0
            ],
            "poly.15::synth::obj-152::gain0": [
                "Harmonic 2 Gain[17]",
                "H2 Gain",
                0
            ],
            "poly.15::synth::obj-152::gain1": [
                "Harmonic 3 Gain[18]",
                "H3 Gain",
                0
            ],
            "poly.15::synth::obj-152::q0": [
                "Harmonic 2 Q[16]",
                "H2 Q",
                0
            ],
            "poly.15::synth::obj-152::q1": [
                "Harmonic 3 Q[16]",
                "H3 Q",
                0
            ],
            "poly.15::synth::orientation-radiation::amount": [
                "Orientation Amount[17]",
                "Orient Amount",
                0
            ],
            "poly.16::synth::doppler-control::dop-amount": [
                "doppler_amount[16]",
                "doppler_amount",
                0
            ],
            "poly.16::synth::obj-152::gain0": [
                "Harmonic 2 Gain[18]",
                "H2 Gain",
                0
            ],
            "poly.16::synth::obj-152::gain1": [
                "Harmonic 3 Gain[19]",
                "H3 Gain",
                0
            ],
            "poly.16::synth::obj-152::q0": [
                "Harmonic 2 Q[17]",
                "H2 Q",
                0
            ],
            "poly.16::synth::obj-152::q1": [
                "Harmonic 3 Q[17]",
                "H3 Q",
                0
            ],
            "poly.16::synth::orientation-radiation::amount": [
                "Orientation Amount[18]",
                "Orient Amount",
                0
            ],
            "poly.17::synth::doppler-control::dop-amount": [
                "doppler_amount[17]",
                "doppler_amount",
                0
            ],
            "poly.17::synth::obj-152::gain0": [
                "Harmonic 2 Gain[19]",
                "H2 Gain",
                0
            ],
            "poly.17::synth::obj-152::gain1": [
                "Harmonic 3 Gain[20]",
                "H3 Gain",
                0
            ],
            "poly.17::synth::obj-152::q0": [
                "Harmonic 2 Q[18]",
                "H2 Q",
                0
            ],
            "poly.17::synth::obj-152::q1": [
                "Harmonic 3 Q[18]",
                "H3 Q",
                0
            ],
            "poly.17::synth::orientation-radiation::amount": [
                "Orientation Amount[19]",
                "Orient Amount",
                0
            ],
            "poly.18::synth::doppler-control::dop-amount": [
                "doppler_amount[18]",
                "doppler_amount",
                0
            ],
            "poly.18::synth::obj-152::gain0": [
                "Harmonic 2 Gain[20]",
                "H2 Gain",
                0
            ],
            "poly.18::synth::obj-152::gain1": [
                "Harmonic 3 Gain[21]",
                "H3 Gain",
                0
            ],
            "poly.18::synth::obj-152::q0": [
                "Harmonic 2 Q[19]",
                "H2 Q",
                0
            ],
            "poly.18::synth::obj-152::q1": [
                "Harmonic 3 Q[19]",
                "H3 Q",
                0
            ],
            "poly.18::synth::orientation-radiation::amount": [
                "Orientation Amount[20]",
                "Orient Amount",
                0
            ],
            "poly.19::synth::doppler-control::dop-amount": [
                "doppler_amount[19]",
                "doppler_amount",
                0
            ],
            "poly.19::synth::obj-152::gain0": [
                "Harmonic 2 Gain[21]",
                "H2 Gain",
                0
            ],
            "poly.19::synth::obj-152::gain1": [
                "Harmonic 3 Gain[22]",
                "H3 Gain",
                0
            ],
            "poly.19::synth::obj-152::q0": [
                "Harmonic 2 Q[20]",
                "H2 Q",
                0
            ],
            "poly.19::synth::obj-152::q1": [
                "Harmonic 3 Q[20]",
                "H3 Q",
                0
            ],
            "poly.19::synth::orientation-radiation::amount": [
                "Orientation Amount[21]",
                "Orient Amount",
                0
            ],
            "poly.1::synth::doppler-control::dop-amount": [
                "doppler_amount[3]",
                "doppler_amount",
                0
            ],
            "poly.1::synth::obj-152::gain0": [
                "Harmonic 2 Gain[10]",
                "H2 Gain",
                0
            ],
            "poly.1::synth::obj-152::gain1": [
                "Harmonic 3 Gain[9]",
                "H3 Gain",
                0
            ],
            "poly.1::synth::obj-152::q0": [
                "Harmonic 2 Q[2]",
                "H2 Q",
                0
            ],
            "poly.1::synth::obj-152::q1": [
                "Harmonic 3 Q[8]",
                "H3 Q",
                0
            ],
            "poly.1::synth::orientation-radiation::amount": [
                "Orientation Amount[8]",
                "Orient Amount",
                0
            ],
            "poly.20::synth::doppler-control::dop-amount": [
                "doppler_amount[20]",
                "doppler_amount",
                0
            ],
            "poly.20::synth::obj-152::gain0": [
                "Harmonic 2 Gain[22]",
                "H2 Gain",
                0
            ],
            "poly.20::synth::obj-152::gain1": [
                "Harmonic 3 Gain[23]",
                "H3 Gain",
                0
            ],
            "poly.20::synth::obj-152::q0": [
                "Harmonic 2 Q[21]",
                "H2 Q",
                0
            ],
            "poly.20::synth::obj-152::q1": [
                "Harmonic 3 Q[21]",
                "H3 Q",
                0
            ],
            "poly.20::synth::orientation-radiation::amount": [
                "Orientation Amount[22]",
                "Orient Amount",
                0
            ],
            "poly.21::synth::doppler-control::dop-amount": [
                "doppler_amount[21]",
                "doppler_amount",
                0
            ],
            "poly.21::synth::obj-152::gain0": [
                "Harmonic 2 Gain[23]",
                "H2 Gain",
                0
            ],
            "poly.21::synth::obj-152::gain1": [
                "Harmonic 3 Gain[24]",
                "H3 Gain",
                0
            ],
            "poly.21::synth::obj-152::q0": [
                "Harmonic 2 Q[22]",
                "H2 Q",
                0
            ],
            "poly.21::synth::obj-152::q1": [
                "Harmonic 3 Q[22]",
                "H3 Q",
                0
            ],
            "poly.21::synth::orientation-radiation::amount": [
                "Orientation Amount[23]",
                "Orient Amount",
                0
            ],
            "poly.22::synth::doppler-control::dop-amount": [
                "doppler_amount[22]",
                "doppler_amount",
                0
            ],
            "poly.22::synth::obj-152::gain0": [
                "Harmonic 2 Gain[24]",
                "H2 Gain",
                0
            ],
            "poly.22::synth::obj-152::gain1": [
                "Harmonic 3 Gain[25]",
                "H3 Gain",
                0
            ],
            "poly.22::synth::obj-152::q0": [
                "Harmonic 2 Q[23]",
                "H2 Q",
                0
            ],
            "poly.22::synth::obj-152::q1": [
                "Harmonic 3 Q[23]",
                "H3 Q",
                0
            ],
            "poly.22::synth::orientation-radiation::amount": [
                "Orientation Amount[24]",
                "Orient Amount",
                0
            ],
            "poly.23::synth::doppler-control::dop-amount": [
                "doppler_amount[23]",
                "doppler_amount",
                0
            ],
            "poly.23::synth::obj-152::gain0": [
                "Harmonic 2 Gain[25]",
                "H2 Gain",
                0
            ],
            "poly.23::synth::obj-152::gain1": [
                "Harmonic 3 Gain[26]",
                "H3 Gain",
                0
            ],
            "poly.23::synth::obj-152::q0": [
                "Harmonic 2 Q[24]",
                "H2 Q",
                0
            ],
            "poly.23::synth::obj-152::q1": [
                "Harmonic 3 Q[24]",
                "H3 Q",
                0
            ],
            "poly.23::synth::orientation-radiation::amount": [
                "Orientation Amount[25]",
                "Orient Amount",
                0
            ],
            "poly.24::synth::doppler-control::dop-amount": [
                "doppler_amount[24]",
                "doppler_amount",
                0
            ],
            "poly.24::synth::obj-152::gain0": [
                "Harmonic 2 Gain[26]",
                "H2 Gain",
                0
            ],
            "poly.24::synth::obj-152::gain1": [
                "Harmonic 3 Gain[27]",
                "H3 Gain",
                0
            ],
            "poly.24::synth::obj-152::q0": [
                "Harmonic 2 Q[25]",
                "H2 Q",
                0
            ],
            "poly.24::synth::obj-152::q1": [
                "Harmonic 3 Q[25]",
                "H3 Q",
                0
            ],
            "poly.24::synth::orientation-radiation::amount": [
                "Orientation Amount[26]",
                "Orient Amount",
                0
            ],
            "poly.25::synth::doppler-control::dop-amount": [
                "doppler_amount[25]",
                "doppler_amount",
                0
            ],
            "poly.25::synth::obj-152::gain0": [
                "Harmonic 2 Gain[27]",
                "H2 Gain",
                0
            ],
            "poly.25::synth::obj-152::gain1": [
                "Harmonic 3 Gain[28]",
                "H3 Gain",
                0
            ],
            "poly.25::synth::obj-152::q0": [
                "Harmonic 2 Q[26]",
                "H2 Q",
                0
            ],
            "poly.25::synth::obj-152::q1": [
                "Harmonic 3 Q[26]",
                "H3 Q",
                0
            ],
            "poly.25::synth::orientation-radiation::amount": [
                "Orientation Amount[27]",
                "Orient Amount",
                0
            ],
            "poly.26::synth::doppler-control::dop-amount": [
                "doppler_amount[26]",
                "doppler_amount",
                0
            ],
            "poly.26::synth::obj-152::gain0": [
                "Harmonic 2 Gain[28]",
                "H2 Gain",
                0
            ],
            "poly.26::synth::obj-152::gain1": [
                "Harmonic 3 Gain[29]",
                "H3 Gain",
                0
            ],
            "poly.26::synth::obj-152::q0": [
                "Harmonic 2 Q[27]",
                "H2 Q",
                0
            ],
            "poly.26::synth::obj-152::q1": [
                "Harmonic 3 Q[27]",
                "H3 Q",
                0
            ],
            "poly.26::synth::orientation-radiation::amount": [
                "Orientation Amount[28]",
                "Orient Amount",
                0
            ],
            "poly.27::synth::doppler-control::dop-amount": [
                "doppler_amount[27]",
                "doppler_amount",
                0
            ],
            "poly.27::synth::obj-152::gain0": [
                "Harmonic 2 Gain[29]",
                "H2 Gain",
                0
            ],
            "poly.27::synth::obj-152::gain1": [
                "Harmonic 3 Gain[30]",
                "H3 Gain",
                0
            ],
            "poly.27::synth::obj-152::q0": [
                "Harmonic 2 Q[28]",
                "H2 Q",
                0
            ],
            "poly.27::synth::obj-152::q1": [
                "Harmonic 3 Q[28]",
                "H3 Q",
                0
            ],
            "poly.27::synth::orientation-radiation::amount": [
                "Orientation Amount[29]",
                "Orient Amount",
                0
            ],
            "poly.28::synth::doppler-control::dop-amount": [
                "doppler_amount[28]",
                "doppler_amount",
                0
            ],
            "poly.28::synth::obj-152::gain0": [
                "Harmonic 2 Gain[30]",
                "H2 Gain",
                0
            ],
            "poly.28::synth::obj-152::gain1": [
                "Harmonic 3 Gain[31]",
                "H3 Gain",
                0
            ],
            "poly.28::synth::obj-152::q0": [
                "Harmonic 2 Q[29]",
                "H2 Q",
                0
            ],
            "poly.28::synth::obj-152::q1": [
                "Harmonic 3 Q[29]",
                "H3 Q",
                0
            ],
            "poly.28::synth::orientation-radiation::amount": [
                "Orientation Amount[30]",
                "Orient Amount",
                0
            ],
            "poly.29::synth::doppler-control::dop-amount": [
                "doppler_amount[29]",
                "doppler_amount",
                0
            ],
            "poly.29::synth::obj-152::gain0": [
                "Harmonic 2 Gain[31]",
                "H2 Gain",
                0
            ],
            "poly.29::synth::obj-152::gain1": [
                "Harmonic 3 Gain[32]",
                "H3 Gain",
                0
            ],
            "poly.29::synth::obj-152::q0": [
                "Harmonic 2 Q[30]",
                "H2 Q",
                0
            ],
            "poly.29::synth::obj-152::q1": [
                "Harmonic 3 Q[30]",
                "H3 Q",
                0
            ],
            "poly.29::synth::orientation-radiation::amount": [
                "Orientation Amount[31]",
                "Orient Amount",
                0
            ],
            "poly.2::synth::doppler-control::dop-amount": [
                "doppler_amount[1]",
                "doppler_amount",
                0
            ],
            "poly.2::synth::obj-152::gain0": [
                "Harmonic 2 Gain[1]",
                "H2 Gain",
                0
            ],
            "poly.2::synth::obj-152::gain1": [
                "Harmonic 3 Gain[1]",
                "H3 Gain",
                0
            ],
            "poly.2::synth::obj-152::q0": [
                "Harmonic 2 Q[3]",
                "H2 Q",
                0
            ],
            "poly.2::synth::obj-152::q1": [
                "Harmonic 3 Q[1]",
                "H3 Q",
                0
            ],
            "poly.2::synth::orientation-radiation::amount": [
                "Orientation Amount[1]",
                "Orient Amount",
                0
            ],
            "poly.30::synth::doppler-control::dop-amount": [
                "doppler_amount[30]",
                "doppler_amount",
                0
            ],
            "poly.30::synth::obj-152::gain0": [
                "Harmonic 2 Gain[32]",
                "H2 Gain",
                0
            ],
            "poly.30::synth::obj-152::gain1": [
                "Harmonic 3 Gain[33]",
                "H3 Gain",
                0
            ],
            "poly.30::synth::obj-152::q0": [
                "Harmonic 2 Q[31]",
                "H2 Q",
                0
            ],
            "poly.30::synth::obj-152::q1": [
                "Harmonic 3 Q[31]",
                "H3 Q",
                0
            ],
            "poly.30::synth::orientation-radiation::amount": [
                "Orientation Amount[32]",
                "Orient Amount",
                0
            ],
            "poly.31::synth::doppler-control::dop-amount": [
                "doppler_amount[31]",
                "doppler_amount",
                0
            ],
            "poly.31::synth::obj-152::gain0": [
                "Harmonic 2 Gain[33]",
                "H2 Gain",
                0
            ],
            "poly.31::synth::obj-152::gain1": [
                "Harmonic 3 Gain[34]",
                "H3 Gain",
                0
            ],
            "poly.31::synth::obj-152::q0": [
                "Harmonic 2 Q[32]",
                "H2 Q",
                0
            ],
            "poly.31::synth::obj-152::q1": [
                "Harmonic 3 Q[32]",
                "H3 Q",
                0
            ],
            "poly.31::synth::orientation-radiation::amount": [
                "Orientation Amount[33]",
                "Orient Amount",
                0
            ],
            "poly.32::synth::doppler-control::dop-amount": [
                "doppler_amount[32]",
                "doppler_amount",
                0
            ],
            "poly.32::synth::obj-152::gain0": [
                "Harmonic 2 Gain[34]",
                "H2 Gain",
                0
            ],
            "poly.32::synth::obj-152::gain1": [
                "Harmonic 3 Gain[35]",
                "H3 Gain",
                0
            ],
            "poly.32::synth::obj-152::q0": [
                "Harmonic 2 Q[33]",
                "H2 Q",
                0
            ],
            "poly.32::synth::obj-152::q1": [
                "Harmonic 3 Q[33]",
                "H3 Q",
                0
            ],
            "poly.32::synth::orientation-radiation::amount": [
                "Orientation Amount[34]",
                "Orient Amount",
                0
            ],
            "poly.33::synth::doppler-control::dop-amount": [
                "doppler_amount[33]",
                "doppler_amount",
                0
            ],
            "poly.33::synth::obj-152::gain0": [
                "Harmonic 2 Gain[35]",
                "H2 Gain",
                0
            ],
            "poly.33::synth::obj-152::gain1": [
                "Harmonic 3 Gain[36]",
                "H3 Gain",
                0
            ],
            "poly.33::synth::obj-152::q0": [
                "Harmonic 2 Q[34]",
                "H2 Q",
                0
            ],
            "poly.33::synth::obj-152::q1": [
                "Harmonic 3 Q[34]",
                "H3 Q",
                0
            ],
            "poly.33::synth::orientation-radiation::amount": [
                "Orientation Amount[35]",
                "Orient Amount",
                0
            ],
            "poly.34::synth::doppler-control::dop-amount": [
                "doppler_amount[34]",
                "doppler_amount",
                0
            ],
            "poly.34::synth::obj-152::gain0": [
                "Harmonic 2 Gain[36]",
                "H2 Gain",
                0
            ],
            "poly.34::synth::obj-152::gain1": [
                "Harmonic 3 Gain[37]",
                "H3 Gain",
                0
            ],
            "poly.34::synth::obj-152::q0": [
                "Harmonic 2 Q[35]",
                "H2 Q",
                0
            ],
            "poly.34::synth::obj-152::q1": [
                "Harmonic 3 Q[35]",
                "H3 Q",
                0
            ],
            "poly.34::synth::orientation-radiation::amount": [
                "Orientation Amount[36]",
                "Orient Amount",
                0
            ],
            "poly.35::synth::doppler-control::dop-amount": [
                "doppler_amount[35]",
                "doppler_amount",
                0
            ],
            "poly.35::synth::obj-152::gain0": [
                "Harmonic 2 Gain[37]",
                "H2 Gain",
                0
            ],
            "poly.35::synth::obj-152::gain1": [
                "Harmonic 3 Gain[38]",
                "H3 Gain",
                0
            ],
            "poly.35::synth::obj-152::q0": [
                "Harmonic 2 Q[36]",
                "H2 Q",
                0
            ],
            "poly.35::synth::obj-152::q1": [
                "Harmonic 3 Q[36]",
                "H3 Q",
                0
            ],
            "poly.35::synth::orientation-radiation::amount": [
                "Orientation Amount[37]",
                "Orient Amount",
                0
            ],
            "poly.36::synth::doppler-control::dop-amount": [
                "doppler_amount[36]",
                "doppler_amount",
                0
            ],
            "poly.36::synth::obj-152::gain0": [
                "Harmonic 2 Gain[38]",
                "H2 Gain",
                0
            ],
            "poly.36::synth::obj-152::gain1": [
                "Harmonic 3 Gain[39]",
                "H3 Gain",
                0
            ],
            "poly.36::synth::obj-152::q0": [
                "Harmonic 2 Q[37]",
                "H2 Q",
                0
            ],
            "poly.36::synth::obj-152::q1": [
                "Harmonic 3 Q[37]",
                "H3 Q",
                0
            ],
            "poly.36::synth::orientation-radiation::amount": [
                "Orientation Amount[38]",
                "Orient Amount",
                0
            ],
            "poly.37::synth::doppler-control::dop-amount": [
                "doppler_amount[37]",
                "doppler_amount",
                0
            ],
            "poly.37::synth::obj-152::gain0": [
                "Harmonic 2 Gain[39]",
                "H2 Gain",
                0
            ],
            "poly.37::synth::obj-152::gain1": [
                "Harmonic 3 Gain[40]",
                "H3 Gain",
                0
            ],
            "poly.37::synth::obj-152::q0": [
                "Harmonic 2 Q[38]",
                "H2 Q",
                0
            ],
            "poly.37::synth::obj-152::q1": [
                "Harmonic 3 Q[38]",
                "H3 Q",
                0
            ],
            "poly.37::synth::orientation-radiation::amount": [
                "Orientation Amount[39]",
                "Orient Amount",
                0
            ],
            "poly.38::synth::doppler-control::dop-amount": [
                "doppler_amount[38]",
                "doppler_amount",
                0
            ],
            "poly.38::synth::obj-152::gain0": [
                "Harmonic 2 Gain[40]",
                "H2 Gain",
                0
            ],
            "poly.38::synth::obj-152::gain1": [
                "Harmonic 3 Gain[41]",
                "H3 Gain",
                0
            ],
            "poly.38::synth::obj-152::q0": [
                "Harmonic 2 Q[39]",
                "H2 Q",
                0
            ],
            "poly.38::synth::obj-152::q1": [
                "Harmonic 3 Q[39]",
                "H3 Q",
                0
            ],
            "poly.38::synth::orientation-radiation::amount": [
                "Orientation Amount[40]",
                "Orient Amount",
                0
            ],
            "poly.39::synth::doppler-control::dop-amount": [
                "doppler_amount[39]",
                "doppler_amount",
                0
            ],
            "poly.39::synth::obj-152::gain0": [
                "Harmonic 2 Gain[41]",
                "H2 Gain",
                0
            ],
            "poly.39::synth::obj-152::gain1": [
                "Harmonic 3 Gain[42]",
                "H3 Gain",
                0
            ],
            "poly.39::synth::obj-152::q0": [
                "Harmonic 2 Q[40]",
                "H2 Q",
                0
            ],
            "poly.39::synth::obj-152::q1": [
                "Harmonic 3 Q[40]",
                "H3 Q",
                0
            ],
            "poly.39::synth::orientation-radiation::amount": [
                "Orientation Amount[41]",
                "Orient Amount",
                0
            ],
            "poly.3::synth::doppler-control::dop-amount": [
                "doppler_amount[2]",
                "doppler_amount",
                0
            ],
            "poly.3::synth::obj-152::gain0": [
                "Harmonic 2 Gain[2]",
                "H2 Gain",
                0
            ],
            "poly.3::synth::obj-152::gain1": [
                "Harmonic 3 Gain[10]",
                "H3 Gain",
                0
            ],
            "poly.3::synth::obj-152::q0": [
                "Harmonic 2 Q[4]",
                "H2 Q",
                0
            ],
            "poly.3::synth::obj-152::q1": [
                "Harmonic 3 Q[2]",
                "H3 Q",
                0
            ],
            "poly.3::synth::orientation-radiation::amount": [
                "Orientation Amount[9]",
                "Orient Amount",
                0
            ],
            "poly.40::synth::doppler-control::dop-amount": [
                "doppler_amount[40]",
                "doppler_amount",
                0
            ],
            "poly.40::synth::obj-152::gain0": [
                "Harmonic 2 Gain[42]",
                "H2 Gain",
                0
            ],
            "poly.40::synth::obj-152::gain1": [
                "Harmonic 3 Gain[43]",
                "H3 Gain",
                0
            ],
            "poly.40::synth::obj-152::q0": [
                "Harmonic 2 Q[41]",
                "H2 Q",
                0
            ],
            "poly.40::synth::obj-152::q1": [
                "Harmonic 3 Q[41]",
                "H3 Q",
                0
            ],
            "poly.40::synth::orientation-radiation::amount": [
                "Orientation Amount[42]",
                "Orient Amount",
                0
            ],
            "poly.41::synth::doppler-control::dop-amount": [
                "doppler_amount[41]",
                "doppler_amount",
                0
            ],
            "poly.41::synth::obj-152::gain0": [
                "Harmonic 2 Gain[43]",
                "H2 Gain",
                0
            ],
            "poly.41::synth::obj-152::gain1": [
                "Harmonic 3 Gain[44]",
                "H3 Gain",
                0
            ],
            "poly.41::synth::obj-152::q0": [
                "Harmonic 2 Q[42]",
                "H2 Q",
                0
            ],
            "poly.41::synth::obj-152::q1": [
                "Harmonic 3 Q[42]",
                "H3 Q",
                0
            ],
            "poly.41::synth::orientation-radiation::amount": [
                "Orientation Amount[43]",
                "Orient Amount",
                0
            ],
            "poly.42::synth::doppler-control::dop-amount": [
                "doppler_amount[42]",
                "doppler_amount",
                0
            ],
            "poly.42::synth::obj-152::gain0": [
                "Harmonic 2 Gain[44]",
                "H2 Gain",
                0
            ],
            "poly.42::synth::obj-152::gain1": [
                "Harmonic 3 Gain[45]",
                "H3 Gain",
                0
            ],
            "poly.42::synth::obj-152::q0": [
                "Harmonic 2 Q[43]",
                "H2 Q",
                0
            ],
            "poly.42::synth::obj-152::q1": [
                "Harmonic 3 Q[43]",
                "H3 Q",
                0
            ],
            "poly.42::synth::orientation-radiation::amount": [
                "Orientation Amount[44]",
                "Orient Amount",
                0
            ],
            "poly.43::synth::doppler-control::dop-amount": [
                "doppler_amount[43]",
                "doppler_amount",
                0
            ],
            "poly.43::synth::obj-152::gain0": [
                "Harmonic 2 Gain[45]",
                "H2 Gain",
                0
            ],
            "poly.43::synth::obj-152::gain1": [
                "Harmonic 3 Gain[46]",
                "H3 Gain",
                0
            ],
            "poly.43::synth::obj-152::q0": [
                "Harmonic 2 Q[44]",
                "H2 Q",
                0
            ],
            "poly.43::synth::obj-152::q1": [
                "Harmonic 3 Q[44]",
                "H3 Q",
                0
            ],
            "poly.43::synth::orientation-radiation::amount": [
                "Orientation Amount[45]",
                "Orient Amount",
                0
            ],
            "poly.44::synth::doppler-control::dop-amount": [
                "doppler_amount[44]",
                "doppler_amount",
                0
            ],
            "poly.44::synth::obj-152::gain0": [
                "Harmonic 2 Gain[46]",
                "H2 Gain",
                0
            ],
            "poly.44::synth::obj-152::gain1": [
                "Harmonic 3 Gain[47]",
                "H3 Gain",
                0
            ],
            "poly.44::synth::obj-152::q0": [
                "Harmonic 2 Q[45]",
                "H2 Q",
                0
            ],
            "poly.44::synth::obj-152::q1": [
                "Harmonic 3 Q[45]",
                "H3 Q",
                0
            ],
            "poly.44::synth::orientation-radiation::amount": [
                "Orientation Amount[46]",
                "Orient Amount",
                0
            ],
            "poly.45::synth::doppler-control::dop-amount": [
                "doppler_amount[45]",
                "doppler_amount",
                0
            ],
            "poly.45::synth::obj-152::gain0": [
                "Harmonic 2 Gain[47]",
                "H2 Gain",
                0
            ],
            "poly.45::synth::obj-152::gain1": [
                "Harmonic 3 Gain[48]",
                "H3 Gain",
                0
            ],
            "poly.45::synth::obj-152::q0": [
                "Harmonic 2 Q[46]",
                "H2 Q",
                0
            ],
            "poly.45::synth::obj-152::q1": [
                "Harmonic 3 Q[46]",
                "H3 Q",
                0
            ],
            "poly.45::synth::orientation-radiation::amount": [
                "Orientation Amount[47]",
                "Orient Amount",
                0
            ],
            "poly.46::synth::doppler-control::dop-amount": [
                "doppler_amount[46]",
                "doppler_amount",
                0
            ],
            "poly.46::synth::obj-152::gain0": [
                "Harmonic 2 Gain[48]",
                "H2 Gain",
                0
            ],
            "poly.46::synth::obj-152::gain1": [
                "Harmonic 3 Gain[49]",
                "H3 Gain",
                0
            ],
            "poly.46::synth::obj-152::q0": [
                "Harmonic 2 Q[47]",
                "H2 Q",
                0
            ],
            "poly.46::synth::obj-152::q1": [
                "Harmonic 3 Q[47]",
                "H3 Q",
                0
            ],
            "poly.46::synth::orientation-radiation::amount": [
                "Orientation Amount[48]",
                "Orient Amount",
                0
            ],
            "poly.47::synth::doppler-control::dop-amount": [
                "doppler_amount[47]",
                "doppler_amount",
                0
            ],
            "poly.47::synth::obj-152::gain0": [
                "Harmonic 2 Gain[49]",
                "H2 Gain",
                0
            ],
            "poly.47::synth::obj-152::gain1": [
                "Harmonic 3 Gain[50]",
                "H3 Gain",
                0
            ],
            "poly.47::synth::obj-152::q0": [
                "Harmonic 2 Q[48]",
                "H2 Q",
                0
            ],
            "poly.47::synth::obj-152::q1": [
                "Harmonic 3 Q[48]",
                "H3 Q",
                0
            ],
            "poly.47::synth::orientation-radiation::amount": [
                "Orientation Amount[49]",
                "Orient Amount",
                0
            ],
            "poly.48::synth::doppler-control::dop-amount": [
                "doppler_amount[48]",
                "doppler_amount",
                0
            ],
            "poly.48::synth::obj-152::gain0": [
                "Harmonic 2 Gain[50]",
                "H2 Gain",
                0
            ],
            "poly.48::synth::obj-152::gain1": [
                "Harmonic 3 Gain[51]",
                "H3 Gain",
                0
            ],
            "poly.48::synth::obj-152::q0": [
                "Harmonic 2 Q[49]",
                "H2 Q",
                0
            ],
            "poly.48::synth::obj-152::q1": [
                "Harmonic 3 Q[49]",
                "H3 Q",
                0
            ],
            "poly.48::synth::orientation-radiation::amount": [
                "Orientation Amount[50]",
                "Orient Amount",
                0
            ],
            "poly.49::synth::doppler-control::dop-amount": [
                "doppler_amount[49]",
                "doppler_amount",
                0
            ],
            "poly.49::synth::obj-152::gain0": [
                "Harmonic 2 Gain[51]",
                "H2 Gain",
                0
            ],
            "poly.49::synth::obj-152::gain1": [
                "Harmonic 3 Gain[52]",
                "H3 Gain",
                0
            ],
            "poly.49::synth::obj-152::q0": [
                "Harmonic 2 Q[50]",
                "H2 Q",
                0
            ],
            "poly.49::synth::obj-152::q1": [
                "Harmonic 3 Q[50]",
                "H3 Q",
                0
            ],
            "poly.49::synth::orientation-radiation::amount": [
                "Orientation Amount[51]",
                "Orient Amount",
                0
            ],
            "poly.4::synth::doppler-control::dop-amount": [
                "doppler_amount[4]",
                "doppler_amount",
                0
            ],
            "poly.4::synth::obj-152::gain0": [
                "Harmonic 2 Gain[3]",
                "H2 Gain",
                0
            ],
            "poly.4::synth::obj-152::gain1": [
                "Harmonic 3 Gain[2]",
                "H3 Gain",
                0
            ],
            "poly.4::synth::obj-152::q0": [
                "Harmonic 2 Q[5]",
                "H2 Q",
                0
            ],
            "poly.4::synth::obj-152::q1": [
                "Harmonic 3 Q[3]",
                "H3 Q",
                0
            ],
            "poly.4::synth::orientation-radiation::amount": [
                "Orientation Amount[2]",
                "Orient Amount",
                0
            ],
            "poly.50::synth::doppler-control::dop-amount": [
                "doppler_amount[50]",
                "doppler_amount",
                0
            ],
            "poly.50::synth::obj-152::gain0": [
                "Harmonic 2 Gain[52]",
                "H2 Gain",
                0
            ],
            "poly.50::synth::obj-152::gain1": [
                "Harmonic 3 Gain[53]",
                "H3 Gain",
                0
            ],
            "poly.50::synth::obj-152::q0": [
                "Harmonic 2 Q[51]",
                "H2 Q",
                0
            ],
            "poly.50::synth::obj-152::q1": [
                "Harmonic 3 Q[51]",
                "H3 Q",
                0
            ],
            "poly.50::synth::orientation-radiation::amount": [
                "Orientation Amount[52]",
                "Orient Amount",
                0
            ],
            "poly.5::synth::doppler-control::dop-amount": [
                "doppler_amount[5]",
                "doppler_amount",
                0
            ],
            "poly.5::synth::obj-152::gain0": [
                "Harmonic 2 Gain[4]",
                "H2 Gain",
                0
            ],
            "poly.5::synth::obj-152::gain1": [
                "Harmonic 3 Gain[3]",
                "H3 Gain",
                0
            ],
            "poly.5::synth::obj-152::q0": [
                "Harmonic 2 Q[6]",
                "H2 Q",
                0
            ],
            "poly.5::synth::obj-152::q1": [
                "Harmonic 3 Q[9]",
                "H3 Q",
                0
            ],
            "poly.5::synth::orientation-radiation::amount": [
                "Orientation Amount[3]",
                "Orient Amount",
                0
            ],
            "poly.6::synth::doppler-control::dop-amount": [
                "doppler_amount[6]",
                "doppler_amount",
                0
            ],
            "poly.6::synth::obj-152::gain0": [
                "Harmonic 2 Gain[11]",
                "H2 Gain",
                0
            ],
            "poly.6::synth::obj-152::gain1": [
                "Harmonic 3 Gain[11]",
                "H3 Gain",
                0
            ],
            "poly.6::synth::obj-152::q0": [
                "Harmonic 2 Q[7]",
                "H2 Q",
                0
            ],
            "poly.6::synth::obj-152::q1": [
                "Harmonic 3 Q[10]",
                "H3 Q",
                0
            ],
            "poly.6::synth::orientation-radiation::amount": [
                "Orientation Amount[10]",
                "Orient Amount",
                0
            ],
            "poly.7::synth::doppler-control::dop-amount": [
                "doppler_amount[7]",
                "doppler_amount",
                0
            ],
            "poly.7::synth::obj-152::gain0": [
                "Harmonic 2 Gain[12]",
                "H2 Gain",
                0
            ],
            "poly.7::synth::obj-152::gain1": [
                "Harmonic 3 Gain[12]",
                "H3 Gain",
                0
            ],
            "poly.7::synth::obj-152::q0": [
                "Harmonic 2 Q[8]",
                "H2 Q",
                0
            ],
            "poly.7::synth::obj-152::q1": [
                "Harmonic 3 Q[4]",
                "H3 Q",
                0
            ],
            "poly.7::synth::orientation-radiation::amount": [
                "Orientation Amount[11]",
                "Orient Amount",
                0
            ],
            "poly.8::synth::doppler-control::dop-amount": [
                "doppler_amount[8]",
                "doppler_amount",
                0
            ],
            "poly.8::synth::obj-152::gain0": [
                "Harmonic 2 Gain[13]",
                "H2 Gain",
                0
            ],
            "poly.8::synth::obj-152::gain1": [
                "Harmonic 3 Gain[13]",
                "H3 Gain",
                0
            ],
            "poly.8::synth::obj-152::q0": [
                "Harmonic 2 Q[9]",
                "H2 Q",
                0
            ],
            "poly.8::synth::obj-152::q1": [
                "Harmonic 3 Q[5]",
                "H3 Q",
                0
            ],
            "poly.8::synth::orientation-radiation::amount": [
                "Orientation Amount[4]",
                "Orient Amount",
                0
            ],
            "poly.9::synth::doppler-control::dop-amount": [
                "doppler_amount[9]",
                "doppler_amount",
                0
            ],
            "poly.9::synth::obj-152::gain0": [
                "Harmonic 2 Gain[5]",
                "H2 Gain",
                0
            ],
            "poly.9::synth::obj-152::gain1": [
                "Harmonic 3 Gain[4]",
                "H3 Gain",
                0
            ],
            "poly.9::synth::obj-152::q0": [
                "Harmonic 2 Q[10]",
                "H2 Q",
                0
            ],
            "poly.9::synth::obj-152::q1": [
                "Harmonic 3 Q[6]",
                "H3 Q",
                0
            ],
            "poly.9::synth::orientation-radiation::amount": [
                "Orientation Amount[5]",
                "Orient Amount",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}
