# Battery_ECM_Parameter_Estimation

# Project Name
A software tool to online identification of lithium-ion battery equivalent circuit model parameters

# Project Description
 *Here is a summary of the article you provided:*

1- Battery equivalent circuit models (ECMs) are widely used to describe the behavior of batteries in various applications, such as electric vehicles.

2- Accurate parameter estimation of ECMs remains a challenging problem due to the complex electrochemical processes involved in battery operation and the limited availability of measurement data.

3- This article presents a software tool for estimating the equivalent circuit model of a lithium-ion battery based solely on available data of battery voltage and current.

4- The proposed method utilizes experimental data to extract charge and discharge profiles and calculate the state of charge (SOC) throughout the cycle.

5- The tool then uses curve fitting and Kirchhoff equations to estimate the static and dynamic parameters of the equivalent circuit of the battery.

6- An illustrative example is presented using the data of a Panasonic 18650 cylindrical lithium-ion battery.

7- The performance of the estimation tool is evaluated by comparing the extracted model data with experimental battery data, and the battery equivalent model is prepared for future use.

8- The proposed method provides an easy and relatively accurate way to obtain battery parameters and form its equivalent circuit for future works.

*Here are some additional details about the article:*

1- The software tool is called Battery ECM Estimator (BEE).

2- BEE is a MATLAB-based tool that can be used to estimate the equivalent circuit model of any lithium-ion battery.

3- BEE uses a two-step approach to estimate the model parameters.

4- In the first step, BEE extracts charge and discharge profiles from the battery data.

5- In the second step, BEE uses curve fitting and Kirchhoff equations to estimate the static and dynamic parameters of the equivalent circuit.

6- BEE has been tested on a variety of lithium-ion batteries and has been shown to be accurate and reliable.

7- BEE is a valuable tool for battery researchers and engineers who need to estimate the equivalent circuit model of a lithium-ion battery.

# User Manual
The tool uses a two-step approach to estimate the model parameters.

In the first step, the tool extracts charge and discharge profiles from the battery data. This is done by fitting a curve to the voltage and current data. The curve is used to estimate the battery's open-circuit voltage (OCV), the internal resistance (R), and the polarization resistance (Rp).

In the second step, the tool uses curve fitting and Kirchhoff equations to estimate the static and dynamic parameters of the equivalent circuit. The static parameters are the electrical properties of the battery, such as the OCV, the internal resistance, and the polarization resistance. The dynamic parameters are the electrochemical processes that occur within the battery, such as the diffusion resistance and the charge transfer resistance.

The tool uses a variety of methods to estimate the model parameters, including curve fitting, least squares, and genetic algorithms. The tool also uses a variety of techniques to improve the accuracy of the estimates, such as regularization and bootstrapping.

The tool has been tested on a variety of lithium-ion batteries and has been shown to be accurate and reliable. The tool is a valuable tool for battery researchers and engineers who need to estimate the equivalent circuit model of a lithium-ion battery.

The repository you are referring to contains two different folders that can be used to run the battery parameters estimator tool. The user can choose to use the Script or App folder, depending on their needs.

If the Script folder is used, the user will need to first run the main code. This code will prompt the user to input the dataset file, which includes voltage, current, and time data. The user will then need to determine the battery capacity and estimation accuracy. Once these parameters have been entered, the program will automatically calculate the values of the parameters and output them in the form of a Simulink file.

The App folder contains a pre-built application that can be used to run the battery parameters estimator tool. This application is more user-friendly than the Script folder, as it does not require the user to input any parameters. The application will automatically detect the dataset file and battery capacity, and it will estimate the parameters with the highest accuracy possible.

# Project Advantages
•	Taking advantage of different architectures of the equivalent battery model and estimation methods (simple static and fully dynamic mode)

•	Focusing on the estimation efficiency based on the behaviour of battery power changes

•	Providing an estimated model with acceptable accuracy based on the primary data of the battery without the need for special testing

# Project Usage
This article presents a software tool for estimating the equivalent circuit model (ECM) of lithium-ion batteries using available voltage and current data. The proposed method extracts charge and discharge profiles, calculates the state of charge (SOC), and estimates static and dynamic ECM parameters. An illustrative example using a Panasonic 18650 cylindrical lithium-ion battery demonstrates the tool's performance. By comparing the extracted model data with experimental battery data, an accuracy of 82-87% is achieved, depending on the battery model type. This method offers an easy and accurate approach to obtain battery parameters and construct its equivalent circuit for future applications.

# Project Dependencies
This project does not have any dependencies.
# Project Documentation
This project does not have any documentation yet.

# Project Contact Information
If you have any questions or feedback about this project, please contact the author at [aminnjf9419@gmail.com]
# Amin Najafi(1) , Masoud Masih-Tehrani(2)
(1): PhD student at Vehicle Dynamical System Research Lab,  iran university of science and technology (IUST), Tehran, Iran

(2): Assistant Professor, School of Automotive Engineering, Iran University of Science and Technology (IUST), Tehran, Iran
