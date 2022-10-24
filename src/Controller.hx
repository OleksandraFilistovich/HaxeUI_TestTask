package;

import haxe.ui.core.Component;

import View;
import Model;
import XMLReader;


class Controller 
{
	var view:View;
	var model:Model;
	
	public function new() 
	{
		view = new View(this);
		model = new Model();
	}
	
	public function main()
	{
		// initialises app view
		var result = view.start();
		// adds tabs with button_grids
		view.tabs(model.tab_count);
		view.button_grid(model.button_tabs, model.columns_count);
		// adds tab build with xml instructions
		xml_component("xml/added-xml.xml");
		// returns whole view component
		return result;
	}
	
	public function button_click(name:String)
	{
		// calls messageBox to pop-up
		view.message(name, 'info');
	}
	
	private function xml_component(xml_file:String)
	{
		// creates component with builded xml instructions
		var xml = new XMLReader();
		var scroll = view.scroll_grid(model.xml_tabs, 1);
		xml.read(this, scroll, xml_file);
	}
	
	public function label_component(text:String, component:Component)
	{
		// creates label and adds it to given component
		var label = view.label(text, -1);
		view.add_component(label, component);
	}
	
	public function button_component(name:String, icon:String, component:Component)
	{
		// creates button and adds it to given component
		var button = view.button(name, icon, -1);
		view.add_component(button, component);
	}
	
}
