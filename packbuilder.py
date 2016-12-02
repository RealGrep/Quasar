#!/usr/bin/python

import csv
import sys

def outputMods(inFileName, isFirst):
    inFile = open(inFileName, 'r')
    reader = csv.reader(inFile)

    for row in reader:
        if len(row) == 0:
            break
        name = row[0].strip()
        if name[0] == "#":
            continue

        if not isFirst:
            print(",")
        isFirst = False

        projectID = row[1].strip()
        fileID = row[2].strip()

        print("    {\"projectID\": \"" + projectID + "\", \"fileID\": \"" + fileID + "\", \"required\": true " + "}", end="")

def loadPacks(packInput):
    inFile = open(packInput + ".cfg", 'r')

    inputs = [];
    for row in inFile:
        component = row.strip()
        if len(component) == 0 or component[0] == '#':
            continue
        inputs.append(component)
    return inputs


if __name__ == "__main__":
    if len(sys.argv) == 2:
        packInput = str(sys.argv[1])
    else:
        print("Please provide one command line argument for the pack input file.")
        exit(1)

    inputs = loadPacks(packInput)

    print("""{
  "manifestType": "minecraftModpack",
  "manifestVersion": 1,
  "name": "Quasar Core 1.10.2",
  "version": "0.6.0",
  "author": "Mike Dusseault",
  "description": "",
  "projectID": -1,
  "files": [""")

    isFirst = True
    for line in inputs:
        outputMods(line, isFirst)
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
        "id": "forge-12.18.2.2151",
        "primary": true
      }
    ]
    }
}
    """)

