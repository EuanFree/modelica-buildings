within Buildings.Electrical.AC.ThreePhasesUnbalanced.Sources;
model WindTurbine_N "Simple wind turbine source with neutral cable"
  extends BaseClasses.UnbalancedWindTurbine(
  redeclare Buildings.Electrical.AC.OnePhase.Sources.WindTurbine wt_phase1,
  redeclare Buildings.Electrical.AC.OnePhase.Sources.WindTurbine wt_phase2,
  redeclare Buildings.Electrical.AC.OnePhase.Sources.WindTurbine wt_phase3);
  annotation (
  defaultComponentName="winTur",
 Documentation(revisions="<html>
<ul>
<li>
August 27, 2014, by Marco Bonvini:<br/>
Revised documentation.
</li>
</ul>
</html>", info="<html>
<p>
Simple wind turbine model for three phases unbalanced systems
with neutral cable connection.
</p>
<p>
For more information see
<a href=\"modelica://Buildings.Electrical.AC.OnePhase.Sources.WindTurbine\">
Buildings.Electrical.AC.OnePhase.Sources.WindTurbine</a>, and
<a href=\"modelica://Buildings.Electrical.AC.ThreePhasesUnbalanced.Sources.BaseClasses.UnbalancedWindTurbine_N\">
Buildings.Electrical.AC.ThreePhasesUnbalanced.Sources.BaseClasses.UnbalancedWindTurbine_N</a>.
</p>
</html>"));
end WindTurbine_N;