package;

import openfl.display.Sprite;

import haxe.ui.HaxeUIApp;

import MainView;

/**
 * ...
 * @author OleksandraFilistovich
 */

 
 class Main extends Sprite
 {
    public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
            app.addComponent(new MainView());

            app.start();
        });
    }
}
