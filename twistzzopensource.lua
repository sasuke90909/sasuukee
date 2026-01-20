-- cracked by wisteria (stop using ai bro)

local _17 = loadstring(game:HttpGet([[https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua]]))()
local _call26 = _17:Gradient({
    ['100'] = {
        Color = Color3.fromRGB(0, 60, 120),
        Transparency = 0.9,
    },
    ['0'] = {
        Color = Color3.fromRGB(0, 170, 255),
        Transparency = 0.8,
    },
}, {Rotation = 45})
local _call27 = _17:CreateWindow({
    User = {
        Enabled = true,
        Callback = function(...)
            _17:Notify({
                Duration = 3,
                Title = 'User Profile',
                Content = 'User profile clicked!',
            })
        end,
        Anonymous = false,
    },
    Author = 'By Twistzz',
    Folder = 'Twistzz Cheat',
    Title = 'Twistzz Cheat | TPS SC',
    SideBarWidth = 200,
    Theme = 'Dark',
    Background = _call26,
    Icon = 'user',
    Size = UDim2.fromOffset(700, 600),
})

_call27:Tag({
    Title = 'Beta Test \u{2014} Report Issues',
    Color = Color3.fromRGB(0, 0, 255),
})
_call27:Tag({
    Title = 'WOW Twistzz Is Back',
    Color = Color3.fromRGB(0, 0, 255),
})

local _call40 = _call27:Section({
    Title = 'Main',
    Opened = false,
})
local _call42 = _call27:Section({
    Title = 'Miscellaneous',
    Opened = false,
})
local _call44 = _call40:Tab({
    Icon = 'user',
    Title = 'Reach',
    Desc = '',
})
local _call46 = _call40:Tab({
    Icon = 'apple',
    Title = 'Other Reach Method',
    Desc = '',
})
local _call48 = _call40:Tab({
    Icon = 'headphones',
    Title = 'Head Reach',
    Desc = '',
})
local _call50 = _call40:Tab({
    Icon = 'heart-handshake',
    Title = 'Reacts',
    Desc = '',
})
local _call52 = _call42:Tab({
    Icon = 'hand-heart',
    Title = 'Helpers',
    Desc = '',
})
local _call54 = _call42:Tab({
    Icon = 'hand',
    Title = 'Goalkeeper',
    Desc = '',
})
local _call56 = _call42:Tab({
    Icon = 'gamepad-2',
    Title = 'Game Modifications',
    Desc = '',
})
local _call58 = _call42:Tab({
    Icon = 'move',
    Title = 'Teleport',
    Desc = '',
})
local _call60 = _call42:Tab({
    Icon = 'move',
    Title = 'Miscellaneous',
    Desc = 'circle-ellipsis',
})

_call44:Paragraph({
    Image = 'user',
    Title = 'Ball Reach',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = 'This method is buns dont use ts fr.',
})

local _call66 = Vector3.new(5, 5, 5)
local _call68 = Color3.fromRGB(255, 0, 0)

_call44:Toggle({
    Value = false,
    Callback = function(_71, ...)
        local _call74 = workspace.TPSSystem:FindFirstChild('TPS')

        _call74:IsA('BasePart')

        local _call78 = Instance.new('Part')

        _call78.Size = _call66
        _call78.Transparency = 0.7
        _call78.Anchored = true
        _call78.CanCollide = false
        _call78.Color = _call68
        _call78.Name = 'ReachPart'
        _call78.Shape = Enum.PartType.Ball
        _call78.Parent = workspace

        game:GetService('RunService').RenderStepped:Connect(function(...)
            game.Players.LocalPlayer.Character:FindFirstChild('Humanoid')

            _call78.CFrame = CFrame.new(_call74.Position)
            _call78.Color = _call68
        end)
    end,
    Title = 'Enable / Disable Reach',
    Desc = 'Toggle leg reach',
})
_call44:Input({
    Value = 'Sphere',
    Title = 'Reach Shape (Sphere, Box, Cylinder)',
    Callback = function(_97, _97_2, _97_3, _97_4, ...) end,
})
_call44:Slider({
    Value = {
        Min = 1,
        Default = 5,
        Max = 50,
    },
    Callback = function(_100, _100_2, ...)
        local _call104 = Vector3.new(_100, _call66.Y, _call66.Z)

        _call78:Destroy()

        local _call108 = Instance.new('Part')

        _call108.Size = _call104
        _call108.Transparency = 0.7
        _call108.Anchored = true
        _call108.CanCollide = false
        _call108.Color = _call68
        _call108.Name = 'ReachPart'
        _call108.Shape = Enum.PartType.Ball
        _call108.Parent = workspace
    end,
    Title = 'Size X',
    Desc = 'Adjust X dimension',
})
_call44:Slider({
    Value = {
        Min = 1,
        Default = 5,
        Max = 50,
    },
    Callback = function(_113, _113_2, _113_3, _113_4, _113_5, ...)
        local _call117 = Vector3.new(_call104.X, _113, _call104.Z)

        _call108:Destroy()

        local _call121 = Instance.new('Part')

        _call121.Size = _call117
        _call121.Transparency = 0.7
        _call121.Anchored = true
        _call121.CanCollide = false
        _call121.Color = _call68
        _call121.Name = 'ReachPart'
        _call121.Shape = Enum.PartType.Ball
        _call121.Parent = workspace
    end,
    Title = 'Size Y',
    Desc = 'Adjust Y dimension',
})
_call44:Slider({
    Value = {
        Min = 1,
        Default = 5,
        Max = 50,
    },
    Callback = function(_126, ...)
        _call121:Destroy()

        local _call134 = Instance.new('Part')

        _call134.Size = Vector3.new(_call117.X, _call117.Y, _126)
        _call134.Transparency = 0.7
        _call134.Anchored = true
        _call134.CanCollide = false
        _call134.Color = _call68
        _call134.Name = 'ReachPart'
        _call134.Shape = Enum.PartType.Ball
        _call134.Parent = workspace
    end,
    Title = 'Size Z',
    Desc = 'Adjust Z dimension',
})
_call44:Input({
    Value = '',
    Title = 'Sync XYZ',
    Callback = function(_139, _139_2, ...) end,
})
_call44:Colorpicker({
    Callback = function(_142, _142_2, _142_3, _142_4, _142_5, _142_6, _142_7, ...)
        _call134.Color = _142
    end,
    Transparency = 0,
    Title = 'Reach Color',
    Default = _call68,
})
_call44:Toggle({
    Value = false,
    Callback = function(_145, ...) end,
    Title = 'RGB Effect',
    Desc = 'Enable rainbow color',
})
_call44:Paragraph({
    Image = 'user',
    Title = 'Body Reach',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = '',
})

local _call151 = game:GetService('RunService')
local _call153 = game:GetService('Players')
local _call155 = game:GetService('Lighting')
local _call157 = game:GetService('Workspace')
local _LocalPlayer158 = _call153.LocalPlayer
local _call164 = Color3.fromRGB(0, 0, 255)

_call44:Toggle({
    Value = false,
    Callback = function(_167, _167_2, _167_3, ...)
        local _call169 = Instance.new('Part')

        _call169.Size = Vector3.new(1, 1, 1)
        _call169.Transparency = 0.7
        _call169.Anchored = true
        _call169.CanCollide = false
        _call169.Color = _call164
        _call169.Name = 'ReachPart'
        _call169.Parent = _call157

        _call151.RenderStepped:Connect(function(...)
            local _Character174 = _LocalPlayer158.Character

            _call157:FindFirstChild('TPSSystem')

            local _call183 = _call157.TPSSystem:FindFirstChild('TPS')

            _call183:IsA('Model')

            local _call187 = _call183:FindFirstChildWhichIsA('BasePart')

            _call169.CFrame = (_Character174:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(Vector3.new(0, 0, 0)))
            _call169.Color = _call164

            local _call195 = _call169.CFrame:PointToObjectSpace(_call187.Position)
            local _197 = math.abs(_call195.X)
            local _ = _197 <= (_call169.Size.X / 2)
            local _203 = math.abs(_call195.Y)
            local _ = _203 <= (_call169.Size.Y / 2)
            local _209 = math.abs(_call195.Z)
            local _ = _209 <= (_call169.Size.Z / 2)

            _call155:FindFirstChild(_LocalPlayer158.Name)

            local _Idx218 = _call155[_LocalPlayer158.Name]
            local _ = _Character174:FindFirstChild('Humanoid').RigType == Enum.HumanoidRigType.R6
            local _ = _Idx218:FindFirstChild('PreferredFoot').Value
            local _call227 = _Character174:FindFirstChild('LeftLowerLeg')

            _call227:IsA('BasePart')
            _call187:IsA('BasePart')
            firetouchinterest(_call227, _call187, 0)
            firetouchinterest(_call227, _call187, 1)
        end)
    end,
    Title = 'Enable / Disable Reach',
    Desc = 'Toggle reach box',
})
_call46:Paragraph({
    Image = 'user',
    Title = 'Firetouchinterest',
    Color = Color3.fromRGB(139, 0, 0),
    ImageSize = 20,
    Desc = '',
})
_call46:Toggle({
    Value = false,
    Title = 'Enable / Disable Reach',
    Callback = function(_240, _240_2, ...)
        _call151.RenderStepped:Connect(function(_244, ...)
            local _Character246 = _call153.LocalPlayer.Character

            _Character246:FindFirstChild('Humanoid')
            _call157:FindFirstChild('TPSSystem')

            local _call255 = _call157.TPSSystem:FindFirstChild('TPS')

            _call255:IsA('Model')

            local _ = (_Character246:FindFirstChild('HumanoidRootPart').Position - _call255:FindFirstChildWhichIsA('BasePart').Position).Magnitude

            error('line 2: attempt to compare table <= number')
        end)
    end,
})
_call46:Slider({
    Value = {
        Min = 1,
        Default = 1,
        Max = 50,
    },
    Title = 'Reach Size',
    Callback = function(_266, _266_2, _266_3, _266_4, _266_5, _266_6, ...) end,
})
_call46:Input({
    Value = '',
    Placeholder = 'Size',
    Title = 'Reach Size',
    Callback = function(_269, ...) end,
})
_call48:Paragraph({
    Image = 'user',
    Title = 'Head Reach',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = '',
})

local _LocalPlayer275 = game.Players.LocalPlayer
local _call277 = game:GetService('RunService')
local _call279 = game:GetService('Workspace')
local _call281 = Vector3.new(1, 1.5, 1)

Vector3.new(0, 0, 0)

local _call285 = Color3.fromRGB(255, 0, 0)

_call48:Toggle({
    Value = false,
    Callback = function(_288, _288_2, _288_3, ...)
        local _call290 = Instance.new('Part')

        _call290.Size = _call281
        _call290.Transparency = 0.5
        _call290.Anchored = true
        _call290.CanCollide = false
        _call290.Color = _call285
        _call290.Name = 'HeadReachBox'
        _call290.Parent = _call279

        _call277.RenderStepped:Connect(function(_298, ...)
            local _Character299 = _LocalPlayer275.Character
            local _call303 = _Character299:FindFirstChild('Head')

            _call279:FindFirstChild('TPSSystem')

            local _call308 = _call279.TPSSystem:FindFirstChild('TPS')

            _call290.CFrame = (_Character299:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(Vector3.new(0, (_call281.Y * 0.6), 0)))
            _call290.Color = _call285

            local _CFrame313 = _call290.CFrame
            local _Size314 = _call290.Size
            local _call317 = _CFrame313:PointToObjectSpace(_call308.Position)
            local _319 = math.abs(_call317.X)
            local _ = _319 <= (_Size314.X / 2)
            local _324 = math.abs(_call317.Y)
            local _ = _324 <= (_Size314.Y / 2)
            local _329 = math.abs(_call317.Z)
            local _ = _329 <= (_Size314.Z / 2)

            firetouchinterest(_call303, _call308, 0)
            firetouchinterest(_call303, _call308, 1)
        end)
    end,
    Title = 'Enable / Disable Moss & Head Reach',
    Desc = 'Turns the reach on or off',
})
_call48:Slider({
    Value = {
        Min = 0,
        Default = 0,
        Max = 50,
    },
    Callback = function(_337, _337_2, _337_3, _337_4, _337_5, ...)
        local _call341 = Vector3.new(_337, _call281.Y, _call281.Z)

        Vector3.new(0, (_call341.Y * 0.6), 0)
        _call297:Disconnect()
        _call290:Destroy()

        local _call351 = Instance.new('Part')

        _call351.Size = _call341
        _call351.Transparency = 0.5
        _call351.Anchored = true
        _call351.CanCollide = false
        _call351.Color = _call285
        _call351.Name = 'HeadReachBox'
        _call351.Parent = _call279

        _call277.RenderStepped:Connect(function(_359, ...)
            local _Character360 = _LocalPlayer275.Character
            local _call364 = _Character360:FindFirstChild('Head')

            _call279:FindFirstChild('TPSSystem')

            local _call369 = _call279.TPSSystem:FindFirstChild('TPS')

            _call351.CFrame = (_Character360:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(Vector3.new(0, (_call341.Y * 0.6), 0)))
            _call351.Color = _call285

            local _CFrame374 = _call351.CFrame
            local _Size375 = _call351.Size
            local _call378 = _CFrame374:PointToObjectSpace(_call369.Position)
            local _380 = math.abs(_call378.X)
            local _ = _380 <= (_Size375.X / 2)
            local _385 = math.abs(_call378.Y)
            local _ = _385 <= (_Size375.Y / 2)
            local _390 = math.abs(_call378.Z)
            local _ = _390 <= (_Size375.Z / 2)

            firetouchinterest(_call364, _call369, 0)
            firetouchinterest(_call364, _call369, 1)
        end)
    end,
    Title = 'Reach X',
    Desc = 'Adjust X size',
})
_call48:Slider({
    Value = {
        Min = 0,
        Default = 0,
        Max = 50,
    },
    Callback = function(_398, ...)
        local _call402 = Vector3.new(_call341.X, _398, _call341.Z)

        Vector3.new(0, (_call402.Y * 0.6), 0)
        _call358:Disconnect()
        _call351:Destroy()

        local _call412 = Instance.new('Part')

        _call412.Size = _call402
        _call412.Transparency = 0.5
        _call412.Anchored = true
        _call412.CanCollide = false
        _call412.Color = _call285
        _call412.Name = 'HeadReachBox'
        _call412.Parent = _call279

        _call277.RenderStepped:Connect(function(_420, ...)
            local _Character421 = _LocalPlayer275.Character
            local _call425 = _Character421:FindFirstChild('Head')

            _call279:FindFirstChild('TPSSystem')

            local _call430 = _call279.TPSSystem:FindFirstChild('TPS')

            _call412.CFrame = (_Character421:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(Vector3.new(0, (_call402.Y * 0.6), 0)))
            _call412.Color = _call285

            local _CFrame435 = _call412.CFrame
            local _Size436 = _call412.Size
            local _call439 = _CFrame435:PointToObjectSpace(_call430.Position)
            local _441 = math.abs(_call439.X)
            local _ = _441 <= (_Size436.X / 2)
            local _446 = math.abs(_call439.Y)
            local _ = _446 <= (_Size436.Y / 2)
            local _451 = math.abs(_call439.Z)
            local _ = _451 <= (_Size436.Z / 2)

            firetouchinterest(_call425, _call430, 0)
            firetouchinterest(_call425, _call430, 1)
        end)
    end,
    Title = 'Reach Y',
    Desc = 'Adjust Y size',
})
_call48:Slider({
    Value = {
        Min = 0,
        Default = 0,
        Max = 50,
    },
    Callback = function(_459, _459_2, ...)
        local _call463 = Vector3.new(_call402.X, _call402.Y, _459)

        Vector3.new(0, (_call463.Y * 0.6), 0)
        _call419:Disconnect()
        _call412:Destroy()

        local _call473 = Instance.new('Part')

        _call473.Size = _call463
        _call473.Transparency = 0.5
        _call473.Anchored = true
        _call473.CanCollide = false
        _call473.Color = _call285
        _call473.Name = 'HeadReachBox'
        _call473.Parent = _call279

        _call277.RenderStepped:Connect(function(_481, ...)
            local _Character482 = _LocalPlayer275.Character
            local _call486 = _Character482:FindFirstChild('Head')

            _call279:FindFirstChild('TPSSystem')

            local _call491 = _call279.TPSSystem:FindFirstChild('TPS')

            _call473.CFrame = (_Character482:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(Vector3.new(0, (_call463.Y * 0.6), 0)))
            _call473.Color = _call285

            local _CFrame496 = _call473.CFrame
            local _Size497 = _call473.Size
            local _call500 = _CFrame496:PointToObjectSpace(_call491.Position)
            local _502 = math.abs(_call500.X)
            local _ = _502 <= (_Size497.X / 2)
            local _507 = math.abs(_call500.Y)
            local _ = _507 <= (_Size497.Y / 2)
            local _512 = math.abs(_call500.Z)
            local _ = _512 <= (_Size497.Z / 2)

            firetouchinterest(_call486, _call491, 0)
            firetouchinterest(_call486, _call491, 1)
        end)
    end,
    Title = 'Reach Z',
    Desc = 'Adjust Z size',
})
_call48:Input({
    Value = '',
    Title = 'Sync Reach [X-Y-Z]',
    Callback = function(_520, _520_2, _520_3, ...) end,
})
_call48:Toggle({
    Value = false,
    Callback = function(_523, _523_2, _523_3, _523_4, _523_5, _523_6, ...)
        _call480:Disconnect()
        _call473:Destroy()

        local _call529 = Instance.new('Part')

        _call529.Size = _call463
        _call529.Transparency = 1
        _call529.Anchored = true
        _call529.CanCollide = false
        _call529.Color = _call285
        _call529.Name = 'HeadReachBox'
        _call529.Parent = _call279

        _call277.RenderStepped:Connect(function(_537, ...)
            local _Character538 = _LocalPlayer275.Character
            local _call542 = _Character538:FindFirstChild('Head')

            _call279:FindFirstChild('TPSSystem')

            local _call547 = _call279.TPSSystem:FindFirstChild('TPS')

            _call529.CFrame = (_Character538:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(Vector3.new(0, (_call463.Y * 0.6), 0)))
            _call529.Color = _call285

            local _CFrame552 = _call529.CFrame
            local _Size553 = _call529.Size
            local _call556 = _CFrame552:PointToObjectSpace(_call547.Position)
            local _558 = math.abs(_call556.X)
            local _ = _558 <= (_Size553.X / 2)
            local _563 = math.abs(_call556.Y)
            local _ = _563 <= (_Size553.Y / 2)
            local _568 = math.abs(_call556.Z)
            local _ = _568 <= (_Size553.Z / 2)

            firetouchinterest(_call542, _call547, 0)
            firetouchinterest(_call542, _call547, 1)
        end)
    end,
    Title = 'Appear Normal',
    Desc = 'Make box invisible or semi-visible',
})
_call48:Toggle({
    Value = false,
    Title = 'Enable / Disable Percentage',
    Callback = function(_576, _576_2, _576_3, _576_4, _576_5, ...)
        local _call578 = Vector3.new(0.1, 0.1, 0.1)

        Vector3.new(0, (_call578.Y * 0.6), 0)
        _call536:Disconnect()
        _call529:Destroy()

        local _call588 = Instance.new('Part')

        _call588.Size = _call578
        _call588.Transparency = 1
        _call588.Anchored = true
        _call588.CanCollide = false
        _call588.Color = _call285
        _call588.Name = 'HeadReachBox'
        _call588.Parent = _call279

        _call277.RenderStepped:Connect(function(_596, ...)
            local _Character597 = _LocalPlayer275.Character
            local _call601 = _Character597:FindFirstChild('Head')

            _call279:FindFirstChild('TPSSystem')

            local _call606 = _call279.TPSSystem:FindFirstChild('TPS')

            _call588.CFrame = (_Character597:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(Vector3.new(0, (_call578.Y * 0.6), 0)))
            _call588.Color = _call285

            local _CFrame611 = _call588.CFrame
            local _Size612 = _call588.Size
            local _call615 = _CFrame611:PointToObjectSpace(_call606.Position)
            local _617 = math.abs(_call615.X)
            local _ = _617 <= (_Size612.X / 2)
            local _622 = math.abs(_call615.Y)
            local _ = _622 <= (_Size612.Y / 2)
            local _627 = math.abs(_call615.Z)
            local _ = _627 <= (_Size612.Z / 2)

            firetouchinterest(_call601, _call606, 0)
            firetouchinterest(_call601, _call606, 1)
        end)
    end,
})
_call48:Slider({
    Value = {
        Min = 1,
        Default = 1,
        Max = 100,
    },
    Title = 'Percentage',
    Callback = function(_635, ...)
        local _636 = (_635 * 0.1)
        local _call638 = Vector3.new(_636, _636, _636)

        Vector3.new(0, (_call638.Y * 0.6), 0)
        _call595:Disconnect()
        _call588:Destroy()

        local _call648 = Instance.new('Part')

        _call648.Size = _call638
        _call648.Transparency = 1
        _call648.Anchored = true
        _call648.CanCollide = false
        _call648.Color = _call285
        _call648.Name = 'HeadReachBox'
        _call648.Parent = _call279

        _call277.RenderStepped:Connect(function(_656, ...)
            local _Character657 = _LocalPlayer275.Character

            _Character657:FindFirstChild('Head')
            _call279:FindFirstChild('TPSSystem')
            _call279.TPSSystem:FindFirstChild('TPS')

            _call648.CFrame = (_Character657:FindFirstChild('HumanoidRootPart').CFrame * CFrame.new(Vector3.new(0, (_call638.Y * 0.6), 0)))
            _call648.Color = _call285

            local _ = _call648.CFrame
            local _ = _call648.Size

            error('internal 551: <25ms: infinitelooperror>')
        end)
    end,
})
_call48:Colorpicker({
    Callback = function(_676, _676_2, _676_3, _676_4, _676_5, ...)
        _call648.Color = _676
    end,
    Transparency = 0,
    Title = 'Head Reach Color',
    Default = _call285,
})
_call48:Toggle({
    Value = false,
    Title = 'RGB Effect',
    Callback = function(_679, _679_2, _679_3, _679_4, _679_5, ...) end,
})
_call48:Paragraph({
    Image = 'user',
    Title = 'Configs',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = '',
})
_call48:Button({
    Title = 'Moss 25%',
    Callback = function(_686, _686_2, _686_3, _686_4, _686_5, ...)
        local _call688 = Vector3.new(5, 5, 5)

        Vector3.new(0, (_call688.Y * 0.6), 0)
        _call655:Disconnect()
        _call648:Destroy()

        local _call698 = Instance.new('Part')

        _call698.Size = _call688
        _call698.Transparency = 1
        _call698.Anchored = true
        _call698.CanCollide = false
        _call698.Color = _676
        _call698.Name = 'HeadReachBox'
        _call698.Parent = _call279

        Vector3.new(0, (_call688.Y * 0.6), 0)
        _call277.RenderStepped:Connect(function(_706, ...)
            error('internal 551: <25ms: infinitelooperror>')
        end)
    end,
})
_call48:Button({
    Title = 'Moss 30%',
    Callback = function(_710, _710_2, _710_3, _710_4, _710_5, ...) end,
})
_call48:Button({
    Title = 'Moss 35%',
    Callback = function(_713, _713_2, _713_3, _713_4, _713_5, ...) end,
})
_call48:Button({
    Title = 'Moss 40%',
    Callback = function(_716, _716_2, _716_3, _716_4, _716_5, ...) end,
})
_call48:Button({
    Title = 'Moss 45%',
    Callback = function(_719, _719_2, _719_3, _719_4, _719_5, ...) end,
})
_call48:Button({
    Title = 'Moss 50%',
    Callback = function(_722, _722_2, _722_3, _722_4, _722_5, ...) end,
})
_call48:Button({
    Title = 'Moss 55%',
    Callback = function(_725, _725_2, _725_3, _725_4, _725_5, ...) end,
})
_call48:Button({
    Title = 'Moss 60%',
    Callback = function(_728, _728_2, _728_3, _728_4, _728_5, ...) end,
})
_call48:Button({
    Title = 'Moss 65%',
    Callback = function(_731, _731_2, _731_3, _731_4, _731_5, ...) end,
})
_call48:Button({
    Title = 'Moss 70%',
    Callback = function(_734, _734_2, _734_3, _734_4, _734_5, ...) end,
})
_call48:Button({
    Title = 'Moss 75%',
    Callback = function(_737, _737_2, _737_3, _737_4, _737_5, ...) end,
})
_call48:Button({
    Title = 'Moss 80%',
    Callback = function(_740, _740_2, _740_3, _740_4, _740_5, ...) end,
})
_call48:Button({
    Title = 'Moss 85%',
    Callback = function(_743, _743_2, _743_3, _743_4, _743_5, ...) end,
})
_call48:Button({
    Title = 'Moss 90%',
    Callback = function(_746, _746_2, _746_3, _746_4, _746_5, ...) end,
})
_call48:Button({
    Title = 'Moss 95%',
    Callback = function(_749, _749_2, _749_3, _749_4, _749_5, ...) end,
})
_call48:Button({
    Title = 'Moss 100%',
    Callback = function(_752, _752_2, _752_3, _752_4, _752_5, ...) end,
})
_call50:Paragraph({
    Image = 'user',
    Title = 'Reacts',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = '',
})
_call50:Button({
    Title = 'Old Ball Collision',
    Callback = function(_759, _759_2, _759_3, ...) end,
})
_call50:Button({
    Title = 'Reduce Ball Delay',
    Callback = function(_762, _762_2, _762_3, ...) end,
})
_call50:Button({
    Title = 'Better React',
    Callback = function(...) end,
})
_call50:Button({
    Title = 'Alz React',
    Callback = function(_768, ...) end,
})
_call50:Button({
    Title = 'Tackle React',
    Callback = function(_771, _771_2, _771_3, _771_4, ...) end,
})
_call50:Button({
    Title = 'Fix Ball Collision',
    Callback = function(_774, _774_2, _774_3, _774_4, _774_5, ...) end,
})
_call52:Paragraph({
    Image = 'user',
    Title = 'ZZZZ Helper',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = '',
})
_call52:Toggle({
    Value = false,
    Callback = function(_781, _781_2, _781_3, _781_4, _781_5, ...) end,
    Title = 'Enable / Disable ZZZZ Helper',
    Desc = 'Toggles the ZZZZ helper part under the ball',
})
_call52:Paragraph({
    Image = 'user',
    Title = 'Air Dribble Helper',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = '',
})
_call52:Toggle({
    Value = false,
    Callback = function(_788, _788_2, _788_3, _788_4, ...) end,
    Title = 'Enable / Disable Air Dribble Helper',
    Desc = 'Spawns helper part for air dribble',
})
_call52:Slider({
    Value = {
        Min = 1,
        Default = 1,
        Max = 50,
    },
    Callback = function(_791, ...) end,
    Title = 'Air Dribble Size',
    Desc = 'Adjust helper platform size',
})
_call52:Paragraph({
    Image = 'user',
    Title = 'Inf Dribble Helper',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = '',
})

local _LocalPlayer797 = game.Players.LocalPlayer
local _ = _LocalPlayer797.Character
local _ = workspace.TPSSystem.TPS
local _call802 = game:GetService('UserInputService')

_call802.InputEnded:Connect(function(_808, _808_2, _808_3, _808_4, _808_5, _808_6, ...) end)
_call802.InputBegan:Connect(function(_812, _812_2, _812_3, _812_4, ...) end)
game:GetService('RunService').RenderStepped:Connect(function(_816, _816_2, _816_3, _816_4, _816_5, ...) end)
_LocalPlayer797.CharacterAdded:Connect(function(_820, _820_2, _820_3, _820_4, _820_5, ...) end)
_call52:Toggle({
    Value = false,
    Callback = function(_823, _823_2, _823_3, ...) end,
    Title = 'Enable / Disable Inf Dribble Helper',
    Desc = 'Automatically follows ball with [B]',
})

local _LocalPlayer825 = game.Players.LocalPlayer
local _ = _LocalPlayer825.Character
local _call829 = _LocalPlayer825.Character:WaitForChild('Humanoid')

_call829.WalkSpeed = 23
_call829.JumpPower = 50

game:GetService('RunService').Stepped:Connect(function(_835, _835_2, _835_3, _835_4, _835_5, ...) end)
_LocalPlayer825.CharacterAdded:Connect(function(_839, _839_2, ...) end)
_call54:Paragraph({
    Image = 'user',
    Title = 'Auto Save',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = '',
})
_call54:Toggle({
    Value = false,
    Title = 'Auto Save',
    Callback = function(_846, ...) end,
})
_call54:Slider({
    Value = {
        Min = 1,
        Default = 1,
        Max = 20,
    },
    Callback = function(_849, _849_2, ...) end,
    Title = 'Auto Save How Many Touch',
    Desc = 'How many times the RemoteEvent fires when touching the ball',
})
_call56:Paragraph({
    Image = 'user',
    Title = 'Ball Modifications',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = '',
})
_call56:Input({
    Value = '2.6',
    Placeholder = '',
    Title = 'Ball Size',
    Callback = function(_856, _856_2, ...) end,
})
_call56:Button({
    Callback = function(_859, _859_2, _859_3, _859_4, _859_5, ...) end,
    Title = 'Anti Ball-Fling',
    Icon = 'bell',
})
game:GetService('RunService')

local _ = workspace.TPSSystem.TPS
local _ = workspace.Gravity

_call56:Toggle({
    Value = false,
    Title = 'Ball Prediction',
    Callback = function(_867, _867_2, _867_3, _867_4, _867_5, ...) end,
})
game:GetService('PhysicsService')

local _ = game:GetService('Workspace').TPSSystem.TPS

_call56:Toggle({
    Value = false,
    Title = 'Ball Collision',
    Callback = function(_876, _876_2, _876_3, _876_4, ...) end,
})
_call56:Dropdown({
    Value = 'Default',
    Callback = function(_879, _879_2, _879_3, _879_4, ...) end,
    Title = 'Ball Voice',
    Values = {
        [1] = 'Default',
        [2] = 'OOF!',
        [3] = 'Neverlose',
        [4] = 'Rust',
        [5] = 'Bruh',
        [6] = 'TF2',
    },
})
_call56:Paragraph({
    Image = 'user',
    Title = 'Ball Teleport',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = '',
})

local _ = game:GetService('Players').LocalPlayer

game:GetService('RunService')
workspace:WaitForChild('TPSSystem'):WaitForChild('TPS')
_call58:Toggle({
    Value = false,
    Title = 'Loop Teleporting to the ball',
    Callback = function(_895, _895_2, _895_3, _895_4, _895_5, ...) end,
})
_call58:Paragraph({
    Image = 'map',
    Title = 'Teleport System',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = 'Choose teleport mode below',
})
_call58:Toggle({
    Value = false,
    Title = 'Loop Teleporting to Ball',
    Callback = function(_902, _902_2, _902_3, ...) end,
})
_call58:Input({
    Value = '',
    Placeholder = 'Enter Player Username',
    Title = 'Target Player Username',
    Callback = function(_905, _905_2, _905_3, _905_4, _905_5, ...) end,
})
_call58:Button({
    Title = 'Teleport To Player',
    Callback = function(_908, _908_2, ...) end,
})
_call58:Button({
    Title = 'Teleport Above Player',
    Callback = function(...) end,
})
_call58:Button({
    Title = 'Teleport Under Player',
    Callback = function(_914, _914_2, _914_3, _914_4, ...) end,
})
_call58:Button({
    Title = 'Teleport To Random Player',
    Callback = function(_917, _917_2, _917_3, _917_4, _917_5, ...) end,
})
_call58:Button({
    Title = 'Teleport To Closest Player',
    Callback = function(_920, _920_2, _920_3, _920_4, ...) end,
})
_call58:Button({
    Title = 'Teleport To Red Goal',
    Callback = function(_923, _923_2, _923_3, _923_4, ...) end,
})
_call58:Button({
    Title = 'Teleport To Blue Goal',
    Callback = function(_926, _926_2, _926_3, _926_4, _926_5, ...) end,
})
_call60:Paragraph({
    Image = 'user',
    Title = 'Fake Powers',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = '',
})
game.Players.LocalPlayer:FindFirstChild('FakePowers')
_call60:Input({
    Value = '',
    Placeholder = 'Enter amount',
    Title = 'Fake Bombs',
    Callback = function(_937, _937_2, ...) end,
})
_call60:Input({
    Value = '',
    Placeholder = 'Enter amount',
    Title = 'Fake Burns',
    Callback = function(_940, ...) end,
})
_call60:Input({
    Value = '',
    Placeholder = 'Enter amount',
    Title = 'Fake Spikes',
    Callback = function(_943, ...) end,
})
_call60:Input({
    Value = '',
    Placeholder = 'Enter amount',
    Title = 'Fake Walls',
    Callback = function(_946, _946_2, _946_3, _946_4, _946_5, _946_6, ...) end,
})
_call60:Paragraph({
    Image = 'user',
    Title = 'Clumsy',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = '',
})
_call60:Input({
    Value = '0',
    Title = 'Clumsy',
    Callback = function(_953, _953_2, _953_3, _953_4, _953_5, _953_6, ...) end,
})
_call60:Paragraph({
    Image = 'user',
    Title = 'Others',
    Color = Color3.fromRGB(0, 0, 139),
    ImageSize = 20,
    Desc = '',
})
_call60:Input({
    Value = '',
    Placeholder = 'Enter FOV',
    Title = 'Player FOV',
    Callback = function(_960, _960_2, _960_3, _960_4, _960_5, ...) end,
})
_call60:Input({
    Value = '',
    Placeholder = 'Enter Brightness',
    Title = 'Brightning Size',
    Callback = function(_963, _963_2, _963_3, _963_4, _963_5, ...) end,
})
