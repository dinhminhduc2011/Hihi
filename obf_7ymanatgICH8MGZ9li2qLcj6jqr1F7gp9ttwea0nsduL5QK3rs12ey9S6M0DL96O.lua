

repeat wait() until game:IsLoaded()


--- code is messy, ignore it please

function protectGui(GUI)
    if syn and syn.protect_gui then
        syn.protect_gui(GUI)
        GUI.Parent = game:GetService("CoreGui")
    elseif gethui then
        GUI.Parent = gethui()
    elseif game.CoreGui:FindFirstChild("RobloxGui") then
        GUI.Parent = game.CoreGui.RobloxGui
    else
        GUI.Parent = game:GetService("CoreGui")
    end
end

local Tween = game:GetService("TweenService")

local abcDTWDestroyTweens = {}

local UISCGUI = Instance.new("ScreenGui")
protectGui(UISCGUI)
UISCGUI.Name = tostring(math.random(1,214))

local Initilize = Instance.new("Frame")

Initilize.AnchorPoint = Vector2.new(0.5, 0.5)
Initilize.Name = "Initilize"
Initilize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Initilize.BorderSizePixel = 0
Initilize.Position = UDim2.new(0.5, 0,0.5, 0)

--- 1 x = 2.04 y

local Colors = {
    [1] = Color3.fromRGB(255, 255, 255),
    [2] = Color3.fromRGB(129, 129, 129),
    [3] = Color3.fromRGB(18, 18, 18)
}

local Sizes = {
    [1] = UDim2.new(0.54, 0, 0.70, 0),
    [2] = UDim2.new(0.511, 0,0.639, 0),
    [3] = UDim2.new(0.484, 0,0.592, 0)
}

for i = 1,3 do
    local UI = Initilize:Clone()
    local abc = Instance.new("UICorner")
    abc.Parent = UI
    UI.BackgroundColor3 = Colors[i]
    UI.ZIndex = i * 5
    UI.Size = UDim2.new(0,0,0,0)
    UI.Parent = UISCGUI
    UI.Name = "UI"..i
    local tween = Tween:Create(UI,TweenInfo.new(.9 + (i*1.5)/10,Enum.EasingStyle.Quint),{Size = Sizes[i]})
    tween:Play()
    if i == 3 then
        tween.Completed:Wait()
    end
end

local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint", TextLabel)

TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.AnchorPoint = Vector2.new(0.5 ,0.5)
TextLabel.Position = UDim2.new(0.501, 0,0.325, 0)
TextLabel.Size = UDim2.new(0.334586471, 0, 0.145038173, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Banana Hub"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.ZIndex = 25
TextLabel.TextTransparency = 1

UITextSizeConstraint.MaxTextSize = 91

TextLabel.Parent = UISCGUI

local tw = Tween:Create(TextLabel, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 0})
local t3 = Tween:Create(TextLabel, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextColor3 = Color3.fromRGB(252, 255, 56)})
local Dt3 = Tween:Create(TextLabel, TweenInfo.new(.6, Enum.EasingStyle.Back), {TextColor3 = Color3.fromRGB(255, 255, 255)})
table.insert(abcDTWDestroyTweens, Dt3)
tw:Play() tw.Completed:Wait()

local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local TextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

--Properties:

TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.49917537, 0, 0.594656527, 0)
TextLabel.Size = UDim2.new(0.208607823, 0, 0.068702288, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Enter Key:"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.ZIndex = 25
TextLabel.TextTransparency = 1

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 91

TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 0.500
TextBox.Position = UDim2.new(0.314912945, 0, 0.630534351, 0)
TextBox.Size = UDim2.new(0.374729246, 0, 0.0809160322, 0)
TextBox.Font = Enum.Font.ArialBold
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
TextBox.ZIndex = 25
TextBox.BackgroundTransparency = 1
TextBox.TextTransparency = 1

local canClick = true
local waitE = 0

task.spawn(function()
    if isfile and readfile and isfile("Keys/"..game.Players.LocalPlayer.Name..".json") then
        canClick = false
        local HP = game:GetService("HttpService")
        if HP then
            waitE = 1
            _G.wl_key = HP:JSONDecode(readfile("Keys/"..game.Players.LocalPlayer.Name..".json"))
            TextBox.Text = _G.wl_key
        end
    end
end)



UICorner.Parent = TextBox

UITextSizeConstraint_2.Parent = TextBox
UITextSizeConstraint_2.MaxTextSize = 53
TextLabel.Parent = UISCGUI
TextBox.Parent = UISCGUI

local t1 = Tween:Create(TextLabel, TweenInfo.new(1,Enum.EasingStyle.Quint), {TextTransparency = 0})
local t2 = Tween:Create(TextBox, TweenInfo.new(1,Enum.EasingStyle.Quint), {TextTransparency = 0, BackgroundTransparency = 0.5})
local t4 = Tween:Create(UISCGUI["UI1"], TweenInfo.new(1,Enum.EasingStyle.Cubic), {BackgroundColor3 = Color3.fromRGB(255, 210, 29)})
local t5 = Tween:Create(UISCGUI["UI2"], TweenInfo.new(1,Enum.EasingStyle.Back), {BackgroundColor3 = Color3.fromRGB(129, 114, 78)})
for i = 1,3 do
    local t6 = Tween:Create(UISCGUI["UI"..i]["UICorner"], TweenInfo.new(.5,Enum.EasingStyle.Quint), {CornerRadius = UDim.new(0, 35)})
    t6:Play()
    local a = Tween:Create(UISCGUI["UI"..i]["UICorner"], TweenInfo.new(.5,Enum.EasingStyle.Quint), {CornerRadius = UDim.new(0, 8)})
    table.insert(abcDTWDestroyTweens, a)
end
local Dt4 = Tween:Create(UISCGUI["UI1"], TweenInfo.new(.6,Enum.EasingStyle.Back), {BackgroundColor3 = Colors[1]})
local Dt5 = Tween:Create(UISCGUI["UI2"], TweenInfo.new(.6,Enum.EasingStyle.Back), {BackgroundColor3 = Colors[2]})
table.insert(abcDTWDestroyTweens, Dt4) table.insert(abcDTWDestroyTweens, Dt5)
t5:Play() t4:Play() t1:Play() t2:Play() t3:Play() t2.Completed:Wait()

local TextButton = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint", TextButton)
local UICorner = Instance.new("UICorner", TextButton)

TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 0.300
TextButton.AnchorPoint = Vector2.new(.5,.5)
TextButton.Position = UDim2.new(0.502, 0,0.73, 0)
TextButton.Size = UDim2.new(0,0,0,0)
TextButton.Font = Enum.Font.FredokaOne
TextButton.Text = "Login"
TextButton.TextColor3 = Color3.fromRGB(72, 72, 72)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.ZIndex = 23
TextButton.Visible = false

UITextSizeConstraint.MaxTextSize = 50

TextButton.Parent = UISCGUI

local destroyTween = Tween:Create(TextButton, TweenInfo.new(.45,Enum.EasingStyle.Quint), {Size = UDim2.new(0,0,0,0)})

Tween:Create(TextLabel, TweenInfo.new(1, Enum.EasingStyle.Quint), {Position = TextLabel.Position - UDim2.new(0,0,.05,0)}):Play()
Tween:Create(TextBox, TweenInfo.new(1, Enum.EasingStyle.Quint), {Position = TextBox.Position - UDim2.new(0,0,.05,0)}):Play()

local destroyTween2 = Tween:Create(TextLabel, TweenInfo.new(.25, Enum.EasingStyle.Quint), {Position = TextLabel.Position + UDim2.new(0,0,.05,0)})
local destroyTween3 = Tween:Create(TextBox, TweenInfo.new(.25, Enum.EasingStyle.Quint), {Position = TextBox.Position + UDim2.new(0,0,.05,0)})

task.wait(.6)


TextButton.Visible = true
Tween:Create(TextButton, TweenInfo.new(1,Enum.EasingStyle.Quint), {Size = UDim2.new(0.142348751, 0, 0.0763358772, 0)}):Play()

local mouseOn = nil

local ButtonConnection1, ButtonConnection2, ButtonConnection3;

local loggedIn = false

ButtonConnection1 =	TextButton.MouseEnter:Connect(function()
    mouseOn = true
    Tween:Create(TextButton, TweenInfo.new(1,Enum.EasingStyle.Quint), {TextStrokeTransparency = 0, Size = UDim2.new(0.182348751, 0, 0.0823358772, 0)}):Play()
end)

ButtonConnection2 = TextButton.MouseLeave:Connect(function()
    mouseOn = false
    Tween:Create(TextButton, TweenInfo.new(1,Enum.EasingStyle.Quint), {TextStrokeTransparency = 1, Size = UDim2.new(0.142348751, 0, 0.0763358772, 0), BackgroundColor3 = Color3.fromRGB(255,255,255), TextColor3 = Color3.fromRGB(72, 72, 72)}):Play()
end)

ButtonConnection3 = TextButton.MouseButton1Click:Connect(function()
    if canClick then
        _G.wl_key = TextBox.Text
    end
end)

task.wait(.6)

-- Gui to Lua
-- Version: 3.2

-- Instances:

local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UICorner = Instance.new("UICorner")
local TextButtonA = Instance.new("TextButton")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UICorner_2 = Instance.new("UICorner")

--Properties:

TextLabel.Parent = UISCGUI
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.657665312, 0, 0.708015323, 0)
TextLabel.Size = UDim2.new(0.152946159, 0, 0.0503816865, 0)
TextLabel.ZIndex = 25
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "get key : \ndiscord.gg/SKnv5Ftwjb"
TextLabel.TextColor3 = Color3.fromRGB(245, 255, 56)
TextLabel.TextStrokeTransparency = 0
TextLabel.TextStrokeColor3 = Color3.fromRGB(0,0,0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextTransparency = 1

local ab = Tween:Create(TextLabel, TweenInfo.new(.4,Enum.EasingStyle.Quint), {BackgroundTransparency = 0.9,TextTransparency = 0})
ab:Play()
local D2ab = Tween:Create(TextLabel	, TweenInfo.new(.15,Enum.EasingStyle.Quint), {BackgroundTransparency = 1,TextTransparency = 1, TextStrokeTransparency = 1})

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 91

UICorner.Parent = TextLabel

TextButtonA.Parent = UISCGUI
TextButtonA.AnchorPoint = Vector2.new(0.5, 0.5)
TextButtonA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButtonA.BackgroundTransparency = 0.300
TextButtonA.Position = UDim2.new(0.658, 0,0.764, 0)
TextButtonA.Size = UDim2.new(0.0861629173, 0, 0.044122193, 0)
TextButtonA.ZIndex = 23
TextButtonA.Font = Enum.Font.FredokaOne
TextButtonA.Text = "Copy"
TextButtonA.TextColor3 = Color3.fromRGB(72, 72, 72)
TextButtonA.TextScaled = true
TextButtonA.TextSize = 14.000
TextButtonA.TextWrapped = true
TextButtonA.TextTransparency = 1

local ab = Tween:Create(TextButtonA, TweenInfo.new(.4,Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4,TextTransparency = 0})
ab:Play()
local D1ab = Tween:Create(TextButtonA, TweenInfo.new(.15,Enum.EasingStyle.Quint), {BackgroundTransparency = 1,TextTransparency = 1})

UITextSizeConstraint_2.Parent = TextButtonA
UITextSizeConstraint_2.MaxTextSize = 50

UICorner_2.CornerRadius = UDim.new(1, 15)
UICorner_2.Parent = TextButtonA

local a = TextButtonA.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://discord.gg/SKnv5Ftwjb")
    end
end)


task.spawn(function()
    while task.wait(.01) do
        if not loggedIn then
            repeat wait(.01) until mouseOn
            local t = 5; --how long does it take to go through the rainbow
            repeat
                local hue = tick() % t / t
                local color = Color3.fromHSV(hue, 1, 1)
                local a,b,c = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
                Tween:Create(TextButton, TweenInfo.new(1,Enum.EasingStyle.Quint), {BackgroundColor3 = color,TextColor3 = Color3.fromRGB(255 - a, 255 - b, 255 - c)}):Play()
                task.wait(.01)
            until not mouseOn or loggedIn
        else
            break
        end
    end

end)

repeat wait() until _G.wl_key and _G.wl_key ~= " " and _G.wl_key ~= ""

task.wait(waitE)

loggedIn = true

ButtonConnection1:Disconnect() ButtonConnection2:Disconnect()
destroyTween:Play() destroyTween.Completed:Wait()
UISCGUI["TextButton"]:Destroy()

destroyTween2:Play() destroyTween3:Play() D1ab:Play() D2ab:Play() destroyTween3.Completed:Wait()

for i,v in ipairs(abcDTWDestroyTweens) do
    v:Play()
end

task.wait(.1)			

for i,v in ipairs(UISCGUI:GetChildren()) do
    if v:IsA("Frame") then
        Tween:Create(v, TweenInfo.new(.3 + (tonumber(v.Name:gsub("UI","")/10)) , Enum.EasingStyle.Quint), {Size = UDim2.new(0,0,0,0)}):Play()
    else
        Tween:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Back), {Transparency = 1}):Play()
    end
end

task.wait(1)

UISCGUI:Destroy()

a:Disconnect()

-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Initilize = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Initilize_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

--Properties:

protectGui(ScreenGui)
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Initilize.Name = "Initilize"
Initilize.Parent = ScreenGui
Initilize.AnchorPoint = Vector2.new(0.5, 0.5)
Initilize.BackgroundColor3 = Color3.fromRGB(255, 190, 78)
Initilize.BorderSizePixel = 0
Initilize.Position = UDim2.new(0.499605089, 0, 0.499236643, 0)
Initilize.Size = UDim2.new(0,0,0,0)
Initilize.Visible = false

UICorner.Parent = Initilize

Initilize_2.Name = "Initilize"
Initilize_2.Parent = ScreenGui
Initilize_2.AnchorPoint = Vector2.new(0.5, 0.5)
Initilize_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Initilize_2.BorderSizePixel = 0
Initilize_2.Position = UDim2.new(0.50000006, 0, 0.499236614, 0)
Initilize_2.Size = UDim2.new(0,0,0,0)
Initilize_2.ZIndex = 2
Initilize_2.Visible = false

UICorner_2.Parent = Initilize_2

TextLabel.Parent = Initilize_2
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.497676909, 0, 0.496486694, 0)
TextLabel.Size = UDim2.new(0.813781261, 0, 0.43399635, 0)
TextLabel.ZIndex = 5
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextTransparency = 1

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 50

Initilize.Visible = true
Tween:Create(Initilize, TweenInfo.new(.4, Enum.EasingStyle.Quint), {Size = UDim2.new(0.310006857, 0, 0.387023121, 0)}):Play()
Initilize_2.Visible = true
Tween:Create(Initilize_2, TweenInfo.new(.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0.263924727, 0, 0.325954437, 0)}):Play()
task.wait(1)

if _G.games[game.PlaceId] then

    TextLabel.Text = "Checking Game..."
    Tween:Create(TextLabel, TweenInfo.new(.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
    task.wait(1)
    Tween:Create(TextLabel, TweenInfo.new(.7, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
    task.wait(.7)
    TextLabel.Text = _G.games[game.PlaceId].GameName
    Tween:Create(Initilize_2, TweenInfo.new(.4,Enum.EasingStyle.Quint), {BackgroundColor3 = _G.games[game.PlaceId].MainColor}):Play()
    Tween:Create(Initilize, TweenInfo.new(.4,Enum.EasingStyle.Quint), {BackgroundColor3 = _G.games[game.PlaceId].BackColor}):Play()
    Tween:Create(TextLabel, TweenInfo.new(.7, Enum.EasingStyle.Quint), {TextTransparency = 0, TextColor3 = _G.games[game.PlaceId].TextColor}):Play()

    task.wait(2)

    Tween:Create(TextLabel, TweenInfo.new(.7, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()

    task.wait(.7)

    Tween:Create(Initilize_2, TweenInfo.new(.4, Enum.EasingStyle.Quint), {Size = UDim2.new(0,0,0,0)}):Play()
    Tween:Create(Initilize, TweenInfo.new(.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0,0,0,0)}):Play()

    task.wait(.8)

    ScreenGui:Destroy()

    _G.SIUUABC = {
        GameToLoad = {
            gameID = game.PlaceId,
            gameName = _G.games[game.PlaceId].GameName
        }
    }

else

    game.Players.LocalPlayer:Kick("Error Game Not Found")

end


