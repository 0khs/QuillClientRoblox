---[
-- Yes, some of this is from 7GranddadPGN
-- Made by: 0khs
--
---]
-- Made for Multiple roblox game!(make sure your executor is level 7 or higher because yes)

for _, folder in {'quill', 'quill/assets', 'quill/games', 'quill/profiles'} do
	if not isfolder(folder)then
		makefolder(folder)
	end
end

local QuillLibrary = {}

local guiInstance = nil
local connections = {}
local init = false
local assetfunction = getcustomasset
local getcustomasset

local function _cleanup()
	if guiInstance then
		for _, conn in ipairs(connections) do
			conn:Disconnect()
		end
		connections = {}
		guiInstance:Destroy()
		guiInstance = nil
		init = false
	end
end


local function _create()
	local quill = {
		Version = "0.0.1",
		Keybind = "LeftControl"
	}

	local uipallet = {
		main = Color3.fromRGB(20, 17, 20),
		white = Color3.fromRGB(255, 255, 255),
		mainLight = ""
	}

	local inputService = game:GetService("UserInputService")
	local guiService = game:GetService("GuiService")
	local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	local tween = game:GetService("TweenService")
	local ismobile = inputService.TouchEnabled
	local HttpService = game:GetService("HttpService")

	local getcustomasset = {
		["quill/assets/Logo.png"] = "rbxassetid://111732193236676"
	}

	local function addCorner(parent, radius)
		local Corner = Instance.new('UICorner')
		Corner.CornerRadius = UDim.new(0, radius)
		Corner.Parent = parent
		return Corner
	end

	local function makeDraggable(dragHandle, dragTarget)
		local dragging = false
		local dragStart = nil
		local startPos = nil
		local dragInput = nil
		local inputChangedConn = nil
		local inputBeganConn = nil

		inputBeganConn = dragHandle.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = dragTarget.Position
				dragInput = input

				local changedConn
				changedConn = input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
						dragStart = nil
						startPos = nil
						dragInput = nil
						if changedConn then changedConn:Disconnect() end
						if inputChangedConn then inputChangedConn:Disconnect(); inputChangedConn = nil end
					end
				end)

				inputChangedConn = inputService.InputChanged:Connect(function(inputInner)
					if not (dragging and dragStart and startPos and dragInput) then return end

					if ismobile then
						if inputInner == dragInput then
							local delta = inputInner.Position - dragStart
							dragTarget.Position = UDim2.new(
								startPos.X.Scale,
								startPos.X.Offset + delta.X,
								startPos.Y.Scale,
								startPos.Y.Offset + delta.Y
							)
						end
					else
						if inputInner.UserInputType == Enum.UserInputType.MouseMovement then
							local delta = inputInner.Position - dragStart
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
		end)
	end

	local function CreateLoading(parent)
		local QuillLoading = Instance.new("CanvasGroup")
		QuillLoading.Name = "QuillLoading"
		QuillLoading.Size = UDim2.new(0.362, 0, 0.434, 0)
		QuillLoading.AnchorPoint = Vector2.new(0.5, 0.5)
		QuillLoading.Position = UDim2.new(0.5, 0, 0.5, 0)
		QuillLoading.BackgroundColor3 = uipallet.main
		QuillLoading.ZIndex = 20
		QuillLoading.Parent = parent
		addCorner(QuillLoading, 8)

		local loadingbar = Instance.new("Frame")
		loadingbar.Name = "loadingbar"
		loadingbar.BackgroundColor3 = uipallet.white
		loadingbar.Size = UDim2.new(0.857, 0, 0.03, 0)
		loadingbar.Position = UDim2.new(0.071, 0,0.721, 0)
		loadingbar.ZIndex = 21
		loadingbar.Parent = QuillLoading
		addCorner(loadingbar, 8)

		local loadingbar1 = Instance.new("Frame")
		loadingbar1.Name = "loadingbar1"
		loadingbar1.BackgroundColor3 = Color3.fromRGB(166, 166, 166)
		loadingbar1.Size = UDim2.new(0.0001, 0, 1, 0)
		loadingbar1.Position = UDim2.new(0, 0, 0, 0)
		loadingbar1.ZIndex = 22
		loadingbar1.Parent = loadingbar
		addCorner(loadingbar1, 8)
        
        local downloadtext = Instance.new('TextLabel')
        downloadtext.Name = "downloadtext"
        downloadtext.Text = "Preparing..."
        downloadtext.FontFace = Font.fromName("ComicNeueAngular", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        downloadtext.TextColor3 = uipallet.white
        downloadtext.TextSize = 18
        downloadtext.Size = UDim2.new(0.443, 0, 0.174, 0)
        downloadtext.Position = UDim2.new(0.07, 0, 0.546, 0)
        downloadtext.BackgroundTransparency = 1
        downloadtext.ZIndex = 21
        downloadtext.TextXAlignment = Enum.TextXAlignment.Left
        downloadtext.Parent = QuillLoading
        
        local function updateDownloadText(text)
            downloadtext.Text = "Downloading " .. text
            
            -- Tween the loading bar based on download progress
            local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local tweenGoal = {Size = UDim2.new(math.random(0.7, 0.9), 0, 1, 0)} -- Random progress between 70-90%
            local barTween = tween:Create(loadingbar1, tweenInfo, tweenGoal)
            barTween:Play()
            
            return true
        end
		
		local finishedDownload = false
		
		--Skidded
		local function downloadFile(path, func)
			if not isfile(path) then
				updateDownloadText(path)
				local suc, res = pcall(function()
					return game:HttpGet('https://raw.githubusercontent.com/0khs/main/QuillClientRoblox'..select(1, path:gsub('quill/','')),true)
				end)
				if not suc or res == '404:Not Found' then
					error(res)
				end
				if path:find('.lua') then
					res = ' --this watermark is used to delete the file if its cached, remove it tomake te file presist after quill updates. \n '..res
				end
				writefile(path, res)
                
                -- Update loading bar to 100% when download is complete
                local completeTween = tween:Create(loadingbar1, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(1, 0, 1, 0)
                })
                completeTween:Play()
                downloadtext.Text = "Downloaded " .. path
                finishedDownload = true
			end
			return (func or readfile)(path)
		end
		
		getcustomasset = not inputService.TouchEnabled and assetfunction and function(path)
			return downloadFile(path, assetfunction)
		end or function(path)
			return getcustomasset[path] or ''
            finishedDownload = true
            
            -- When using predefined assets, make loading bar complete
            local quickTween = tween:Create(loadingbar1, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Size = UDim2.new(1, 0, 1, 0)
            })
            quickTween:Play()
            downloadtext.Text = "Initialization Complete"
		end
		
		local WatermarkLogo = Instance.new('ImageLabel')
		WatermarkLogo.Name = "WatermarkLogo"
		WatermarkLogo.Image = getcustomasset["quill/assets/Logo.png"]
		WatermarkLogo.BackgroundTransparency = 1
		WatermarkLogo.ImageColor3 = uipallet.white
		WatermarkLogo.Size = UDim2.new(0, 72, 0, 63)
		WatermarkLogo.Position = UDim2.new(0.04, 0, 0.062, 0)
		WatermarkLogo.ZIndex = 21
		WatermarkLogo.Parent = QuillLoading

		local WatermarkText = Instance.new("TextLabel")
		WatermarkText.Name = "WatermarkText"
		WatermarkText.BackgroundTransparency = 1
		WatermarkText.FontFace = Font.fromName("AccanthisADFStd",Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		WatermarkText.Text = "QuilLClient"
		WatermarkText.TextSize = 24
		WatermarkText.TextColor3 = uipallet.white
		WatermarkText.Size = UDim2.new(0.361, 0, 0.4, 0)
		WatermarkText.Position = UDim2.new(0.1, 0, 0.070, 0)
		WatermarkText.ZIndex = 21
		WatermarkText.Parent = QuillLoading

		return QuillLoading, loadingbar1
	end
	
	_cleanup()

	local gui = Instance.new('ScreenGui')
	gui.Name = "QuillGui_" .. HttpService:GenerateGUID(false)
	gui.DisplayOrder = 99999
	gui.ClipToDeviceSafeArea = true
	gui.IgnoreGuiInset = true
	gui.Parent = playerGui
	guiInstance = gui

	if not init then
		 local loadingScreenInstance, loadingBar = CreateLoading(gui)

		if loadingScreenInstance and loadingScreenInstance.Parent then
			loadingScreenInstance:Destroy()
		end
		init = true
	end

	local mainframe = Instance.new('CanvasGroup')
	mainframe.Name = "mainframe"
	mainframe.Size = UDim2.new(0.45, 0, 0.65, 0)
	mainframe.Visible = false
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
	guilogo.Image = getcustomasset["quill/assets/Logo.png"]
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
	guiversion.Position = UDim2.new(0.029, 0, 10, 0)
	guiversion.BackgroundTransparency = 1
	guiversion.Parent = header

	local mobilebutton = Instance.new('TextButton')
	mobilebutton.Name = "quillMobileToggle"
	mobilebutton.Size = UDim2.new(0, 60, 0, 30)
	mobilebutton.Position = UDim2.new(0.01, 0, 0.02, 0)
	mobilebutton.Text = "GUI"
	mobilebutton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	mobilebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
	mobilebutton.ZIndex = 10
	mobilebutton.Parent = gui
	addCorner(mobilebutton, 4)

	local toggleConnection = mobilebutton.MouseButton1Click:Connect(function()
		mainframe.Visible = not mainframe.Visible
	end)
	table.insert(connections, toggleConnection)

	if ismobile then
		mobilebutton.Visible = true
	else
		mobilebutton.Visible = false
	end

	local keybindConnection = inputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if not init then return end
		if gameProcessedEvent then return end

		if input.KeyCode == Enum.KeyCode[quill.Keybind] then
			mainframe.Visible = not mainframe.Visible
		end
	end)
	table.insert(connections, keybindConnection)
end

function QuillLibrary.Create()
	_create()
end

function QuillLibrary.Reinject()
	_create()
end

function QuillLibrary.Uninject()
	_cleanup()
end

QuillLibrary.Create()

return QuillLibrary
