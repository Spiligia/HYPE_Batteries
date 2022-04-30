To quick start this project first read throught the software and hardware README reports. The project can be split into three sections: Battery, Hardware and Software

## Battery-Pack
If you like to come up with your own configuration of the battery pack, you can use the simulation code provide in the Simulation_Code_and_Result folder. The spec sheet of different batteries are in the folder called Battery_Pack_Design, this will help you to create csv file for the simulation code. The process of creating csv file are listed in the software README_SOFTWARE.md. You would be able to come up different graphs and charts showing details such as power, discharge rate, voltage and etc. 

## Hardware 
One may want to test on the pre designed testbech and the schematic provided in the hardware README will allow for easy hardware setup. The README_HARDWARE.md provide the process of the testing and also the materials been used for testing. 

To start this project one would want to produce and test the ideal diode design and the temperature sensing module. The next step is to take the information gained from that and iterate the designs. Then combine the temperature sensor data with the battery temp viewer to finalize the system for the client. 

If someone want to looks at past prototype results and also self test results and it is in the folder called Prototype_Test and Self_Test. 

If possible increase the voltage and currents to the full battery size and then design mechanical components to ensure isolation from the cabin and safety from factors like vibration and drops. Since our model is just an small scale model of the whole pack, scaling up the battery pack may increase the safety concern.

## Software

If changes and revision need to be done to the simulation or battery display see README_SOFTWARE.md for more information regarding setting up the proper simulation tools and source code for the project.
