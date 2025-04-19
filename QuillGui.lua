---[
-- Yes, some of this is from 7GranddadPGN
-- Made by: 0khs
--
---]

local quill = {
	Version = "0.0.1",
	Keybind = "LeftControl"
}

local uipallet = {
	main = Color3.fromRGB(20, 17, 20),
	mainLight = "",
}

--------------------------------------------------
local inputService = game:GetService("UserInputService")
local guiService = game:GetService("GuiService")
local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local ismobile = inputService.TouchEnabled

local assetTable = {
	["quill/assets/Logo.png"] = "rbxassetid://111732193236676"
}

local function addCorner(parent, radius)
	local Corner = Instance.new('UICorner')
	Corner.CornerRadius = UDim.new(0, radius)
	Corner.Parent = parent
	
	return addCorner
end

local function makeDraggable(dragHandle, dragTarget)
	local dragging = false
	local dragStart = nil
	local startPos = nil
	local dragInput = nil

	dragHandle.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = dragTarget.Position
			dragInput = input

			-- Kill drag if input ends
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
					dragStart = nil
					startPos = nil
					dragInput = nil
				end
			end)
		end
	end)

	inputService.InputChanged:Connect(function(input)
		if not (dragging and dragStart and startPos) then return end

		if ismobile then
			if input == dragInput then
				local delta = input.Position - dragStart
				dragTarget.Position = UDim2.new(
					startPos.X.Scale,
					startPos.X.Offset + delta.X,
					startPos.Y.Scale,
					startPos.Y.Offset + delta.Y
				)
			end
		else
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				local delta = input.Position - dragStart
				dragTarget.Position = UDim2.new(
					startPos.X.Scale,
					startPos.X.Offset + delta.X,
					startPos.Y.Scale,
					startPos.Y.Offset + delta.Y
				)
			end
		end
	end)
end
----------------------------------------------------

local gui = Instance.new('ScreenGui')
gui.Name = "QuillGui"
gui.DisplayOrder = 99999
gui.ClipToDeviceSafeArea = true
gui.IgnoreGuiInset = true
gui.Parent = playerGui
local mainframe = Instance.new('CanvasGroup')
mainframe.Name = "mainframe"
mainframe.Size = UDim2.new(0.45, 0, 0.65, 0)
mainframe.Visible = true
mainframe.AnchorPoint = Vector2.new(0.5, 0.5)
mainframe.Position = UDim2.new(0.5, 0, 0.5, 0)
mainframe.BorderSizePixel = 0
mainframe.BackgroundColor3 = uipallet.main
mainframe.ZIndex = 1
mainframe.Parent = gui
addCorner(mainframe, 8)
local header = Instance.new('Frame')
header.Name = "header"
header.Size = UDim2.new(1, 0, 0.1, 0)
header.BorderSizePixel = 0
header.Visible = true
header.ZIndex = 2
header.BackgroundTransparency = 1
header.Parent = mainframe
makeDraggable(header, mainframe)
local guilogo = Instance.new('ImageLabel')
guilogo.Name = "QuillLogo"
guilogo.Size = UDim2.new(0.068, 0, 1, 0)
guilogo.Image = assetTable["quill/assets/Logo.png"]
guilogo.Visible = true
guilogo.Position = UDim2.new(0.02, 0, 0.1, 0)
guilogo.BackgroundTransparency = 1
guilogo.Parent = header
local guitext = Instance.new('TextLabel')
guitext.Name = "QuillText"
guitext.Size = UDim2.new(0.062, 0, 1, 0)
guitext.Text = "QuilL"
guitext.FontFace = Font.fromName("SourceSans", Enum.FontWeight.Thin, Enum.FontStyle.Normal)
guitext.TextSize = 18
guitext.TextColor3 = Color3.fromRGB(255, 255, 255)
guitext.Visible = true
guitext.Position = UDim2.new(0.076, 0, 0.12, 0)
guitext.BackgroundTransparency = 1
guitext.Parent = header
local guiversion = Instance.new('TextLabel')
guiversion.Name = "QuillVersion"
guiversion.Size = UDim2.new(0.045, 0, 0.768, 0)
guiversion.Text = quill.Version
guiversion.TextColor3 = Color3.fromRGB(255, 255, 255)
guiversion.FontFace = Font.fromName("Code", Enum.FontWeight.ExtraLight, Enum.FontStyle.Normal)
guiversion.Visible = true
guiversion.TextSize = 12
guiversion.Position = UDim2.new(0.029, 0, 9.202, 0)
guiversion.BackgroundTransparency = 1
guiversion.Parent = header
local mobilebutton = Instance.new('TextButton')
mobilebutton.Name = "quill"
mobilebutton.Size = UDim2.new(0, 60, 0, 20)
mobilebutton.Position = UDim2.new(0.768, 0, 0.014, 0)
mobilebutton.Text = "quill"
mobilebutton.BackgroundTransparency = 0.2
mobilebutton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mobilebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
mobilebutton.Parent = gui

mobilebutton.MouseButton1Click:Connect(function()
	if mainframe.Visible == false then
		mainframe.Visible = true
	else
		mainframe.Visible = false
	end
end)


if ismobile then
	mobilebutton.Visible = true
else
	mobilebutton.Visible = false
end

inputService.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if input.KeyCode == Enum.KeyCode[quill.Keybind] then
			if mainframe.Visible == false then
				mainframe.Visible = true
			else
				mainframe.Visible = false
			end
		end
	end
end)
