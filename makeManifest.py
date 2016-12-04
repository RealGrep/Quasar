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

    # TODO: Read manifest data as below from .properties files into hash table
    #properties = packInput + ".properties"
    properties = pb.loadProperties(packInput)

    print("{")
    header = """  "manifestType": "minecraftModpack",
  "manifestVersion": 1,
  "name": {name},
  "version": {version},
  "author": {author},
  "description": {description},
  "projectID": {projectID},
  "files": ["""

    header = header.format(**properties)
    print(header)

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
    "version": %s,
    "modLoaders": [
      {
        "id": %s,
        "primary": true
      }
    ]
    }
}
    """ % (properties["mc-version"], properties["forgeID"]))

