function onCreate()
	-- background shit
	makeLuaSprite('sky', 'stages/shibuya/sky', -1225, -1005);
	setScrollFactor('sky', 0.7, 0.7);
	addLuaSprite('sky', false);

	makeLuaSprite('building', 'stages/shibuya/buildigs', -1525, -700);
	setScrollFactor('building', 0.8, 0.8);
	addLuaSprite('building', false);
	
	makeAnimatedLuaSprite('backbop', 'stages/shibuya/backbop', -460, -135);
	addAnimationByPrefix('backbop', 'idle', 'backbop', 24, false);
	setScrollFactor('backbop', 0.9, 1.6);
	addLuaSprite('backbop', false);
	
	makeLuaSprite('front', 'stages/shibuya/bgfront', -1155, -365);
	setScrollFactor('front', 1, 1);
	addLuaSprite('front', false);

	makeAnimatedLuaSprite('boppingfront', 'stages/shibuya/frontbop', -360, -55);
	addAnimationByPrefix('boppingfront', 'idle', 'frontbop', 24, true);
	setScrollFactor('boppingfront', 1, 1);
	addLuaSprite('boppingfront', false);
	
	if not lowQuality then
		makeLuaSprite("overlayAdd", "stages/shibuya/add", -1280, -1800)
		scaleObject("overlayAdd", 1.1, 1.1)
		setScrollFactor("overlayAdd", 0, 0)
		setBlendMode("overlayAdd", "add")
		addLuaSprite("overlayAdd", true)
		
		makeLuaSprite("overlayMultiply", "stages/shibuya/multiply", -1280, -1450)
		scaleObject("overlayMultiply", 1.1, 1.1)
		setScrollFactor("overlayMultiply", 0, 0)
		setBlendMode("overlayMultiply", "multiply")
		addLuaSprite("overlayMultiply", true)
	end

	-- close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

-- Gameplay interactions
function onBeatHit()
	-- ...
	objectPlayAnimation('boppingfront', 'idle', true);
	objectPlayAnimation('backbop', 'idle', true);
end