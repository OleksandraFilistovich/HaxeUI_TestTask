package;


import haxe.ui.components.Button;

import Controller;


class CreateSomething<T> {
	// factory method
	public static function create<T>():CreateSomething<T> {
		return new CreateSomething<T>();
	}
  
	public var value:T;
  
	// private constructor
	private function new () {}
	
	// create button
	public function new_button(index:String, controller:Controller):Button{
		
		var button = new Button();
		button.text = 'Button $index';
		button.id = index;
		button.icon = "haxeui-core/styles/default/haxeui_small.png";
		button.iconPosition = "bottom";
		button.onClick = function(e) {controller.button_click('Button $index'); };
		
		return button;
	}
}
