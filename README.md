# VR Environment with Teleportation and Hand-Based Locomotion

**Course:** Augmented and Virtual Reality  
**Engine:** Godot Engine  
**Platform:** VR headset or browser simulator (WebXR)

---

## Project Overview

This project was developed as part of the *Augmented and Virtual Reality* course.  
The objective was to create a simple interactive virtual reality environment, integrate 3D models, and implement a basic but comfortable locomotion system suitable for VR.

The application was built using **Godot Engine** and supports execution both on **VR headsets** and via a **WebXR browser-based simulator**.

---

## Environment Description

The virtual scene consists of a minimalistic map designed for orientation and interaction:

- A **flat plane** serving as the main ground
- An **orientation tower** acting as a spatial reference point
- **Two blocks** placed on the map
- A **laptop 3D model** positioned on top of one of the blocks
- A **gradient-style floor** to improve depth perception
- A **directional light source** positioned slightly above and from the side, to enhance spatial shading and realism

All objects have **collision enabled** and the player character is affected by **gravity**, allowing realistic physical interaction with the environment.

---

## Player Representation and Interaction

The player is represented by two virtual hands:

- **Left hand** – standard controller hand  
- **Right hand** – holding a pistol model used for teleportation targeting

### Teleportation System

- A **visual dot** indicates the location currently aimed at by the pistol
- Pressing the **right trigger** teleports the player to the indicated location
- This teleportation method improves comfort and helps reduce motion sickness

---

## Control Scheme

The implemented control system is designed to be intuitive and VR-friendly:

- **Left joystick** – smooth movement (locomotion)
- **Right joystick** – snap rotation by **45 degrees**, supporting comfortable viewing and orientation
- **Right trigger** – teleport to the aimed location
- **Left trigger** – respawn the player at the starting position

To assist the user, **control instructions in Polish** are displayed on the sky background.  
These instructions are **always oriented toward the player**, ensuring constant readability during gameplay.

---

## Technical Features

- Gravity and collision detection
- Snap rotation to reduce VR discomfort
- WebXR compatibility for browser-based VR
- Scene structure prepared for further expansion and experimentation

---

## How to Run the Project

### Local Setup (Editing / Development)

1. Download and install **Godot Engine**
2. Clone the repository:
   git clone https://github.com/USERNAME/REPOSITORY_NAME.git
3. Open Godot Engine and import the project
4. You can now edit and run the project locally

---

### Running the Project in VR (WebXR)

To run the project in VR mode (with a headset or simulator):
1. Enable GitHub Pages for the repository:
   - Source: main branch
   - Folder: /docs
2. After enabling GitHub Pages:
   - A yellow indicator appears (build in progress)
   - When it turns green, the application is ready
3. Open the project in a browser via:
   https://USERNAME.github.io/REPOSITORY_NAME/

#### Without VR Headset
- Open the link in Google Chrome
- Install and enable a WebXR emulator extension
- Run the project in simulation mode

---


