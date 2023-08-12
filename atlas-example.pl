use Atlas;

my $BODY = '
<fieldset>
 <input id="Name" xdh:onevent="Submit" value="Name"/>
 <input id="Input" xdh:onevent="Submit" value="World"/>
 <button xdh:onevent="Submit">Hello</button>
 <hr/>
 <fieldset>
  <output id="Output">Name displayed here!</output>
  <output id="Output2">Greetings displayed here!</output>
 </fieldset>
</fieldset>
';

sub acConnect {
 my ($hello, $dom) = @_;

 $dom->inner("", $BODY);
 $dom->focus("Input");
 $dom->focus("Name");

}

sub acSubmit {
 my ($hello, $dom) = @_;
 my $name = $dom->getValue("Input");
 my $userName = $dom->getValue("Name");

 
 $dom->begin("Output", "<div>Hello, $name!</div>");
 $dom->begin("Output2", "<div>Hello, $userName!</div>");

 $dom->setValue("Input", "");

 $dom->focus("Input");
 
}

my %CALLBACKS = (
 "" => \&acConnect,
 "Submit" => \&acSubmit
);

Atlas::launch(\%CALLBACKS);