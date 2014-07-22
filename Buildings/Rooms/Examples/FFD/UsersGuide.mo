within Buildings.Rooms.Examples.FFD;
package UsersGuide
  extends Modelica.Icons.Information;
  annotation (preferredView="info",
  Documentation(info="<html>
<h4>Introduction</h4>
<p>
For the introduction of coupled simulation and the detailed information
of <a href=\"modelica://Buildings.Rooms.CFD\">Buildings.Rooms.CFD</a>,
please refer to <a href=\"modelica://Buildings.Rooms.UsersGuide.CFD\">Buildings.Rooms.UsersGuide.CFD</a>.
For the step by step guide on performing the coupled simulation, please refer to <a href=\"modelica://Buildings.Rooms.Examples.FFD.Tutorial\">Buildings.Rooms.Examples.FFD.Tutorial</a>.
</p>
<h4>Files for the Coupled Simulation</h4>
<p>
The source code of the FFD program is located at <code>Buildings/Resources/src/FastFluidDynamics</code>.
</p>
<p>
To run the coupled simulation with FFD, the following files are needed and given in the library:
</p>
<ul>
<li>
dynamic linker files located at <code>Buildings/Resources/bin/</code>: 
<ul>
<li>
Windows: <code>FFD-DLL.dll</code>
</li>
<li>
Linux: <code>FFD-DLL.so</code>
</li>
</ul>
</li>
<li>
FFD input file for simulation parameters *.ffd located at <code>Buildings/Resources/Data/Rooms/FFD/</code>
</li>
<li>
Mesh files *.cfd  and obstacles files *.dat generated by <code>SCI_FFD</code> located at <code>Buildings/Resources/Data/Rooms/FFD/</code>. 
Note that <code>SCI_FFD.exe</code> is located at <code>Buildings/Resources/bin/</code>
</li>
</ul>
<h4>Install GLUT</h4>
<p>
The FFD uses GLUT for visualization and the glut library is needed to compile the FFD code. 
However, current version does not support the visualization feature for the coupled simulation.  
</p>
<ul>
<li>
In Windows: 
<ol>
<li>
go to <code>Buildings/Resources/src/FastFluidDynamics/</code>
</li>
<li>
right-click <code>InstallGlut.bat</code> 
</li>
<li>
run as administrator
</li>
</ol>
</li>
<li>
In Linux (Ubuntu): 
<ol>
<li>
open console 
</li>
<li>
type <code> sudo apt-cache search freeGLUT</code> to search latest version
<P>
As of 7/9/2014, the following information will be shown in the console:</p>
<pre>
freeglut3 - OpenGL Utility Toolkit
freeglut3-dbg - OpenGL Utility Toolkit debugging information
freeglut3-dev - OpenGL Utility Toolkit development files
</pre>
This indicates the newest version is <code>freeglut3</code>.  
</li>
<li>
Install the developer version of the newest freeGLUT. 
If the Modelica environment is 32-bit version, one should install the 32-bit version of GLUT as follows: 
<pre>
sudo apt-get install freeglut3-dev:i386
</pre>
</li>
</ol>
If <code>apt-get</code> has problems with dependencies, try to use the Synaptic package manager, 
which seems to have less problems on Ubuntu 12.04 LTS.
</li>
</ul>
<h4>Build Dynamic Linker</h4>
<p>
The FFD program can be compiled into a dynamic linker using Microsoft Visual Studio Express in Windows and GCC in Linux. 
<ul>
<li>
In Windows: 
<ol>
<li>
go to <code>Buildings/Resources/src/FastFluidDynamics/</code>
</li>
<li>
double click <code>compile.bat</code>
</li>
</ol>
</li>
<li>
In Linux: 
<ol>
<li>
open console
</li>
<li>
change directory to <code>Buildings/Resources/src/FastFluidDynamics/</code>
</li>
<li>
type <code>make all</code>
</li>
</ol>
</li>
</ul>
</html>"));
end UsersGuide;
