# Radar-Based Air Traffic Control System Simulation

## Overview

This project presents a conceptual simulation of a Radar-Based Air Traffic Control (ATC) system developed using MATLAB and Simulink. It provides an interactive environment to model fundamental radar operations, visualize aircraft trajectories, analyze signal characteristics, and understand the impact of various parameters and environmental conditions on radar performance and target detection.

Built from scratch, this simulation demonstrates the intricate interplay between radar physics, signal processing, and real-time system dynamics within an ATC context.

## Features

* **Interactive GUI Control:** A custom MATLAB App Designer interface allows users to dynamically adjust key radar parameters (Transmitter Power, Wavelength, Losses, Noise Factor, Antenna Efficiency, Bandwidth, Temperature, Radar Range, Separations) and environmental conditions (Weather Condition).
* **Aircraft Trajectory Simulation:** Models a pre-defined aircraft trajectory to provide realistic range changes over time.
* **Radar Equation Implementation:** Calculates fundamental radar metrics including:
    * Total Received Power
    * Receiver Noise Power
    * Signal-to-Noise Ratio (SNR)
    * Estimated Range of the aircraft from the radar.
* **Weather Effects Modeling:** Incorporates atmospheric attenuation due to precipitation (rainfall rate) based on wavelength, affecting the received signal power.
* **Target Detection Logic:** Utilizes a Stateflow chart to determine instantaneous target detection status based on calculated SNR exceeding a configurable threshold.
* **Comprehensive Visualization:** Multiple Simulink scopes provide real-time plots of:
    * Aircraft Actual Range vs. Radar Estimated Range
    * Radar Detection Status (binary: Detected/Not Detected)
    * Atmospheric Attenuation (Specific Attenuation)
    * Total Received Power vs. Noise Power
    * Selected Weather Condition Input
* **Modular Simulink Design:** Structured with dedicated subsystems for Radar, Aircraft, Weather, Estimate Range, and SNR calculation.

## Technologies Used

* **MATLAB:** Core programming environment.
* **Simulink:** For system modeling, simulation, and dynamics.
* **MATLAB App Designer:** For creating the interactive Graphical User Interface (GUI).
* **Stateflow:** For implementing complex event-driven logic (e.g., target detection).

## Getting Started

Follow these steps to set up and run the project on your local machine.

### Prerequisites

* MATLAB (R2020a or later recommended, as App Designer is used)
* Simulink
* Basic understanding of Git (for cloning the repository)

### Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/shivaminit/Radar-Based-Air-Traffic-Control-System.git](https://github.com/shivaminit/Radar-Based-Air-Traffic-Control-System.git)
    ```
2.  **Navigate to the project directory:**
    ```bash
    cd Radar-Based-Air-Traffic-Control-System
    ```
3.  **Add the project folder to MATLAB's Path:**
    Open MATLAB, go to the `Home` tab, click `Set Path`, then `Add Folder...` and select the `Radar-Based-Air-Traffic-Control-System` folder. Click `Save` and `Close`. This ensures MATLAB can find all necessary `.m` and `.mlapp` files.

### How to Run

1.  **Open MATLAB.**
2.  **In the MATLAB Command Window, execute the following command:**
    ```matlab
    open_system('AEROATCSS.slx');
    ```
    This command will:
    * Load all necessary initialization data and parameters.
    * Automatically open the `AEROATCSS.slx` Simulink model.
    * Automatically launch the "Air Traffic RADAR Design Parameters" GUI (your App Designer app).
3.  **Interact with the GUI:**
    * The GUI will initialize with default radar parameters.
    * You can change values like `Transmitter Power`, `RADAR Band`, `Weather Condition`, etc., and observe their real-time impact on the Simulink scopes.
4.  **Run the Simulation:** Click the `Run` button in the Simulink model toolbar to start the simulation and visualize the dynamic waveforms on the various scopes.

## Project Highlights & Learning

This project was a significant learning experience, involving:

* **End-to-End System Integration:** Successfully connecting a custom MATLAB App Designer GUI to a complex Simulink model for real-time parameter control.
* **Advanced Debugging:** Overcoming numerous challenges related to callback timing, variable synchronization across workspaces, handling `NaN`/`Inf` propagation, and resolving structural mismatches in Simulink signal types (scalars vs. buses).
* **Simulink & Stateflow Mastery:** Gaining practical expertise in building detailed subsystem models, implementing mathematical functions, and designing event-driven logic in Stateflow.
* **Radar Systems Fundamentals:** Deepening understanding of radar equation, SNR, detection thresholds, and atmospheric effects.

## Visualization and Analysis
<img width="1918" height="1017" alt="aircraftrange" src="https://github.com/user-attachments/assets/fe9fbbd9-e1ea-4436-8e8b-4a3c8a9d8cc3" />
<img width="1918" height="1020" alt="SNR_flag" src="https://github.com/user-attachments/assets/890df413-1356-48b0-9498-594002d9fb49" />
<img width="1917" height="1021" alt="Received Power vs  Noise" src="https://github.com/user-attachments/assets/7dedb205-f0a2-490b-a4c8-35494d50a825" />
<img width="1918" height="1022" alt="Weather Effect On Radar Performance" src="https://github.com/user-attachments/assets/1929b347-16a7-4028-8215-c5e6a19e3402" />



