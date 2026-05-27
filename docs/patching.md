# 🛠️ Patching & Building dwl

Vanilla `dwl` does not support Waybar or overlay layers natively. To get Waybar to display tags (workspaces), the active layout, and the window title, **you must patch dwl** before compiling it.

## Required Protocols/Patches

You need to add three protocol XML files to your `dwl` source directory (specifically inside a `protocols/` folder) and ensure the `Makefile` generates the headers for them:

1. **dwl-ipc-unstable-v2.xml**: This is the most critical patch. It creates an IPC (Inter-Process Communication) interface so `dwl` can broadcast its state (active tags, layout, focused window) to external bars like Waybar.
2. **wlr-layer-shell-unstable-v1.xml**: Allows programs (like Waybar or Rofi) to create overlay layers on top of normal windows. Without this, your bar might hide behind applications.
3. **wlr-output-power-management-unstable-v1.xml**: Used for idle management and screen DPMS (turning off the screen after inactivity).

## Applying the Patches

1. Clone the dwl source:
        
        git clone https://codeberg.org/dwl/dwl.git
        cd dwl

2. Create the protocols directory and move the XML files:
        
        mkdir protocols
        # Copy the 3 .xml files into this directory

3. Edit the `Makefile`:
   You must instruct the build system to compile these protocols into C headers and source files. Add the protocol generation rules to your `Makefile` so `make` knows how to turn the XML files into `.h` and `.c` files that `dwl.c` can understand.

4. Edit `dwl.c`:
   You must `#include` the generated protocol headers at the top of `dwl.c`, set up the global variables for the IPC manager, and hook the broadcast functions into dwl's main event loop (output layout change, focus change, etc.).

*Note: The exact lines to add to `Makefile` and `dwl.c` can be complex. It is highly recommended to refer to the patched files provided in this repository's `dwl/dwl/` directory as a reference for where these hooks go.*
