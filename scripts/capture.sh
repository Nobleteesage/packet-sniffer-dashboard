#!/bin/bash

# Variables
INTERFACE="eth0"   # Change this to wlan0 if you're on Wi-Fi
DURATION=30        # Capture time in seconds
OUTDIR="$HOME/packet-sniffer-dashboard/captures"
FILENAME="capture_$(date +%Y%m%d_%H%M%S).pcap"
OUTPUT="$OUTDIR/$FILENAME"

# Create output directory if it doesn't exist
mkdir -p "$OUTDIR"

echo "[*] Capturing traffic on $INTERFACE for $DURATION seconds..."
timeout "$DURATION" tshark -i "$INTERFACE" -w "$OUTPUT"

echo "[+] Done. File saved to $OUTPUT"

