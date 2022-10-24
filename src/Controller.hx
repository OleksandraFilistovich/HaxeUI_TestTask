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
		var result = view.start();
		
		view.tabs(model.tab_count);
		view.button_grid(model.button_tabs, model.columns_count);
		
		xml_component();
		
		return result;
	}
	
	public function button_click(name:String)
	{
		view.message(name, 'info');
	}
	
	private function xml_component()
	{
		var xml = new XMLReader();
		var scroll = view.scroll_grid(model.xml_tabs, 1);
		xml.read(this, scroll);
	}
	
	public function label_component(text:String, component:Component)
	{
		var label = view.label(text, -1);
		view.add_component(label, component);
	}
	
	public function button_component(name:String, icon:String, component:Component)
	{
		var button = view.button(name, icon, -1);
		view.add_component(button, component);
	}
	
}
