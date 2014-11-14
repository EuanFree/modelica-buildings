within Buildings.Fluid.FMI;
partial block TwoPort
  "Container to export a thermofluid flow model with two ports as an FMU"
  replaceable package Medium =
      Modelica.Media.Interfaces.PartialMedium "Medium in the component"
      annotation (choicesAllMatching = true);

  parameter Boolean allowFlowReversal = true
    "= true to allow flow reversal, false restricts to design direction (inlet -> outlet)"
    annotation(Dialog(tab="Assumptions"), Evaluate=true);

  Interfaces.Inlet inlet(
    redeclare final package Medium = Medium,
    final allowFlowReversal=allowFlowReversal) "Fluid inlet"
    annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));

  Interfaces.Outlet outlet(
    redeclare final package Medium = Medium,
    final allowFlowReversal=allowFlowReversal) "Fluid outlet"
                   annotation (Placement(transformation(extent={{100,-10},{120,
            10}}), iconTransformation(extent={{100,-10},{120,10}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {100,100}}), graphics={Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Solid,
          fillColor={255,255,255}),
            Text(
          extent={{-151,147},{149,107}},
          lineColor={0,0,255},
          fillPattern=FillPattern.HorizontalCylinder,
          fillColor={0,127,255},
          textString="%name")}), Diagram(coordinateSystem(preserveAspectRatio=false,
                   extent={{-100,-100},{100,100}}), graphics),
    Documentation(info="<html>
<p>
Partial model that can be used to export thermofluid flow models as an FMU.
This model only declares the inlet and outlet ports, the medium and
whether flow reversal is allowed.
</p>
<p>
See
<a href=\modelica://Buildings.Fluid.FMI.Examples.FMUs.ResistanceVolume\">
Buildings.Fluid.FMI.Examples.FMUs.ResistanceVolume</a>
for a block that extends this partial block.
</p>
</html>", revisions="<html>
<ul>
<li>
November 8, 2014, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end TwoPort;