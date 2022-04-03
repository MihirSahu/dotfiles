#!/usr/bin/python3

import os
import requests
import json
import random

# If internet connection present, send request to quotable to get quote. After getting quote and printing it out, save it to a file
try:
    dict = json.loads(requests.get('https://api.quotable.io/random', timeout=1).content)
    print(dict["content"])

    print('')

    with open("/home/theonlyonzz/.config/_scripts/quotes.txt", "a") as file:
        file.write(dict["content"] + "\n")

# If no internet, select a random quote from saved file and print it out
except:
    numLines = sum(1 for quote in open("/home/theonlyonzz/.config/_scripts/quotes.txt"))
    randomNum = random.randrange(0, numLines)
    with open("/home/theonlyonzz/.config/_scripts/quotes.txt", 'r') as file:
        lines = file.readlines()
    print(lines[randomNum])

"""
#Time
req = requests.get('https://timeapi.io/api/Time/current/zone?timeZone=US/Central').json()
print(req["dayOfWeek"] + " " + req["time"] + " " + req["date"])

print('')

#Weather - sign up for free api plan on weatherapi.com
dict = json.loads(requests.get('http://api.weatherapi.com/v1/current.json?key=de975d3393fa4dd19ad211908212308&q=Houston&aqi=no').content)
print("Weather for " + dict["location"]["name"] + ", " + dict["location"]["region"] + ": " + dict["current"]["condition"]["text"])

print('')
"""
