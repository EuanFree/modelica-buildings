within Buildings.Fluid.HeatExchangers.Examples;
model WetCoilDiscretizedPerfectGases
  "Model that demonstrates use of a finite volume model of a heat exchanger with condensation"
  extends
    Buildings.Fluid.HeatExchangers.Examples.BaseClasses.WetCoilDiscretized(
   redeclare package Medium2 =
        Buildings.Media.PerfectGases.MoistAirUnsaturated);
  extends Modelica.Icons.Example;
  annotation (
experiment(StopTime=360),
__Dymola_Commands(file="modelica://Buildings/Resources/Scripts/Dymola/Fluid/HeatExchangers/Examples/WetCoilDiscretizedPerfectGases.mos"
        "Simulate and plot"),
    Documentation(info="<html>
<p>
This model is used to test the initialization of the coil model.
There are three instances of the coil model, each having different settings
for the initial conditions.
Each of the coil uses for the medium
<a href=\"modelica://Buildings.Media.PerfectGases.MoistAirUnsaturated\">
Buildings.Media.PerfectGases.MoistAirUnsaturated</a>.
</p>
</html>", revisions="<html>
<ul>
<li>
June 28, 2014, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end WetCoilDiscretizedPerfectGases;
