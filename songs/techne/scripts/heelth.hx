var tecBarWhite;
var tecBar;
var tecBarBlack;
var tecTxt;
var ting:FlxTimer = new FlxTimer();
function postCreate() {
    remove(healthBarBG);
    remove(healthBar);
    insert(0,healthBar);
    healthBar.screenCenter(FlxAxes.X);
	healthBar.setGraphicSize(600, 40);
    tecBarWhite = new FlxSprite(500,540).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/coolHPBars/tecBarWhite'));
	tecBarWhite.scrollFactor.set(0,0);
	tecBarWhite.camera = camHUD;
	tecBarWhite.scale.set(0.6,0.6);
	tecBarWhite.screenCenter(FlxAxes.X);
	tecBarWhite.alpha=0;
	insert(members.indexOf(healthBar)-1, tecBarWhite); 

    conBar = new FlxSprite(500,540).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/coolHPBars/conallBar'));
	conBar.scrollFactor.set(0,0);
	conBar.camera = camHUD;
	conBar.scale.set(0.65,0.65);
	conBar.screenCenter(FlxAxes.X);
	insert(members.indexOf(healthBar)+1, conBar); 

    conTxt = new FlxSprite(500,540).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/coolHPBars/conallText'));
	conTxt.scrollFactor.set(0,0);
	conTxt.camera = camHUD;
	conTxt.scale.set(0.5,0.5);
	conTxt.screenCenter(FlxAxes.X);
    insert(members.indexOf(conBar)+1, conTxt); 

    tecBar = new FlxSprite(500,540).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/coolHPBars/techneBar'));
	tecBar.scrollFactor.set(0,0);
	tecBar.camera = camHUD;
	tecBar.scale.set(0.6,0.6);
	tecBar.screenCenter(FlxAxes.X);
	tecBar.alpha=0;
    insert(members.indexOf(conTxt)-1, tecBar); 

    tecBarBlack = new FlxSprite(500,540).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/coolHPBars/tecBarBlack'));
	tecBarBlack.scrollFactor.set(0,0);
	tecBarBlack.camera = camHUD;
	tecBarBlack.scale.set(0.6,0.6);
	tecBarBlack.screenCenter(FlxAxes.X);
	tecBarBlack.alpha=0;
    insert(members.indexOf(tecBar)-1, tecBarBlack); 

    tecTxt = new FlxSprite(500,540).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/coolHPBars/techneText'));
	tecTxt.scrollFactor.set(0,0);
	tecTxt.camera = camHUD;
	tecTxt.scale.set(0.55,0.55);
	tecTxt.screenCenter(FlxAxes.X);
	tecTxt.alpha=0;
    insert(members.indexOf(tecBar)+1, tecTxt); 
}
function beatHit(curBeat:Int) {
    if (curBeat == 36){
		FlxTween.tween(healthBar, {alpha: 0}, 1, {ease: FlxEase.quadIn});
		FlxTween.tween(conBar, {alpha: 0}, 1, {ease: FlxEase.quadIn});
		FlxTween.tween(conTxt, {alpha: 0}, 1, {ease: FlxEase.quadIn});
		FlxTween.tween(tecBarWhite, {alpha: 1}, 1, {ease: FlxEase.quadIn});
	}
	if (curBeat == 40){
		FlxTween.tween(healthBar, {alpha: 1}, 0.25, {ease: FlxEase.quadOut});
		FlxTween.tween(tecBarWhite, {alpha: 1}, 0.25, {ease: FlxEase.quadOut});
		FlxTween.tween(conBar, {alpha: 0}, 0.25, {ease: FlxEase.quadOut});
		FlxTween.tween(tecBar, {alpha: 1}, 0.25, {ease: FlxEase.quadOut});
		FlxTween.tween(tecTxt, {alpha: 1}, 0.25, {ease: FlxEase.quadOut});
		FlxTween.tween(tecBarBlack, {alpha: 1}, 0.25, {ease: FlxEase.quadOut});
	}
    if (curBeat == 316){
		tecBar.alpha=0;
		tecTxt.alpha=0;
		tecBarBlack.alpha=0;
		healthBar.alpha=0;
	}
	if (curBeat == 448){
		tecBar.alpha=1;
		tecTxt.alpha=1;
		tecBarBlack.alpha=1;
		healthBar.alpha=1;
	}
    if (curBeat == 548){
		FlxTween.tween(tecTxt, {y:300}, 3, {ease: FlxEase.quadOut});
		tecBar.alpha=0;
		tecBarBlack.alpha=0;
		healthBar.alpha=0;
	}
	if (curBeat == 564){
		FlxTween.tween(tecTxt, {'scale.x': 0.0001,'scale.y':0.0001}, 0.5);
	}
}
function stepHit(curStep:Int) {
    if ((curBeat >= 40) && (curBeat < 548)){
		if (curStep % 16 == 0){
			ting.start(0.05, onTimerCompleted('ting'));
			FlxTween.tween(tecBarBlack, {'scale.x': 0.65,'scale.y':0.65}, 0.05);
			FlxTween.tween(tecTxt, {'scale.x': 0.7,'scale.y':0.7}, 0.05);
        }
        if (curStep % 16 == 4){
			ting.start(0.05, onTimerCompleted('ting'));
			FlxTween.tween(tecBarBlack, {'scale.x': 0.65,'scale.y':0.65}, 0.05);
			FlxTween.tween(tecTxt, {'scale.x': 0.7,'scale.y':0.7}, 0.05);
		}
        if (curStep % 16 == 8){
			ting.start(0.05, onTimerCompleted('ting'));
            FlxTween.tween(tecBarBlack, {'scale.x': 0.65,'scale.y':0.65}, 0.05);
			FlxTween.tween(tecTxt, {'scale.x': 0.7,'scale.y':0.7}, 0.05);
		}
        if (curStep % 16 == 11){
			ting.start(0.05, onTimerCompleted('ting'));
			FlxTween.tween(tecBarBlack, {'scale.x': 0.65,'scale.y':0.65}, 0.05);
			FlxTween.tween(tecTxt, {'scale.x': 0.7,'scale.y':0.7}, 0.05);
		}
        if (curStep % 16 == 14){
			ting.start(0.05, onTimerCompleted('ting'));
			FlxTween.tween(tecBarBlack, {'scale.x': 0.65,'scale.y':0.65}, 0.05);
			FlxTween.tween(tecTxt, {'scale.x': 0.7,'scale.y':0.7}, 0.05);
		}
	}
}
function onTimerCompleted(tag:String){
    switch(tag){
        case'ting':
        FlxTween.tween(tecBarBlack, {'scale.x': 0.6,'scale.y':0.6}, 0.4);
		FlxTween.tween(tecTxt, {'scale.x': 0.6,'scale.y':0.55}, 0.4);
    }
}