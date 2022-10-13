package;


import haxe.ui.components.Button;
import haxe.ui.containers.dialogs.Dialogs.messageBox;


class CreateSomething<T> {
	// factory method
	public static function create<T>():CreateSomething<T> {
		return new CreateSomething<T>();
	}
  
	public var value:T;
  
	// private constructor
	private function new () {}
	
	// create button
	public function new_button(index:String):Button{
		
		var button = new Button();
		button.text = 'Button $index';
		button.id = index;
		button.icon = "haxeui-core/styles/default/haxeui_small.png";
		button.iconPosition = "bottom";
		button.onClick = function(e) {messageBox('Button $index', 'Info', 'info'); };
		
		return button;
	}
}
