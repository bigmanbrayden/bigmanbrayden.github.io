local xx = 450;
local yy = 350;
local xx2 = 800;
local yy2 = 500;
local ofs = 50;
local ofs2 = 35;
local followchars = true;
local del = 0;
local del2 = 0;
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
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end

		else if mustHitSection == true then
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
			end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
        triggerEvent('Camera Follow Pos','','')
    if dadName == 'sonic-mad' then
        setProperty('defaultCamZoom', 1.1)

    elseif dadName == 'sonic' then
        setProperty('defaultCamZoom', 0.9)

    elseif dadName == 'sonic-forced' then
        setProperty('defaultCamZoom', 0.9)

    elseif dadName == 'sonic-mad2' then
        setProperty('defaultCamZoom', 1.5)

    elseif dadName == 'sonic-mad3' then
        setProperty('defaultCamZoom', 1.5)
    end
end
end
end

function opponentNoteHit()
    if dadName == 'sonic-mad2' then
        health = getProperty('health')
         if getProperty('health') > 0.035 then
            setProperty('health', health- 0.035);
        end
    end
end