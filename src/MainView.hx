package ;


import haxe.ui.containers.Box;
import haxe.ui.containers.VBox;
import haxe.ui.containers.Grid;
import haxe.ui.containers.TabView;

import haxe.ui.components.Label;
import haxe.ui.components.Button;

import MyScrollView;
import MyButton;

import Controller;

class MainView extends VBox {
	
	var c = new Controller();
	
	// create mainView
    public function new() {
        super();
		
		// initialize 3 tabs
		var tabs = new TabView();
		addChild(tabs);
		
		var box1 = new Box();
		var box2 = new Box();
		var box3 = new Box();
		
		box1.text = "Page 1";
		box2.text = "Page 2";
		box3.text = "Page 3";
		
		box1.icon = box2.icon = box3.icon = "haxeui-core/styles/default/haxeui_tiny.png";
		
		tabs.addComponent(box1);
		tabs.addComponent(box2);
		tabs.addComponent(box3);
		
		// initialize scrollviews in tabs
		var scrollview1 = new MyScrollView();
		var scrollview2 = new MyScrollView();
		var scrollview3 = new MyScrollView();
		
		box1.addComponent(scrollview1);
		box2.addComponent(scrollview2);
		box3.addComponent(scrollview3);
		
		// make button grid for every tab
		var lab = new Label();
		lab.text = "Button grid";
		scrollview1.addComponent(lab);
		
		var grid1 = new Grid();
		var grid2 = new Grid();
		var grid3 = new Grid();
		
		grid1.columns = grid2.columns = grid3.columns = 4;
		scrollview1.addComponent(grid1);
		scrollview2.addComponent(grid2);
		scrollview3.addComponent(grid3);
		
		for (i in 0...4) {
			for (j in 0...4){
				var obj:CreateSomething<Button> = CreateSomething.create();
				
				grid1.addComponent(obj.new_button('0-$i-$j'));
				grid2.addComponent(obj.new_button('1-$i-$j'));
				grid3.addComponent(obj.new_button('2-$i-$j'));
			}
		}
    }
}
