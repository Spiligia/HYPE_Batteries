Team #23 Software Report


## Contents
- [Overview](#overview)

- [Dependencies](#dependencies)

- [Installation](#installation)
- [Development](#development)
- [Building/Uploading](#building/uploading)
- [Use/Debugging](#use/debugging)

## Overview

Our project HYP Batteries has three software operations required to test our hardware: battery pack simulation, battery pack temperature monitoring, and battery pack automated testing. 

## Battery Temperature Display


The preferred integrated development environment (IDE) for battery temperature display is Qt Creator which is a cross platform for C++, javascript and QML. The software is available to download online through Qt Creator website, https://www.qt.io/.
## Qt Creator Download Instructions

1. Users must click on the download button below the website
2. Direct to “Downloads for open source users” to get a free copy
3. After navigating to that page the user will need to scroll all the way down 
4. Then hit the download button and follow along with the instructions. You might need to download additional features like Xcode & Xcode command line tools for Mac OS
5. Select an installation folder on your device and check off custom installation
6. Under custom installation page select Qt 6.3.0 default feature which will selection all options within the folder
7. Afterward read Terms of Service page and begin downloading process for Qt Creator

After downloading Qt Creator navigate to github to download the source code for battery temperature display app: https://github.com/Spiligia/HYPE_Batteries/tree/main/BatteryDisplay. From there launch the Qt Creator application and open the project, make sure you select the Battery Display folder. From there you can choose to emulate the application on the PC or another platform either Android or Apple. You must have additional packages downloaded to run on either Android and Apple platform that Qt Creator would recommend to download prior to building the files. 

## Qt Creator Interface


Basic rundown of Qt creator interface, welcome tab is where you can find example templates, create and open projects, the edit tab will be the project you're working on after you select a file on the welcome tab, the computer icon is how you wish to emulate the app, there’s two play button one to run the file and other is to debug, lastly the hammer icon is to compile the files prior to running.

## Code function

![qt interface pic]('locationof pci' )
	


## Battery Pack Configuration Simulation

In order to do the simulation, a notebook environment that can write and read Julia script is needed. After obtaining a coding environment like Jupyter notebook, the next steps are to obtain battery data specification sheets for the batteries you wish to simulate. These specification sheets must include: cell capacity, cell voltage, charge current, discharge current, weight, and discharge rate characteristics. The discharge rate characteristics need the voltage versus capacity relationship curves for different discharge rates. The discharge rate characteristics will help approximate the voltage versus capacity relationship curve for our desired discharge rate. Additionally, information about the aircraft being simulated will be needed, specifically: airplane mass, climb velocity, and glide ratio. These specifications will be used to determine the height of the aircraft during flight. Lastly, a diode will be needed in the circuit to prevent leakage current in the lithium-ion battery. This simulation will account for this, but value for diode voltage drop is required. 

We will need to create CSV files for simulating the configuration of the battery pack. Based on the spec sheet giving from the manufacturer, we will need to input 60 to 70 data points of battery capacity (Ah) with the corresponding voltage (V) for a specific discharge rate. Moreover, we will need at least 3 to 5 different discharge rate for the code to work.

The file is called hybrid_battery_analysis_final.py in the github resources. Here are the steps for this code.

1. Download Anaconda Navigator from the internet and install the jupyter notebook 6.3.0
2. Upload the code to the jupyter notebook
3. Download Julia 1.6.3 from the internet 
4. Install Plots, CSV, DataFrames, and Interpolations packages into Julia environment
5. For each lithium ion battery type desired specification for testing
 - Import discharge rate CSV files
 - Input single cell capacity, single cell mass,single cell maximum discharge rate,and individual cell energy capacity from the spec sheet provide by the manufacturer 
6. User Tunable Parameter Section
 - Choose which lithium ion battery pack to test
 - The first line specifies the pack being tested
  - - Set “pack = [ lithium ion battery being tested ]” 
 - Input number of series rows & parallel columns under the “if statement” for specified lithium ion battery
 -  Input number of series rows & parallel columns under the “if statement” for specified LiFePO4 battery
7. Input Aircraft Data 
 - Set “airplaneMass = [ mass in kg ]”
 - Set “climbVelocity = [ velocity in m/s ]“
 - Set “glideRatio = [ glide ratio of aircraft ]“
8. Diode
 - Set “v_drop_diode = [ voltage drop in V ]”
9. Stimulation Parameters
 - Test and change configuration of series and parallel lithium ion and LiFePO4 battery pack to achieve desired height and weight

The code will automatically create graphs and charts for the user to have a better understanding on each configuration. Through the graphs and charts, users will be able to adjust the number of the battery cells they are using and also adjust the type of the battery cells in the battery pack.  

## Battery Pack “Naive” Testbench Automation
The following software packages are needed before proceeding with the software configuration instructions:

- VESC Tool (free version) GUI developed by Benjamin Vedder
    - Qt Toolkit
    - .zip file extractor (Windows, Linux, Mac OS X, and Android supported like WinZip or 7-Zip)
     - Source code: https://github.com/vedderb/vesc_tool
 - VESC-Lisp, Common Lisp, or LispBM Scripts
     - ANSI Common Lisp GNU v2.49 (2010-07-07 build) compiler (REPL)
     - For Mac OS X, install via MacPorts 
     - For Windows and Linux (Ubuntu, Debian, Sun Solaris, etc.), install directly from https://clisp.sourceforge.io/

To setup the VESC Tool, follow these instructions: 

 - Create an account on https://vesc-project.com/ > click on “VESC tool’ tab > purchase VESC Tool Free for €0.00 (no billing information required) > click on “Purchased Files” link (top right corner) > download and extract “vesc_tool_BETA_ALL.zip” (or for Windows users, download “vesc_tool_free_windows.zip”)

 - Alternatively install directly via source code: https://github.com/vedderb/vesc_tool

 - For Windows and Linux users, Install REPL Lisp compiler via SourceForge 

 - For Mac OS X users install MacPorts v2.7.1
    - Install Xcode and Xcode Command Line Tools
Agree to Xcode license in Terminal: sudo xcodebuild -license
    -  Install MacPorts according to version of  OS X (convenient installation through .pkg installer for version 10.15+) on https://www.macports.org/install.php
    - After MacPorts installation, type sudo port install clisp to install common lisp implementation (interpreter, compiler, debugger, etc.)

After having performed extensive manual testing of the hybrid battery pack, the team later on started researching a more modular, automated means of testing the pack, in which they stumbled upon Lisp. Lisp (List Programming) is the second oldest high-level programming language (developed in 1958 by John McCarthy at MIT) that is built from s-expressions, which are essentially lists (or sequences of atoms, i.e. numbers, contiguous characters, and strings) that are enclosed in parentheses. This was particularly suitable for AI programs at the time as the arguments that are passed to the REPL (Read-Evaluate-Print-Loop) interpreter are very efficiently processed (i.e. efficient processing of symbolic information). From our research, Common Lisp was primarily used from 1980 to 1990, and is the dialect that we started learning accordingly. However, over the past decades, Common Lisp has branched out into so many different dialects like ArcLisp, HyLisp, NuLisp, Liskell, and so on, as well as the more recently developed dialects like Bel developed by Paul Graham. In fact, AutoCad was built in the Lisp language, and has its own dialect called AutoLisp! So, it is not unreasonable to say that this scripting language is still a very rigid choice today given its high symbolic processing efficiency.

Thus, it is not surprising to find that Lisp is used in a myriad of embedded system development applications, where both conciceness of code, CPU & memory usage, and embedded system performance & efficiency are crucial factors. Lisp provides very powerful macro definition machinery as well and the more recent dialects mandate garbage collection, which is a very attractive feature; notwithstanding, its REPL provides user-friendly and interactive programming for embedded systems. In the case of 32-bit ARM microcontroller units (MCUs) like STM32 or NRF52, Lisp Black Magic (LispBM) is a wisely used dialect of Lisp which is implemented in C and can be "embedded" into some application running the given MCU to make the application scriptable using a lisp-like syntax. This version of Lisp was developed by Joel Svensson who is a researcher at Chalmers University of Technology within the area of functional programming. He was inspired to add this dialect to the family of MCU-lisps after taking MIT's 6.001 Structure and Interpretation of Computer Programs series of lectures. We’ve been in constant communication with him on Discord and he's been guiding us through the language and providing us with relevant learning resources for reference, as well as extensive documentation on his Github page. He had pointed out to us that learning Common Lisp is somewhat different from learning MCU-lisps like LispBM, and so shifting our focus to learn LispBM instead for the purposes of MCU embedded development. 

The VESC-tool developed by Benjamin Vedder allows for an interactive means of testing our battery pack. In particular, it allows us to have a lot of freedom in both tuning, tracking, and analyzing many of the parameters involved in the process of scaling up the pack like the battery temperature, MOSFET temperature, motor current and voltage, duty cycles, power levels, power level transitions, etc. So as to make the project more straightforward and understandable, the first step of testbench automation can be naive. That is to say, users can open the file naive_testbench.lisp in order to automate a “naive” automation of the motor current (using the set-current function) while previewing the real-time series plots on the VESC tool.

## Battery Pack Structural Testbench Automation
 ![lispstruct](lispstruct)
The testbench code found in battery_testbench_v1.00.lisp should have some loop with at least four “top-view” conditions (a.k.a. battery monitoring sanity checks) and then it should have some actuation mechanism where as long as those conditions are satisfied, then the next phase of testing will begin according to the state variable or parameter list. So, the top view diagram provided above lists the definitions and relations between the following relevant battery testing parameters:

 - t_test - Testing period (time set for testing that is measured in seconds and ranges from 0 to TIME_MAX), where TIME_MAX is some constant that is defined by the user or client accordingly
 - user_stop - User-defined input (manual STOP command of testing)
 - sane & insane - Sane state is that which meets the conditions involving each parameter outlined below, and insane is that which doesn't otherwise 
     - T_batt (battery pack temperature, however it is defined), T_cell1, T_cell2,..., T_celln (temperature of each cell as defined by the engineers)
    - T_fet (MCU MOSFET temperature)
    - i_motor (motor phase currents)
    - v_motor (motor voltage)
    - i_batt (battery current), i_cell1, ... , i_celln (given cell group current)
    - v_batt (battery voltage) and v_cell (per cell voltage)
    - p_batt (battery power), p_cell (per cell power), p_L (current power delivered to load/motor)
    - SOC_batt (battery state of charge)
    - C_nom_batt (nominal capacity of battery), C_current (current capacity of battery)
    - t_discharge (time remaining for battery to discharge)

As for the functions used in the diagram: 

- power_level(flag) - A power level function that sets relevant parameters according to some input token (“flag”)
    - the power level function determines the initial state of the battery and sets the relevant parameters (initial values)
    - the input token determines whether or not the test transitions to a higher or lower power level or shuts down
    - the function prints relevant parameters to the console for debugging and even manipulate some data if needed
- sanity_checker(param_list) - A sanity check function that evaluates the current battery state and set its values according to a number of conditions
    - the sanity checks are conditions that are defined such that some flag token is set to some value corresponding to sane or insane
    - either power level function is called in the sanity check function (or vice-versa possible) to parse the sane/insane flag inputs and transition the power level according to that flag token. If the flag input is sane, then power is transitioned to higher level, and otherwise, if it's insane, then the power is transitioned to lower level
    - in the definition of the sanity check function, the function itself is called again in order for it to loop indefinitely according to some sleep frequency (similar to void loop in Arduino IDE)
    
After defining the power level function and sanity check function in the lisp script, the power level function would be first called with the corresponding input token for initializing the battery state and determining its relevant parameters (i.e. it runs once similar to void setup in Arduino IDE). Then, the sanity check function would be directly called with the outputs of the power level function as its inputs.

