package;

import View;
import Model;


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
		
		return result;
	}
	
	public function button_click(name:String)
	{
		view.message(name, 'info');
	}
	
}
