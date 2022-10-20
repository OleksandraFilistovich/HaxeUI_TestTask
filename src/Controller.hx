package;

import Model;
import View;


class Controller 
{
	var model:Model;
	var view:View;

	public function new() 
	{
		this.model = new Model();
		this.view = new View(this);
		//trace('in controller init');
	}
	
}