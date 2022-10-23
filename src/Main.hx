package;

import openfl.display.Sprite;

import haxe.ui.HaxeUIApp;

import Controller;

/**
 * ...
 * @author OleksandraFilistovich
 */

 
 class Main extends Sprite
 {
    public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
			
			var controller = new Controller();
			var result = controller.main();
			
            app.addComponent(result);
			
            app.start();
        });
    }
}
