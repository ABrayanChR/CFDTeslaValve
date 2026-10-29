# CFD Analysis and Simulation of a Tesla Valve

This project contains the hydrodynamic study and Computational Fluid Dynamics (CFD) simulation of a 3D Tesla valve. The main objective is to visualize the streamlines and evaluate the valve's "diodicity" when exposed to different fluids (incompressible water and compressible air) at varying velocities.

## Project Features
* **Geometry and Meshing:** Uses OpenCASCADE for the base geometry (`.step`) and GMSH to generate the detailed 3D mesh.
* **Navier-Stokes Resolution:** The numerical simulation solves the Navier-Stokes equations for both incompressible and compressible fluids.
* **Theoretical Analysis:** Calculation of diodicity (the ratio between reverse and forward pressure drops) and comparative analysis of Reynolds and Euler numbers.
* **Case Studies:** The experimental analysis includes water at $1~m/s$ and $2~m/s$, as well as air at $20~m/s$.

## File Structure
* `tesla_valve_2.step`: Original 3D CAD model.
* `tesla_valve_2.geo`: GMSH configuration script to assign physical volumes and surfaces (Inlet, Outlet, Walls).
* `tesla_valve_2.msh`: Final mesh file used in the solver.
* `Informe_Fluidos_2.pdf`: Complete document containing the results analysis, theoretical framework, and conclusions derived from the simulations.

## Results and Visualization

The valve's design allows smooth fluid flow in the forward direction. However, when the flow is reversed, the fluid is forced into lateral cavities, generating vortices and turbulent dissipation that drastically restrict the passage. The overall diodicity observed in these cases ranges between 3 and 5.

### Water at 1 m/s
* **Reverse Direction (Blocking):** Exhibits strong hydrodynamic resistance with a pressure drop of $5685~Pa$ and a diodicity of $5.20$.
![Reverse Velocity 1 m/s](velocidadinversa1ms_2.png)

* **Forward Direction:** Stable flow with minimal energy dissipation and a pressure drop of only $1094~Pa$.
![Forward Velocity 1 m/s](velocidaddirecta1ms_2.png)

### Water at 2 m/s
* **Forward Direction:** The higher initial velocity increases wall friction and generates higher vorticity.
* **Diodicity:** This increased friction causes kinetic energy dissipation in the forward flow, slightly reducing the overall diodicity to $4.76$.
![Forward Velocity 2 m/s](velocidaddirecta2ms_2.png)

### Air at 20 m/s
* **Compressibility and Density Effects:** Due to its lower density, air requires much higher initial velocities ($20~m/s$) to reach a high Reynolds number.
* **Diodicity:** Being a compressible fluid, air dampens part of the restrictive effect of the lateral cavities, which lowers the diodicity to $3.63$.
![Forward Velocity Air 20 m/s](velocidaddirectaaire20ms_2.jpg)
