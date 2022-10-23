package;


import haxe.xml.Access;
import haxe.ui.containers.VBox;
import haxe.ui.components.Label;


class XMLReader
{

	public function new() 
	{
		//var xml = Xml.parse("<vbox><label>Content for the tab loaded via XML.</label><label>Some test buttons:</label><button name='Button 1'><icon>haxeui-core/styles/default/haxeui_small.png</icon></button><button name='Button 2'><icon>haxeui-core/styles/default/haxeui_small.png</icon></button></vbox>");
	}
	
	public function read()
	{
		var s = '';
		var xml = Xml.parse("<vbox><label>Content for the tab loaded via XML.</label><label>Some test buttons:</label><button name='Button 1'><icon>haxeui-core/styles/default/haxeui_small.png</icon></button><button name='Button 2'><icon>haxeui-core/styles/default/haxeui_small.png</icon></button></vbox>");
		var vbox = new Access(xml.firstElement());
		//if (access.has.age) trace( access.att.age );
		
		for (label in vbox.nodes.label) {
			trace(label.innerData);
			s += label.innerData + ' === ';
		}
		
		for (button in vbox.nodes.button) {
			trace(button.att.name, button.node.icon.innerData);
			s += button.att.name + ' ' + button.node.icon.innerData + ' === ';
		}
		return s;
	}
	
}