#!/usr/bin/python3

import os
import requests
import json

#Quote
dict = json.loads(requests.get('https://api.quotable.io/random').content)

with open("/home/theonlyonzz/Downloads/quotes.txt", "a") as file:
    file.write(dict["content"] + "\n")

print(dict["content"])

print('')

#Time
#req = requests.get('https://timeapi.io/api/Time/current/zone?timeZone=US/Central').json()
#print(req["dayOfWeek"] + " " + req["time"] + " " + req["date"])
#
#print('')
#
#Weather - sign up for free api plan on weatherapi.com
#dict = json.loads(requests.get('http://api.weatherapi.com/v1/current.json?key=de975d3393fa4dd19ad211908212308&q=Houston&aqi=no').content)
#print("Weather for " + dict["location"]["name"] + ", " + dict["location"]["region"] + ": " + dict["current"]["condition"]["text"])
#
#print('')
