--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0 = {""};
local v1 = {};
local v2, v3, v4 = 12, 26, 16;
local v5, v6 = 520, 200;
local v7, v8 = 550, 300;
local v9 = 28;
local v10 = 24;
local v11 = 32;
local v12 = 36;
local v13 = 220;
local v14, v15 = 360, 360;
local v16, v17 = 260, 220;
local v18 = 24;
local v19, v20 = 380, 350;
local v21, v22 = 400, 420;
local v23 = 2000;
local v24 = 1000;
local v25 = true;
local v26 = true;
local v27 = "ChatLogs";
local v28 = Enum.KeyCode.RightControl;
local v29 = {};
local v30 = "ChatLoggerConfig.json";
local v31 = game:GetService("Players");
local v32 = v31.LocalPlayer;
local v33 = game:GetService("TextChatService");
local v34 = game:GetService("UserInputService");
local v35 = game:GetService("GuiService");
local v36 = game:GetService("ReplicatedStorage");
local v37 = game:GetService("SoundService");
local v38, v39 = {}, {};
local v40, v41 = {}, {};
for v677, v678 in ipairs(v0) do
	if (typeof(v678) == "string") then
		v38[string.lower(v678)] = true;
	elseif ((typeof(v678) == "number") or (4593 <= 2672)) then
		v39[v678] = true;
	end
end
for v679, v680 in ipairs(v1) do
	if ((typeof(v680) == "string") or (1168 > 3156)) then
		v40[string.lower(v680)] = true;
	elseif (typeof(v680) == "number") then
		v41[v680] = true;
	end
end
local function v42(v681)
	return string.lower(v681 or "");
end
local function v43()
	for v1100 in pairs(v38) do
		return true;
	end
	for v1101 in pairs(v39) do
		return true;
	end
	return false;
end
local function v44(v682, v683)
	if (v41[v683] or (572 > 4486)) then
		return true;
	end
	if v40[v42(v682)] then
		return true;
	end
	return false;
end
local function v45(v684)
	if ((1404 == 1404) and not v684.TextSource) then
		return false;
	end
	local v685 = v684.TextSource.UserId;
	if (not v685 or (3748 < 2212)) then
		return false;
	end
	local v686 = v31:GetPlayerByUserId(v685);
	if (v686 and v44(v686.Name, v685)) then
		return false;
	end
	if not v43() then
		return not v44((v686 and v686.Name) or "", v685);
	end
	if v39[v685] then
		return true;
	end
	if v686 then
		return v38[v42(v686.Name)] or v38[v42(v686.DisplayName)] or false;
	else
		local v1164, v1165 = pcall(function()
			return v31:GetNameFromUserIdAsync(v685);
		end);
		return (v1164 and v38[v42(v1165)]) or false;
	end
end
local function v46(v687, v688, v689)
	if ((v687 < v688) or (1180 == 2180)) then
		return v688;
	elseif ((4090 < 4653) and (v687 > v689)) then
		return v689;
	else
		return v687;
	end
end
local v47 = Color3.fromRGB(18, 18, 18);
local v48 = Color3.fromRGB(26, 26, 26);
local v49 = Color3.fromRGB(40, 40, 40);
local v50 = Color3.fromRGB(230, 230, 230);
local v51 = {};
local v52 = {opacity=1,clickThrough=false,showDisplayNames=true,windowPos={X=40,Y=220},windowSize={X=v7,Y=(v9 + v10 + v8 + v11)},fontSize=v4,logging=true,autoScroll=true,wrapText=true,showTime=true,keywords={},userColors={},themeColors={bg={18,18,18},acc={26,26,26},btn={40,40,40}}};
local function v53()
	local v690 = {opacity=v52.opacity,clickThrough=v52.clickThrough,showDisplayNames=v52.showDisplayNames,windowPos=v52.windowPos,windowSize=v52.windowSize,fontSize=v52.fontSize,logging=v52.logging,autoScroll=v52.autoScroll,wrapText=v52.wrapText,showTime=v52.showTime,keywords=v29,userColors={},themeColors=v52.themeColors,allowedNames={},blacklistNames={}};
	for v1102, v1103 in pairs(v51) do
		v690.userColors[v1102] = {math.floor(v1103.R * 255),math.floor(v1103.G * 255),math.floor(v1103.B * 255)};
	end
	for v1105 in pairs(v38) do
		table.insert(v690.allowedNames, v1105);
	end
	for v1106 in pairs(v40) do
		table.insert(v690.blacklistNames, v1106);
	end
	local v691 = pcall(function()
		if (typeof(writefile) == "function") then
			local v1267 = game:GetService("HttpService"):JSONEncode(v690);
			writefile(v30, v1267);
		end
	end);
end
local function v54()
	local v692 = pcall(function()
		if (((typeof(readfile) == "function") and (typeof(isfile) == "function") and isfile(v30)) or (2652 < 196)) then
			local v1268 = readfile(v30);
			local v1269 = game:GetService("HttpService"):JSONDecode(v1268);
			v52.opacity = v1269.opacity or 1;
			v52.clickThrough = v1269.clickThrough or false;
			v52.showDisplayNames = v1269.showDisplayNames or true;
			v52.windowPos = v1269.windowPos or v52.windowPos;
			v52.windowSize = v1269.windowSize or v52.windowSize;
			v52.fontSize = v1269.fontSize or v4;
			v52.logging = v1269.logging or true;
			v52.autoScroll = v1269.autoScroll or true;
			v52.wrapText = v1269.wrapText or true;
			v52.showTime = v1269.showTime or true;
			if v1269.keywords then
				for v1330, v1331 in ipairs(v1269.keywords) do
					v29[v42(v1331)] = true;
				end
			end
			if ((4135 < 4817) and v1269.userColors) then
				for v1333, v1334 in pairs(v1269.userColors) do
					v51[v1333] = Color3.fromRGB(v1334[1], v1334[2], v1334[3]);
				end
			end
			if ((272 == 272) and v1269.themeColors) then
				v47 = Color3.fromRGB(v1269.themeColors.bg[1], v1269.themeColors.bg[2], v1269.themeColors.bg[3]);
				v48 = Color3.fromRGB(v1269.themeColors.acc[1], v1269.themeColors.acc[2], v1269.themeColors.acc[3]);
				v49 = Color3.fromRGB(v1269.themeColors.btn[1], v1269.themeColors.btn[2], v1269.themeColors.btn[3]);
			end
			if v1269.allowedNames then
				for v1336, v1337 in ipairs(v1269.allowedNames) do
					v38[v1337] = true;
				end
			end
			if v1269.blacklistNames then
				for v1339, v1340 in ipairs(v1269.blacklistNames) do
					v40[v1340] = true;
				end
			end
		end
	end);
end
local function v55(v693, v694)
	local v695 = false;
	local v696 = Vector2.new(0, 0);
	local v697, v698;
	local function v699()
		v695 = true;
		local v1107 = v34:GetMouseLocation();
		local v1108 = v35:GetGuiInset();
		local v1109 = v693.AbsolutePosition + v1108;
		v696 = v1107 - v1109;
		if ((100 <= 3123) and v697) then
			v697:Disconnect();
		end
		if v698 then
			v698:Disconnect();
		end
		v697 = v34.InputChanged:Connect(function(v1166)
			if (v695 and ((v1166.UserInputType == Enum.UserInputType.MouseMovement) or (v1166.UserInputType == Enum.UserInputType.Touch))) then
				local v1311 = v34:GetMouseLocation();
				v693.Position = UDim2.fromOffset(v1311.X - v696.X, v1311.Y - v696.Y);
			end
		end);
		v698 = v34.InputEnded:Connect(function(v1167)
			if ((v1167.UserInputType == Enum.UserInputType.MouseButton1) or (v1167.UserInputType == Enum.UserInputType.Touch)) then
				v695 = false;
				if v697 then
					v697:Disconnect();
				end
				if (v698 or (1369 > 4987)) then
					v698:Disconnect();
				end
			end
		end);
	end
	for v1110, v1111 in ipairs(v694) do
		v1111.InputBegan:Connect(function(v1168)
			if ((v1168.UserInputType == Enum.UserInputType.MouseButton1) or (v1168.UserInputType == Enum.UserInputType.Touch)) then
				v699();
			end
		end);
	end
end
local v56 = Instance.new("ScreenGui");
v56.Name = "ChatLoggerPro";
v56.ResetOnSpawn = false;
v56.IgnoreGuiInset = true;
v56.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v56.Parent = v32:WaitForChild("PlayerGui");
local v63 = Instance.new("Frame");
v63.Name = "ChatWindow";
v63.Parent = v56;
v63.BackgroundColor3 = v47;
v63.BorderSizePixel = 0;
v63.Position = UDim2.fromOffset(v52.windowPos.X, v52.windowPos.Y);
v63.Size = UDim2.new(0, v52.windowSize.X, 0, v52.windowSize.Y);
v63.Active = true;
v63.AnchorPoint = Vector2.new(0, 0);
v63.BackgroundTransparency = 1 - v52.opacity;
Instance.new("UICorner", v63).CornerRadius = UDim.new(0, 8);
local v74 = Instance.new("Frame");
v74.Name = "TitleBar";
v74.Parent = v63;
v74.BackgroundColor3 = v48;
v74.BorderSizePixel = 0;
v74.Size = UDim2.new(1, 0, 0, v9);
v74.Active = true;
v74.BackgroundTransparency = 1 - v52.opacity;
local v82 = Instance.new("TextLabel");
v82.Parent = v74;
v82.BackgroundTransparency = 1;
v82.Position = UDim2.new(0, 8, 0, 0);
v82.Size = UDim2.new(0.5, 0, 1, 0);
v82.Font = Enum.Font.SourceSansSemibold;
v82.Text = "Trying ChatLogger";
v82.TextColor3 = Color3.new(1, 1, 1);
v82.TextSize = 15;
v82.TextXAlignment = Enum.TextXAlignment.Left;
local function v94(v700, v701, v702)
	local v703 = Instance.new("TextButton");
	v703.Parent = v74;
	v703.Size = UDim2.new(0, v701, 0, v9 - 4);
	v703.Position = UDim2.new(0, v702, 0, 2);
	v703.BackgroundColor3 = v49;
	v703.TextColor3 = Color3.new(1, 1, 1);
	v703.Font = Enum.Font.SourceSansSemibold;
	v703.TextSize = 14;
	v703.Text = v700;
	v703.BackgroundTransparency = 1 - v52.opacity;
	Instance.new("UICorner", v703).CornerRadius = UDim.new(0, 6);
	return v703;
end
local v95 = v94("Log [ON]", 86, 120);
local v96 = v94("Auto↓ [AUTO]", 108, 208);
local v97 = v94("A-", 36, 320);
local v98 = v94("A+", 36, 360);
local function v99(v715, v716)
	local v717 = Instance.new("TextButton");
	v717.BackgroundTransparency = 1;
	v717.AnchorPoint = Vector2.new(1, 0);
	v717.Position = UDim2.new(1, v716, 0, 0);
	v717.Size = UDim2.new(0, 28, 1, 0);
	v717.Font = Enum.Font.SourceSansBold;
	v717.Text = v715;
	v717.TextColor3 = Color3.new(1, 1, 1);
	v717.TextSize = 16;
	v717.Parent = v74;
	return v717;
end
local v100 = v99("×", 0);
local v101 = v99("_", -28);
local v102 = Instance.new("Frame");
v102.Parent = v63;
v102.Size = UDim2.new(0, 200, 0, 90);
v102.AnchorPoint = Vector2.new(0.5, 0.5);
v102.Position = UDim2.new(0.5, 0, 0.5, 0);
v102.BackgroundColor3 = Color3.fromRGB(35, 35, 35);
v102.Visible = false;
v102.ZIndex = 200;
Instance.new("UICorner", v102).CornerRadius = UDim.new(0, 8);
local v111 = Instance.new("TextLabel");
v111.Parent = v102;
v111.Size = UDim2.new(1, 0, 0, 40);
v111.BackgroundTransparency = 1;
v111.Text = "¿Cerrar Logger?";
v111.TextColor3 = Color3.new(1, 1, 1);
v111.Font = Enum.Font.SourceSansBold;
v111.TextSize = 16;
v111.ZIndex = 201;
local v121 = Instance.new("TextButton");
v121.Parent = v102;
v121.Size = UDim2.new(0, 80, 0, 30);
v121.Position = UDim2.new(0, 10, 0, 50);
v121.BackgroundColor3 = Color3.fromRGB(180, 60, 60);
v121.Text = "Sí";
v121.TextColor3 = Color3.new(1, 1, 1);
v121.Font = Enum.Font.SourceSansBold;
v121.TextSize = 14;
v121.ZIndex = 201;
Instance.new("UICorner", v121).CornerRadius = UDim.new(0, 6);
local v132 = Instance.new("TextButton");
v132.Parent = v102;
v132.Size = UDim2.new(0, 80, 0, 30);
v132.Position = UDim2.new(1, -90, 0, 50);
v132.BackgroundColor3 = v49;
v132.Text = "No";
v132.TextColor3 = Color3.new(1, 1, 1);
v132.Font = Enum.Font.SourceSansBold;
v132.TextSize = 14;
v132.ZIndex = 201;
Instance.new("UICorner", v132).CornerRadius = UDim.new(0, 6);
local v143 = Instance.new("Frame");
v143.Parent = v63;
v143.BackgroundColor3 = v48;
v143.BorderSizePixel = 0;
v143.Position = UDim2.new(0, 0, 0, v9);
v143.Size = UDim2.new(1, 0, 0, v10);
v143.BackgroundTransparency = 1 - v52.opacity;
local v150 = Instance.new("TextLabel");
v150.Parent = v143;
v150.BackgroundTransparency = 1;
v150.Position = UDim2.new(0, 8, 0, 0);
v150.Size = UDim2.new(1, -120, 1, 0);
v150.Font = Enum.Font.SourceSans;
v150.TextColor3 = Color3.fromRGB(210, 210, 210);
v150.TextXAlignment = Enum.TextXAlignment.Left;
v150.TextSize = 14;
v150.Text = "Líneas 0/0 (faltan 0) • Rot: 0";
local v161 = Instance.new("TextButton");
v161.Parent = v143;
v161.AnchorPoint = Vector2.new(1, 0);
v161.Position = UDim2.new(1, -6, 0, 2);
v161.Size = UDim2.new(0, 86, 0, v10 - 4);
v161.BackgroundColor3 = v49;
v161.BorderSizePixel = 0;
v161.Font = Enum.Font.SourceSansSemibold;
v161.Text = "Limpiar";
v161.TextColor3 = Color3.new(1, 1, 1);
v161.TextSize = 14;
v161.BackgroundTransparency = 1 - v52.opacity;
Instance.new("UICorner", v161).CornerRadius = UDim.new(0, 6);
local v174 = Instance.new("Frame");
v174.Parent = v63;
v174.BackgroundColor3 = v48;
v174.BorderSizePixel = 0;
v174.Position = UDim2.new(0, 0, 0, v9 + v10);
v174.Size = UDim2.new(1, 0, 0, 28);
v174.BackgroundTransparency = 1 - v52.opacity;
v174.Visible = false;
local v182 = Instance.new("TextBox");
v182.Parent = v174;
v182.Position = UDim2.new(0, 6, 0, 2);
v182.Size = UDim2.new(1, -80, 0, 24);
v182.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v182.TextColor3 = Color3.new(1, 1, 1);
v182.Font = Enum.Font.SourceSans;
v182.TextSize = 14;
v182.PlaceholderText = "Buscar en el chat...";
v182.Text = "";
v182.ClearTextOnFocus = false;
Instance.new("UICorner", v182).CornerRadius = UDim.new(0, 6);
local v194 = Instance.new("TextButton");
v194.Parent = v174;
v194.Position = UDim2.new(1, -70, 0, 2);
v194.Size = UDim2.new(0, 64, 0, 24);
v194.BackgroundColor3 = v49;
v194.TextColor3 = Color3.new(1, 1, 1);
v194.Font = Enum.Font.SourceSansSemibold;
v194.TextSize = 14;
v194.Text = "Cerrar";
Instance.new("UICorner", v194).CornerRadius = UDim.new(0, 6);
local v204 = Instance.new("ScrollingFrame");
v204.Name = "LogPanel";
v204.Parent = v63;
v204.BackgroundColor3 = Color3.fromRGB(12, 12, 12);
v204.BorderSizePixel = 0;
v204.Position = UDim2.new(0, 0, 0, v9 + v10);
v204.Size = UDim2.new(1, 0, 1, -(v9 + v10 + v11));
v204.ScrollBarThickness = 6;
v204.ScrollingEnabled = true;
v204.CanvasSize = UDim2.new(0, 0, 0, 0);
v204.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v204.BackgroundTransparency = 1 - v52.opacity;
local v217 = Instance.new("UIListLayout");
v217.Parent = v204;
v217.FillDirection = Enum.FillDirection.Vertical;
v217.SortOrder = Enum.SortOrder.LayoutOrder;
v217.Padding = UDim.new(0, 4);
local v224 = Instance.new("Frame");
v224.Parent = v63;
v224.BackgroundColor3 = v48;
v224.BorderSizePixel = 0;
v224.Size = UDim2.new(1, 0, 0, v11);
v224.Position = UDim2.new(0, 0, 1, -v11);
v224.BackgroundTransparency = 1 - v52.opacity;
Instance.new("UICorner", v224).CornerRadius = UDim.new(0, 8);
local v232 = Instance.new("UIListLayout");
v232.Parent = v224;
v232.FillDirection = Enum.FillDirection.Horizontal;
v232.HorizontalAlignment = Enum.HorizontalAlignment.Center;
v232.VerticalAlignment = Enum.VerticalAlignment.Center;
v232.Padding = UDim.new(0, 5);
local function v241(v728, v729)
	local v730 = Instance.new("TextButton");
	v730.Parent = v224;
	v730.Size = UDim2.new(0, v729, 0, v11 - 8);
	v730.BackgroundColor3 = v49;
	v730.TextColor3 = Color3.new(1, 1, 1);
	v730.Font = Enum.Font.SourceSansSemibold;
	v730.TextSize = 14;
	v730.Text = v728;
	v730.BackgroundTransparency = 1 - v52.opacity;
	Instance.new("UICorner", v730).CornerRadius = UDim.new(0, 6);
	return v730;
end
local v242 = v241("Filtros", 70);
local v243 = v241("Guardar", 70);
local v244 = v241("Wrap [ON]", 80);
local v245 = v241("Time [ON]", 80);
local v246 = v241("Colores", 70);
local v247 = v241("⚙", 40);
local v248 = v241("🔍", 40);
v55(v63, {v74});
local v249, v250 = v52.logging, v52.autoScroll;
local v251, v252 = v52.wrapText, v52.showTime;
local v253 = false;
local v254 = v52.fontSize;
local v255 = {};
local v256 = {};
local v257 = v52.windowSize.X;
local v258 = v52.windowSize.Y;
local v259 = 0;
local v260 = 0;
local function v261()
	v254 = v46(v254, v2, v3);
	for v1112 = #v255, 1, -1 do
		local v1113 = v255[v1112];
		if ((v1113 and v1113.node and v1113.node.Parent) or (863 >= 4584)) then
			v1113.node.TextSize = v254;
		else
			table.remove(v255, v1112);
		end
	end
end
local function v262()
	return v217.AbsoluteContentSize.Y;
end
local function v263()
	local v741 = v262();
	local v742 = v204.AbsoluteWindowSize.Y;
	local v743 = v204.CanvasPosition.Y;
	return ((v741 - v742) - v743) <= v12;
end
local function v264()
	local v744 = v262();
	local v745 = v204.AbsoluteWindowSize.Y;
	v204.CanvasPosition = Vector2.new(0, math.max(0, v744 - v745));
end
local function v265()
	local v747 = #v256;
	local v748 = math.max(0, v23 - v747);
	local v749 = ((v24 > 0) and math.max(0, v24 - v260)) or 0;
	local v750 = ((v24 > 0) and (" • Rot: " .. v749)) or "";
	v150.Text = ("Líneas %d/%d (faltan %d)%s"):format(v747, v23, v748, v750);
end
local function v266()
	local v752 = 0;
	while #v256 > v23 do
		table.remove(v256, 1);
		if ((v255[1] and v255[1].node) or (724 >= 1668)) then
			v255[1].node:Destroy();
		end
		table.remove(v255, 1);
		v752 += 1
	end
	if (v752 > 0) then
		v265();
	end
end
local v267;
local v268 = Instance.new("Frame");
v268.Name = "ContextMenu";
v268.Parent = v56;
v268.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
v268.BorderSizePixel = 0;
v268.Size = UDim2.new(0, 150, 0, 80);
v268.Visible = false;
v268.ZIndex = 300;
Instance.new("UICorner", v268).CornerRadius = UDim.new(0, 6);
local function v277(v753, v754)
	local v755 = Instance.new("TextButton");
	v755.Parent = v268;
	v755.Position = UDim2.new(0, 4, 0, v754);
	v755.Size = UDim2.new(1, -8, 0, 24);
	v755.BackgroundColor3 = v49;
	v755.TextColor3 = Color3.new(1, 1, 1);
	v755.Font = Enum.Font.SourceSans;
	v755.TextSize = 14;
	v755.Text = v753;
	v755.TextXAlignment = Enum.TextXAlignment.Left;
	Instance.new("UIPadding", v755).PaddingLeft = UDim.new(0, 6);
	Instance.new("UICorner", v755).CornerRadius = UDim.new(0, 4);
	return v755;
end
local v278 = v277("Copiar línea", 4);
local v279 = v277("Copiar todo", 32);
local v280 = nil;
v278.MouseButton1Down:Connect(function()
	if (v280 and (typeof(setclipboard) == "function")) then
		setclipboard(v280.Text);
	end
	v268.Visible = false;
end);
v279.MouseButton1Down:Connect(function()
	if ((428 < 1804) and (typeof(setclipboard) == "function")) then
		setclipboard(table.concat(v256, "\n"));
	end
	v268.Visible = false;
end);
local v281 = Instance.new("ScreenGui");
v281.Name = "FilterGui";
v281.ResetOnSpawn = false;
v281.IgnoreGuiInset = true;
v281.Parent = v32:WaitForChild("PlayerGui");
local v286 = Instance.new("Frame");
v286.Name = "FilterWindow";
v286.Parent = v281;
v286.BackgroundColor3 = v47;
v286.BorderSizePixel = 0;
v286.Position = UDim2.fromOffset(460, 160);
v286.Size = UDim2.new(0, v14, 0, v15);
v286.Active = true;
v286.Visible = false;
Instance.new("UICorner", v286).CornerRadius = UDim.new(0, 8);
local v296 = Instance.new("Frame");
v296.Parent = v286;
v296.BackgroundColor3 = v48;
v296.BorderSizePixel = 0;
v296.Size = UDim2.new(1, 0, 0, 26);
local v301 = Instance.new("TextLabel");
v301.Parent = v296;
v301.BackgroundTransparency = 1;
v301.Position = UDim2.new(0, 8, 0, 0);
v301.Size = UDim2.new(1, -8, 1, 0);
v301.Font = Enum.Font.SourceSansSemibold;
v301.TextColor3 = Color3.new(1, 1, 1);
v301.TextXAlignment = Enum.TextXAlignment.Left;
v301.TextSize = 16;
v301.Text = "Filtros de usuarios";
local v311 = Instance.new("Frame");
v311.Parent = v286;
v311.BackgroundColor3 = v48;
v311.BorderSizePixel = 0;
v311.Size = UDim2.new(1, 0, 0, v18);
v311.Position = UDim2.new(0, 0, 1, -v18);
v55(v286, {v296,v311});
local function v317(v771, v772, v773)
	local v774 = Instance.new("TextButton");
	v774.Size = UDim2.new(0, v772, 0, 24);
	v774.BackgroundColor3 = v49;
	v774.TextColor3 = Color3.new(1, 1, 1);
	v774.Font = Enum.Font.SourceSansSemibold;
	v774.TextSize = 14;
	v774.Text = v771;
	v774.AutoButtonColor = true;
	Instance.new("UICorner", v774).CornerRadius = UDim.new(0, 6);
	v774.Parent = v773;
	return v774;
end
local v318 = v317("×", 26, v296);
v318.Position = UDim2.new(1, -30, 0, 1);
local v320 = Instance.new("TextBox");
v320.Parent = v286;
v320.PlaceholderText = "Buscar por nombre...";
v320.ClearTextOnFocus = false;
v320.Text = "";
v320.TextSize = 14;
v320.Size = UDim2.new(1, -8, 0, 26);
v320.Position = UDim2.new(0, 4, 0, 32);
v320.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v320.TextColor3 = Color3.new(1, 1, 1);
Instance.new("UICorner", v320).CornerRadius = UDim.new(0, 6);
local v331 = Instance.new("Frame");
v331.Parent = v286;
v331.BackgroundTransparency = 1;
v331.Size = UDim2.new(1, -8, 0, 26);
v331.Position = UDim2.new(0, 4, 0, 62);
local v336 = v317("Seleccionar", 110, v331);
v336.Position = UDim2.new(0, 0, 0, 0);
local v338 = v317("Limpiar", 92, v331);
v338.Position = UDim2.new(0, 116, 0, 0);
local v340 = v317("Refrescar", 100, v331);
v340.Position = UDim2.new(0, 212, 0, 0);
local v342 = Instance.new("ScrollingFrame");
v342.Parent = v286;
v342.BackgroundColor3 = Color3.fromRGB(18, 18, 18);
v342.BorderSizePixel = 0;
v342.Position = UDim2.new(0, 4, 0, 92);
v342.Size = UDim2.new(1, -8, 1, (-92 - 64) - v18);
v342.ScrollBarThickness = 6;
v342.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v342.CanvasSize = UDim2.new(0, 0, 0, 0);
Instance.new("UICorner", v342).CornerRadius = UDim.new(0, 6);
local v352 = Instance.new("UIListLayout");
v352.Parent = v342;
v352.FillDirection = Enum.FillDirection.Vertical;
v352.SortOrder = Enum.SortOrder.LayoutOrder;
v352.Padding = UDim.new(0, 3);
local v357 = Instance.new("Frame");
v357.Parent = v286;
v357.BackgroundTransparency = 1;
v357.Position = UDim2.new(0, 4, 1, -54 - v18);
v357.Size = UDim2.new(1, -8, 0, 50);
local v362 = Instance.new("TextBox");
v362.Parent = v357;
v362.PlaceholderText = "Agregar username o UserId...";
v362.ClearTextOnFocus = false;
v362.Text = "";
v362.TextSize = 14;
v362.Size = UDim2.new(1, -60, 1, 0);
v362.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v362.TextColor3 = Color3.new(1, 1, 1);
Instance.new("UICorner", v362).CornerRadius = UDim.new(0, 6);
local v372 = v317("Añadir", 56, v357);
v372.Position = UDim2.new(1, -56, 0, 0);
local v374 = Instance.new("TextLabel");
v374.Parent = v286;
v374.BackgroundTransparency = 1;
v374.Position = UDim2.new(0, 6, 1, -20 - v18);
v374.Size = UDim2.new(1, -12, 0, 16);
v374.Font = Enum.Font.SourceSans;
v374.TextColor3 = Color3.fromRGB(200, 200, 200);
v374.TextSize = 14;
v374.TextXAlignment = Enum.TextXAlignment.Left;
v374.Text = "";
local v384 = Instance.new("Frame");
v384.Parent = v286;
v384.AnchorPoint = Vector2.new(1, 1);
v384.Position = UDim2.new(1, -2, 1, -2 - v18);
v384.Size = UDim2.new(0, 12, 0, 12);
v384.BackgroundColor3 = Color3.fromRGB(180, 180, 180);
v384.BorderSizePixel = 0;
Instance.new("UICorner", v384).CornerRadius = UDim.new(0, 3);
local v392 = {};
local v393;
local function v394(v785, v786)
	v785.Chk.Text = (v786 and "☑") or "☐";
	v785.NameLbl.TextColor3 = (v786 and Color3.fromRGB(170, 230, 170)) or Color3.fromRGB(230, 230, 230);
end
local function v395(v789, v790)
	if (v789 and (v789 ~= "")) then
		if v790 then
			v38[v42(v789)] = true;
		else
			v38[v42(v789)] = nil;
		end
		if (v393 or (3325 > 4613)) then
			v393();
		end
	end
end
function v393()
	local v791 = 0;
	for v1114 in pairs(v38) do
		v791 += 1
	end
	for v1115 in pairs(v39) do
		v791 += 1
	end
	v374.Text = "Seleccionados: " .. tostring(v791);
end
local function v396(v793)
	local v794 = v793.Name;
	if v392[v794] then
		return v392[v794];
	end
	local v795 = Instance.new("Frame");
	v795.Name = "R_" .. v794;
	v795.Parent = v342;
	v795.BackgroundColor3 = Color3.fromRGB(26, 26, 26);
	v795.BorderSizePixel = 0;
	v795.Size = UDim2.new(1, -6, 0, 24);
	Instance.new("UICorner", v795).CornerRadius = UDim.new(0, 4);
	local v802 = Instance.new("TextButton");
	v802.Name = "Chk";
	v802.Parent = v795;
	v802.Size = UDim2.new(0, 24, 1, 0);
	v802.BackgroundTransparency = 1;
	v802.Font = Enum.Font.SourceSansBold;
	v802.TextSize = 18;
	v802.TextColor3 = Color3.new(1, 1, 1);
	v802.Text = "☐";
	local v812 = Instance.new("TextLabel");
	v812.Name = "NameLbl";
	v812.Parent = v795;
	v812.BackgroundTransparency = 1;
	v812.Position = UDim2.new(0, 26, 0, 0);
	v812.Size = UDim2.new(1, -26, 1, 0);
	v812.Font = Enum.Font.SourceSans;
	v812.TextXAlignment = Enum.TextXAlignment.Left;
	v812.TextSize = 14;
	v812.TextColor3 = Color3.fromRGB(230, 230, 230);
	v812.Text = (((v793.DisplayName ~= "") and v793.DisplayName) or v794) .. " (@" .. v794 .. ")";
	if ((v38[v42(v794)] == nil) or (4950 <= 4553)) then
		v395(v794, true);
	end
	local function v825()
		return v38[v42(v794)] == true;
	end
	v394(v795, v825());
	local function v826()
		local v1116 = not v825();
		v395(v794, v1116);
		v394(v795, v1116);
	end
	v802.MouseButton1Down:Connect(v826);
	v812.InputBegan:Connect(function(v1117)
		if (v1117.UserInputType == Enum.UserInputType.MouseButton1) then
			v826();
		end
	end);
	v392[v794] = v795;
	return v795;
end
local function v397()
	for v1118, v1119 in pairs(v392) do
		if ((2665 <= 3933) and not v31:FindFirstChild(v1118)) then
			v1119:Destroy();
			v392[v1118] = nil;
		end
	end
	for v1120, v1121 in ipairs(v31:GetPlayers()) do
		v396(v1121);
	end
end
local function v398()
	local v828 = v42(v320.Text);
	for v1122, v1123 in pairs(v392) do
		local v1124 = v31:FindFirstChild(v1122);
		local v1125 = (v1124 and v1124.DisplayName) or "";
		local v1126 = (v828 == "") or v42(v1122):find(v828, 1, true) or v42(v1125):find(v828, 1, true);
		v1123.Visible = v1126;
	end
end
v318.MouseButton1Down:Connect(function()
	v286.Visible = false;
end);
v336.MouseButton1Down:Connect(function()
	for v1128, v1129 in ipairs(v31:GetPlayers()) do
		v395(v1129.Name, true);
		local v1130 = v392[v1129.Name];
		if ((3273 == 3273) and v1130) then
			v394(v1130, true);
		end
	end
end);
v338.MouseButton1Down:Connect(function()
	for v1131, v1132 in ipairs(v31:GetPlayers()) do
		v395(v1132.Name, false);
		local v1133 = v392[v1132.Name];
		if ((3824 > 409) and v1133) then
			v394(v1133, false);
		end
	end
end);
v340.MouseButton1Down:Connect(function()
	v397();
	v398();
end);
v320:GetPropertyChangedSignal("Text"):Connect(v398);
v31.PlayerAdded:Connect(function(v830)
	v395(v830.Name, true);
	if ((2087 == 2087) and v286.Visible) then
		v396(v830);
		v398();
	end
end);
v31.PlayerRemoving:Connect(function(v831)
	local v832 = v392[v831.Name];
	if v832 then
		v832:Destroy();
		v392[v831.Name] = nil;
	end
end);
for v833, v834 in ipairs(v31:GetPlayers()) do
	v395(v834.Name, true);
end
local v399 = Instance.new("ScreenGui");
v399.Name = "BlacklistGui";
v399.ResetOnSpawn = false;
v399.IgnoreGuiInset = true;
v399.Parent = v32:WaitForChild("PlayerGui");
local v404 = Instance.new("Frame");
v404.Name = "BlacklistWindow";
v404.Parent = v399;
v404.BackgroundColor3 = v47;
v404.BorderSizePixel = 0;
v404.Position = UDim2.fromOffset(480, 180);
v404.Size = UDim2.new(0, 340, 0, 340);
v404.Active = true;
v404.Visible = false;
Instance.new("UICorner", v404).CornerRadius = UDim.new(0, 8);
local v414 = Instance.new("Frame");
v414.Parent = v404;
v414.BackgroundColor3 = v48;
v414.BorderSizePixel = 0;
v414.Size = UDim2.new(1, 0, 0, 26);
local v419 = Instance.new("TextLabel");
v419.Parent = v414;
v419.BackgroundTransparency = 1;
v419.Position = UDim2.new(0, 8, 0, 0);
v419.Size = UDim2.new(1, -40, 1, 0);
v419.Font = Enum.Font.SourceSansSemibold;
v419.TextColor3 = Color3.new(1, 1, 1);
v419.TextXAlignment = Enum.TextXAlignment.Left;
v419.TextSize = 16;
v419.Text = "Lista Negra (Blacklist)";
local v429 = v317("×", 26, v414);
v429.Position = UDim2.new(1, -30, 0, 1);
v55(v404, {v414});
local v431 = Instance.new("ScrollingFrame");
v431.Parent = v404;
v431.BackgroundColor3 = Color3.fromRGB(18, 18, 18);
v431.BorderSizePixel = 0;
v431.Position = UDim2.new(0, 4, 0, 32);
v431.Size = UDim2.new(1, -8, 1, -96);
v431.ScrollBarThickness = 6;
v431.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v431.CanvasSize = UDim2.new(0, 0, 0, 0);
Instance.new("UICorner", v431).CornerRadius = UDim.new(0, 6);
local v441 = Instance.new("UIListLayout");
v441.Parent = v431;
v441.FillDirection = Enum.FillDirection.Vertical;
v441.SortOrder = Enum.SortOrder.LayoutOrder;
v441.Padding = UDim.new(0, 3);
local v446 = Instance.new("TextBox");
v446.Parent = v404;
v446.Position = UDim2.new(0, 4, 1, -58);
v446.Size = UDim2.new(1, -68, 0, 26);
v446.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v446.TextColor3 = Color3.new(1, 1, 1);
v446.Font = Enum.Font.SourceSans;
v446.TextSize = 14;
v446.PlaceholderText = "Agregar usuario a blacklist...";
v446.Text = "";
v446.ClearTextOnFocus = false;
Instance.new("UICorner", v446).CornerRadius = UDim.new(0, 6);
local v458 = v317("Añadir", 60, v404);
v458.Position = UDim2.new(1, -64, 1, -58);
local v460 = Instance.new("TextLabel");
v460.Parent = v404;
v460.BackgroundTransparency = 1;
v460.Position = UDim2.new(0, 6, 1, -28);
v460.Size = UDim2.new(1, -12, 0, 24);
v460.Font = Enum.Font.SourceSans;
v460.TextColor3 = Color3.fromRGB(200, 200, 200);
v460.TextSize = 14;
v460.TextXAlignment = Enum.TextXAlignment.Left;
v460.Text = "Bloqueados: 0";
local v470 = {};
local function v471()
	local v835 = 0;
	for v1134 in pairs(v40) do
		v835 += 1
	end
	for v1135 in pairs(v41) do
		v835 += 1
	end
	v460.Text = "Bloqueados: " .. tostring(v835);
end
local function v472(v837)
	if ((v837 and (v837 ~= "")) or (3404 > 4503)) then
		v40[v42(v837)] = true;
		v471();
		v53();
		local v1171 = Instance.new("Frame");
		v1171.Name = "BLRow_" .. v837;
		v1171.Parent = v431;
		v1171.BackgroundColor3 = Color3.fromRGB(60, 30, 30);
		v1171.BorderSizePixel = 0;
		v1171.Size = UDim2.new(1, -6, 0, 28);
		Instance.new("UICorner", v1171).CornerRadius = UDim.new(0, 4);
		local v1178 = Instance.new("TextLabel");
		v1178.Parent = v1171;
		v1178.BackgroundTransparency = 1;
		v1178.Position = UDim2.new(0, 6, 0, 0);
		v1178.Size = UDim2.new(1, -36, 1, 0);
		v1178.Font = Enum.Font.SourceSans;
		v1178.TextSize = 14;
		v1178.TextColor3 = Color3.fromRGB(255, 150, 150);
		v1178.TextXAlignment = Enum.TextXAlignment.Left;
		v1178.Text = v837;
		local v1190 = Instance.new("TextButton");
		v1190.Parent = v1171;
		v1190.AnchorPoint = Vector2.new(1, 0.5);
		v1190.Position = UDim2.new(1, -4, 0.5, 0);
		v1190.Size = UDim2.new(0, 24, 0, 20);
		v1190.BackgroundColor3 = Color3.fromRGB(180, 60, 60);
		v1190.TextColor3 = Color3.new(1, 1, 1);
		v1190.Font = Enum.Font.SourceSansBold;
		v1190.TextSize = 14;
		v1190.Text = "×";
		Instance.new("UICorner", v1190).CornerRadius = UDim.new(0, 4);
		v1190.MouseButton1Down:Connect(function()
			v40[v42(v837)] = nil;
			v1171:Destroy();
			v471();
			v53();
		end);
		v470[v42(v837)] = v1171;
	end
end
v458.MouseButton1Down:Connect(function()
	local v838 = v446.Text;
	if (v838 and (v838 ~= "")) then
		v472(v838);
		v446.Text = "";
	end
end);
v429.MouseButton1Down:Connect(function()
	v404.Visible = false;
end);
local v473 = Instance.new("ScreenGui");
v473.Name = "ColorGui";
v473.ResetOnSpawn = false;
v473.IgnoreGuiInset = true;
v473.Parent = v32:WaitForChild("PlayerGui");
local v478 = Instance.new("Frame");
v478.Name = "ColorWindow";
v478.Parent = v473;
v478.BackgroundColor3 = v47;
v478.BorderSizePixel = 0;
v478.Position = UDim2.fromOffset(520, 220);
v478.Size = UDim2.new(0, v19, 0, v20);
v478.Active = true;
v478.Visible = false;
Instance.new("UICorner", v478).CornerRadius = UDim.new(0, 8);
local v488 = Instance.new("Frame");
v488.Parent = v478;
v488.BackgroundColor3 = v48;
v488.BorderSizePixel = 0;
v488.Size = UDim2.new(1, 0, 0, 26);
local v493 = Instance.new("TextLabel");
v493.Parent = v488;
v493.BackgroundTransparency = 1;
v493.Position = UDim2.new(0, 8, 0, 0);
v493.Size = UDim2.new(1, -8, 1, 0);
v493.Font = Enum.Font.SourceSansSemibold;
v493.TextColor3 = Color3.new(1, 1, 1);
v493.TextXAlignment = Enum.TextXAlignment.Left;
v493.TextSize = 16;
v493.Text = "Colores (Usuarios / Interfaz)";
v55(v478, {v488});
local function v503(v840, v841, v842)
	local v843 = Instance.new("TextLabel");
	v843.Parent = v840;
	v843.BackgroundTransparency = 1;
	v843.Position = UDim2.new(0, 10, 0, v842);
	v843.Size = UDim2.new(1, -20, 0, 20);
	v843.Font = Enum.Font.SourceSans;
	v843.TextSize = 14;
	v843.TextXAlignment = Enum.TextXAlignment.Left;
	v843.TextColor3 = v50;
	v843.Text = v841;
	return v843;
end
local function v504(v855, v856, v857, v858, v859)
	local v860 = Instance.new("TextBox");
	v860.Parent = v855;
	v860.Position = UDim2.new(0, v856, 0, v857);
	v860.Size = UDim2.new(0, v858, 0, 24);
	v860.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
	v860.TextColor3 = Color3.new(1, 1, 1);
	v860.Font = Enum.Font.SourceSans;
	v860.TextSize = 14;
	v860.Text = "";
	v860.PlaceholderText = v859 or "";
	v860.ClearTextOnFocus = false;
	Instance.new("UICorner", v860).CornerRadius = UDim.new(0, 6);
	return v860;
end
local function v505(v873, v874, v875, v876, v877)
	local v878 = Instance.new("TextButton");
	v878.Parent = v873;
	v878.Position = UDim2.new(0, v875, 0, v876);
	v878.Size = UDim2.new(0, v877, 0, 26);
	v878.BackgroundColor3 = v49;
	v878.TextColor3 = Color3.new(1, 1, 1);
	v878.Font = Enum.Font.SourceSansSemibold;
	v878.TextSize = 14;
	v878.Text = v874;
	Instance.new("UICorner", v878).CornerRadius = UDim.new(0, 6);
	return v878;
end
local function v506(v889, v890, v891, v892, v893)
	local v894 = Instance.new("Frame");
	v894.Parent = v889;
	v894.Position = UDim2.new(0, 10, 0, v890);
	v894.Size = UDim2.new(1, -20, 0, 24);
	v894.BackgroundTransparency = 1;
	local v899 = Instance.new("UIListLayout", v894);
	v899.FillDirection = Enum.FillDirection.Horizontal;
	v899.Padding = UDim.new(0, 6);
	local v903 = {Color3.fromRGB(255, 80, 80),Color3.fromRGB(80, 255, 80),Color3.fromRGB(80, 160, 255),Color3.fromRGB(255, 220, 0),Color3.fromRGB(255, 120, 0),Color3.fromRGB(200, 80, 255)};
	for v1136, v1137 in ipairs(v903) do
		local v1138 = Instance.new("TextButton");
		v1138.Parent = v894;
		v1138.Text = "";
		v1138.BackgroundColor3 = v1137;
		v1138.Size = UDim2.new(0, 24, 0, 24);
		Instance.new("UICorner", v1138).CornerRadius = UDim.new(0, 4);
		v1138.MouseButton1Down:Connect(function()
			v891.Text = tostring(math.floor(v1137.R * 255));
			v892.Text = tostring(math.floor(v1137.G * 255));
			v893.Text = tostring(math.floor(v1137.B * 255));
		end);
	end
end
v503(v478, "Color por usuario (afecta nuevas y existentes):", 30);
local v507 = v504(v478, 10, 54, 140, "username");
local v508 = v504(v478, 160, 54, 50, "0-255");
local v509 = v504(v478, 214, 54, 50, "0-255");
local v510 = v504(v478, 268, 54, 50, "0-255");
v506(v478, 84, v508, v509, v510);
local v511 = v505(v478, "Aplicar", 10, 118, 150);
local v512 = v505(v478, "Recolor", 170, 118, 150);
v503(v478, "Tema interfaz (BG / Accent):", 154);
local v513 = v504(v478, 10, 178, 50, "0-255");
local v514 = v504(v478, 64, 178, 50, "0-255");
local v515 = v504(v478, 118, 178, 50, "0-255");
local v516 = v504(v478, 180, 178, 50, "0-255");
local v517 = v504(v478, 234, 178, 50, "0-255");
local v518 = v504(v478, 288, 178, 50, "0-255");
v506(v478, 208, v516, v517, v518);
local v519 = v505(v478, "Aplicar Tema", 10, 242, 150);
local v520 = v505(v478, "Cerrar", 170, 242, 80);
local function v521(v904)
	local v905 = tonumber(v904);
	if (not v905 or (3506 <= 1309)) then
		return 0;
	end
	return math.clamp(math.floor(v905 + 0.5), 0, 255);
end
local function v522()
	v63.BackgroundColor3 = v47;
	v74.BackgroundColor3 = v48;
	v143.BackgroundColor3 = v48;
	v224.BackgroundColor3 = v48;
	v174.BackgroundColor3 = v48;
	v161.BackgroundColor3 = v49;
	v286.BackgroundColor3 = v47;
	v296.BackgroundColor3 = v48;
	v311.BackgroundColor3 = v48;
	v478.BackgroundColor3 = v47;
	v488.BackgroundColor3 = v48;
	v404.BackgroundColor3 = v47;
	v414.BackgroundColor3 = v48;
end
v511.MouseButton1Down:Connect(function()
	local v919 = v42(v507.Text or "");
	if (v919 == "") then
		return;
	end
	local v920, v921, v922 = v521(v508.Text), v521(v509.Text), v521(v510.Text);
	v51[v919] = Color3.fromRGB(v920, v921, v922);
	v53();
end);
v512.MouseButton1Down:Connect(function()
	local v924 = v42(v507.Text or "");
	if ((2955 == 2955) and (v924 == "")) then
		return;
	end
	local v925 = v51[v924];
	if not v925 then
		return;
	end
	for v1144 = 1, #v255 do
		local v1145 = v255[v1144];
		if ((v1145.author and (v42(v1145.author) == v924) and v1145.node and v1145.node.Parent) or (2903 == 1495)) then
			v1145.node.TextColor3 = v925;
		end
	end
end);
v519.MouseButton1Down:Connect(function()
	v47 = Color3.fromRGB(v521(v513.Text), v521(v514.Text), v521(v515.Text));
	v48 = Color3.fromRGB(v521(v516.Text), v521(v517.Text), v521(v518.Text));
	v52.themeColors.bg = {v521(v513.Text),v521(v514.Text),v521(v515.Text)};
	v52.themeColors.acc = {v521(v516.Text),v521(v517.Text),v521(v518.Text)};
	v522();
	v53();
end);
v520.MouseButton1Down:Connect(function()
	v478.Visible = false;
end);
local v523 = Instance.new("ScreenGui");
v523.Name = "SettingsGui";
v523.ResetOnSpawn = false;
v523.IgnoreGuiInset = true;
v523.Parent = v32:WaitForChild("PlayerGui");
local v528 = Instance.new("Frame");
v528.Name = "SettingsWindow";
v528.Parent = v523;
v528.BackgroundColor3 = v47;
v528.BorderSizePixel = 0;
v528.Position = UDim2.fromOffset(500, 200);
v528.Size = UDim2.new(0, v21, 0, v22);
v528.Active = true;
v528.Visible = false;
Instance.new("UICorner", v528).CornerRadius = UDim.new(0, 8);
local v538 = Instance.new("Frame");
v538.Parent = v528;
v538.BackgroundColor3 = v48;
v538.BorderSizePixel = 0;
v538.Size = UDim2.new(1, 0, 0, 26);
local v543 = Instance.new("TextLabel");
v543.Parent = v538;
v543.BackgroundTransparency = 1;
v543.Position = UDim2.new(0, 8, 0, 0);
v543.Size = UDim2.new(1, -40, 1, 0);
v543.Font = Enum.Font.SourceSansSemibold;
v543.TextColor3 = Color3.new(1, 1, 1);
v543.TextXAlignment = Enum.TextXAlignment.Left;
v543.TextSize = 16;
v543.Text = "⚙ Configuración Avanzada";
local v553 = v317("×", 26, v538);
v553.Position = UDim2.new(1, -30, 0, 1);
v55(v528, {v538});
local v555 = Instance.new("ScrollingFrame");
v555.Parent = v528;
v555.BackgroundColor3 = Color3.fromRGB(18, 18, 18);
v555.BorderSizePixel = 0;
v555.Position = UDim2.new(0, 4, 0, 32);
v555.Size = UDim2.new(1, -8, 1, -36);
v555.ScrollBarThickness = 6;
v555.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v555.CanvasSize = UDim2.new(0, 0, 0, 0);
Instance.new("UICorner", v555).CornerRadius = UDim.new(0, 6);
local v565 = Instance.new("UIListLayout");
v565.Parent = v555;
v565.FillDirection = Enum.FillDirection.Vertical;
v565.SortOrder = Enum.SortOrder.LayoutOrder;
v565.Padding = UDim.new(0, 8);
Instance.new("UIPadding", v555).PaddingLeft = UDim.new(0, 8);
Instance.new("UIPadding", v555).PaddingRight = UDim.new(0, 8);
Instance.new("UIPadding", v555).PaddingTop = UDim.new(0, 8);
local function v573(v929, v930)
	local v931 = Instance.new("Frame");
	v931.Parent = v555;
	v931.BackgroundTransparency = 1;
	v931.Size = UDim2.new(1, -16, 0, 30);
	local v935 = Instance.new("TextLabel");
	v935.Parent = v931;
	v935.BackgroundTransparency = 1;
	v935.Position = UDim2.new(0, 0, 0, 0);
	v935.Size = UDim2.new(1, -100, 1, 0);
	v935.Font = Enum.Font.SourceSans;
	v935.TextSize = 14;
	v935.TextColor3 = v50;
	v935.TextXAlignment = Enum.TextXAlignment.Left;
	v935.Text = v929;
	return v931;
end
local v574 = v573("Opacidad de ventana:", 0);
local v575 = Instance.new("Frame");
v575.Parent = v574;
v575.AnchorPoint = Vector2.new(1, 0.5);
v575.Position = UDim2.new(1, 0, 0.5, 0);
v575.Size = UDim2.new(0, 120, 0, 20);
v575.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
Instance.new("UICorner", v575).CornerRadius = UDim.new(0, 4);
local v582 = Instance.new("Frame");
v582.Parent = v575;
v582.BackgroundColor3 = Color3.fromRGB(80, 160, 255);
v582.BorderSizePixel = 0;
v582.Size = UDim2.new(v52.opacity, 0, 1, 0);
Instance.new("UICorner", v582).CornerRadius = UDim.new(0, 4);
local v588 = Instance.new("TextButton");
v588.Parent = v575;
v588.BackgroundTransparency = 1;
v588.Size = UDim2.new(1, 0, 1, 0);
v588.Text = "";
local v593 = false;
v588.InputBegan:Connect(function(v947)
	if (v947.UserInputType == Enum.UserInputType.MouseButton1) then
		v593 = true;
	end
end);
v34.InputEnded:Connect(function(v948)
	if ((4546 >= 2275) and (v948.UserInputType == Enum.UserInputType.MouseButton1)) then
		v593 = false;
	end
end);
v34.InputChanged:Connect(function(v949)
	if ((819 >= 22) and v593 and (v949.UserInputType == Enum.UserInputType.MouseMovement)) then
		local v1207 = v949.Position.X - v575.AbsolutePosition.X;
		local v1208 = v575.AbsoluteSize.X;
		local v1209 = math.clamp(v1207 / v1208, 0, 1);
		v52.opacity = v1209;
		v582.Size = UDim2.new(v1209, 0, 1, 0);
		v63.BackgroundTransparency = 1 - v1209;
		v74.BackgroundTransparency = 1 - v1209;
		v143.BackgroundTransparency = 1 - v1209;
		v224.BackgroundTransparency = 1 - v1209;
		v174.BackgroundTransparency = 1 - v1209;
		v204.BackgroundTransparency = 1 - v1209;
		for v1284, v1285 in ipairs({v95,v96,v97,v98,v161,v242,v243,v244,v245,v246,v247,v248}) do
			v1285.BackgroundTransparency = 1 - v1209;
		end
		v53();
	end
end);
local v594 = v573("Modo Click-Through:", 0);
local v595 = Instance.new("TextButton");
v595.Parent = v594;
v595.AnchorPoint = Vector2.new(1, 0.5);
v595.Position = UDim2.new(1, 0, 0.5, 0);
v595.Size = UDim2.new(0, 80, 0, 24);
v595.BackgroundColor3 = v49;
v595.TextColor3 = Color3.new(1, 1, 1);
v595.Font = Enum.Font.SourceSansSemibold;
v595.TextSize = 14;
v595.Text = (v52.clickThrough and "ON") or "OFF";
Instance.new("UICorner", v595).CornerRadius = UDim.new(0, 6);
v595.MouseButton1Down:Connect(function()
	v52.clickThrough = not v52.clickThrough;
	v595.Text = (v52.clickThrough and "ON") or "OFF";
	v63.Active = not v52.clickThrough;
	v53();
end);
local v606 = v573("Mostrar Display Names:", 0);
local v607 = Instance.new("TextButton");
v607.Parent = v606;
v607.AnchorPoint = Vector2.new(1, 0.5);
v607.Position = UDim2.new(1, 0, 0.5, 0);
v607.Size = UDim2.new(0, 80, 0, 24);
v607.BackgroundColor3 = v49;
v607.TextColor3 = Color3.new(1, 1, 1);
v607.Font = Enum.Font.SourceSansSemibold;
v607.TextSize = 14;
v607.Text = (v52.showDisplayNames and "ON") or "OFF";
Instance.new("UICorner", v607).CornerRadius = UDim.new(0, 6);
v607.MouseButton1Down:Connect(function()
	v52.showDisplayNames = not v52.showDisplayNames;
	v607.Text = (v52.showDisplayNames and "ON") or "OFF";
	v53();
end);
v503(v555, "═══ Palabras Clave (Alertas) ═══", 0);
local v618 = Instance.new("ScrollingFrame");
v618.Parent = v555;
v618.BackgroundColor3 = Color3.fromRGB(26, 26, 26);
v618.BorderSizePixel = 0;
v618.Size = UDim2.new(1, -16, 0, 120);
v618.ScrollBarThickness = 6;
v618.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v618.CanvasSize = UDim2.new(0, 0, 0, 0);
Instance.new("UICorner", v618).CornerRadius = UDim.new(0, 6);
local v627 = Instance.new("UIListLayout");
v627.Parent = v618;
v627.FillDirection = Enum.FillDirection.Vertical;
v627.SortOrder = Enum.SortOrder.LayoutOrder;
v627.Padding = UDim.new(0, 3);
local v632 = {};
local function v633(v955)
	if ((3162 == 3162) and v632[v955]) then
		return;
	end
	local v956 = Instance.new("Frame");
	v956.Name = "KW_" .. v955;
	v956.Parent = v618;
	v956.BackgroundColor3 = Color3.fromRGB(50, 50, 50);
	v956.BorderSizePixel = 0;
	v956.Size = UDim2.new(1, -6, 0, 28);
	Instance.new("UICorner", v956).CornerRadius = UDim.new(0, 4);
	local v963 = Instance.new("TextLabel");
	v963.Parent = v956;
	v963.BackgroundTransparency = 1;
	v963.Position = UDim2.new(0, 6, 0, 0);
	v963.Size = UDim2.new(1, -36, 1, 0);
	v963.Font = Enum.Font.SourceSans;
	v963.TextSize = 14;
	v963.TextColor3 = Color3.fromRGB(255, 220, 100);
	v963.TextXAlignment = Enum.TextXAlignment.Left;
	v963.Text = v955;
	local v975 = Instance.new("TextButton");
	v975.Parent = v956;
	v975.AnchorPoint = Vector2.new(1, 0.5);
	v975.Position = UDim2.new(1, -4, 0.5, 0);
	v975.Size = UDim2.new(0, 24, 0, 20);
	v975.BackgroundColor3 = Color3.fromRGB(180, 60, 60);
	v975.TextColor3 = Color3.new(1, 1, 1);
	v975.Font = Enum.Font.SourceSansBold;
	v975.TextSize = 14;
	v975.Text = "×";
	Instance.new("UICorner", v975).CornerRadius = UDim.new(0, 4);
	v975.MouseButton1Down:Connect(function()
		v29[v42(v955)] = nil;
		v956:Destroy();
		v632[v955] = nil;
		v53();
	end);
	v632[v955] = v956;
end
local v634 = Instance.new("Frame");
v634.Parent = v555;
v634.BackgroundTransparency = 1;
v634.Size = UDim2.new(1, -16, 0, 30);
local v638 = Instance.new("TextBox");
v638.Parent = v634;
v638.Position = UDim2.new(0, 0, 0, 0);
v638.Size = UDim2.new(1, -80, 1, 0);
v638.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v638.TextColor3 = Color3.new(1, 1, 1);
v638.Font = Enum.Font.SourceSans;
v638.TextSize = 14;
v638.PlaceholderText = "Agregar palabra clave...";
v638.Text = "";
v638.ClearTextOnFocus = false;
Instance.new("UICorner", v638).CornerRadius = UDim.new(0, 6);
local v650 = v317("Añadir", 74, v634);
v650.Position = UDim2.new(1, -74, 0, 0);
v650.MouseButton1Down:Connect(function()
	local v988 = v638.Text;
	if (v988 and (v988 ~= "")) then
		v29[v42(v988)] = true;
		v633(v988);
		v638.Text = "";
		v53();
	end
end);
local v652 = Instance.new("Frame");
v652.Parent = v555;
v652.BackgroundTransparency = 1;
v652.Size = UDim2.new(1, -16, 0, 30);
local v656 = v317("Abrir Blacklist", 140, v652);
v656.Position = UDim2.new(0, 0, 0, 0);
v656.MouseButton1Down:Connect(function()
	v404.Visible = not v404.Visible;
	if (v404.Visible or (2369 > 4429)) then
		v471();
	end
end);
v553.MouseButton1Down:Connect(function()
	v528.Visible = false;
end);
for v991 in pairs(v29) do
	v633(v991);
end
local function v658()
	pcall(function()
		if ((typeof(makefolder) == "function") and ((typeof(isfolder) ~= "function") or not isfolder(v27))) then
			makefolder(v27);
		end
	end);
end
v658();
function v267(v992, v993)
	local v994 = v992 or table.concat(v256, "\n");
	if (v994 == "") then
		return;
	end
	local v995 = ("%04d-%02d-%02d_%02d-%02d-%02d"):format(tonumber(os.date("%Y")), tonumber(os.date("%m")), tonumber(os.date("%d")), tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")));
	local v996 = ("ChatLog_%s_r%03d.txt"):format(v995, v259);
	local v997 = v27 .. "/" .. v996;
	local v998 = false;
	pcall(function()
		if ((4095 >= 3183) and (typeof(writefile) == "function")) then
			writefile(v997, v994);
			v998 = true;
		end
	end);
	if v998 then
		return v997;
	end
	if (not v993 or (3711 < 1008)) then
		pcall(function()
			if ((typeof(setclipboard) == "function") or (1049 <= 906)) then
				setclipboard(v994);
			end
		end);
	end
end
local function v659(v999, v1000)
	local v1001 = v51[v42(v999 or "")];
	if ((4513 > 2726) and v1001) then
		return v1001;
	end
	return v1000 or Color3.fromRGB(230, 230, 230);
end
local function v660()
	pcall(function()
		local v1148 = Instance.new("Sound");
		v1148.SoundId = "rbxassetid://4590662766";
		v1148.Volume = 0.5;
		v1148.Parent = v37;
		v1148:Play();
		task.delay(2, function()
			v1148:Destroy();
		end);
	end);
end
local function v661(v1002)
	local v1003 = v42(v1002);
	for v1152 in pairs(v29) do
		if (v1003:find(v1152, 1, true) or (1481 >= 2658)) then
			return true;
		end
	end
	return false;
end
local v662 = "";
local function v663(v1004, v1005, v1006, v1007)
	if (not v249 or (3220 == 1364)) then
		return;
	end
	local v1008 = v250 and v263();
	local v1009 = v1004 or "Player";
	local v1010 = Instance.new("TextLabel");
	v1010.Parent = v204;
	v1010.BackgroundTransparency = 1;
	v1010.Size = UDim2.new(1, -10, 0, 0);
	v1010.AutomaticSize = Enum.AutomaticSize.Y;
	v1010.TextXAlignment = Enum.TextXAlignment.Left;
	v1010.TextYAlignment = Enum.TextYAlignment.Top;
	v1010.Font = Enum.Font.SourceSansSemibold;
	v1010.TextSize = v254;
	v1010.TextColor3 = v1007 or v659(v1009, v1006);
	v1010.TextWrapped = v251;
	v1010.TextTruncate = Enum.TextTruncate.None;
	v1010.RichText = false;
	local v1028 = v661(v1005);
	if (v1028 or (1054 > 3392)) then
		v1010.BackgroundTransparency = 0;
		v1010.BackgroundColor3 = Color3.fromRGB(80, 20, 20);
		v660();
	end
	local v1029 = (v252 and ("[" .. os.date("%H:%M:%S") .. "] ")) or "";
	v1010.Text = v1029 .. v1009 .. ": " .. v1005;
	v1010.LayoutOrder = math.floor(os.clock() * 1000);
	v1010.InputBegan:Connect(function(v1153)
		if ((v1153.UserInputType == Enum.UserInputType.MouseButton2) or (676 >= 1642)) then
			v280 = v1010;
			local v1287 = v34:GetMouseLocation();
			v268.Position = UDim2.fromOffset(v1287.X, v1287.Y);
			v268.Visible = true;
		end
	end);
	table.insert(v255, {node=v1010,author=v1009,text=v1005});
	local v1032 = v1029 .. v1009 .. ": " .. v1005;
	table.insert(v256, v1032);
	if (v662 ~= "") then
		local v1222 = v42(v1010.Text);
		v1010.Visible = v1222:find(v662, 1, true) ~= nil;
	end
	v266();
	if (v24 > 0) then
		v260 += 1
		if ((4136 > 2397) and (v260 >= v24)) then
			v260 = 0;
			v259 += 1
			local v1315 = v267(nil, true);
			if (v25 or (4334 == 4245)) then
				for v1343 = #v255, 1, -1 do
					if (v255[v1343].node or (4276 <= 3031)) then
						v255[v1343].node:Destroy();
					end
				end
				v255 = {};
				v256 = {};
				v260 = 0;
				task.defer(v264);
			end
		end
	end
	if ((#v256 > v23) or (4782 <= 1199)) then
		v259 += 1
		v267(nil, true);
		if v25 then
			for v1321 = #v255, 1, -1 do
				if v255[v1321].node then
					v255[v1321].node:Destroy();
				end
			end
			v255 = {};
			v256 = {};
			v260 = 0;
		end
	end
	v265();
	if (v1008 or (4864 < 1902)) then
		task.defer(v264);
	end
end
v182:GetPropertyChangedSignal("Text"):Connect(function()
	v662 = v42(v182.Text);
	for v1154, v1155 in ipairs(v255) do
		if (v1155.node and v1155.node.Parent) then
			if (v662 == "") then
				v1155.node.Visible = true;
			else
				local v1323 = v42(v1155.node.Text);
				v1155.node.Visible = v1323:find(v662, 1, true) ~= nil;
			end
		end
	end
end);
v248.MouseButton1Down:Connect(function()
	v174.Visible = not v174.Visible;
	if ((4839 >= 3700) and v174.Visible) then
		v204.Position = UDim2.new(0, 0, 0, v9 + v10 + 28);
		v204.Size = UDim2.new(1, 0, 1, -(v9 + v10 + v11 + 28));
		v182:CaptureFocus();
	else
		v204.Position = UDim2.new(0, 0, 0, v9 + v10);
		v204.Size = UDim2.new(1, 0, 1, -(v9 + v10 + v11));
		v182.Text = "";
		v662 = "";
		for v1290, v1291 in ipairs(v255) do
			if (v1291.node and v1291.node.Parent) then
				v1291.node.Visible = true;
			end
		end
	end
end);
v194.MouseButton1Down:Connect(function()
	v174.Visible = false;
	v204.Position = UDim2.new(0, 0, 0, v9 + v10);
	v204.Size = UDim2.new(1, 0, 1, -(v9 + v10 + v11));
	v182.Text = "";
	v662 = "";
	for v1156, v1157 in ipairs(v255) do
		if (v1157.node and v1157.node.Parent) then
			v1157.node.Visible = true;
		end
	end
end);
v95.MouseButton1Down:Connect(function()
	v249 = not v249;
	v95.Text = (v249 and "Log [ON]") or "Log [OFF]";
	v52.logging = v249;
	v53();
end);
v96.MouseButton1Down:Connect(function()
	v250 = not v250;
	v96.Text = (v250 and "Auto↓ [AUTO]") or "Auto↓ [OFF]";
	if (v250 or (1075 > 1918)) then
		task.defer(v264);
	end
	v52.autoScroll = v250;
	v53();
end);
v97.MouseButton1Down:Connect(function()
	v254 = v254 - 1;
	v261();
	v52.fontSize = v254;
	v53();
end);
v98.MouseButton1Down:Connect(function()
	v254 = v254 + 1;
	v261();
	v52.fontSize = v254;
	v53();
end);
v242.MouseButton1Down:Connect(function()
	v286.Visible = not v286.Visible;
	if v286.Visible then
		for v1293, v1294 in pairs(v392) do
			if v1294 then
				v1294:Destroy();
			end
		end
		v392 = {};
		for v1295, v1296 in ipairs(v31:GetPlayers()) do
			v396(v1296);
		end
		v398();
		updateCountLabel();
	end
end);
v246.MouseButton1Down:Connect(function()
	v478.Visible = not v478.Visible;
end);
v247.MouseButton1Down:Connect(function()
	v528.Visible = not v528.Visible;
end);
v243.MouseButton1Down:Connect(function()
	v267(nil, false);
end);
v244.MouseButton1Down:Connect(function()
	v251 = not v251;
	v244.Text = (v251 and "Wrap [ON]") or "Wrap [OFF]";
	for v1158, v1159 in ipairs(v255) do
		if (v1159.node and v1159.node.Parent) then
			v1159.node.TextWrapped = v251;
		end
	end
	v52.wrapText = v251;
	v53();
end);
v245.MouseButton1Down:Connect(function()
	v252 = not v252;
	v245.Text = (v252 and "Time [ON]") or "Time [OFF]";
	v52.showTime = v252;
	v53();
end);
v161.MouseButton1Down:Connect(function()
	v267(nil, false);
	for v1160 = #v255, 1, -1 do
		if v255[v1160].node then
			v255[v1160].node:Destroy();
		end
	end
	v255 = {};
	v256 = {};
	v260 = 0;
	v265();
end);
local v664 = {};
v101.MouseButton1Down:Connect(function()
	v253 = not v253;
	if ((396 <= 3804) and v253) then
		v257 = v63.Size.X.Offset;
		v258 = v63.Size.Y.Offset;
		v204.Visible = false;
		v143.Visible = false;
		v224.Visible = false;
		v174.Visible = false;
		v95.Visible = false;
		v96.Visible = false;
		v97.Visible = false;
		v98.Visible = false;
		for v1298, v1299 in ipairs(v664) do
			v1299.Visible = false;
		end
		v63.Size = UDim2.fromOffset(v13, v9);
	else
		v204.Visible = true;
		v143.Visible = true;
		v224.Visible = true;
		v95.Visible = true;
		v96.Visible = true;
		v97.Visible = true;
		v98.Visible = true;
		for v1301, v1302 in ipairs(v664) do
			v1302.Visible = true;
		end
		v63.Size = UDim2.fromOffset(v257, v258);
		task.defer(v264);
	end
end);
v100.MouseButton1Down:Connect(function()
	v102.Visible = true;
end);
v132.MouseButton1Down:Connect(function()
	v102.Visible = false;
end);
v121.MouseButton1Down:Connect(function()
	v53();
	v56:Destroy();
	v281:Destroy();
	v473:Destroy();
	v523:Destroy();
	v399:Destroy();
end);
v34.InputBegan:Connect(function(v1053, v1054)
	if ((not v1054 and (v1053.KeyCode == v28)) or (4169 == 2187)) then
		v56.Enabled = not v56.Enabled;
		v281.Enabled = v56.Enabled;
		v473.Enabled = v56.Enabled;
		v523.Enabled = v56.Enabled;
		v399.Enabled = v56.Enabled;
	end
end);
local v665 = 10;
local function v666(v1055, v1056, v1057)
	local v1058 = Instance.new("Frame");
	v1058.Name = "Resize_" .. v1055;
	v1058.BackgroundTransparency = 1;
	v1058.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
	v1058.BorderSizePixel = 0;
	v1058.Position = v1056;
	v1058.Size = v1057;
	v1058.ZIndex = 100;
	v1058.Parent = v63;
	table.insert(v664, v1058);
	return v1058;
end
local v667 = v666("E", UDim2.new(1, -v665, 0, 0), UDim2.new(0, v665, 1, -v665));
local v668 = v666("S", UDim2.new(0, 0, 1, -v665), UDim2.new(1, -v665, 0, v665));
local v669 = v666("SE", UDim2.new(1, -v665, 1, -v665), UDim2.new(0, v665, 0, v665));
local v670 = false;
local v671 = nil;
local v672 = Vector2.new(0, 0);
local v673 = Vector2.new(0, 0);
local function v674(v1067, v1068)
	if ((v1067.UserInputType == Enum.UserInputType.MouseButton1) or (v1067.UserInputType == Enum.UserInputType.Touch)) then
		v670 = true;
		v671 = v1068;
		v672 = v34:GetMouseLocation();
		v673 = v63.AbsoluteSize;
	end
end
v667.InputBegan:Connect(function(v1069)
	v674(v1069, "E");
end);
v668.InputBegan:Connect(function(v1070)
	v674(v1070, "S");
end);
v669.InputBegan:Connect(function(v1071)
	v674(v1071, "SE");
end);
v34.InputChanged:Connect(function(v1072)
	if (v670 and ((v1072.UserInputType == Enum.UserInputType.MouseMovement) or (v1072.UserInputType == Enum.UserInputType.Touch))) then
		local v1254 = v34:GetMouseLocation();
		local v1255 = v1254 - v672;
		local v1256, v1257 = v673.X, v673.Y;
		if ((v671 == "E") or (v671 == "SE")) then
			v1256 = v673.X + v1255.X;
		end
		if ((v671 == "S") or (v671 == "SE")) then
			v1257 = v673.Y + v1255.Y;
		end
		v1256 = math.max(v5, v1256);
		v1257 = math.max(v6, v1257);
		v63.Size = UDim2.fromOffset(v1256, v1257);
		v52.windowSize.X = v1256;
		v52.windowSize.Y = v1257;
	end
end);
v34.InputEnded:Connect(function(v1073)
	if ((1406 == 1406) and ((v1073.UserInputType == Enum.UserInputType.MouseButton1) or (v1073.UserInputType == Enum.UserInputType.Touch))) then
		if ((1531 < 4271) and v670) then
			v670 = false;
			v53();
		end
		if (v250 and v263()) then
			task.defer(v264);
		end
	end
end);
v63:GetPropertyChangedSignal("Position"):Connect(function()
	if not v253 then
		v52.windowPos.X = v63.Position.X.Offset;
		v52.windowPos.Y = v63.Position.Y.Offset;
	end
end);
task.spawn(function()
	local v1074 = v36:FindFirstChild("DefaultChatSystemChatEvents");
	local v1075 = v1074 and v1074:FindFirstChild("OnMessageDoneFiltering");
	if v1075 then
		v1075.OnClientEvent:Connect(function(v1304)
			local v1305, v1306 = v1304.FromSpeaker, v1304.Message;
			if ((635 == 635) and (not v1305 or not v1306)) then
				return;
			end
			local v1307 = v31:FindFirstChild(v1305);
			if v44(v1305, (v1307 and v1307.UserId) or 0) then
				return;
			end
			local v1308 = false;
			if ((3373 <= 3556) and v1307) then
				if (v38[v42(v1307.Name)] or (3291 < 3280)) then
					v1308 = true;
				end
			elseif ((4386 >= 873) and v38[v42(v1305)]) then
				v1308 = true;
			end
			if not v43() then
				v1308 = true;
			end
			if v1308 then
				local v1326 = v1305;
				if (v52.showDisplayNames and v1307 and (v1307.DisplayName ~= "")) then
					v1326 = v1307.DisplayName;
				end
				local v1327 = v51[v42(v1305)];
				local v1328 = "";
				local v1329 = v1327;
				if ((921 <= 1102) and (v1304.OriginalChannel == "Whisper")) then
					v1328 = "[WHISPER] ";
					v1329 = Color3.fromRGB(110, 150, 255);
				elseif (v1304.OriginalChannel == "Team") then
					v1329 = Color3.fromRGB(120, 210, 120);
				end
				v663(v1326, v1328 .. v1306, v1329, v1327);
			end
		end);
	end
end);
local function v675(v1076)
	return v1076 and v1076.Name and (string.find(v1076.Name, "Whisper") ~= nil);
end
v33.MessageReceived:Connect(function(v1077)
	if not v1077.TextSource then
		return;
	end
	if ((4706 >= 963) and not v45(v1077)) then
		return;
	end
	local v1078 = v1077.TextChannel;
	local v1079 = v1077.Text or "";
	local v1080 = v1077.TextSource.UserId;
	local v1081 = "Player";
	local v1082 = v31:GetPlayerByUserId(v1080);
	if (v1082 or (960 <= 876)) then
		if ((v52.showDisplayNames and (v1082.DisplayName ~= "")) or (2066 == 932)) then
			v1081 = v1082.DisplayName;
		else
			v1081 = v1082.Name;
		end
	else
		local v1265, v1266 = pcall(function()
			return v31:GetNameFromUserIdAsync(v1080);
		end);
		if (v1265 and v1266) then
			v1081 = v1266;
		end
	end
	if ((4825 < 4843) and v44(v1081, v1080)) then
		return;
	end
	if ((v1078 and v675(v1078)) or (3877 >= 4537)) then
		v663(v1081, "[WHISPER] " .. v1079, Color3.fromRGB(110, 150, 255), v51[v42(v1081)]);
		return;
	end
	local v1083 = v1078 and (string.find(v1078.Name, "Team") ~= nil);
	local v1084 = (v1083 and Color3.fromRGB(120, 210, 120)) or nil;
	v663(v1081, v1079, v1084, v51[v42(v1081)]);
end);
local function v676()
	v54();
	v63.Position = UDim2.fromOffset(v52.windowPos.X, v52.windowPos.Y);
	v63.Size = UDim2.new(0, v52.windowSize.X, 0, v52.windowSize.Y);
	v254 = v52.fontSize;
	v249 = v52.logging;
	v250 = v52.autoScroll;
	v251 = v52.wrapText;
	v252 = v52.showTime;
	v95.Text = (v249 and "Log [ON]") or "Log [OFF]";
	v96.Text = (v250 and "Auto↓ [AUTO]") or "Auto↓ [OFF]";
	v244.Text = (v251 and "Wrap [ON]") or "Wrap [OFF]";
	v245.Text = (v252 and "Time [ON]") or "Time [OFF]";
	v63.Active = not v52.clickThrough;
	v595.Text = (v52.clickThrough and "ON") or "OFF";
	v607.Text = (v52.showDisplayNames and "ON") or "OFF";
	v522();
	v261();
	v265();
	v471();
	for v1161 in pairs(v40) do
		v472(v1161);
	end
end
v676();
v34.InputBegan:Connect(function(v1099)
	if ((v1099.UserInputType == Enum.UserInputType.MouseButton1) or (4315 < 1726)) then
		if (v268.Visible or (3679 < 625)) then
			local v1318 = v34:GetMouseLocation();
			local v1319 = v268.AbsolutePosition;
			local v1320 = v268.AbsoluteSize;
			if ((v1318.X < v1319.X) or (v1318.X > (v1319.X + v1320.X)) or (v1318.Y < v1319.Y) or (v1318.Y > (v1319.Y + v1320.Y))) then
				v268.Visible = false;
			end
		end
	end
end);