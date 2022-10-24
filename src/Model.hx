package;


class Model 
{
	public var tab_count:Int;
	public var columns_count:Int;
	public var button_tabs:Array<Int>;
	public var xml_tabs:Int;

	public function new(tab_count:Int = 4, columns_count:Int = 4)
	{
		this.tab_count = tab_count;
		this.columns_count = columns_count;
	
		this.button_tabs = [for (i in 0...(tab_count - 1)) i];
		this.xml_tabs = tab_count - 1;
	}
}
