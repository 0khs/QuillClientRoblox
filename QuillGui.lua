local mainapi = {
	Keybind = "RightShift"
}

local uipallet = {
}


local UserInput = game:GetService("UserInputService")
local ismobile = UserInput.TouchEnabled


local function addCorner(parent, radius)
	local corner = Instance.new('UICorner')
	corner.CornerRadius = radius or UDim.new(0, 8)
	corner.Parent = parent
	return corner
end

gui = Instance.new("ScreenGui")
gui.Name = "gui"
gui.SafeAreaCompatibility = Enum.SafeAreaCompatibility.FullscreenExtension
gui.ClipToDeviceSafeArea = false
gui.IgnoreGuiInset = true
gui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
gui.DisplayOrder = 999999999
gui.Parent = game.StarterGui

notification = Instance.new("Frame")
notification.Name = "notification"
notification.LayoutOrder = 0
notification.Active = false
notification.Interactable = true
notification.AnchorPoint = Vector2.new(0, 0)
notification.Visible = true
notification.ZIndex = 10
notification.AutomaticSize = Enum.AutomaticSize.None
notification.Size = UDim2.new(0.324999988, 0, 0.141704053, 0)
notification.Draggable = false
notification.SizeConstraint = Enum.SizeConstraint.RelativeXY
notification.ClipsDescendants = true
notification.BorderColor3 = Color3.new(0, 0, 0)
notification.Selectable = false
notification.BorderSizePixel = 0
notification.Rotation = 0
notification.BackgroundTransparency = 0.10000000149011612
notification.Position = UDim2.new(0.66155225, 0, 0.816540003, 0)
notification.BorderMode = Enum.BorderMode.Outline
notification.BackgroundColor3 = Color3.new(0, 0, 0)
notification.Style = Enum.FrameStyle.Custom
notification.Parent = gui
addCorner(notification)

mobilebutton = Instance.new("TextButton")
mobilebutton.Name = "mobilebutton"
mobilebutton.AutoButtonColor = true
mobilebutton.LayoutOrder = 0
mobilebutton.Active = true
mobilebutton.Interactable = true
mobilebutton.AnchorPoint = Vector2.new(0, 0)
mobilebutton.Visible = true
mobilebutton.ZIndex = 999999999
mobilebutton.AutomaticSize = Enum.AutomaticSize.None
mobilebutton.Size = UDim2.new(0, 70, 0, 25)
mobilebutton.Draggable = false
mobilebutton.SizeConstraint = Enum.SizeConstraint.RelativeXY
mobilebutton.ClipsDescendants = false
mobilebutton.BorderColor3 = Color3.new(0, 0, 0)
mobilebutton.Selectable = true
mobilebutton.BorderSizePixel = 1
mobilebutton.Rotation = 0
mobilebutton.BackgroundTransparency = 0.20000000298023224
mobilebutton.Position = UDim2.new(0.790600359, 0, 0.00851815846, 0)
mobilebutton.BorderMode = Enum.BorderMode.Outline
mobilebutton.BackgroundColor3 = Color3.new(0, 0, 0)
mobilebutton.TextDirection = Enum.TextDirection.Auto
mobilebutton.TextStrokeColor3 = Color3.new(0, 0, 0)
mobilebutton.TextStrokeTransparency = 0.30000001192092896
mobilebutton.TextTruncate = Enum.TextTruncate.None
mobilebutton.RichText = false
mobilebutton.TextColor3 = Color3.new(1, 1, 1)
mobilebutton.TextYAlignment = Enum.TextYAlignment.Center
mobilebutton.Text = "Atlas"
mobilebutton.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
mobilebutton.TextWrapped = false
mobilebutton.TextTransparency = 0
mobilebutton.TextXAlignment = Enum.TextXAlignment.Center
mobilebutton.MaxVisibleGraphemes = -1
mobilebutton.TextScaled = false
mobilebutton.Parent = gui

QuillGui = Instance.new("CanvasGroup")
QuillGui.Name = "QuillGui"
QuillGui.GroupColor3 = Color3.new(1, 1, 1)
QuillGui.GroupTransparency = 0
QuillGui.Parent = gui
addCorner(QuillGui, 14)

Header = Instance.new("Frame")
Header.Name = "Header"
Header.LayoutOrder = 0
Header.Active = false
Header.Interactable = true
Header.AnchorPoint = Vector2.new(0, 0)
Header.Visible = true
Header.ZIndex = 1
Header.AutomaticSize = Enum.AutomaticSize.None
Header.Size = UDim2.new(1.00000024, 0, 0.0963571742, 0)
Header.Draggable = false
Header.SizeConstraint = Enum.SizeConstraint.RelativeXY
Header.ClipsDescendants = false
Header.BorderColor3 = Color3.new(0, 0, 0)
Header.Selectable = false
Header.BorderSizePixel = 0
Header.Rotation = 0
Header.BackgroundTransparency = 0
Header.Position = UDim2.new(-1.2921906e-07, 0, -2.63282889e-08, 0)
Header.BorderMode = Enum.BorderMode.Outline
Header.BackgroundColor3 = Color3.new(0, 0, 0)
Header.Style = Enum.FrameStyle.Custom
Header.Parent = QuillGui

mminimize = Instance.new("TextButton")
mminimize.Name = "mminimize"
mminimize.AutoButtonColor = true
mminimize.LayoutOrder = 0
mminimize.Active = true
mminimize.Interactable = true
mminimize.AnchorPoint = Vector2.new(0, 0)
mminimize.Visible = true
mminimize.ZIndex = 1
mminimize.AutomaticSize = Enum.AutomaticSize.None
mminimize.Size = UDim2.new(0.0317048728, 0, 0.315724909, 0)
mminimize.Draggable = false
mminimize.SizeConstraint = Enum.SizeConstraint.RelativeXY
mminimize.ClipsDescendants = false
mminimize.BorderColor3 = Color3.new(0, 0, 0)
mminimize.Selectable = true
mminimize.BorderSizePixel = 0
mminimize.Rotation = 0
mminimize.BackgroundTransparency = 1
mminimize.Position = UDim2.new(0.881117165, 0, 0.299999863, 0)
mminimize.BorderMode = Enum.BorderMode.Outline
mminimize.BackgroundColor3 = Color3.new(1, 1, 1)
mminimize.TextDirection = Enum.TextDirection.Auto
mminimize.TextStrokeColor3 = Color3.new(0, 0, 0)
mminimize.TextStrokeTransparency = 1
mminimize.TextTruncate = Enum.TextTruncate.None
mminimize.RichText = false
mminimize.TextColor3 = Color3.new(0, 0, 0)
mminimize.TextYAlignment = Enum.TextYAlignment.Center
mminimize.Text = "-"
mminimize.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
mminimize.TextWrapped = false
mminimize.TextTransparency = 0
mminimize.TextXAlignment = Enum.TextXAlignment.Center
mminimize.MaxVisibleGraphemes = -1
mminimize.TextScaled = false
mminimize.Parent = Header

QuillText = Instance.new("TextLabel")
QuillText.Name = "QuillText"
QuillText.LayoutOrder = 0
QuillText.Active = false
QuillText.Interactable = true
QuillText.AnchorPoint = Vector2.new(0, 0)
QuillText.Visible = true
QuillText.ZIndex = 1
QuillText.AutomaticSize = Enum.AutomaticSize.None
QuillText.Size = UDim2.new(0, 28, 0, 29)
QuillText.Draggable = false
QuillText.SizeConstraint = Enum.SizeConstraint.RelativeXY
QuillText.ClipsDescendants = false
QuillText.BorderColor3 = Color3.new(0, 0, 0)
QuillText.Selectable = false
QuillText.BorderSizePixel = 0
QuillText.Rotation = 0
QuillText.BackgroundTransparency = 1
QuillText.Position = UDim2.new(0.0659999996, 0, 0, 0)
QuillText.BorderMode = Enum.BorderMode.Outline
QuillText.BackgroundColor3 = Color3.new(1, 1, 1)
QuillText.TextDirection = Enum.TextDirection.Auto
QuillText.TextStrokeColor3 = Color3.new(0, 0, 0)
QuillText.TextStrokeTransparency = 1
QuillText.TextTruncate = Enum.TextTruncate.None
QuillText.RichText = false
QuillText.TextColor3 = Color3.new(1, 1, 1)
QuillText.TextYAlignment = Enum.TextYAlignment.Center
QuillText.Text = "QuilL"
QuillText.FontFace = Font.new("rbxasset://fonts/families/JosefinSans.json", Enum.FontWeight.Light, Enum.FontStyle.Normal)
QuillText.TextWrapped = false
QuillText.TextTransparency = 0
QuillText.TextXAlignment = Enum.TextXAlignment.Center
QuillText.MaxVisibleGraphemes = -1
QuillText.TextScaled = false
QuillText.Parent = Header

close = Instance.new("TextButton")
close.Name = "close"
close.AutoButtonColor = true
close.LayoutOrder = 0
close.Active = true
close.Interactable = true
close.AnchorPoint = Vector2.new(0, 0)
close.Visible = true
close.ZIndex = 1
close.AutomaticSize = Enum.AutomaticSize.None
close.Size = UDim2.new(0.0317048728, 0, 0.315724909, 0)
close.Draggable = false
close.SizeConstraint = Enum.SizeConstraint.RelativeXY
close.ClipsDescendants = false
close.BorderColor3 = Color3.new(0, 0, 0)
close.Selectable = true
close.BorderSizePixel = 0
close.Rotation = 0
close.BackgroundTransparency = 1
close.Position = UDim2.new(0.936162353, 0, 0.299999863, 0)
close.BorderMode = Enum.BorderMode.Outline
close.BackgroundColor3 = Color3.new(1, 1, 1)
close.TextDirection = Enum.TextDirection.Auto
close.TextStrokeColor3 = Color3.new(0, 0, 0)
close.TextStrokeTransparency = 1
close.TextTruncate = Enum.TextTruncate.None
close.RichText = false
close.TextColor3 = Color3.new(0, 0, 0)
close.TextYAlignment = Enum.TextYAlignment.Center
close.Text = "x"
close.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
close.TextWrapped = false
close.TextTransparency = 0
close.TextXAlignment = Enum.TextXAlignment.Center
close.MaxVisibleGraphemes = -1
close.TextScaled = false
close.Parent = Header

LogoQuill = Instance.new("ImageLabel")
LogoQuill.Name = "LogoQuill"
LogoQuill.LayoutOrder = 0
LogoQuill.Active = false
LogoQuill.Interactable = true
LogoQuill.AnchorPoint = Vector2.new(0, 0)
LogoQuill.Visible = true
LogoQuill.ZIndex = 1
LogoQuill.AutomaticSize = Enum.AutomaticSize.None
LogoQuill.Size = UDim2.new(0.0500000007, 0, 0.949999988, 0)
LogoQuill.Draggable = false
LogoQuill.SizeConstraint = Enum.SizeConstraint.RelativeXY
LogoQuill.ClipsDescendants = false
LogoQuill.BorderColor3 = Color3.new(0, 0, 0)
LogoQuill.Selectable = false
LogoQuill.BorderSizePixel = 0
LogoQuill.Rotation = 0
LogoQuill.BackgroundTransparency = 1
LogoQuill.Position = UDim2.new(0.0170000009, 0, 0, 0)
LogoQuill.BorderMode = Enum.BorderMode.Outline
LogoQuill.BackgroundColor3 = Color3.new(1, 1, 1)
LogoQuill.ImageColor3 = Color3.new(1, 1, 1)
LogoQuill.ScaleType = Enum.ScaleType.Stretch
LogoQuill.ImageTransparency = 0
LogoQuill.SliceScale = 1
LogoQuill.Image = "rbxassetid://111732193236676"
LogoQuill.TileSize = UDim2.new(1, 0, 1, 0)
LogoQuill.ImageRectSize = Vector2.new(0, 0)
LogoQuill.ImageContent = Content
LogoQuill.ResampleMode = Enum.ResamplerMode.Default
LogoQuill.ImageRectOffset = Vector2.new(0, 0)
LogoQuill.SliceCenter = Rect.new(Vector2.new(0, 0), Vector2.new(0, 0))
LogoQuill.Parent = Header

mobilebutton.Visible = ismobile
mobilebutton.MouseButton1Click:Connect(function()
	if QuillGui.Visible then
		QuillGui.Visible = false
	else
		QuillGui.Visible = true
	end
end)

UserInput.InputBegan:Connect(function(key)
                   if key.KeyCode == Enum.KeyCode[mainapi.Keybind] then
                                   if QuillGui.Visible == false then 
                                                         QuillGui.Visible = true
                                   else
                                                          QuilGui.Visible = false
                                   end
                        end
           end)