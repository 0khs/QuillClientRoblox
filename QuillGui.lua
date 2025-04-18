
local Instances = {
	gui = Instance.new("ScreenGui"),
	notification = Instance.new("Frame"),
	UICorner = Instance.new("UICorner"),
	mobilebutton = Instance.new("TextButton"),
	MainFrame = Instance.new("CanvasGroup"),
	UICorner_2 = Instance.new("UICorner"),
	Header = Instance.new("Frame"),
	mminimize = Instance.new("TextButton"),
	QuillText = Instance.new("TextLabel"),
	close = Instance.new("TextButton"),
	LogoQuill = Instance.new("ImageLabel"),
}

Instances.gui.Name = "gui"
Instances.gui.SafeAreaCompatibility = Enum.SafeAreaCompatibility.FullscreenExtension
Instances.gui.ClipToDeviceSafeArea = false
Instances.gui.IgnoreGuiInset = true
Instances.gui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
Instances.gui.DisplayOrder = 999999999
Instances.gui.Parent = game.StarterGui

Instances.notification.Name = "notification"
Instances.notification.LayoutOrder = 0
Instances.notification.Active = false
Instances.notification.Interactable = true
Instances.notification.AnchorPoint = Vector2.new(0, 0)
Instances.notification.Visible = true
Instances.notification.ZIndex = 10
Instances.notification.AutomaticSize = Enum.AutomaticSize.None
Instances.notification.Size = UDim2.new(0.324999988, 0, 0.141704053, 0)
Instances.notification.Draggable = false
Instances.notification.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instances.notification.ClipsDescendants = true
Instances.notification.BorderColor3 = Color3.new(0, 0, 0)
Instances.notification.Selectable = false
Instances.notification.BorderSizePixel = 0
Instances.notification.Rotation = 0
Instances.notification.BackgroundTransparency = 0.10000000149011612
Instances.notification.Position = UDim2.new(0.66155225, 0, 0.816540003, 0)
Instances.notification.BorderMode = Enum.BorderMode.Outline
Instances.notification.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.notification.Style = Enum.FrameStyle.Custom
Instances.notification.Parent = Instances.gui

Instances.UICorner.Name = "UICorner"
Instances.UICorner.CornerRadius = UDim.new(0, 8)
Instances.UICorner.Parent = Instances.notification

Instances.mobilebutton.Name = "mobilebutton"
Instances.mobilebutton.AutoButtonColor = true
Instances.mobilebutton.LayoutOrder = 0
Instances.mobilebutton.Active = true
Instances.mobilebutton.Interactable = true
Instances.mobilebutton.AnchorPoint = Vector2.new(0, 0)
Instances.mobilebutton.Visible = true
Instances.mobilebutton.ZIndex = 999999999
Instances.mobilebutton.AutomaticSize = Enum.AutomaticSize.None
Instances.mobilebutton.Size = UDim2.new(0, 70, 0, 25)
Instances.mobilebutton.Draggable = false
Instances.mobilebutton.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instances.mobilebutton.ClipsDescendants = false
Instances.mobilebutton.BorderColor3 = Color3.new(0, 0, 0)
Instances.mobilebutton.Selectable = true
Instances.mobilebutton.BorderSizePixel = 1
Instances.mobilebutton.Rotation = 0
Instances.mobilebutton.BackgroundTransparency = 0.20000000298023224
Instances.mobilebutton.Position = UDim2.new(0.790600359, 0, 0.00851815846, 0)
Instances.mobilebutton.BorderMode = Enum.BorderMode.Outline
Instances.mobilebutton.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.mobilebutton.TextDirection = Enum.TextDirection.Auto
Instances.mobilebutton.TextStrokeColor3 = Color3.new(0, 0, 0)
Instances.mobilebutton.TextStrokeTransparency = 0.30000001192092896
Instances.mobilebutton.TextTruncate = Enum.TextTruncate.None
Instances.mobilebutton.RichText = false
Instances.mobilebutton.TextColor3 = Color3.new(1, 1, 1)
Instances.mobilebutton.TextYAlignment = Enum.TextYAlignment.Center
Instances.mobilebutton.Text = "Atlas"
Instances.mobilebutton.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.mobilebutton.TextWrapped = false
Instances.mobilebutton.TextTransparency = 0
Instances.mobilebutton.TextXAlignment = Enum.TextXAlignment.Center
Instances.mobilebutton.MaxVisibleGraphemes = -1
Instances.mobilebutton.TextScaled = false
Instances.mobilebutton.Parent = Instances.gui

Instances.MainFrame.Name = "MainFrame"
Instances.MainFrame.GroupColor3 = Color3.new(1, 1, 1)
Instances.MainFrame.GroupTransparency = 0
Instances.MainFrame.Parent = Instances.gui

Instances.UICorner_2.Name = "UICorner"
Instances.UICorner_2.CornerRadius = UDim.new(0, 14)
Instances.UICorner_2.Parent = Instances.MainFrame

Instances.Header.Name = "Header"
Instances.Header.LayoutOrder = 0
Instances.Header.Active = false
Instances.Header.Interactable = true
Instances.Header.AnchorPoint = Vector2.new(0, 0)
Instances.Header.Visible = true
Instances.Header.ZIndex = 1
Instances.Header.AutomaticSize = Enum.AutomaticSize.None
Instances.Header.Size = UDim2.new(1.00000024, 0, 0.0963571742, 0)
Instances.Header.Draggable = false
Instances.Header.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instances.Header.ClipsDescendants = false
Instances.Header.BorderColor3 = Color3.new(0, 0, 0)
Instances.Header.Selectable = false
Instances.Header.BorderSizePixel = 0
Instances.Header.Rotation = 0
Instances.Header.BackgroundTransparency = 0
Instances.Header.Position = UDim2.new(-1.2921906e-07, 0, -2.63282889e-08, 0)
Instances.Header.BorderMode = Enum.BorderMode.Outline
Instances.Header.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.Header.Style = Enum.FrameStyle.Custom
Instances.Header.Parent = Instances.MainFrame

Instances.mminimize.Name = "mminimize"
Instances.mminimize.AutoButtonColor = true
Instances.mminimize.LayoutOrder = 0
Instances.mminimize.Active = true
Instances.mminimize.Interactable = true
Instances.mminimize.AnchorPoint = Vector2.new(0, 0)
Instances.mminimize.Visible = true
Instances.mminimize.ZIndex = 1
Instances.mminimize.AutomaticSize = Enum.AutomaticSize.None
Instances.mminimize.Size = UDim2.new(0.0317048728, 0, 0.315724909, 0)
Instances.mminimize.Draggable = false
Instances.mminimize.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instances.mminimize.ClipsDescendants = false
Instances.mminimize.BorderColor3 = Color3.new(0, 0, 0)
Instances.mminimize.Selectable = true
Instances.mminimize.BorderSizePixel = 0
Instances.mminimize.Rotation = 0
Instances.mminimize.BackgroundTransparency = 1
Instances.mminimize.Position = UDim2.new(0.881117165, 0, 0.299999863, 0)
Instances.mminimize.BorderMode = Enum.BorderMode.Outline
Instances.mminimize.BackgroundColor3 = Color3.new(1, 1, 1)
Instances.mminimize.TextDirection = Enum.TextDirection.Auto
Instances.mminimize.TextStrokeColor3 = Color3.new(0, 0, 0)
Instances.mminimize.TextStrokeTransparency = 1
Instances.mminimize.TextTruncate = Enum.TextTruncate.None
Instances.mminimize.RichText = false
Instances.mminimize.TextColor3 = Color3.new(0, 0, 0)
Instances.mminimize.TextYAlignment = Enum.TextYAlignment.Center
Instances.mminimize.Text = "-"
Instances.mminimize.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.mminimize.TextWrapped = false
Instances.mminimize.TextTransparency = 0
Instances.mminimize.TextXAlignment = Enum.TextXAlignment.Center
Instances.mminimize.MaxVisibleGraphemes = -1
Instances.mminimize.TextScaled = false
Instances.mminimize.Parent = Instances.Header

Instances.QuillText.Name = "QuillText"
Instances.QuillText.LayoutOrder = 0
Instances.QuillText.Active = false
Instances.QuillText.Interactable = true
Instances.QuillText.AnchorPoint = Vector2.new(0, 0)
Instances.QuillText.Visible = true
Instances.QuillText.ZIndex = 1
Instances.QuillText.AutomaticSize = Enum.AutomaticSize.None
Instances.QuillText.Size = UDim2.new(0, 28, 0, 29)
Instances.QuillText.Draggable = false
Instances.QuillText.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instances.QuillText.ClipsDescendants = false
Instances.QuillText.BorderColor3 = Color3.new(0, 0, 0)
Instances.QuillText.Selectable = false
Instances.QuillText.BorderSizePixel = 0
Instances.QuillText.Rotation = 0
Instances.QuillText.BackgroundTransparency = 1
Instances.QuillText.Position = UDim2.new(0.0659999996, 0, 0, 0)
Instances.QuillText.BorderMode = Enum.BorderMode.Outline
Instances.QuillText.BackgroundColor3 = Color3.new(1, 1, 1)
Instances.QuillText.TextDirection = Enum.TextDirection.Auto
Instances.QuillText.TextStrokeColor3 = Color3.new(0, 0, 0)
Instances.QuillText.TextStrokeTransparency = 1
Instances.QuillText.TextTruncate = Enum.TextTruncate.None
Instances.QuillText.RichText = false
Instances.QuillText.TextColor3 = Color3.new(1, 1, 1)
Instances.QuillText.TextYAlignment = Enum.TextYAlignment.Center
Instances.QuillText.Text = "QuilL"
Instances.QuillText.FontFace = Font.new("rbxasset://fonts/families/JosefinSans.json", Enum.FontWeight.Light, Enum.FontStyle.Normal)
Instances.QuillText.TextWrapped = false
Instances.QuillText.TextTransparency = 0
Instances.QuillText.TextXAlignment = Enum.TextXAlignment.Center
Instances.QuillText.MaxVisibleGraphemes = -1
Instances.QuillText.TextScaled = false
Instances.QuillText.Parent = Instances.Header

Instances.close.Name = "close"
Instances.close.AutoButtonColor = true
Instances.close.LayoutOrder = 0
Instances.close.Active = true
Instances.close.Interactable = true
Instances.close.AnchorPoint = Vector2.new(0, 0)
Instances.close.Visible = true
Instances.close.ZIndex = 1
Instances.close.AutomaticSize = Enum.AutomaticSize.None
Instances.close.Size = UDim2.new(0.0317048728, 0, 0.315724909, 0)
Instances.close.Draggable = false
Instances.close.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instances.close.ClipsDescendants = false
Instances.close.BorderColor3 = Color3.new(0, 0, 0)
Instances.close.Selectable = true
Instances.close.BorderSizePixel = 0
Instances.close.Rotation = 0
Instances.close.BackgroundTransparency = 1
Instances.close.Position = UDim2.new(0.936162353, 0, 0.299999863, 0)
Instances.close.BorderMode = Enum.BorderMode.Outline
Instances.close.BackgroundColor3 = Color3.new(1, 1, 1)
Instances.close.TextDirection = Enum.TextDirection.Auto
Instances.close.TextStrokeColor3 = Color3.new(0, 0, 0)
Instances.close.TextStrokeTransparency = 1
Instances.close.TextTruncate = Enum.TextTruncate.None
Instances.close.RichText = false
Instances.close.TextColor3 = Color3.new(0, 0, 0)
Instances.close.TextYAlignment = Enum.TextYAlignment.Center
Instances.close.Text = "x"
Instances.close.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.close.TextWrapped = false
Instances.close.TextTransparency = 0
Instances.close.TextXAlignment = Enum.TextXAlignment.Center
Instances.close.MaxVisibleGraphemes = -1
Instances.close.TextScaled = false
Instances.close.Parent = Instances.Header

Instances.LogoQuill.Name = "LogoQuill"
Instances.LogoQuill.LayoutOrder = 0
Instances.LogoQuill.Active = false
Instances.LogoQuill.Interactable = true
Instances.LogoQuill.AnchorPoint = Vector2.new(0, 0)
Instances.LogoQuill.Visible = true
Instances.LogoQuill.ZIndex = 1
Instances.LogoQuill.AutomaticSize = Enum.AutomaticSize.None
Instances.LogoQuill.Size = UDim2.new(0.0500000007, 0, 0.949999988, 0)
Instances.LogoQuill.Draggable = false
Instances.LogoQuill.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instances.LogoQuill.ClipsDescendants = false
Instances.LogoQuill.BorderColor3 = Color3.new(0, 0, 0)
Instances.LogoQuill.Selectable = false
Instances.LogoQuill.BorderSizePixel = 0
Instances.LogoQuill.Rotation = 0
Instances.LogoQuill.BackgroundTransparency = 1
Instances.LogoQuill.Position = UDim2.new(0.0170000009, 0, 0, 0)
Instances.LogoQuill.BorderMode = Enum.BorderMode.Outline
Instances.LogoQuill.BackgroundColor3 = Color3.new(1, 1, 1)
Instances.LogoQuill.ImageColor3 = Color3.new(1, 1, 1)
Instances.LogoQuill.ScaleType = Enum.ScaleType.Stretch
Instances.LogoQuill.ImageTransparency = 0
Instances.LogoQuill.SliceScale = 1
Instances.LogoQuill.Image = "rbxassetid://111732193236676"
Instances.LogoQuill.TileSize = UDim2.new(1, 0, 1, 0)
Instances.LogoQuill.ImageRectSize = Vector2.new(0, 0)
Instances.LogoQuill.ImageContent = Content
Instances.LogoQuill.ResampleMode = Enum.ResamplerMode.Default
Instances.LogoQuill.ImageRectOffset = Vector2.new(0, 0)
Instances.LogoQuill.SliceCenter = Rect.new(Vector2.new(0, 0), Vector2.new(0, 0))
Instances.LogoQuill.Parent = Instances.Header

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.mobilebutton)
	local mobilebutton = script.Parent
	local Quill = script.Parent.Parent.MainFrame
	local UserInput = game:GetService("UserInputService")
	
	-- Check if the device is mobile
	local ismobile = UserInput.TouchEnabled
	
	-- Set the visibility of the mobile button based on the device type
	mobilebutton.Visible = ismobile
	
	mobilebutton.MouseButton1Click:Connect(function()
		if Quill.Visible then
			Quill.Visible = false
		else
			Quill.Visible = true
		end
	end)
	
	
end)()

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.MainFrame)
	local idk = {
		Keybind = "RightShift"
	}
	
	local Quill = script.Parent
	local UserInput = game:GetService("UserInputService")
	
	UserInput.InputBegan:Connect(function(key)
		if key.KeyCode == Enum.KeyCode[idk.Keybind] then
			if Quill.Visible == false then
				Quill.Visible = true
			else
				Quill.Visible = false
			end
		end
	end)
end)
