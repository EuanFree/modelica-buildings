within Buildings.Utilities.IO.FLEXLAB;
model WriteToCalBay
  "Model calling a Python script to communicate with the CalBay adapter"
  extends Modelica.Icons.Example;
  extends Modelica.Icons.UnderConstruction;
  parameter Modelica.SIunits.Time samplePeriod = 1
    "Sample period for communication";

  Python27.WriteToCalBay  pyt(
    nDblWri=1,
    nStrWri=1,
    nDblRea=1,
    moduleName="flexlabpy.daq.query",
    functionName="writeData",
    strWri={"4F WattStopper.HS3--MchRm--Relay-3"},
    samplePeriod=1)
    annotation (Placement(transformation(extent={{18,2},{38,22}})));
  Modelica.Blocks.Sources.Constant const(k=0)
    annotation (Placement(transformation(extent={{-74,2},{-54,22}})));
equation
  connect(const.y, pyt.uR[1]) annotation (Line(
      points={{-53,12},{16,12}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (            Documentation(info="<html>
            <p>
            This example demonstrates how a Python script and model of a controller
            can be used to control experiments in the FLEXLAB test cells. It uses
            an instance of
            <a href=\"modelica://Buildings.Utilities.IO.Python27.Real_Real\">
            Buildings.Utilities.IO.Python27.Real_Real</a> to communicate with the
            CalBay adapter. The Python script is located at
            <a href=\"file://Buildings/Resources/Python-Sources/CalBayComm.py\">
            Buildings/Resources/Python-Sources/CalBayComm.py</a>. The script must be
            edited before it will effectively communicate with the CalBay adapter.
            The necessary changes include:
            </p>
            <ul>
            <li>The script currently does not have valid login or password credentials.
            The credentials will have to be replaced before communication with the
            CalBay adapter will succeed.</li>
            <li>To avoid accidental manipulation of controls, the script currently does
            not include effective commands. The desired commands must be added to the
            program before it will have any effect.</li>
            </ul>
            <p>
            More details describing the necessary changes to the script are provided in
            the documentation of the script itself.
            </p>
            <p>
            <b>Note:</b>
            This model is marked as under construction because the
            application programming interface for data exchange with the CalBay adaptor
            of FLEXLAB has not yet been finalized.
            The model works, however, with the CalBay infrastructure as of October 2013.
            </p>
            </html>",
            revisions = "<html>
            <ul>
            <li>
            April 30, 2014, by Michael Wetter:<br/>
            Updated time table for MSL 3.2.1.
            </li>
            <li>
            Sep 9, 2013 by Peter Grant:<br/>
            First implementation.
            </li>
            </ul>
            </html>"), Diagram(coordinateSystem(preserveAspectRatio=false,
          extent={{-100,-100},{100,100}}), graphics));
end WriteToCalBay;
