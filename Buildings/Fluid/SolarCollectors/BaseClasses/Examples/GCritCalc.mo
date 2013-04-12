within Buildings.Fluid.SolarCollectors.BaseClasses.Examples;
model GCritCalc "Example showing the use of GCritCalc"
  import Buildings;
  extends Modelica.Icons.Example;
  Buildings.Fluid.SolarCollectors.BaseClasses.GCritCalc gCritCalc(
                                                                 slope=-3.764,
      y_intercept=0.602)
    annotation (Placement(transformation(extent={{-12,0},{8,20}})));
  Modelica.Blocks.Sources.Sine TEnv(
    amplitude=10,
    freqHz=0.1,
    offset=10)
    annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
  Modelica.Blocks.Sources.Sine TIn(
    amplitude=10,
    freqHz=0.01,
    offset=30)
    annotation (Placement(transformation(extent={{-80,-20},{-60,0}})));
equation
  connect(TEnv.y, gCritCalc.TEnv) annotation (Line(
      points={{-59,30},{-40,30},{-40,16},{-14,16}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(TIn.y, gCritCalc.TIn) annotation (Line(
      points={{-59,-10},{-40,-10},{-40,4},{-14,4}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (Diagram(graphics),
  Documentation(info="<html>
  <p>
  This model provides an example of how to use the GCritCalc model.<br>
  </p>
  </html>",
  revisions="<html>
  <ul>
  <li>
  Mar 27, 2013 by Peter Grant:<br>
  First implementation
  </li>
  </ul>
  </html>"),
    Commands(file=
          "Resources/Scripts/Dymola/Fluid/SolarCollector/BaseClasses/Examples/GCritCalc.mos"
        "Simulate and Plot"));
end GCritCalc;