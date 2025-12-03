#!/bin/bash
# Quick start script for Mosquito Game

echo "🦟 Starting Mosquito Game Server..."
echo "=================================="
echo ""
echo "Server will start at: http://localhost:8000"
echo "Press Ctrl+C to stop the server"
echo ""
echo "Opening browser in 2 seconds..."
echo ""

# Start Python HTTP server
python3 -m http.server 8000 || python -m SimpleHTTPServer 8000
