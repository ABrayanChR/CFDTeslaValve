SetFactory("OpenCASCADE");
Merge "tesla_valve.step";
//+
Coherence;
//+
Physical Surface("Inlet", 1) = {2};
//+
Physical Surface("Outlet", 2) = {5};
//+
Physical Surface("Walls", 3) = {12, 13, 1, 15, 14, 7, 17, 9, 6, 11, 4, 10, 8, 3, 16};
//+
Physical Volume("Fluid", 1) = {1};
