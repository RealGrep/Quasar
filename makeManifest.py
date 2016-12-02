#!/usr/bin/python

import csv
import sys

import packbuilder as pb

if __name__ == "__main__":
    if len(sys.argv) == 2:
        packInput = str(sys.argv[1])
    else:
        print("Please provide one command line argument for the pack input file.")
        exit(1)

    inputs = pb.loadPacks(packInput)

    print("""{
  "manifestType": "minecraftModpack",
  "manifestVersion": 1,
  "name": "Addle Modpack 1.10.2",
  "version": "0.0.4",
  "author": "Mike Dusseault",
  "description": "",
  "projectID": -1,
  "files": [""")

    isFirst = True
    for line in inputs:
        pb.outputMods(line + ".csv", isFirst)
        isFirst = False

#print("""
#    {"projectID": 32274, "fileID": 2292925, "required": true},
#    {"projectID": 220318, "fileID": 2294566, "required": true}
#""")
    print("""
  ],
    "overrides": "overrides",
    "minecraft": {
    "version": "1.10.2",
    "modLoaders": [
      {
        "id": "forge-12.18.2.2125",
        "primary": true
      }
    ]
    }
}
    """)

