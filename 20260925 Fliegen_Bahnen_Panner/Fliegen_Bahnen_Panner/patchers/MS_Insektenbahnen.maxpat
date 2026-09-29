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
            65.0,
            163.0,
            1008.0,
            899.0
        ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "args": [
                        "#1"
                    ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "MS_Bio_Trajektorien.maxpat",
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
                        -177.3195776939392,
                        101.03092217445374,
                        131.3432788848877,
                        285.0746166706085
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        145.04504495859146,
                        305.4054052233696
                    ],
                    "viewvisibility": 1,
                    "varname": "bio_trajectory"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-15",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        -177.3195776939392,
                        409.27832758426666,
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
                        "obj-15",
                        0
                    ],
                    "source": [
                        "obj-3",
                        0
                    ]
                }
            }
        ],
        "autosave": 0
    }
}
