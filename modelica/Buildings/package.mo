package Buildings "Library with models for building energy and control systems"
annotation (preferedView="info", uses(Modelica(version="2.2.1"), Modelica_Fluid(version="1.0 Beta 2")),
  Documentation(info="<html>
<h3><font color=\"#008000\" size=5>Users Guide of the Modelica Buildings Library</font></h3>
<p>
Package <b>Buildings</b> is a free package
for modeling building HVAC systems. 
It provides partial models and model
components for modeling thermal building systems such as heating, ventilation and 
air-conditioning systems. 
Many models are based on models from the package
<a href=\"Modelica://Modelica_Fluid\">Modelica_Fluid</a> and use
the same ports to ensure compatibility with models from that library.
</p><p>
The web page for this library is
<a href=\"https://gaia.lbl.gov/bir\">https://gaia.lbl.gov/bir</a>. 
Contributions from different users to further advance this library are
welcomed.
Contributions may not only be in the form of model development, but also
through model use, model testing,
requirements definition or providing feedback regarding the model applicability
to solve specific problems.
</p>
</html>"));


package UsersGuide "Users Guide" 
  
  annotation (DocumentationClass=true, Documentation(info="<html>
<h3><font color=\"#008000\" size=5>Users Guide of the Modelica Buildings Library</font></h3>
<p>
Package <b>Buildings</b> is a free package
for modeling building HVAC systems. 
It provides partial models and model
components for modeling thermal building systems such as heating, ventilation and 
air-conditioning systems. 
Many models are based on models from the package
<a href=\"Modelica://Modelica_Fluid\">Modelica_Fluid</a> and use
the same ports to ensure compatibility with models from that library.
</p><p>
The web page that is dedicated to the development of this library is
<a href=\"https://gaia.lbl.gov/virBui\">https://gaia.lbl.gov/virBui</a>. 
We welcome contributions from different users to further advance this library, 
whether it is through collaborative model development, through model use and testing
or through requirements definition or by providing feedback regarding the model applicability
to solve specific problems.
</p>
</html>"));
  
  class Conventions "Conventions" 
    
    annotation (Documentation(info="<html>
<h3><font color=\"#008000\" size=5>Conventions</font></h3>

<p>
This library follows the conventions of the 
<a href=\"Modelica://Modelica.UsersGuide.Conventions\">Modelica Standard Library</a>.
</p>
</html>
"));
  end Conventions;
  
  package ReleaseNotes "Release notes" 
    
    annotation (Documentation(info="<html>
<h3><font color=\"#008000\" size=5>Release notes</font></h3>
<p>
This section summarizes the changes that have been performed
on the Buildings library
</p>
<ul>
<li> 
<a href=\"Modelica://Buildings.UsersGuide.ReleaseNotes.Version_0_3_0\">
Version 0.3.0 </a>(XXXXX, 2008)</li>
<li> 
<a href=\"Modelica://Buildings.UsersGuide.ReleaseNotes.Version_0_2_0\">
Version 0.2.0 </a>(June 17, 2008)</li>
<li> 
<a href=\"Modelica://Buildings.UsersGuide.ReleaseNotes.Version_0_1_0\">
Version 0.1.0 </a>(May 27, 2008)</li>
</ul>
</html>
"));
    
  class Version_0_3_0 "Version 0.3.0" 
      annotation (Documentation(info="<html>
<h3><font color=\"#008000\">Version 0.3.0</font></h3>
<p>
<ul>
<li>
The package <a href=\"Modelica:Buildings.Fluids.Sources\">Buildings.Fluids.Sources</a> has been added.
The package contains models for modeling species that
do not affect the medium balance of volumes. This can be used to track
for example carbon dioxide or other species that have a small concentration.
</li>
<li>
The package <a href=\"Modelica:Buildings.Fluids.Actuators.Motors\">Buildings.Fluids.Actuators.Motors</a> has been added.
The package contains a motor model for valves and dampers.
</li>
<li>
The package <a href=\"Modelica:Buildings.Media\">Buildings.Media</a> has been reorganized and
the new medium model 
<a href=\"Modelica:Buildings.Media.GasesPTDecoupled.MoistAir\">
Buildings.Media.GasesPTDecoupled.MoistAir</a>
has been added.
<br>
In addition, this package now contains a bug fix that is needed for Modelica 2.2.1 and 2.2.2.
The bugs are fixed by using a new
base class
<a href=\"Modelica:Buildings.Media.Interfaces.PartialSimpleIdealGasMedium\">
Buildings.Media.Interfaces.PartialSimpleIdealGasMedium</a>
 (that fixes the bugs) instead of
<a href=\"Modelica:Modelica.Media.Interfaces.PartialSimpleIdealGasMedium\">
Modelica.Media.Interfaces.PartialSimpleIdealGasMedium</a>.
In the original implementation, initial states of fluid volumes can be far away from
the steady-state value because of an inconsistent implementation of the the enthalpy
and internal energy.
When the <tt>Buildings</tt> library is upgraded to
to Modelica 3.0.0, it should be safe to remove this bug fix.
</li>
<li>
The package <a href=\"Modelica:Buildings.HeatExchangers\">Buildings.HeatExchangers</a> 
has been revised and several models have been renamed.
The heat exchanger models have been revised to allow computing the fluid volumes either
dynamically, or in steady-state.
</li>
<li>
The damper with exponential opening characteristic has been revised to allow control signals
over the whole range between <tt>0</tt> and <tt>1</tt>. This was in earlier versions restricted.
In the same model, a bug was fixed that caused the flow to be largest for <tt>y=0</tt>, i.e., when the damper is closed.
</li>
<li>
Additional models for psychrometric equations have been added. The new models contain equations
that convert dew point temperature and water vapor pressure, as well
as water vapor concentration and water vapor pressure.
</li>
<li>
A new mixing volume has been added that allows latent heat exchange with the volume.
This model can be used to model a volume of moist air with water vapor condensation 
inside the volume. The condensate is removed from the volume in its liquid phase.
</li>
</ul>
</p>
</html>
"));
  end Version_0_3_0;
    
  class Version_0_2_0 "Version 0.2.0" 
      annotation (Documentation(info="<html>
<h3><font color=\"#008000\">Version 0.2.0</font></h3>
<p>
New in this version are models for two and three way valves.
In addition, the <tt>Fluids</tt> package has been slightly revised.
The package <tt>Fluids.BaseClasses</tt> has been added because in
the previous version, partial models for fixed resistances 
where part of the <tt>Actuator</tt> package.
</p>
</html>
"));
  end Version_0_2_0;
    
  class Version_0_1_0 "Version 0.1.0" 
      annotation (Documentation(info="<html>
<h3><font color=\"#008000\">Version 0.1.0</font></h3>
<p>First release of the library.
</p>
<p>This version contains basic models for modeling building HVAC systems.
It also contains new medium models in the package
<a href=\"Modelica://Buildings.Media\">Buildings.Media</a>. These medium models
have simpler property functions than the ones from
<a href=\"Modelica://Modelica.Media\">Modelica.Media</a>. For example,
there is medium model with constant heat capacity which is often sufficiently 
accurate for building HVAC simulation, in contrast to the more detailed models
from <a href=\"Modelica://Modelica.Media\">Modelica.Media</a> that are valid in 
a larger temperature range, at the expense of introducing non-linearities due
to the medium properties.
</html>
"));
  end Version_0_1_0;
  end ReleaseNotes;
  
  class Contact "Contact" 
    
    annotation (Documentation(info="<html>
<h3><font color=\"#008000\" size=5>Contact</font></h3>
<dl>
<dt>The development of the Buildings package is organized by</dt>
<dd><a href=\"http://simulationresearch.lbl.gov/wetter\">Michael Wetter</a><br>
    Lawrence Berkeley National Laboratory (LBNL)<br>
    One Cyclotron Road<br> 
    Bldg. 90-3147<br>
    Berkeley, CA 94720<br>
    USA<br>
    email: <A HREF=\"mailto:MWetter@lbl.gov\">MWetter@lbl.gov</A><br></dd>
</dl>
<p>
</html>
"));
    
  end Contact;
  
  class License "License" 
    
    annotation (Documentation(info="<html>
<h3><font color=\"#008000\" size=5>Modelica License</font></h3>
<p>by Martin Otter -- last modified 2007-01-07 12:07 AM
</p><p>
Version 1.1 of June 30, 2000
</p>
<p>
Redistribution and use in source and binary forms, with or without modification are permitted, provided that the following conditions are met:
<ol><li>
   The author and copyright notices in the source files, these license conditions and the disclaimer below are (a) retained and (b) reproduced in the documentation provided with the distribution.
</li><li>
   Modifications of the original source files are allowed, provided that a prominent notice is inserted in each changed file and the accompanying documentation, stating how and when the file was modified, and provided that the conditions under (1) are met.
</li><li>
   It is not allowed to charge a fee for the original version or a modified version of the software, besides a reasonable fee for distribution and support. Distribution in aggregate with other (possibly commercial) programs as part of a larger (possibly commercial) software distribution is permitted, provided that it is not advertised as a product of your own.
</li></ol>

<h4><font color=\"#008000\">Disclaimer</font></h4>
<p>Wording in section 1 has been slightly modified and sections 2 and 3 have been added by the University of California.
<ol><li>
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
</li><li>
Neither the name of the University of California, Lawrence Berkeley National Laboratory, U.S. Dept. of Energy nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
</li><li>
You are under no obligation whatsoever to provide any bug fixes, patches, or upgrades to the features, functionality or performance of the source code (\"Enhancements\") to anyone; however, if you choose to make your Enhancements available either publicly, or directly to Lawrence Berkeley National Laboratory, without imposing a separate written license agreement for such Enhancements, then you hereby grant the following license: a  non-exclusive, royalty-free perpetual license to install, use, modify, prepare derivative works, incorporate into other computer software, distribute, and sublicense such enhancements or derivative works thereof, in binary and source code form.
</li></ol>
</p>
</html>
"));
    
  end License;
  
  class Copyright "Copyright" 
    
    annotation (Documentation(info="<html>
<h3><font color=\"#008000\" size=5>Copyright</font></h3>
<p>
Copyright (c) 2008, The Regents of the University of California, through Lawrence Berkeley National Laboratory (subject to receipt of any required approvals from the U.S. Dept. of Energy).  All rights reserved.
</p><p>
If you have questions about your rights to use or distribute this software, please contact Berkeley Lab's Technology Transfer Department at 
email: <A HREF=\"mailto:TTD@lbl.gov\">TTD@lbl.gov</A>
</p><p>
NOTICE.  This software was developed under partial funding from the U.S. Department of Energy.  As such, the U.S. Government has been granted for itself and others acting on its behalf a paid-up, nonexclusive, irrevocable, worldwide license in the Software to reproduce, prepare derivative works, and perform publicly and display publicly.  Beginning five (5) years after the date permission to assert copyright is obtained from the U.S. Department of Energy, and subject to any subsequent five (5) year renewals, the U.S. Government is granted for itself and others acting on its behalf a paid-up, nonexclusive, irrevocable, worldwide license in the Software to reproduce, prepare derivative works, distribute copies to the public, perform publicly and display publicly, and to permit others to do so.
</p>
</html>
"));
    
  end Copyright;
  
end UsersGuide;
end Buildings;
