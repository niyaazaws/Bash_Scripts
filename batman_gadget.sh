#!/bin/bash

# Author: Niyaaz Adonis
# Date Created: 2025/06/22
# Last modified: 2025/06/22 @ 13:25

# Description: 
# Allows batman to select his gadgets

# Usage:
# run ./[scriptname]

echo -e "\n🦇 Welcome Batman to your new Gadget Selector 🦇\n"
echo "--------------------------------------------"
echo -e "Please choose a gadget from the list below:"
echo "--------------------------------------------"
echo "Alfred says: simply type the number of the gadget for an explanation on what it does"
echo
PS3=$'\n simply type the number of the gadget for an explanation on what it does\n Enter number: '


options=(
    "🪃 Batarang"
    "🪝 Grapnel Gun"
    "💨 Smoke Pellets"
    "💥 Explosive Gel"
    "🐾 Batclaw"
    "⚡ EMP Emitter"
    "🔐 Cryptographic Sequencer"
    "🥽 Night-Vision Goggles"
    "🔊 Sonic Resonator"
    "🛸 Micro-Drone (Echo)"
)
select gadget in "${options[@]}"; do
    if [[ -z $gadget ]]; then
        echo "Invalid selection—please try again."
        continue
    fi

    case $gadget in
        "🪃 Batarang")
            explanation="A boomerang-style throwing weapon for disarming or distracting enemies at range."
            ;;
        "🪝 Grapnel Gun")
            explanation="Fires a high-tensile cable with a grappling hook—lets Batman scale buildings instantly."
            ;;
        "💨 Smoke Pellets")
            explanation="Small capsules that emit thick smoke on impact, providing cover for stealthy escapes."
            ;;
        "💥 Explosive Gel")
            explanation="A clear putty that Batman sprays on surfaces—remotely detonated to breach walls or doors."
            ;;
        "🐾 Batclaw")
            explanation="A hand-held claw that can latch onto objects or vehicles, allowing Batman to pull things toward him."
            ;;
        "⚡ EMP Emitter")
            explanation="Emits a focused electromagnetic pulse to disable nearby electronics (alarms, drones, vehicles)."
            ;;
        "🔐 Cryptographic Sequencer")
            explanation="A portable decryptor that can hack and brute-force electronic locks, CCTV feeds, or secure data terminals."
            ;;
        "🥽 Night-Vision Goggles")
            explanation="Lightweight goggles that amplify ambient light, letting Batman see clearly in total darkness."
            ;;
        "🔊 Sonic Resonator")
            explanation="Emits adjustable ultrasonic waves to shatter glass or disorient opponents."
            ;;
        "🛸 Micro-Drone (Echo)")
            explanation="A palm-sized hovering drone equipped with a camera and microphone for reconnaissance in tight spaces."
            ;;
        *)
            explanation="Unknown gadget—no data available."
            ;;
    esac

    echo
    echo "🔹 You selected: $gadget"
    echo "🔸 Explanation: $explanation"
    #break
done

exit 0
