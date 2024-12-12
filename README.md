# SPEARHEAD VDA tool

- [About](#about)
- [How to install](#how-to-install)
- [How to use](#how-to-use)
- [Acknowledgement](#acknowledgement)

## About

The VDA tool helps in the automation of Velocity Dispersion Analysis (VDA) of one or multiple Solar Enegergetic Particle (SEP) events. Each event is provided to the tool as a point in time. The user can parameterize the given Notebook and control which particle species are used, the sensor from which they are detected, and the viewings to be considered.

The tool utilizes the Pandas module and generates multiple DataFrames during its execution. The final output of the tool is a plot of the VDA analysis for each inputted event.

*Tool is still under active development and its results should be handled with caution.* 

*Tested in Ubuntu 22.04 with Python version 3.10.12*

## How to install

1. [Download this file](https://github.com/spearhead-he/VDA/archive/refs/heads/main.zip) and extract to a folder of your choice (or clone the repository [https://github.com/spearhead-he/VDA](https://github.com/spearhead-he/VDA) if you know how to use `git`).
2. Within your terminal/command line prompt, move to the directory where the code is.
3. *(Optional, but recommended)* Create a Python virtual environment (e.g., `python -m venv venv_vda_tool`) and activate it (e.g., `source venv_vda_tool/bin/activate`)
4. Install the Python dependencies from the *requirements.txt* file with `pip install -r requirements.txt`
5. Open the Jupyter Notebook by running `jupyter-lab vda_tool.ipynb`

## How to use

The Notebook is separated into three main sections:
- Imports & Setup
- User Inputs
- Run

The user should run the cell(s) of the first section and then follow the instructions iside the Notebook to properly fill the input forms. The cells of the "Run" section can then be run without changing anything.

## Acknowledgement

<img align="right" height="80px" src="https://github.com/user-attachments/assets/28c60e00-85b4-4cf3-a422-6f0524c42234"> 
<img align="right" height="80px" src="https://github.com/user-attachments/assets/854d45ef-8b25-4a7b-9521-bf8bc364246e"> 

This tool is developed within the SPEARHEAD (*SPEcification, Analysis & Re-calibration of High Energy pArticle Data*) project. SPEARHEAD has received funding from the European Union’s Horizon Europe programme under grant agreement No 101135044. 

The tool reflects only the authors’ view and the European Commission is not responsible for any use that may be made of the information it contains.
