local BlekLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/laderite/bleklib/main/library.lua"))()

local win = BlekLib:Create({
    Name = "Test for Jake",
    StartupSound = {
        Toggle = false,
        SoundID = "rbxassetid://6958727243",
        TimePosition = 1
    }
})

local maintab = win:Tab('Main')
local charactertab = win:Tab('Character')
local uitab = win:Tab('UI')

uitab:Button('Destroy GUI', function()
    win:Exit()
end)

maintab:Toggle('Print banana', function(v)
    print(v)
end)

maintab:Textbox('FOV', function(v)
    game:GetService("Players").LocalPlayer.Humanoid.JumpPower = v
end)

maintab:Slider('Walkspeed', 30,10,300, function(a)
    game:GetService("Players").LocalPlayer.Humanoid.WalkSpeed = a
end)

maintab:Label('This is a label')