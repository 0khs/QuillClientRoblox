---[
-- Yes, some of this is from 7GranddadPGN
-- Made by: 0khs
--
---]

local quill = {
	Version = "q0.1",
	Keybind = "RightShift"
}

local uipallet = {
	main = Color3.fromRGB(20, 17, 20),
	header = Color3.fromRGB(25, 22, 26),
	mainLight = "",
	headerLight = ""
}

local inputService = game:GetService("UserInputService")
local guiService = game:GetService("GuiService")
local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local function addCorner(parent, radius)
	local Corner = Instance.new('UICorner')
	Corner.CornerRadius = UDim.new(0, radius)
	Corner.Parent = parent
	
	return addCorner
end
----------------------------------------------------
local function makeDraggable(dragHandle, dragTarget)
	local dragging = false
	local dragStart = nil
	local startPos = nil

	dragHandle.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = dragTarget.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	inputService.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - dragStart
			dragTarget.Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		end
	end)
end
----------------------------------------------------

local gui = Instance.new('ScreenGui')
gui.Name = "QuillGui"
gui.DisplayOrder = 99999
gui.Parent = playerGui
local mainframe = Instance.new('CanvasGroup')
mainframe.Name = "mainframe"
mainframe.Size = UDim2.new(0.45, 0, 0.6, 0)
mainframe.Visible = true
mainframe.AnchorPoint = Vector2.new(0.5, 0.5)
mainframe.Position = UDim2.new(0.5, 0, 0.5, 0)
mainframe.BorderSizePixel = 0
mainframe.BackgroundColor3 = uipallet.main
mainframe.Parent = gui

addCorner(mainframe, 8)
makeDraggable(mainframe, mainframe)
