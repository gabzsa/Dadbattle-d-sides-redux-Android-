local xx = 700;
local yy = 500;
local xx2 = 700;
local yy2 = 500;
local ofs = 25;
local followchars = true;
local del = 1;
local del2 = 1;


function onCreate()
	-- background shit
	makeLuaSprite('BG1', 'redux/week1/wall', -600, -300);
	setLuaSpriteScrollFactor('BG1', 1.0, 1.0);
	

	makeLuaSprite('BG2', 'redux/week1/floor', -650, 700);
	setLuaSpriteScrollFactor('BG2', 1.0, 1.0);


	makeLuaSprite('BG3', 'redux/week1/curtains', -600, -300);
	setLuaSpriteScrollFactor('BG3', 1.0, 1.0);


	makeLuaSprite('BG4', 'redux/week1/lights',  -400, -100);
	setLuaSpriteScrollFactor('BG4', 1.0, 1.0);



	makeLuaSprite('BG5', 'redux/week1/wall-dark', -600, -300);
	setLuaSpriteScrollFactor('BG5', 1.0, 1.0);
	

	makeAnimatedLuaSprite('BG6', 'redux/week1/floor-dark', -650, 650);
	setLuaSpriteScrollFactor('BG6', 1.0, 1.0);
	addAnimationByPrefix('BG6', 'idle', 'floor', 24, true);
	objectPlayAnimation('BG6', 'idle', true);


	makeLuaSprite('BG7', 'redux/week1/curtains-dark', -600, -300);
	setLuaSpriteScrollFactor('BG7', 1.0, 1.0);


	makeLuaSprite('BG8', 'redux/week1/lights-dark',  -400, -100);
	setLuaSpriteScrollFactor('BG8', 1.0, 1.0);


	makeLuaSprite('BG9', 'redux/week1/lightBeams',  -200, 0);
	setLuaSpriteScrollFactor('BG9', 1.0, 1.0);









	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('BG3', true);
	addLuaSprite('BG4', true);

	addLuaSprite('BG5', false);
	addLuaSprite('BG6', false);
	addLuaSprite('BG7', true);
	addLuaSprite('BG8', true);
	addLuaSprite('BG9', true);



	setProperty('BG5.visible', false)
	setProperty('BG6.visible', false)
	setProperty('BG7.visible', false)
	setProperty('BG8.visible', false)
	setProperty('BG9.visible', false)




end
function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end
function onEvent(name,value1,value2)
	if name == 'Play Luz' then 
		
		if value1 == 'alternative' then
                        setProperty('defaultCamZoom',0.65)
			setProperty('BG1.visible', false);
			setProperty('BG2.visible', false);
			setProperty('BG3.visible', false);
			setProperty('BG4.visible', false);
			setProperty('BG5.visible', true);
			setProperty('BG6.visible', true);
			setProperty('BG7.visible', true);
			setProperty('BG8.visible', true);
			setProperty('BG9.visible', true);


		end
	end
end