;;; This program will automate the testing of 
;;; of a battery pack by means of sanity checks
;;; and actuate into different testing phases.

;;; The engineer should set the relevant testing parameters
;;; as per their needs, and can easily add more sanity checks.

;;; @file battery_testbench_v1.00.lisp
;;; @author Ismaeel AlAlawi, Spring 2022
;;; @affiliation Boston University, Electrical & Computer Engineering Department
;;; @version 1.00 build 3/24/22


;;; Global constants

;;; Testing time-related constants (seconds)
(define TEST_PERIOD 		 )	    ; battery testing period
(define TIME_MAX 			 )	 	; battery maximum testing period
(define SLEEP_PERIOD 	 0.02)		; battery testing state transition period


;;; Battery state-related flag constants
(define FLAG_LOWER_STATE 	0)		; token input to flag lower battery state
(define FLAG_HIGHER_STATE 	1)		; token input to flag higher battery state

;;; Battery sanity-related constants

;;; Sanity state flag constants
(define FLAG_SANE_STATE 	2)		; token input to flag sane battery state
(define FLAG_INSANE_STATE	3)		; token input to flag insane battery state

;;; Temperature-bound constants (°C)
(define T_BATT_MIN 			 ) 		; minimum battery temperature
(define T_BATT_MAX 			 ) 		; maximum battery temperature
(define T_CELL_MIN 			 ) 		; minimum cell temperature
(define T_CELL_MAX 			 ) 		; maximum cell temperature
(define T_FET_MIN  			 ) 		; minimum MOSFET temperature
(define T_FET_MAX  			 ) 		; maximum MOSFET temperature
(define T_MOTOR_MIN  		 ) 		; minimum motor temperature
(define T_MOTOR_MAX  		 ) 		; maximum motor temperature


;;; Current-bound constants (amperes)
(define I_MOTOR_MIN 		 )		; minimum motor current
(define I_MOTOR_MAX 		 )		; maximum motor current
(define I_BATT_MIN 		     )		; minimum battery current
(define I_BATT_MAX 			 )		; maximum battery current
(define I_CELL_MIN 			 )		; minimum cell current
(define I_CELL_MAX 			 )		; maximum cell current

;;; Voltage-bound constants (volts)
(define V_MOTOR_MIN 		 )		; minimum motor voltage
(define V_MOTOR_MAX 		 )		; maximum motor voltage
(define V_BATT_MIN 			 )		; minimum battery voltage
(define V_BATT_MAX 			 )		; maximum battery voltage
(define V_CELL_MIN 			 )		; minimum cell voltage
(define V_CELL_MAX 			 )		; maximum cell voltage

;;; Power-bound constants (watts)
(define P_BATT_MIN 			 )		; minimum battery power
(define P_BATT_MAX 			 )		; maximum battery power
(define P_CELL_MIN 			 )		; minimum cell power
(define P_CELL_MAX 			 )		; maximum cell power
(define P_L_MIN 			 )		; minimum power delievered to motor/load
(define P_L_MAX 			 )		; maximum power delievered to motor/load

;;; Miscellaneous constants
(define SOC_BATT_0 			 )		; initial battery state of charge (0 to 1)
(define SOC_BATT_MIN   	  0.0) 		; minimum battery state of charge 
(define SOC_BATT_MAX 	  1.0) 		; maximum battery state of charge
(define C_NOM_BATT 			 )		; nominal battery capacity (ampere-hours)
(define TIME_ELAPSED  systime)		; get system time in ticks (every tick is 0.1 ms)

;;; Testing Initialization
(set-current				 )		; set the motor current (amperes)
(set-duty 					 )		; set the duty cycle (-1.0 to 1.0)
(set-brake 					 )		; set the braking current
(set-rpm 					 )		; set RPM speed control 

(define i_motor get-current) 		; getters here
(define i_input get-current-in)
(define duty_cycle get-duty)
(define motor_rpm get-rpm)
(define T_fet get-temp-fet)
(define T_motor get-temp-motor)
(define soc_batt get-batt)


;;; Function Declarations and Definitions

;;; Checks battery parameters against mutable list of user-defined testing conditions 
;;; @name sanity_checker
;;; param #: 16
;;; @param T_batt, battery temperature
;;; @param T_cell1ton, cell 1 to n temperature
;;; @param T_fet, per mosfet temperature
;;; @param i_motor, motor phase currents
;;; @param v_motor, motor voltage
;;; @param i_batt, battery current
;;; @param i_cell1ton, cell group 1 to n currents
;;; @param v_batt, battery voltage
;;; @param v_cell, per cell voltage
;;; @param p_batt, battery power
;;; @param p_cell, per cell power
;;; @param p_l, power delievered to motor/load
;;; @param soc_batt, battery state of charge
;;; @param c_nom_batt, nominal battery capacity 
;;; @param c_curr_batt, current battery capacity
;;; @param time_discharge, battery discharge time remaining
;;; @return FLAG_SANITY_STATE (FLAG_SANE_STATE or FLAG_INSANE_STATE)


(defun sanity_checker (param_list) 
	(progn
		;;; insane: nil, sane: t
		; Example checks, add or change
		(define check-test-time ((< (secs-since 0) TEST_PERIOD))) 
		(define check-batt-temp ((< T_batt T_BATT_MAX) and (> T_batt T_BATT_MIN))) 
		(define check-cell-temp ((< T_cell T_CELL_MAX) and (> T_cell T_CELL_MIN)))
		(define check-fet-temp	((< T_fet T_FET_MAX) and (> T_fet T_FET_MIN)))
		(define check-motor-curr ((< i_motor I_MOTOR_MAX) and (> i_motor I_MOTOR_MAX)))

		; Squish checked params into one list
		(define check-params '(
			  (check-test-time)
			  (check-batt-temp)
			  (check-cell-temp)
			  (check-fet-temp)
			  (check-motor-curr)
		))

		; Evaluate logical AND of every element of the list
		(apply and (map eval check-params))
	)
)

;;; Power level function declaration and definition
;;; Purpose here
;;; @param 
;;; @return 

(defun power_level () 
	(progn
		(define time_elapsed 
		(if (sanity_checker param_list) 
			(
				;;; sane stuff here

			)
			(

				;;; insane stuff here

			)

		)
		; loop code here

		(power_level)
))

;;; Executable functional calls here
(power_level)
