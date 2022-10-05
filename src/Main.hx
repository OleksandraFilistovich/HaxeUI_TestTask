package;

import openfl.display.Sprite;

import haxe.ui.HaxeUIApp;
import haxe.ui.core.Component;
import haxe.ui.containers.HBox;
import haxe.ui.components.Button;
import haxe.ui.ComponentBuilder.fromFile;
import haxe.ui.containers.dialogs.Dialogs.messageBox;


/**
 * ...
 * @author OleksandraFilistovich
 */


class Main extends Sprite 
{
	public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
			
			//load elements from xml
			var mainView:Component = fromFile("assets/main-view.xml");
			app.addComponent(mainView);
			
			//connect buttons and add events on click
			var button11 = mainView.findComponent("button11", Button);
			button11.onClick = function(e) {messageBox('Button 1-1!', 'Info', 'info'); };
			var button12 = mainView.findComponent("button12", Button);
			button12.onClick = function(e) {messageBox('Button 1-2!', 'Info', 'info'); };
			var button13 = mainView.findComponent("button13", Button);
			button13.onClick = function(e) {messageBox('Button 1-3!', 'Info', 'info'); };
			var button14 = mainView.findComponent("button14", Button);
			button14.onClick = function(e) {messageBox('Button 1-4!', 'Info', 'info'); };
			
			var button21 = mainView.findComponent("button21", Button);
			button21.onClick = function(e) {messageBox('Button 2-1!', 'Info', 'info'); };
			var button22 = mainView.findComponent("button22", Button);
			button22.onClick = function(e) {messageBox('Button 2-2!', 'Info', 'info'); };
			var button23 = mainView.findComponent("button23", Button);
			button23.onClick = function(e) {messageBox('Button 2-3!', 'Info', 'info'); };
			var button24 = mainView.findComponent("button24", Button);
			button24.onClick = function(e) {messageBox('Button 2-4!', 'Info', 'info'); };
			
			var button31 = mainView.findComponent("button31", Button);
			button31.onClick = function(e) {messageBox('Button 3-1!', 'Info', 'info'); };
			var button32 = mainView.findComponent("button32", Button);
			button32.onClick = function(e) {messageBox('Button 3-2!', 'Info', 'info'); };
			var button33 = mainView.findComponent("button33", Button);
			button33.onClick = function(e) {messageBox('Button 3-3!', 'Info', 'info'); };
			var button34 = mainView.findComponent("button34", Button);
			button34.onClick = function(e) {messageBox('Button 3-4!', 'Info', 'info'); };
			
			var button41 = mainView.findComponent("button41", Button);
			button41.onClick = function(e) {messageBox('Button 4-1!', 'Info', 'info'); };
			var button42 = mainView.findComponent("button42", Button);
			button42.onClick = function(e) {messageBox('Button 4-2!', 'Info', 'info'); };
			var button43 = mainView.findComponent("button43", Button);
			button43.onClick = function(e) {messageBox('Button 4-3!', 'Info', 'info'); };
			var button44 = mainView.findComponent("button44", Button);
			button44.onClick = function(e) {messageBox('Button 4-4!', 'Info', 'info'); };

			app.start();
		});
	}
}