package;
import flixel.*;
class WarningState extends MusicBeatState
{

	public function new() 
	{
		super();
	}
	override function create() 
	{
		super.create();
		var bg:FlxSprite = new FlxSprite();
		bg.loadGraphic(Paths.image("startup"));
		add(bg);
		bg.screenCenter();
	}
	override function update(elapsed:Float) 
	{
		super.update(elapsed);
		#if mobile
        var jusTouched:Bool = false;

        for (touch in FlxG.touches.list)
          if (touch.justPressed)
            jusTouched = true;
        #end
		
		if (FlxG.keys.justPressed.ENTER #if mobile || jusTouched #end){
			FlxG.switchState(new MainMenuState());
		}
	}
}