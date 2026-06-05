#!/bin/bash
#It displays in real time the processes that are running on the system
top 
# top starts as a background process, but because top is an interactive application that needs to control the terminal, it doesn't usually work usefully in the background and may display strange messages or stop.
top&