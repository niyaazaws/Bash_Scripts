#!/bin/bash

# Author: Niyaaz Adonis
# Date Created: 2025/06/22
# Last modified: 2025/06/22 @ 13:12

# Description: 
# Find your country via city selection

# Usage:
# run ./[scriptname]


echo "🌍 Welcome to the Country Finder 🌍"
echo "----------------------------------"
echo "Please select a city from the list below:"
echo "----------------------------------"

PS3=$'\nEnter the number of your choice: '

city_options=(
    "🗽 New York"
    "🏰 London"
    "🏯 Tokyo"
    "🗼 Paris"
    "🎡 Sydney"
    "🏞️ Cape Town"
    "🏰 Moscow"
    "🏙️ Dubai"
    "🌅 Rio de Janeiro"
    "🏙️ Toronto"
    "🌇 Singapore"
    "🏛️ Berlin"
)


select city in "${city_options[@]}"; do
    if [[ -z $city ]]; then
        echo "❌ Invalid selection—please try again."
        continue
    fi
    case $city in
        "🗽 New York")         country="United States"          ; flag="🇺🇸" ;;
        "🏰 London")           country="United Kingdom"         ; flag="🇬🇧" ;;
        "🏯 Tokyo")            country="Japan"                  ; flag="🇯🇵" ;;
        "🗼 Paris")            country="France"                 ; flag="🇫🇷" ;;
        "🎡 Sydney")           country="Australia"              ; flag="🇦🇺" ;;
        "🏞️ Cape Town")        country="South Africa"           ; flag="🇿🇦" ;;
        "🏰 Moscow")           country="Russia"                 ; flag="🇷🇺" ;;
        "🏙️ Dubai")            country="United Arab Emirates"   ; flag="🇦🇪" ;;
        "🌅 Rio de Janeiro")   country="Brazil"                  ; flag="🇧🇷" ;;
        "🏙️ Toronto")          country="Canada"                  ; flag="🇨🇦" ;;
        "🌇 Singapore")        country="Singapore"               ; flag="🇸🇬" ;;
        "🏛️ Berlin")           country="Germany"                 ; flag="🇩🇪" ;;
        *)                     country="Unknown"                 ; flag="❓" ;;
    esac
    echo
    echo "🔹 You selected: $city"
    echo "🔸 Country: $flag  $country"
    #break
done

exit 0
