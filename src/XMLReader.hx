package;

import sys.io.File.getContent;
import haxe.xml.Access;

import haxe.ui.core.Component;

import Controller;


class XMLReader
{
	public function new() 
	{
		
	}
	
	public function read(controller:Controller, component:Component, xml_file:String)
	{
		// reads xml file
		var lines = getContent(xml_file);
		// parses xml into labels and buttons
		// sends then to controller to handle build
		var xml = Xml.parse(lines);
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