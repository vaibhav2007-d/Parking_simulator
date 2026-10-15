# 🅿️ Smart Parking System

## 📌 Project Overview
The Smart Parking System is a web-based project designed to manage parking slots efficiently. It allows users to check parking slot availability and simulate car entry and exit operations. The project uses HTML, CSS, and JavaScript for the user interface and can be extended with Icarus Verilog for digital logic simulation.

## 🎯 Aim
To develop a Smart Parking System that displays parking slot availability and manages car entry and exit operations using a simple and user-friendly interface.

## ✨ Features
- Displays multiple parking slots.
- Shows whether each parking slot is FREE or OCCUPIED.
- Simulates car entry and car exit.
- Updates parking slot status dynamically.
- Uses different colors to identify available and occupied slots.
- Provides a responsive layout for different screen sizes.
- Includes memory address labels to represent digital logic concepts.

## 🛠️ Technologies Used
- **HTML5** – Structure of the webpage.
- **CSS3** – Styling and responsive design.
- **JavaScript** – Parking slot status and button operations.
- **Icarus Verilog** – Optional hardware logic simulation.

## 📂 Project Structure

```text
Smart-Parking-System/
│
├── index.html
├── style.css
├── script.js
├── parking.v
└── README.md
```

*Note: This structure assumes that the code is separated into these files. The Verilog file is needed only if you implement the hardware simulation.*

## ▶️ How to Run the Project

### Method 1: Run the Web Application
1. Download or clone this repository.
2. Open the project folder.
3. Open `index.html` in a web browser.
4. Click **Car Entry** to mark a parking slot as occupied.
5. Click **Car Exit** to mark the slot as free.

### Method 2: Run the Verilog Simulation
If you have created the `parking.v` Verilog module and a testbench, open a terminal in the project folder and run:

```bash
iverilog -o sim parking.v testbench.v
vvp sim
```

These commands compile and run the Verilog simulation. The Verilog logic must be implemented separately from the browser interface unless you create a communication layer between them.

## ⚙️ Working Principle
Initially, all parking slots are displayed as free. When the user clicks the Car Entry button, the selected slot changes to occupied. When the user clicks the Car Exit button, that slot becomes free again. JavaScript updates the webpage to reflect the current parking status.

The Verilog component can simulate the digital logic for tracking parking slots, detecting full capacity, and counting occupied spaces.

## 🎓 Applications
- College parking demonstrations.
- Shopping mall parking simulations.
- Office parking management prototypes.
- Digital logic and hardware simulation projects.
- Learning web development and Verilog.

## 🚀 Future Improvements
- Automatic vehicle detection using sensors.
- Display of total, available, and occupied slots.
- Integration with an FPGA development board.
- Vehicle number recognition.
- Real-time database integration.
- Automated entry barriers.

## ✅ Conclusion
The Smart Parking System demonstrates how web technologies can be used to create a simple parking management interface. It provides an interactive way to manage parking slot availability and simulate vehicle entry and exit. Integrating Icarus Verilog can further demonstrate the digital logic involved in parking management.

## 👨‍💻 Project Information
- **Project Name:** Smart Parking System
- **Domain:** Web Development and Digital Logic Simulation
- **Tools:** HTML, CSS, JavaScript, Icarus Verilog
- **Author:** Vaibhav
