
## Contents
- [Overview](#overview)
- [Battery Temperature Display](#Testbench-Hardware-Setup)
- [Lists of the Hardware Components](#Lists-of-the-Hardware-Components)
- [Setup-Procedure](#Setup-Procedure)
- [3D-Model-Battery-Holders](#3D-Model-Battery-Holders)
- [Ideal Diode](#Ideal-Diode)
- [Temperature-sensing-module](#Temperature-sensing-module)

## Overview

Our project HYP Batteries has several hardware components. These components include designs for a testbench which can handle upto 15A of continuous current, a temperature monitoring circuit schematic for use with a microcontroller, and an Ideal Diode controller for minimization of losses. 


## Testbench-Hardware-Setup

In order to properly conduct this testbench setup, there are several hardware need to be met. On the hardware side, the battery circuit includes a 9V DC power supply that is connected to a 30A relay and that relay is connected to a parallel connection of LiFePO4 and Li-ion batteries in a 3:2 ratio respectively, in which a Schottky barrier diode is placed in series with the Li-ion batteries to prevent reverse leakage current from the LiFePO4 cells to the Li-ion cells.  It is important to note that this Schottky barrier is part of a diode bridge rectifier (i.e. terminals are adjusted accordingly in order to retrieve a single Schottky barrier diode from the rectifier circuit). There exists a 40A fuse that is connected in series with the motor controller and the current sensor for safety standard purposes. In the event of a full short we would expect a current spike up to 550A – ~9.9V/18mΩ (internal resistance) – causing the fuse to blow nearly instantly.  The motor controller is properly connected to an inductor using connection shells and the inductor is then coupled with two power resistors in order to dump energy – by connecting the inductor in series with the power resistor, the current can be tuned easily through the motor controller. For safety reasons, we will be using a thermocouple that will log the temperature of the batteries; the digital thermocouple of the motor controller will log the temperature of the MOSFETs in the motor controller. The battery and motor controller voltages will also be recorded appropriately using multimeters. 

## Lists-of-the-Hardware-Components:
- 3 x LithiumWerks A123 P6 (3.3V, 2500 mAh) lithium iron phosphate (LiFePO4) rechargeable battery cells 
- 2 x Molicel P42A (3.6V, 4200 mAh) lithium-ion (Li-ion) rechargeable battery cells 
- 3 x BeilaMoo 26650 3.7V single slot battery holders
- Surface mount technology (SMT) KeyStone Electronics 21700/20700 dual battery holder w/ coil springs
- IXYS VUO 190-08 NO7 three-phase diode bridge rectifier
- 2 x 1.5kW 1Ω resistors 
- 40A automotive fuse  
- TE Connectivity Potter & Brumfield T9GS1L14-12 30A relay 
- TeamTriforceUK A50S V2.1 (50A burst) VESC-supported motor controller
- XT30 connector (battery input) 
- MR30 connector and cable cover (motor output) 
- 2 x pico-clasp connector shells
- microUSB to USB cable
- 10 µH inductor
- Male-to-male jumper wires
- Test Products Intl. (TPI) dual temperature thermocouple digital thermometer 343
- 1 x 10kΩ resistor
- Alligator clips 
- Crocodile clips
- Hook clips
- Banana plugs
- Electrical ring tongue terminals AWG 18-22
- 2 x TE Connectivity TE2500B1R0J 50 W - 2500 W chassis-mount power resistor 
- AWG 8, 12 & 18 wires
- ACDelco SuperALKALINE 6LR61 9V battery
- PKCELL Extra heavy duty 6F22 9V battery
- 2 x battery snap connectors (9V) 
- Electrical insulation tape and masking tape
- 2 x Multimeter

## Setup-Procedure
- Battery testbench hardware side (see Figure 1 for visual reference)
    - Attach 9V connector battery to the relay (top left and right connections) by soldering battery snap connectors to energize the relay’s coil
    - Place each of the three LiFePO4 batteries in their respective single slot battery holders
    - Place both Li-ion batteries in the dual slot battery holder
    - Solder the wires connecting the LiFePO4 battery holder contacts in series and solder the first ring terminal wire to one of the LiFePO4 battery holders accordingly and the other to the Li-ion dual battery holder to create the parallel connection
    - Connect the ring terminal connected to the LiFePO4 battery holders into terminal ~C (phase-C) of the rectifier and the other terminal (which is connected to Li-ion batteries) to terminal B- (see Figure 2 for rectifier reference schematic) 
    - Solder the LiFePO4 battery holder and rectifier junction into the 30A relay’s bottom right terminal 
    - Solder the 40A fuse into the bottom-right terminal of the Li-ion battery holder and connect its other end to the negative top terminal of the current sensor 
    - Connect the positive top terminal of the current sensor to the motor controller positive XT30 connection; the negative terminal of this connection should be connected to the multimeter accordingly for voltage readings.
    - Connect the positive terminal of the motor controller MR30 connector into the positive terminal of the multimeter to complete the connection for motor controller voltage readings
    - Connect the A50S motor controller to the laptop using micoUSB-USB cable  
    - Connect the positive and negative terminals of the motor controller-motor junction to the positive and negative terminals of the power resistor respectively 
    - The test bench setup should look similar to Figure 3

 - Diode, 9V batteries, and properly soldered electrical connection testing (if necessary)
    - Using a multimeter, test the voltages/currents across the terminals of the Schottky junction diode and the 9V batteries, as well as other electrical connections in the circuit to ensure that the connections aren’t faulty, i.e. improperly soldered or connected.



![figure1](fig 1)
Figure 1: KiCad EDA design schematic of In-lab test 1 (manual current scheduling). Schematic in terms of motor controller design. 



![fig2](fig2)
Figure 2: Reference schematic of three-phase diode bridge rectifier. Terminals ~C and B- are used to retrieve a single Schottky barrier from the rectifier. 


![fig3](fig3)
Figure 3: Battery testbench reference 

For the future testing,the additional batteries will be added to the testbench when you want to scale up. In additional, you will required to change the fuse and also the wire, since those component are not capable of handling higher current and high voltage. 

## 3D-Model-Battery-Holders
Base on our testing, we found that the battery holder that we bought online are no capable of handling high heat, so we decided to 3D model the battery holders by using pla material. The holder for the LiFePO4 contains the base and the top.(Figure 4&5) For Lithium-ion, it will need two identical 3d models to hold battery in place.(Figure 6) Since our final design pack is 19 series 1 parallel of LiFePO4 and 12 series 8 parallel of Lithium-ion, we will need two sets of LiFePO4 battery holders and 4 sets of Lithium-ion battery holders.  


![fig4](ffbn)
Figure 4:LiFePO4 Battery Holder Top 26650

![idfb](hbv)
Figure 5:LiFePO4 Battery Holder Base 26650

![jbsv](isjb)
Figure 6:Lithium-Ion Battery Holder 21700

## Ideal-Diode
 
The ideal diode controller will replace the schottky diode for the full scale battery pack. This ideal diode is used to reduce the voltage drop across the diode when the current reaches higher magnitudes. There are two main parts to this component, the ideal diode controller itself and the PCB to house the components. In the PCB, we use two MOSFETs (parts listed in schematic) to distribute the current evenly. To deal with the problem of heat dissipation on the board, we have multiple solutions. The board will have two copper pours on both the top and bottom layers as well as a heat sink on top to further distribute the heat. Additionally, the configuration of the MOSFETs and trace width are also very important for distributing heat. Copper busbars must be soldered on the traces for the 300A current path to help handle the current. More details can be found in the schematics and board diagrams below. 


![ideal diode boadr](idb)

## Temperature-sensing-module
The temperature sensing module circuit is based on the use of thermistors in a higher temperature application. Any 10k thermistors will do as long as special care is taken to tuning and programming of the microcontrollers ADC pin and readings. Special care will also need to be taken into account for the speed of the system, specifically rise and fall time. With a 0.1uF capacitor acting as the low pass filter into the final op amp the frequency is limited by the rise time of the capacitor. This can be measured through software simulations or mathematical circuit analysis. To manufacture the PCBs you will need to use KiCAD — a free pcb design software— to get the necessary files to order the PCBs. To set up the modules they will need to be daisy chained in accordance with the circuit diagram to ensure proper orders of signals and functions. A Premade gerber folder is available in Github for the ordering of the boards.







##Bills of Materials


![bom](bom)











