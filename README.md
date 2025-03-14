# Overview
The project demonstrates how to implement a GMSK transceiver system that takes advantage of the constant envelope property to enable the use of highly efficient nonlinear power amplifiers. The transmitter is realized using a phase-locked loop (PLL) architecture where an I/Q modulator is placed in the feedback loop. On the receiver side, a direct conversion architecture is modeled to recover the transmitted data. Key design elements include:

- **Gaussian LPF for Pulse Shaping:** A Gaussian low-pass filter smooths the pulse to control spectral content and minimize intersymbol interference.
- **Digital I/Q Generation:** Modules that generate the in-phase (I) and quadrature (Q) components from a PRBS data source.
- **PLL-Based Modulation:** Integration of a PLL with a VCO and I/Q modulator to achieve accurate phase modulation with a modulation index of 0.5.
- **System Analysis:** Eye diagram plotting, Bit Error Rate (BER) analysis, and spectral measurements to validate performance.
# Key Features

**Transmitter Design:**

- Implements a GMSK modulator using a PLL architecture with I/Q feedback.
- Uses a Gaussian transmit filter to shape the digital data pulse.
- Achieves a 1 Mbit/s data rate with a 100 MHz reference clock and a 900 MHz RF carrier.

**Receiver Design:**

- Models a simplified direct conversion receiver.
- Includes cascaded channel-select filters and quadrature demodulation to recover the baseband I/Q signals.

**Simulation & Analysis:**

- Eye diagrams for both the data pulses and the resulting I/Q waveforms.
- Spectrum analysis of the transmitter output.
- Noise analysis to simulate realistic phase noise contributions and evaluate system performance.

# Files in the Repository
- GMSK.slx – Complete GMSK transceiver model
- GMSK_IQ_generator.slx – I/Q modulation model
- GMSK_PLL_Tx.slx – GMSK demodulation using PLL
- GMSK_IO_modulator.slx – GMSK modulator
- Tx_data_generator.m – Script to generate test data for transmission
- GTF_coef.m – Gaussian filter coefficients
- DESIGN_CONST.m – Parameter file for the transceiver
- README.md – This documentation

# How to Use
- Open MATLAB and add this repository to the path.
- Open GMSK.slx in Simulink.
- Run Tx_data_generator.m to generate input test signals.
- Simulate the model and observe the transmitted and received signals.

# Applications
- Satellite Communications
- Cellular GSM Systems
- Software-Defined Radios (SDR)
- Low-power IoT Networks
