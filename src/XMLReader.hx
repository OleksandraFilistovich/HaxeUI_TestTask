package;

import haxe.xml.Access;

import haxe.ui.core.Component;

import Controller;


class XMLReader
{

	public function new() 
	{
		//var xml = Xml.parse("<vbox><label>Content for the tab loaded via XML.</label><label>Some test buttons:</label><button name='extra 1'><icon>haxeui-core/styles/default/haxeui_small.png</icon></button><button name='extra 2'><icon>haxeui-core/styles/default/haxeui_small.png</icon></button></vbox>");
	}
	
	public function read(controller:Controller, component:Component)
	{
		// parses xml into labels and buttons
		// sends then to controller to handle build
		var xml = Xml.parse("<vbox><label>Content for the tab loaded via XML.</label><label>Some test buttons:</label><button name='extra 1'><icon>haxeui-core/styles/default/haxeui_small.png</icon></button><button name='extra 2'><icon>haxeui-core/styles/default/haxeui_small.png</icon></button></vbox>");
		var vbox = new Access(xml.firstElement());
		
		for (element in vbox.elements) {
			if (element.name == 'label') {
				controller.label_component(element.innerData, component);
			} else if (element.name == 'button') {
				controller.button_component(element.att.name, element.node.icon.innerData, component);
			}
		}  
	}
}