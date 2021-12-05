g_ScriptTitle = "bot"
g_ScriptInfo = "BOT"

Run = false
Permanent = false

function OnKeyPress(key)
  if key == "space" then
    if Permanent then
      Run = not Run
    else
      Run = true
    end
  end
end

function OnKeyRelease(key)
  if key == "space" and not Permanent then
    Run = false
  elseif key == "m" then
    if Permanent then
      Permanent = false
    else
      Permanent = true
    end
  end
end

function OnTick()
  if Run then
    if Game.Input.Jump == 0 then
      Game.Input.Jump = 1
    else
      Game.Input.Jump = 0
    end
  end
end