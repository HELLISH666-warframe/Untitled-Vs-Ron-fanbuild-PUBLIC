import funkin.options.OptionsScreen;
import funkin.options.OptionsTree;
import funkin.options.OptionsMenu;
import funkin.options.TreeMenu;
var crt:CustomShader = new CustomShader("fake CRT");
function postCreate() {
	CoolUtil.loadAnimatedGraphic(members[0], Paths.image("menus/freeplay/mainbgAnimate"));
	members[0].scale.set(2,2);
	members[0].updateHitbox();
	members[0].screenCenter();
	members[0].color = FlxColor.YELLOW;
	if (FlxG.save.data.crt) {FlxG.camera.addShader(crt);}
}
function update(elapsed:Float) {if ((controls.BACK)&&(OptionsScreen.parent == 0))
	if (FlxG.save.data.legacy) {FlxG.switchState(new ModState('2.5/MainMenuState'));}
	else {FlxG.switchState(new ModState('DesktopState'));}
}

function exit(){if (FlxG.save.data.legacy) {FlxG.switchState(new ModState('2.5/MainMenuState'));}
	else {FlxG.switchState(new ModState('DesktopState'));}}