package;

import Controller;


class View 
{
	var controller:Controller;
	
	public function new(controller) 
	{
		this.controller = controller;
		trace('in view init');
	}
	
}