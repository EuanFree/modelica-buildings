within Buildings.Fluid.HeatExchangers.DXCoils.BaseClasses;
partial block PartialCoilInterface "A partial block for air property inputs"
  extends Modelica.Blocks.Interfaces.BlockIcon;
  extends
    Buildings.Fluid.HeatExchangers.DXCoils.BaseClasses.EssentialParameters;
  Modelica.Blocks.Interfaces.BooleanInput on
    "Set to true to enable compressor, or false to disable compressor"
    annotation (Placement(transformation(extent={{-120,90},{-100,110}})));
  Modelica.Blocks.Interfaces.RealInput speRat "Speed ratio"
    annotation (Placement(transformation(extent={{-120,66},{-100,86}})));
  Modelica.Blocks.Interfaces.RealInput m_flow "Air mass flow rate"
     annotation (Placement(transformation(extent={{-120,14},{-100,34}})));
  Modelica.Blocks.Interfaces.RealInput TIn
    "Temperature of air entering the cooling coil"
     annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
  Modelica.Blocks.Interfaces.RealInput XIn "Inlet air mass fraction"
    annotation (Placement(transformation(extent={{-120,-60},{-100,-40}})));
  Modelica.Blocks.Interfaces.RealInput p "Pressure at inlet of coil"
    annotation (Placement(transformation(extent={{-120,-34},{-100,-14}})));
  Modelica.Blocks.Interfaces.RealInput hIn
    "Specific enthalpy of air entering the coil"
            annotation (Placement(transformation(extent={{-120,-87},{-100,-67}})));
  Modelica.Blocks.Interfaces.RealInput TConIn(
    unit="K",
    displayUnit="degC")
    "Outside air dry bulb temperature for an air cooled condenser or wetbulb temperature for an evaporative cooled condenser"
   annotation (Placement(transformation(extent={{-120,40},{-100,60}},  rotation=0)));
  Modelica.Blocks.Interfaces.RealOutput EIR "Energy Input Ratio"
     annotation (Placement(transformation(extent={{100,70},{120,90}})));
  Modelica.Blocks.Interfaces.RealOutput Q_flow(
    max=0,
    unit="W") "Total cooling capacity at dry surface condition"
     annotation (Placement(transformation(extent={{100,30},{120,50}})));

  Modelica.Blocks.Interfaces.RealOutput SHR(
    min=0,
    max=1.0)
    "Sensible Heat Ratio: Ratio of sensible heat load to total heat load"
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  Modelica.Blocks.Interfaces.RealOutput mWat_flow(
    quantity="MassFlowRate",
    unit="kg/s") "Mass flow rate of water condensed at cooling coil"
    annotation (Placement(transformation(extent={{100,-90},{120,-70}})));
  annotation (Diagram(graphics), Documentation(info="<html>
<p>
This partial block provides basic inputs and outputs for  
<a href=\"modelica://Buildings.Fluid.HeatExchangers.DXCoils.BaseClasses.CoilCondition\"> 
Buildings.Fluid.HeatExchangers.DXCoils.BaseClasses.CoilCondition</a> and
<a href=\"modelica://Buildings.Fluid.HeatExchangers.DXCoils.BaseClasses.DXCooling\"> 
Buildings.Fluid.HeatExchangers.DXCoils.BaseClasses.DXCooling</a>.
</p>
</html>",
revisions="<html>
<ul>
<li>
August 1, 2012 by Kaustubh Phalak:<br>
First implementation. 
</li>
</ul>

</html>"));
end PartialCoilInterface;