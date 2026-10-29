# CFD Analysis and Simulation of a Tesla Valve

This project contains the hydrodynamic study and Computational Fluid Dynamics (CFD) simulation of a 3D Tesla valve. The main objective is to visualize the streamlines and evaluate the valve's "diodicity" when exposed to different fluids (incompressible water and compressible air) at varying velocities.

## Project Features
* **Geometry and Meshing:** Uses OpenCASCADE for the base geometry (`.step`) and GMSH to generate the detailed 3D mesh.
* **Navier-Stokes Resolution:** The numerical simulation solves the Navier-Stokes equations for both incompressible and compressible fluids.
* **Theoretical Analysis:** Calculation of diodicity (the ratio between reverse and forward pressure drops) and comparative analysis of Reynolds and Euler numbers.
* **Case Studies:** The experimental analysis includes water at $1m/s$ and $2m/s$, as well as air at $20m/s$.

## File Structure
* `tesla_valve_2.step`: Original 3D CAD model.
* `tesla_valve_2.geo`: GMSH configuration script to assign physical volumes and surfaces (Inlet, Outlet, Walls).
* `tesla_valve_2.msh`: Final mesh file used in the solver.
* `Informe_Fluidos_2.pdf`: Complete document containing the results analysis, theoretical framework, and conclusions derived from the simulations.

## Results and Visualization

The valve's design allows smooth fluid flow in the forward direction. However, when the flow is reversed, the fluid is forced into lateral cavities, generating vortices and turbulent dissipation that drastically restrict the passage. The overall diodicity observed in these cases ranges between 3 and 5.

### Water at 1 m/s
* **Reverse Direction (Blocking):** Exhibits strong hydrodynamic resistance with a pressure drop of $5685~Pa$ and a diodicity of $5.20$.

<img width="1403" height="736" alt="velocidadinversa1ms" src="https://github.com/user-attachments/assets/83136c09-ea10-44ee-b5ad-12ef0da729e1" />


* **Forward Direction:** Stable flow with minimal energy dissipation and a pressure drop of only $1094~Pa$.

<img width="1392" height="724" alt="velocidaddirecta1ms" src="https://github.com/user-attachments/assets/ebb26ec6-a59f-4d1a-a5be-683b5714fca2" />


### Water at 2 m/s
* **Forward Direction:** The higher initial velocity increases wall friction and generates higher vorticity.
* **Diodicity:** This increased friction causes kinetic energy dissipation in the forward flow, slightly reducing the overall diodicity to $4.76$.
<img width="1373" height="738" alt="velocidaddirecta2ms" src="https://github.com/user-attachments/assets/49638463-f419-481c-8247-4d89fcccaba4" />

* **Reverse Direction (Blocking)**

<img width="1402" height="726" alt="velocidadinversa2ms" src="https://github.com/user-attachments/assets/5a722b62-7dc9-4d58-bb73-649f4ab11944" />

### Air at 20 m/s
* **Compressibility and Density Effects:** Due to its lower density, air requires much higher initial velocities ($20~m/s$) to reach a high Reynolds number.
* **Diodicity:** Being a compressible fluid, air dampens part of the restrictive effect of the lateral cavities, which lowers the diodicity to $3.63$.

<img width="1382" height="723" alt="velocidaddirectaaire20ms" src="https://github.com/user-attachments/assets/7d88eff5-d80b-4bf7-9004-78da2f7acff5" />

* **Reverse Direction (Blocking)**

<img width="1381" height="729" alt="presioninversa20msaire" src="https://github.com/user-attachments/assets/a3d14009-bc1f-4c04-9107-0efee0434418" />
