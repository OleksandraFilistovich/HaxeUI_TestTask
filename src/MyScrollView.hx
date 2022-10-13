package;

import haxe.ui.containers.ScrollView;


class MyScrollView extends ScrollView {
	
	// Class for fast creation scrollView with custom parameters.
    public function new() {
		super();
		contentHeight = 500;
		contentWidth = 500;
	}
	
}
