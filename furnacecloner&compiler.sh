#!/bin/bash
# ===============================
# Check if Furnace already exists
# ===============================
if [ -d "furnace" ]; then
    echo "you've already used this program once, exiting..."
    exit 1
fi

# ===============================
# Clone Furnace from GitHub
# ===============================
git clone --recursive https://github.com/tildearrow/furnace.git

# ===============================
# Enter Furnace directory
# ===============================
cd furnace || { echo "Failed to enter furnace directory"; exit 1; }

# ===============================
# Create build folder if missing
# ===============================
mkdir -p build

# ===============================
# Enter build folder and configure
# ===============================
cd build || { echo "Failed to enter build directory"; exit 1; }
cmake -G "Unix Makefiles" ..

# ===============================
# Next step: Compile Furnace
# ===============================
echo
echo "Build configuration complete!"
echo "Now run: make"
echo
