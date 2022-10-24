package;

import haxe.ui.containers.Box;
import haxe.ui.containers.VBox;
import haxe.ui.containers.Grid;
import haxe.ui.containers.TabView;
import haxe.ui.core.Component;

import haxe.ui.components.Label;
import haxe.ui.components.Button;

import haxe.ui.containers.dialogs.Dialogs.messageBox;

import Controller;
import MyScrollView;
import MyButton;


class View 
{
	
	var controller: Controller;
	
	var main_container:VBox;
	var tab_view:TabView;

	public function new(controller) 
	{
		this.controller = controller;	
	}
	
	public function start()
	{
		// starts app view
		main_container = new VBox();
		return main_container;
	}
	
	public function tabs(count:Int)
	{
		// builds tab_view in main app component
		tab_view = new TabView();
		var box:Box;
		main_container.addComponent(tab_view);
		
		for (i in 0...count) {
			var num = i + 1;
			box = new Box();
			box.id = 'box$i';
			box.text = 'Page $num';
			box.icon = "haxeui-core/styles/default/haxeui_tiny.png";
			tab_view.addComponent(box);
		}
		
	}
	
	public function button_grid(pages:Array<Int>, columns:Int)
	{
		// adds button grids to given tabs
		for (i in pages){
			var grid_container = scroll_grid(i, columns);
			
			for (j in 0...columns) {
				for (g in 0...columns){
					var obj:CreateSomething<Button> = CreateSomething.create();
					grid_container.addComponent(obj.new_button('$i-$j-$g', "haxeui-core/styles/default/haxeui_small.png", controller));
					
				}
			}
			grid_container.addComponent(label('\nButton page $i.', -1));
		}
	}
	
	public function scroll_grid(tab_num:Int, columns:Int)
	{
		// returns new scroll_grid as component
		// adds it to given tab
		var grid = new Grid();
		var scrollview = new MyScrollView();
		
		tab_view.getComponentAt(tab_num).addComponent(scrollview);
		grid.columns = columns;
		scrollview.addComponent(grid);
		return grid;
	}
	
	public function label(text:String, tab_num:Int)
	{
		// creates label and returns it
		// adds it to given tab, if tab_num is not -1
		var label = new Label();
		label.text = text;
		if (tab_num != -1)
		{
			tab_view.getComponentAt(tab_num).addComponent(label);
		}
		return label;
	}
	
	public function button(name:String, icon:String, tab_num:Int)
	{
		// creates button and returns it
		// adds it to given tab, if tab_num is not -1
		var obj:CreateSomething<Button> = CreateSomething.create();
		if (tab_num != -1)
		{
			tab_view.getComponentAt(tab_num).addComponent(obj.new_button('$name', icon, controller));
		}
		return obj.new_button('$name', icon, controller);
	}
	
	public function message(message:String, type:String)
	{
		// calls messageBox to pop-up
		if (type == 'info')
		{
			messageBox(message, 'Info', 'info');
		}
	}
	
	public function add_component(component:Component, parent_component:Component)
	{
		// adds component to given parent component
		parent_component.addComponent(component);
	}
}
