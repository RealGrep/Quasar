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

def loadProperties(packInput):
    inFile = open(packInput + ".properties", 'r')

    reader = csv.reader(inFile)

    properties = {}
    for row in reader:
        name = row[0].strip()
        value = row[1].strip()

        properties[name] = value

    return properties

