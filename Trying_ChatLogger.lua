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
local v21, v22 = 400, 480;
local v23 = 2000;
local v24 = 1000;
local v25 = true;
local v26 = true;
local v27 = "ChatLogs";
local v28 = Enum.KeyCode.RightControl;
local v29 = {};
local v30 = "ChatLoggerConfig.json";
local v31 = "en";
local v32 = {en={title="Trying ChatLogger",log_on="Log [ON]",log_off="Log [OFF]",auto_on="Auto↓ [AUTO]",auto_off="Auto↓ [OFF]",clear="Clear",lines_counter="Lines %d/%d (remaining %d)%s",rot_text=" • Rot: %d",close_confirm="Close Logger?",yes="Yes",no="No",filters="Filters",save="Save",wrap_on="Wrap [ON]",wrap_off="Wrap [OFF]",time_on="Time [ON]",time_off="Time [OFF]",colors="Colors",search_placeholder="Search in chat...",close="Close",copy_line="Copy line",copy_all="Copy all",filter_title="User filters",search_name="Search by name...",select_all="Select",clear_all="Clear",refresh="Refresh",add_user="Add username or UserId...",add="Add",selected="Selected: ",blacklist_title="Blacklist",add_blacklist="Add user to blacklist...",blocked="Blocked: ",color_title="Colors (Users / Interface)",user_color="Color per user (affects new and existing):",username_ph="username",apply="Apply",recolor="Recolor",theme_colors="Interface theme (BG / Accent):",apply_theme="Apply Theme",settings_title="⚙ Advanced Settings",opacity="Window opacity:",click_through="Click-Through mode:",display_names="Show Display Names:",keywords_section="═══ Keywords (Alerts) ═══",add_keyword="Add keyword...",open_blacklist="Open Blacklist",language="Language:"},es={title="Trying ChatLogger",log_on="Log [ON]",log_off="Log [OFF]",auto_on="Auto↓ [AUTO]",auto_off="Auto↓ [OFF]",clear="Limpiar",lines_counter="Líneas %d/%d (faltan %d)%s",rot_text=" • Rot: %d",close_confirm="¿Cerrar Logger?",yes="Sí",no="No",filters="Filtros",save="Guardar",wrap_on="Wrap [ON]",wrap_off="Wrap [OFF]",time_on="Time [ON]",time_off="Time [OFF]",colors="Colores",search_placeholder="Buscar en el chat...",close="Cerrar",copy_line="Copiar línea",copy_all="Copiar todo",filter_title="Filtros de usuarios",search_name="Buscar por nombre...",select_all="Seleccionar",clear_all="Limpiar",refresh="Refrescar",add_user="Agregar username o UserId...",add="Añadir",selected="Seleccionados: ",blacklist_title="Lista Negra (Blacklist)",add_blacklist="Agregar usuario a blacklist...",blocked="Bloqueados: ",color_title="Colores (Usuarios / Interfaz)",user_color="Color por usuario (afecta nuevas y existentes):",username_ph="username",apply="Aplicar",recolor="Recolor",theme_colors="Tema interfaz (BG / Accent):",apply_theme="Aplicar Tema",settings_title="⚙ Configuración Avanzada",opacity="Opacidad de ventana:",click_through="Modo Click-Through:",display_names="Mostrar Display Names:",keywords_section="═══ Palabras Clave (Alertas) ═══",add_keyword="Agregar palabra clave...",open_blacklist="Abrir Blacklist",language="Idioma:"},zh={title="Trying ChatLogger",log_on="日志 [开]",log_off="日志 [关]",auto_on="自动↓ [自动]",auto_off="自动↓ [关]",clear="清除",lines_counter="行数 %d/%d (剩余 %d)%s",rot_text=" • 轮换: %d",close_confirm="关闭日志记录器？",yes="是",no="否",filters="过滤器",save="保存",wrap_on="换行 [开]",wrap_off="换行 [关]",time_on="时间 [开]",time_off="时间 [关]",colors="颜色",search_placeholder="在聊天中搜索...",close="关闭",copy_line="复制行",copy_all="全部复制",filter_title="用户过滤器",search_name="按名称搜索...",select_all="全选",clear_all="清除",refresh="刷新",add_user="添加用户名或用户ID...",add="添加",selected="已选择: ",blacklist_title="黑名单",add_blacklist="添加用户到黑名单...",blocked="已拦截: ",color_title="颜色（用户/界面）",user_color="每个用户的颜色（影响新的和现有的）：",username_ph="用户名",apply="应用",recolor="重新着色",theme_colors="界面主题（背景/强调）：",apply_theme="应用主题",settings_title="⚙ 高级设置",opacity="窗口不透明度：",click_through="点击穿透模式：",display_names="显示显示名称：",keywords_section="═══ 关键词（警报）═══",add_keyword="添加关键词...",open_blacklist="打开黑名单",language="语言："},ru={title="Trying ChatLogger",log_on="Лог [ВКЛ]",log_off="Лог [ВЫКЛ]",auto_on="Авто↓ [АВТО]",auto_off="Авто↓ [ВЫКЛ]",clear="Очистить",lines_counter="Строк %d/%d (осталось %d)%s",rot_text=" • Рот: %d",close_confirm="Закрыть Logger?",yes="Да",no="Нет",filters="Фильтры",save="Сохранить",wrap_on="Перенос [ВКЛ]",wrap_off="Перенос [ВЫКЛ]",time_on="Время [ВКЛ]",time_off="Время [ВЫКЛ]",colors="Цвета",search_placeholder="Поиск в чате...",close="Закрыть",copy_line="Копировать строку",copy_all="Копировать всё",filter_title="Фильтры пользователей",search_name="Поиск по имени...",select_all="Выбрать",clear_all="Очистить",refresh="Обновить",add_user="Добавить имя или ID...",add="Добавить",selected="Выбрано: ",blacklist_title="Черный список",add_blacklist="Добавить в черный список...",blocked="Заблокировано: ",color_title="Цвета (Пользователи / Интерфейс)",user_color="Цвет для пользователя (влияет на новые и существующие):",username_ph="имя пользователя",apply="Применить",recolor="Перекрасить",theme_colors="Тема интерфейса (Фон / Акцент):",apply_theme="Применить тему",settings_title="⚙ Расширенные настройки",opacity="Прозрачность окна:",click_through="Режим Click-Through:",display_names="Показывать отображаемые имена:",keywords_section="═══ Ключевые слова (Оповещения) ═══",add_keyword="Добавить ключевое слово...",open_blacklist="Открыть черный список",language="Язык:"}};
local function v33(v700)
	return v32[v31][v700] or v32['en'][v700] or v700;
end
local v34 = game:GetService("Players");
local v35 = v34.LocalPlayer;
local v36 = game:GetService("TextChatService");
local v37 = game:GetService("UserInputService");
local v38 = game:GetService("GuiService");
local v39 = game:GetService("ReplicatedStorage");
local v40 = game:GetService("SoundService");
local v41, v42 = {}, {};
local v43, v44 = {}, {};
for v701, v702 in ipairs(v0) do
	if ((typeof(v702) == "string") or (4593 <= 2672)) then
		v41[string.lower(v702)] = true;
	elseif ((635 == 635) and ((typeof(v702) == "number") or (1168 > 3156))) then
		v42[v702] = true;
	end
end
for v703, v704 in ipairs(v1) do
	if (typeof(v704) == "string") then
		v43[string.lower(v704)] = true;
	elseif ((3373 <= 3556) and (typeof(v704) == "number")) then
		v44[v704] = true;
	end
end
local function v45(v705)
	return string.lower(v705 or "");
end
local function v46()
	for v1170 in pairs(v41) do
		return true;
	end
	for v1171 in pairs(v42) do
		return true;
	end
	return false;
end
local function v47(v706, v707)
	if (v44[v707] or (572 > 4486)) then
		return true;
	end
	if (v43[v45(v706)] or (3291 < 3280)) then
		return true;
	end
	return false;
end
local function v48(v708)
	if not v708.TextSource then
		return false;
	end
	local v709 = v708.TextSource.UserId;
	if ((4386 >= 873) and (1404 == 1404) and not v709) then
		return false;
	end
	local v710 = v34:GetPlayerByUserId(v709);
	if ((921 <= 1102) and v710 and v47(v710.Name, v709)) then
		return false;
	end
	if ((4706 >= 963) and not v46()) then
		return not v47((v710 and v710.Name) or "", v709);
	end
	if (v42[v709] or (3748 < 2212)) then
		return true;
	end
	if (v710 or (1180 == 2180)) then
		return v41[v45(v710.Name)] or v41[v45(v710.DisplayName)] or false;
	else
		local v1271, v1272 = pcall(function()
			return v34:GetNameFromUserIdAsync(v709);
		end);
		return (v1271 and v41[v45(v1272)]) or false;
	end
end
local function v49(v711, v712, v713)
	if (v711 < v712) then
		return v712;
	elseif ((v711 > v713) or (960 <= 876)) then
		return v713;
	else
		return v711;
	end
end
local v50 = Color3.fromRGB(18, 18, 18);
local v51 = Color3.fromRGB(26, 26, 26);
local v52 = Color3.fromRGB(40, 40, 40);
local v53 = Color3.fromRGB(230, 230, 230);
local v54 = {};
local v55 = {opacity=1,clickThrough=false,showDisplayNames=true,windowPos={X=40,Y=220},windowSize={X=v7,Y=(v9 + v10 + v8 + v11)},fontSize=v4,logging=true,autoScroll=true,wrapText=true,showTime=true,keywords={},userColors={},themeColors={bg={18,18,18},acc={26,26,26},btn={40,40,40}},language="en"};
local function v56()
	local v714 = {opacity=v55.opacity,clickThrough=v55.clickThrough,showDisplayNames=v55.showDisplayNames,windowPos=v55.windowPos,windowSize=v55.windowSize,fontSize=v55.fontSize,logging=v55.logging,autoScroll=v55.autoScroll,wrapText=v55.wrapText,showTime=v55.showTime,keywords=v29,userColors={},themeColors=v55.themeColors,allowedNames={},blacklistNames={},language=v31};
	for v1172, v1173 in pairs(v54) do
		v714.userColors[v1172] = {math.floor(v1173.R * 255),math.floor(v1173.G * 255),math.floor(v1173.B * 255)};
	end
	for v1175 in pairs(v41) do
		table.insert(v714.allowedNames, v1175);
	end
	for v1176 in pairs(v43) do
		table.insert(v714.blacklistNames, v1176);
	end
	local v715 = pcall(function()
		if (((4090 < 4653) and (typeof(writefile) == "function")) or (2066 == 932)) then
			local v1377 = game:GetService("HttpService"):JSONEncode(v714);
			writefile(v30, v1377);
		end
	end);
end
local function v57()
	local v716 = pcall(function()
		if ((typeof(readfile) == "function") and (typeof(isfile) == "function") and isfile(v30)) then
			local v1378 = readfile(v30);
			local v1379 = game:GetService("HttpService"):JSONDecode(v1378);
			v55.opacity = v1379.opacity or 1;
			v55.clickThrough = v1379.clickThrough or false;
			v55.showDisplayNames = v1379.showDisplayNames or true;
			v55.windowPos = v1379.windowPos or v55.windowPos;
			v55.windowSize = v1379.windowSize or v55.windowSize;
			v55.fontSize = v1379.fontSize or v4;
			v55.logging = v1379.logging or true;
			v55.autoScroll = v1379.autoScroll or true;
			v55.wrapText = v1379.wrapText or true;
			v55.showTime = v1379.showTime or true;
			v31 = v1379.language or "en";
			if ((4825 < 4843) and v1379.keywords) then
				for v1443, v1444 in ipairs(v1379.keywords) do
					v29[v45(v1444)] = true;
				end
			end
			if v1379.userColors then
				for v1446, v1447 in pairs(v1379.userColors) do
					v54[v1446] = Color3.fromRGB(v1447[1], v1447[2], v1447[3]);
				end
			end
			if (v1379.themeColors or (3877 >= 4537)) then
				v50 = Color3.fromRGB(v1379.themeColors.bg[1], v1379.themeColors.bg[2], v1379.themeColors.bg[3]);
				v51 = Color3.fromRGB(v1379.themeColors.acc[1], v1379.themeColors.acc[2], v1379.themeColors.acc[3]);
				v52 = Color3.fromRGB(v1379.themeColors.btn[1], v1379.themeColors.btn[2], v1379.themeColors.btn[3]);
			end
			if (v1379.allowedNames or (2652 < 196) or (4315 < 1726)) then
				for v1449, v1450 in ipairs(v1379.allowedNames) do
					v41[v1450] = true;
				end
			end
			if (((4135 < 4817) and v1379.blacklistNames) or (3679 < 625)) then
				for v1452, v1453 in ipairs(v1379.blacklistNames) do
					v43[v1453] = true;
				end
			end
		end
	end);
end
local function v58(v717, v718)
	local v719 = false;
	local v720 = Vector2.new(0, 0);
	local v721, v722;
	local function v723()
		v719 = true;
		local v1177 = v37:GetMouseLocation();
		local v1178 = v38:GetGuiInset();
		local v1179 = v717.AbsolutePosition + v1178;
		v720 = v1177 - v1179;
		if v721 then
			v721:Disconnect();
		end
		if (v722 or (4625 < 632)) then
			v722:Disconnect();
		end
		v721 = v37.InputChanged:Connect(function(v1273)
			if (((272 == 272) and v719 and ((v1273.UserInputType == Enum.UserInputType.MouseMovement) or (v1273.UserInputType == Enum.UserInputType.Touch))) or (83 > 1780)) then
				local v1421 = v37:GetMouseLocation();
				v717.Position = UDim2.fromOffset(v1421.X - v720.X, v1421.Y - v720.Y);
			end
		end);
		v722 = v37.InputEnded:Connect(function(v1274)
			if ((v1274.UserInputType == Enum.UserInputType.MouseButton1) or (v1274.UserInputType == Enum.UserInputType.Touch)) then
				v719 = false;
				if ((100 <= 3123) and v721) then
					v721:Disconnect();
				end
				if (v722 or (1369 > 4987)) then
					v722:Disconnect();
				end
			end
		end);
	end
	for v1180, v1181 in ipairs(v718) do
		v1181.InputBegan:Connect(function(v1275)
			if ((v1275.UserInputType == Enum.UserInputType.MouseButton1) or (v1275.UserInputType == Enum.UserInputType.Touch)) then
				v723();
			end
		end);
	end
end
local v59 = Instance.new("ScreenGui");
v59.Name = "ChatLoggerPro";
v59.ResetOnSpawn = false;
v59.IgnoreGuiInset = true;
v59.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v59.Parent = v35:WaitForChild("PlayerGui");
local v66 = Instance.new("Frame");
v66.Name = "ChatWindow";
v66.Parent = v59;
v66.BackgroundColor3 = v50;
v66.BorderSizePixel = 0;
v66.Position = UDim2.fromOffset(v55.windowPos.X, v55.windowPos.Y);
v66.Size = UDim2.new(0, v55.windowSize.X, 0, v55.windowSize.Y);
v66.Active = true;
v66.AnchorPoint = Vector2.new(0, 0);
v66.BackgroundTransparency = 1 - v55.opacity;
Instance.new("UICorner", v66).CornerRadius = UDim.new(0, 8);
local v77 = Instance.new("Frame");
v77.Name = "TitleBar";
v77.Parent = v66;
v77.BackgroundColor3 = v51;
v77.BorderSizePixel = 0;
v77.Size = UDim2.new(1, 0, 0, v9);
v77.Active = true;
v77.BackgroundTransparency = 1 - v55.opacity;
local v85 = Instance.new("TextLabel");
v85.Parent = v77;
v85.BackgroundTransparency = 1;
v85.Position = UDim2.new(0, 8, 0, 0);
v85.Size = UDim2.new(0.5, 0, 1, 0);
v85.Font = Enum.Font.SourceSansSemibold;
v85.Text = v33("title");
v85.TextColor3 = Color3.new(1, 1, 1);
v85.TextSize = 15;
v85.TextXAlignment = Enum.TextXAlignment.Left;
local function v97(v724, v725, v726)
	local v727 = Instance.new("TextButton");
	v727.Parent = v77;
	v727.Size = UDim2.new(0, v725, 0, v9 - 4);
	v727.Position = UDim2.new(0, v726, 0, 2);
	v727.BackgroundColor3 = v52;
	v727.TextColor3 = Color3.new(1, 1, 1);
	v727.Font = Enum.Font.SourceSansSemibold;
	v727.TextSize = 14;
	v727.Text = v724;
	v727.BackgroundTransparency = 1 - v55.opacity;
	Instance.new("UICorner", v727).CornerRadius = UDim.new(0, 6);
	return v727;
end
local v98 = v97(v33("log_on"), 86, 120);
local v99 = v97(v33("auto_on"), 108, 208);
local v100 = v97("A-", 36, 320);
local v101 = v97("A+", 36, 360);
local function v102(v739, v740)
	local v741 = Instance.new("TextButton");
	v741.BackgroundTransparency = 1;
	v741.AnchorPoint = Vector2.new(1, 0);
	v741.Position = UDim2.new(1, v740, 0, 0);
	v741.Size = UDim2.new(0, 28, 1, 0);
	v741.Font = Enum.Font.SourceSansBold;
	v741.Text = v739;
	v741.TextColor3 = Color3.new(1, 1, 1);
	v741.TextSize = 16;
	v741.Parent = v77;
	return v741;
end
local v103 = v102("×", 0);
local v104 = v102("_", -28);
local v105 = Instance.new("Frame");
v105.Parent = v66;
v105.Size = UDim2.new(0, 200, 0, 90);
v105.AnchorPoint = Vector2.new(0.5, 0.5);
v105.Position = UDim2.new(0.5, 0, 0.5, 0);
v105.BackgroundColor3 = Color3.fromRGB(35, 35, 35);
v105.Visible = false;
v105.ZIndex = 200;
Instance.new("UICorner", v105).CornerRadius = UDim.new(0, 8);
local v114 = Instance.new("TextLabel");
v114.Parent = v105;
v114.Size = UDim2.new(1, 0, 0, 40);
v114.BackgroundTransparency = 1;
v114.Text = v33("close_confirm");
v114.TextColor3 = Color3.new(1, 1, 1);
v114.Font = Enum.Font.SourceSansBold;
v114.TextSize = 16;
v114.ZIndex = 201;
local v124 = Instance.new("TextButton");
v124.Parent = v105;
v124.Size = UDim2.new(0, 80, 0, 30);
v124.Position = UDim2.new(0, 10, 0, 50);
v124.BackgroundColor3 = Color3.fromRGB(180, 60, 60);
v124.Text = v33("yes");
v124.TextColor3 = Color3.new(1, 1, 1);
v124.Font = Enum.Font.SourceSansBold;
v124.TextSize = 14;
v124.ZIndex = 201;
Instance.new("UICorner", v124).CornerRadius = UDim.new(0, 6);
local v135 = Instance.new("TextButton");
v135.Parent = v105;
v135.Size = UDim2.new(0, 80, 0, 30);
v135.Position = UDim2.new(1, -90, 0, 50);
v135.BackgroundColor3 = v52;
v135.Text = v33("no");
v135.TextColor3 = Color3.new(1, 1, 1);
v135.Font = Enum.Font.SourceSansBold;
v135.TextSize = 14;
v135.ZIndex = 201;
Instance.new("UICorner", v135).CornerRadius = UDim.new(0, 6);
local v146 = Instance.new("Frame");
v146.Parent = v66;
v146.BackgroundColor3 = v51;
v146.BorderSizePixel = 0;
v146.Position = UDim2.new(0, 0, 0, v9);
v146.Size = UDim2.new(1, 0, 0, v10);
v146.BackgroundTransparency = 1 - v55.opacity;
local v153 = Instance.new("TextLabel");
v153.Parent = v146;
v153.BackgroundTransparency = 1;
v153.Position = UDim2.new(0, 8, 0, 0);
v153.Size = UDim2.new(1, -120, 1, 0);
v153.Font = Enum.Font.SourceSans;
v153.TextColor3 = Color3.fromRGB(210, 210, 210);
v153.TextXAlignment = Enum.TextXAlignment.Left;
v153.TextSize = 14;
v153.Text = v33("lines_counter"):format(0, 0, 0, "");
local v164 = Instance.new("TextButton");
v164.Parent = v146;
v164.AnchorPoint = Vector2.new(1, 0);
v164.Position = UDim2.new(1, -6, 0, 2);
v164.Size = UDim2.new(0, 86, 0, v10 - 4);
v164.BackgroundColor3 = v52;
v164.BorderSizePixel = 0;
v164.Font = Enum.Font.SourceSansSemibold;
v164.Text = v33("clear");
v164.TextColor3 = Color3.new(1, 1, 1);
v164.TextSize = 14;
v164.BackgroundTransparency = 1 - v55.opacity;
Instance.new("UICorner", v164).CornerRadius = UDim.new(0, 6);
local v177 = Instance.new("Frame");
v177.Parent = v66;
v177.BackgroundColor3 = v51;
v177.BorderSizePixel = 0;
v177.Position = UDim2.new(0, 0, 0, v9 + v10);
v177.Size = UDim2.new(1, 0, 0, 28);
v177.BackgroundTransparency = 1 - v55.opacity;
v177.Visible = false;
local v185 = Instance.new("TextBox");
v185.Parent = v177;
v185.Position = UDim2.new(0, 6, 0, 2);
v185.Size = UDim2.new(1, -80, 0, 24);
v185.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v185.TextColor3 = Color3.new(1, 1, 1);
v185.Font = Enum.Font.SourceSans;
v185.TextSize = 14;
v185.PlaceholderText = v33("search_placeholder");
v185.Text = "";
v185.ClearTextOnFocus = false;
Instance.new("UICorner", v185).CornerRadius = UDim.new(0, 6);
local v197 = Instance.new("TextButton");
v197.Parent = v177;
v197.Position = UDim2.new(1, -70, 0, 2);
v197.Size = UDim2.new(0, 64, 0, 24);
v197.BackgroundColor3 = v52;
v197.TextColor3 = Color3.new(1, 1, 1);
v197.Font = Enum.Font.SourceSansSemibold;
v197.TextSize = 14;
v197.Text = v33("close");
Instance.new("UICorner", v197).CornerRadius = UDim.new(0, 6);
local v207 = Instance.new("ScrollingFrame");
v207.Name = "LogPanel";
v207.Parent = v66;
v207.BackgroundColor3 = Color3.fromRGB(12, 12, 12);
v207.BorderSizePixel = 0;
v207.Position = UDim2.new(0, 0, 0, v9 + v10);
v207.Size = UDim2.new(1, 0, 1, -(v9 + v10 + v11));
v207.ScrollBarThickness = 6;
v207.ScrollingEnabled = true;
v207.CanvasSize = UDim2.new(0, 0, 0, 0);
v207.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v207.BackgroundTransparency = 1 - v55.opacity;
local v220 = Instance.new("UIListLayout");
v220.Parent = v207;
v220.FillDirection = Enum.FillDirection.Vertical;
v220.SortOrder = Enum.SortOrder.LayoutOrder;
v220.Padding = UDim.new(0, 4);
local v227 = Instance.new("Frame");
v227.Parent = v66;
v227.BackgroundColor3 = v51;
v227.BorderSizePixel = 0;
v227.Size = UDim2.new(1, 0, 0, v11);
v227.Position = UDim2.new(0, 0, 1, -v11);
v227.BackgroundTransparency = 1 - v55.opacity;
Instance.new("UICorner", v227).CornerRadius = UDim.new(0, 8);
local v235 = Instance.new("UIListLayout");
v235.Parent = v227;
v235.FillDirection = Enum.FillDirection.Horizontal;
v235.HorizontalAlignment = Enum.HorizontalAlignment.Center;
v235.VerticalAlignment = Enum.VerticalAlignment.Center;
v235.Padding = UDim.new(0, 5);
local function v244(v752, v753)
	local v754 = Instance.new("TextButton");
	v754.Parent = v227;
	v754.Size = UDim2.new(0, v753, 0, v11 - 8);
	v754.BackgroundColor3 = v52;
	v754.TextColor3 = Color3.new(1, 1, 1);
	v754.Font = Enum.Font.SourceSansSemibold;
	v754.TextSize = 14;
	v754.Text = v752;
	v754.BackgroundTransparency = 1 - v55.opacity;
	Instance.new("UICorner", v754).CornerRadius = UDim.new(0, 6);
	return v754;
end
local v245 = v244(v33("filters"), 70);
local v246 = v244(v33("save"), 70);
local v247 = v244(v33("wrap_on"), 80);
local v248 = v244(v33("time_on"), 80);
local v249 = v244(v33("colors"), 70);
local v250 = v244("⚙", 40);
local v251 = v244("🔍", 40);
v58(v66, {v77});
local v252, v253 = v55.logging, v55.autoScroll;
local v254, v255 = v55.wrapText, v55.showTime;
local v256 = false;
local v257 = v55.fontSize;
local v258 = {};
local v259 = {};
local v260 = v55.windowSize.X;
local v261 = v55.windowSize.Y;
local v262 = 0;
local v263 = 0;
local function v264()
	v257 = v49(v257, v2, v3);
	for v1182 = #v258, 1, -1 do
		local v1183 = v258[v1182];
		if ((v1183 and v1183.node and v1183.node.Parent) or (863 >= 4584)) then
			v1183.node.TextSize = v257;
		else
			table.remove(v258, v1182);
		end
	end
end
local function v265()
	return v220.AbsoluteContentSize.Y;
end
local function v266()
	local v765 = v265();
	local v766 = v207.AbsoluteWindowSize.Y;
	local v767 = v207.CanvasPosition.Y;
	return ((v765 - v766) - v767) <= v12;
end
local function v267()
	local v768 = v265();
	local v769 = v207.AbsoluteWindowSize.Y;
	v207.CanvasPosition = Vector2.new(0, math.max(0, v768 - v769));
end
local function v268()
	local v771 = #v259;
	local v772 = math.max(0, v23 - v771);
	local v773 = ((v24 > 0) and math.max(0, v24 - v263)) or 0;
	local v774 = ((v24 > 0) and v33("rot_text"):format(v773)) or "";
	v153.Text = v33("lines_counter"):format(v771, v23, v772, v774);
end
local function v269()
	local v776 = 0;
	while #v259 > v23 do
		table.remove(v259, 1);
		if (v258[1] and v258[1].node) then
			v258[1].node:Destroy();
		end
		table.remove(v258, 1);
		v776 += 1
	end
	if ((546 <= 1077) and (v776 > 0)) then
		v268();
	end
end
local v270;
local v271 = Instance.new("Frame");
v271.Name = "ContextMenu";
v271.Parent = v59;
v271.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
v271.BorderSizePixel = 0;
v271.Size = UDim2.new(0, 150, 0, 80);
v271.Visible = false;
v271.ZIndex = 300;
Instance.new("UICorner", v271).CornerRadius = UDim.new(0, 6);
local function v280(v777, v778)
	local v779 = Instance.new("TextButton");
	v779.Parent = v271;
	v779.Position = UDim2.new(0, 4, 0, v778);
	v779.Size = UDim2.new(1, -8, 0, 24);
	v779.BackgroundColor3 = v52;
	v779.TextColor3 = Color3.new(1, 1, 1);
	v779.Font = Enum.Font.SourceSans;
	v779.TextSize = 14;
	v779.Text = v777;
	v779.TextXAlignment = Enum.TextXAlignment.Left;
	Instance.new("UIPadding", v779).PaddingLeft = UDim.new(0, 6);
	Instance.new("UICorner", v779).CornerRadius = UDim.new(0, 4);
	return v779;
end
local v281 = v280(v33("copy_line"), 4);
local v282 = v280(v33("copy_all"), 32);
local v283 = nil;
v281.MouseButton1Down:Connect(function()
	if ((v283 and (typeof(setclipboard) == "function")) or (996 > 4301)) then
		setclipboard(v283.Text);
	end
	v271.Visible = false;
end);
v282.MouseButton1Down:Connect(function()
	if ((4070 > 687) and ((typeof(setclipboard) == "function") or (724 >= 1668))) then
		setclipboard(table.concat(v259, "\n"));
	end
	v271.Visible = false;
end);
local v284 = Instance.new("ScreenGui");
v284.Name = "FilterGui";
v284.ResetOnSpawn = false;
v284.IgnoreGuiInset = true;
v284.Parent = v35:WaitForChild("PlayerGui");
local v289 = Instance.new("Frame");
v289.Name = "FilterWindow";
v289.Parent = v284;
v289.BackgroundColor3 = v50;
v289.BorderSizePixel = 0;
v289.Position = UDim2.fromOffset(460, 160);
v289.Size = UDim2.new(0, v14, 0, v15);
v289.Active = true;
v289.Visible = false;
Instance.new("UICorner", v289).CornerRadius = UDim.new(0, 8);
local v299 = Instance.new("Frame");
v299.Parent = v289;
v299.BackgroundColor3 = v51;
v299.BorderSizePixel = 0;
v299.Size = UDim2.new(1, 0, 0, 26);
local v304 = Instance.new("TextLabel");
v304.Parent = v299;
v304.BackgroundTransparency = 1;
v304.Position = UDim2.new(0, 8, 0, 0);
v304.Size = UDim2.new(1, -8, 1, 0);
v304.Font = Enum.Font.SourceSansSemibold;
v304.TextColor3 = Color3.new(1, 1, 1);
v304.TextXAlignment = Enum.TextXAlignment.Left;
v304.TextSize = 16;
v304.Text = v33("filter_title");
local v314 = Instance.new("Frame");
v314.Parent = v289;
v314.BackgroundColor3 = v51;
v314.BorderSizePixel = 0;
v314.Size = UDim2.new(1, 0, 0, v18);
v314.Position = UDim2.new(0, 0, 1, -v18);
v58(v289, {v299,v314});
local function v320(v795, v796, v797)
	local v798 = Instance.new("TextButton");
	v798.Size = UDim2.new(0, v796, 0, 24);
	v798.BackgroundColor3 = v52;
	v798.TextColor3 = Color3.new(1, 1, 1);
	v798.Font = Enum.Font.SourceSansSemibold;
	v798.TextSize = 14;
	v798.Text = v795;
	v798.AutoButtonColor = true;
	Instance.new("UICorner", v798).CornerRadius = UDim.new(0, 6);
	v798.Parent = v797;
	return v798;
end
local v321 = v320("×", 26, v299);
v321.Position = UDim2.new(1, -30, 0, 1);
local v323 = Instance.new("TextBox");
v323.Parent = v289;
v323.PlaceholderText = v33("search_name");
v323.ClearTextOnFocus = false;
v323.Text = "";
v323.TextSize = 14;
v323.Size = UDim2.new(1, -8, 0, 26);
v323.Position = UDim2.new(0, 4, 0, 32);
v323.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v323.TextColor3 = Color3.new(1, 1, 1);
Instance.new("UICorner", v323).CornerRadius = UDim.new(0, 6);
local v334 = Instance.new("Frame");
v334.Parent = v289;
v334.BackgroundTransparency = 1;
v334.Size = UDim2.new(1, -8, 0, 26);
v334.Position = UDim2.new(0, 4, 0, 62);
local v339 = v320(v33("select_all"), 110, v334);
v339.Position = UDim2.new(0, 0, 0, 0);
local v341 = v320(v33("clear_all"), 92, v334);
v341.Position = UDim2.new(0, 116, 0, 0);
local v343 = v320(v33("refresh"), 100, v334);
v343.Position = UDim2.new(0, 212, 0, 0);
local v345 = Instance.new("ScrollingFrame");
v345.Parent = v289;
v345.BackgroundColor3 = Color3.fromRGB(18, 18, 18);
v345.BorderSizePixel = 0;
v345.Position = UDim2.new(0, 4, 0, 92);
v345.Size = UDim2.new(1, -8, 1, (-92 - 64) - v18);
v345.ScrollBarThickness = 6;
v345.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v345.CanvasSize = UDim2.new(0, 0, 0, 0);
Instance.new("UICorner", v345).CornerRadius = UDim.new(0, 6);
local v355 = Instance.new("UIListLayout");
v355.Parent = v345;
v355.FillDirection = Enum.FillDirection.Vertical;
v355.SortOrder = Enum.SortOrder.LayoutOrder;
v355.Padding = UDim.new(0, 3);
local v360 = Instance.new("Frame");
v360.Parent = v289;
v360.BackgroundTransparency = 1;
v360.Position = UDim2.new(0, 4, 1, -54 - v18);
v360.Size = UDim2.new(1, -8, 0, 50);
local v365 = Instance.new("TextBox");
v365.Parent = v360;
v365.PlaceholderText = v33("add_user");
v365.ClearTextOnFocus = false;
v365.Text = "";
v365.TextSize = 14;
v365.Size = UDim2.new(1, -60, 1, 0);
v365.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v365.TextColor3 = Color3.new(1, 1, 1);
Instance.new("UICorner", v365).CornerRadius = UDim.new(0, 6);
local v375 = v320(v33("add"), 56, v360);
v375.Position = UDim2.new(1, -56, 0, 0);
local v377 = Instance.new("TextLabel");
v377.Parent = v289;
v377.BackgroundTransparency = 1;
v377.Position = UDim2.new(0, 6, 1, -20 - v18);
v377.Size = UDim2.new(1, -12, 0, 16);
v377.Font = Enum.Font.SourceSans;
v377.TextColor3 = Color3.fromRGB(200, 200, 200);
v377.TextSize = 14;
v377.TextXAlignment = Enum.TextXAlignment.Left;
v377.Text = "";
local v387 = Instance.new("Frame");
v387.Parent = v289;
v387.AnchorPoint = Vector2.new(1, 1);
v387.Position = UDim2.new(1, -2, 1, -2 - v18);
v387.Size = UDim2.new(0, 12, 0, 12);
v387.BackgroundColor3 = Color3.fromRGB(180, 180, 180);
v387.BorderSizePixel = 0;
Instance.new("UICorner", v387).CornerRadius = UDim.new(0, 3);
local v395 = {};
local v396;
local function v397(v809, v810)
	v809.Chk.Text = (v810 and "☑") or "☐";
	v809.NameLbl.TextColor3 = (v810 and Color3.fromRGB(170, 230, 170)) or Color3.fromRGB(230, 230, 230);
end
local function v398(v813, v814)
	if (((428 < 1804) and v813 and (v813 ~= "")) or (656 >= 3330)) then
		if (v814 or (2492 <= 335)) then
			v41[v45(v813)] = true;
		else
			v41[v45(v813)] = nil;
		end
		if ((4322 >= 2562) and (v396 or (3325 > 4613))) then
			v396();
		end
	end
end
function v396()
	local v815 = 0;
	for v1184 in pairs(v41) do
		v815 += 1
	end
	for v1185 in pairs(v42) do
		v815 += 1
	end
	v377.Text = v33("selected") .. tostring(v815);
end
local function v399(v817)
	local v818 = v817.Name;
	if (v395[v818] or (3637 >= 3770)) then
		return v395[v818];
	end
	local v819 = Instance.new("Frame");
	v819.Name = "R_" .. v818;
	v819.Parent = v345;
	v819.BackgroundColor3 = Color3.fromRGB(26, 26, 26);
	v819.BorderSizePixel = 0;
	v819.Size = UDim2.new(1, -6, 0, 24);
	Instance.new("UICorner", v819).CornerRadius = UDim.new(0, 4);
	local v826 = Instance.new("TextButton");
	v826.Name = "Chk";
	v826.Parent = v819;
	v826.Size = UDim2.new(0, 24, 1, 0);
	v826.BackgroundTransparency = 1;
	v826.Font = Enum.Font.SourceSansBold;
	v826.TextSize = 18;
	v826.TextColor3 = Color3.new(1, 1, 1);
	v826.Text = "☐";
	local v836 = Instance.new("TextLabel");
	v836.Name = "NameLbl";
	v836.Parent = v819;
	v836.BackgroundTransparency = 1;
	v836.Position = UDim2.new(0, 26, 0, 0);
	v836.Size = UDim2.new(1, -26, 1, 0);
	v836.Font = Enum.Font.SourceSans;
	v836.TextXAlignment = Enum.TextXAlignment.Left;
	v836.TextSize = 14;
	v836.TextColor3 = Color3.fromRGB(230, 230, 230);
	v836.Text = (((v817.DisplayName ~= "") and v817.DisplayName) or v818) .. " (@" .. v818 .. ")";
	if (v41[v45(v818)] == nil) then
		v398(v818, true);
	end
	local v849 = v818;
	local function v850()
		return v41[v45(v849)] == true;
	end
	v397(v819, v850());
	local function v851()
		local v1186 = not v850();
		v398(v849, v1186);
		v397(v819, v1186);
	end
	v826.MouseButton1Down:Connect(v851);
	v836.InputBegan:Connect(function(v1187)
		if (v1187.UserInputType == Enum.UserInputType.MouseButton1) then
			v851();
		end
	end);
	v395[v818] = v819;
	return v819;
end
local function v400()
	for v1188, v1189 in pairs(v395) do
		if (not v34:FindFirstChild(v1188) or (2379 > 4578)) then
			v1189:Destroy();
			v395[v1188] = nil;
		end
	end
	for v1190, v1191 in ipairs(v34:GetPlayers()) do
		v399(v1191);
	end
end
local function v401()
	local v853 = v45(v323.Text);
	for v1192, v1193 in pairs(v395) do
		local v1194 = v34:FindFirstChild(v1192);
		local v1195 = (v1194 and v1194.DisplayName) or "";
		local v1196 = (v853 == "") or v45(v1192):find(v853, 1, true) or v45(v1195):find(v853, 1, true);
		v1193.Visible = v1196;
	end
end
v321.MouseButton1Down:Connect(function()
	v289.Visible = false;
end);
v339.MouseButton1Down:Connect(function()
	for v1198, v1199 in ipairs(v34:GetPlayers()) do
		v398(v1199.Name, true);
		local v1200 = v395[v1199.Name];
		if (v1200 or (4950 <= 4553) or (483 > 743)) then
			v397(v1200, true);
		end
	end
end);
v341.MouseButton1Down:Connect(function()
	for v1201, v1202 in ipairs(v34:GetPlayers()) do
		v398(v1202.Name, false);
		local v1203 = v395[v1202.Name];
		if ((2665 <= 3933) and v1203) then
			v397(v1203, false);
		end
	end
end);
v343.MouseButton1Down:Connect(function()
	v400();
	v401();
end);
v323:GetPropertyChangedSignal("Text"):Connect(v401);
v34.PlayerAdded:Connect(function(v855)
	v398(v855.Name, true);
	if v289.Visible then
		v399(v855);
		v401();
	end
end);
v34.PlayerRemoving:Connect(function(v856)
	local v857 = v395[v856.Name];
	if ((2454 > 578) and v857) then
		v857:Destroy();
		v395[v856.Name] = nil;
	end
end);
for v858, v859 in ipairs(v34:GetPlayers()) do
	v398(v859.Name, true);
end
local v402 = Instance.new("ScreenGui");
v402.Name = "BlacklistGui";
v402.ResetOnSpawn = false;
v402.IgnoreGuiInset = true;
v402.Parent = v35:WaitForChild("PlayerGui");
local v407 = Instance.new("Frame");
v407.Name = "BlacklistWindow";
v407.Parent = v402;
v407.BackgroundColor3 = v50;
v407.BorderSizePixel = 0;
v407.Position = UDim2.fromOffset(480, 180);
v407.Size = UDim2.new(0, 340, 0, 340);
v407.Active = true;
v407.Visible = false;
Instance.new("UICorner", v407).CornerRadius = UDim.new(0, 8);
local v417 = Instance.new("Frame");
v417.Parent = v407;
v417.BackgroundColor3 = v51;
v417.BorderSizePixel = 0;
v417.Size = UDim2.new(1, 0, 0, 26);
local v422 = Instance.new("TextLabel");
v422.Parent = v417;
v422.BackgroundTransparency = 1;
v422.Position = UDim2.new(0, 8, 0, 0);
v422.Size = UDim2.new(1, -40, 1, 0);
v422.Font = Enum.Font.SourceSansSemibold;
v422.TextColor3 = Color3.new(1, 1, 1);
v422.TextXAlignment = Enum.TextXAlignment.Left;
v422.TextSize = 16;
v422.Text = v33("blacklist_title");
local v432 = v320("×", 26, v417);
v432.Position = UDim2.new(1, -30, 0, 1);
v58(v407, {v417});
local v434 = Instance.new("ScrollingFrame");
v434.Parent = v407;
v434.BackgroundColor3 = Color3.fromRGB(18, 18, 18);
v434.BorderSizePixel = 0;
v434.Position = UDim2.new(0, 4, 0, 32);
v434.Size = UDim2.new(1, -8, 1, -96);
v434.ScrollBarThickness = 6;
v434.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v434.CanvasSize = UDim2.new(0, 0, 0, 0);
Instance.new("UICorner", v434).CornerRadius = UDim.new(0, 6);
local v444 = Instance.new("UIListLayout");
v444.Parent = v434;
v444.FillDirection = Enum.FillDirection.Vertical;
v444.SortOrder = Enum.SortOrder.LayoutOrder;
v444.Padding = UDim.new(0, 3);
local v449 = Instance.new("TextBox");
v449.Parent = v407;
v449.Position = UDim2.new(0, 4, 1, -58);
v449.Size = UDim2.new(1, -68, 0, 26);
v449.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v449.TextColor3 = Color3.new(1, 1, 1);
v449.Font = Enum.Font.SourceSans;
v449.TextSize = 14;
v449.PlaceholderText = v33("add_blacklist");
v449.Text = "";
v449.ClearTextOnFocus = false;
Instance.new("UICorner", v449).CornerRadius = UDim.new(0, 6);
local v461 = v320(v33("add"), 60, v407);
v461.Position = UDim2.new(1, -64, 1, -58);
local v463 = Instance.new("TextLabel");
v463.Parent = v407;
v463.BackgroundTransparency = 1;
v463.Position = UDim2.new(0, 6, 1, -28);
v463.Size = UDim2.new(1, -12, 0, 24);
v463.Font = Enum.Font.SourceSans;
v463.TextColor3 = Color3.fromRGB(200, 200, 200);
v463.TextSize = 14;
v463.TextXAlignment = Enum.TextXAlignment.Left;
v463.Text = v33("blocked") .. "0";
local v473 = {};
local function v474()
	local v860 = 0;
	for v1204 in pairs(v43) do
		v860 += 1
	end
	for v1205 in pairs(v44) do
		v860 += 1
	end
	v463.Text = v33("blocked") .. tostring(v860);
end
local function v475(v862)
	if (v862 and (v862 ~= "")) then
		v43[v45(v862)] = true;
		v474();
		v56();
		local v1278 = Instance.new("Frame");
		v1278.Name = "BLRow_" .. v862;
		v1278.Parent = v434;
		v1278.BackgroundColor3 = Color3.fromRGB(60, 30, 30);
		v1278.BorderSizePixel = 0;
		v1278.Size = UDim2.new(1, -6, 0, 28);
		Instance.new("UICorner", v1278).CornerRadius = UDim.new(0, 4);
		local v1285 = Instance.new("TextLabel");
		v1285.Parent = v1278;
		v1285.BackgroundTransparency = 1;
		v1285.Position = UDim2.new(0, 6, 0, 0);
		v1285.Size = UDim2.new(1, -36, 1, 0);
		v1285.Font = Enum.Font.SourceSans;
		v1285.TextSize = 14;
		v1285.TextColor3 = Color3.fromRGB(255, 150, 150);
		v1285.TextXAlignment = Enum.TextXAlignment.Left;
		v1285.Text = v862;
		local v1297 = Instance.new("TextButton");
		v1297.Parent = v1278;
		v1297.AnchorPoint = Vector2.new(1, 0.5);
		v1297.Position = UDim2.new(1, -4, 0.5, 0);
		v1297.Size = UDim2.new(0, 24, 0, 20);
		v1297.BackgroundColor3 = Color3.fromRGB(180, 60, 60);
		v1297.TextColor3 = Color3.new(1, 1, 1);
		v1297.Font = Enum.Font.SourceSansBold;
		v1297.TextSize = 14;
		v1297.Text = "×";
		Instance.new("UICorner", v1297).CornerRadius = UDim.new(0, 4);
		v1297.MouseButton1Down:Connect(function()
			v43[v45(v862)] = nil;
			v1278:Destroy();
			v474();
			v56();
		end);
		v473[v45(v862)] = v1278;
	end
end
v461.MouseButton1Down:Connect(function()
	local v863 = v449.Text;
	if (v863 and (v863 ~= "")) then
		v475(v863);
		v449.Text = "";
	end
end);
v432.MouseButton1Down:Connect(function()
	v407.Visible = false;
end);
local v476 = Instance.new("ScreenGui");
v476.Name = "ColorGui";
v476.ResetOnSpawn = false;
v476.IgnoreGuiInset = true;
v476.Parent = v35:WaitForChild("PlayerGui");
local v481 = Instance.new("Frame");
v481.Name = "ColorWindow";
v481.Parent = v476;
v481.BackgroundColor3 = v50;
v481.BorderSizePixel = 0;
v481.Position = UDim2.fromOffset(520, 220);
v481.Size = UDim2.new(0, v19, 0, v20);
v481.Active = true;
v481.Visible = false;
Instance.new("UICorner", v481).CornerRadius = UDim.new(0, 8);
local v491 = Instance.new("Frame");
v491.Parent = v481;
v491.BackgroundColor3 = v51;
v491.BorderSizePixel = 0;
v491.Size = UDim2.new(1, 0, 0, 26);
local v496 = Instance.new("TextLabel");
v496.Parent = v491;
v496.BackgroundTransparency = 1;
v496.Position = UDim2.new(0, 8, 0, 0);
v496.Size = UDim2.new(1, -8, 1, 0);
v496.Font = Enum.Font.SourceSansSemibold;
v496.TextColor3 = Color3.new(1, 1, 1);
v496.TextXAlignment = Enum.TextXAlignment.Left;
v496.TextSize = 16;
v496.Text = v33("color_title");
v58(v481, {v491});
local function v506(v865, v866, v867)
	local v868 = Instance.new("TextLabel");
	v868.Parent = v865;
	v868.BackgroundTransparency = 1;
	v868.Position = UDim2.new(0, 10, 0, v867);
	v868.Size = UDim2.new(1, -20, 0, 20);
	v868.Font = Enum.Font.SourceSans;
	v868.TextSize = 14;
	v868.TextXAlignment = Enum.TextXAlignment.Left;
	v868.TextColor3 = v53;
	v868.Text = v866;
	return v868;
end
local function v507(v880, v881, v882, v883, v884)
	local v885 = Instance.new("TextBox");
	v885.Parent = v880;
	v885.Position = UDim2.new(0, v881, 0, v882);
	v885.Size = UDim2.new(0, v883, 0, 24);
	v885.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
	v885.TextColor3 = Color3.new(1, 1, 1);
	v885.Font = Enum.Font.SourceSans;
	v885.TextSize = 14;
	v885.Text = "";
	v885.PlaceholderText = v884 or "";
	v885.ClearTextOnFocus = false;
	Instance.new("UICorner", v885).CornerRadius = UDim.new(0, 6);
	return v885;
end
local function v508(v898, v899, v900, v901, v902)
	local v903 = Instance.new("TextButton");
	v903.Parent = v898;
	v903.Position = UDim2.new(0, v900, 0, v901);
	v903.Size = UDim2.new(0, v902, 0, 26);
	v903.BackgroundColor3 = v52;
	v903.TextColor3 = Color3.new(1, 1, 1);
	v903.Font = Enum.Font.SourceSansSemibold;
	v903.TextSize = 14;
	v903.Text = v899;
	Instance.new("UICorner", v903).CornerRadius = UDim.new(0, 6);
	return v903;
end
local function v509(v914, v915, v916, v917, v918)
	local v919 = Instance.new("Frame");
	v919.Parent = v914;
	v919.Position = UDim2.new(0, 10, 0, v915);
	v919.Size = UDim2.new(1, -20, 0, 24);
	v919.BackgroundTransparency = 1;
	local v924 = Instance.new("UIListLayout", v919);
	v924.FillDirection = Enum.FillDirection.Horizontal;
	v924.Padding = UDim.new(0, 6);
	local v928 = {Color3.fromRGB(255, 80, 80),Color3.fromRGB(80, 255, 80),Color3.fromRGB(80, 160, 255),Color3.fromRGB(255, 220, 0),Color3.fromRGB(255, 120, 0),Color3.fromRGB(200, 80, 255)};
	for v1206, v1207 in ipairs(v928) do
		local v1208 = Instance.new("TextButton");
		v1208.Parent = v919;
		v1208.Text = "";
		v1208.BackgroundColor3 = v1207;
		v1208.Size = UDim2.new(0, 24, 0, 24);
		Instance.new("UICorner", v1208).CornerRadius = UDim.new(0, 4);
		v1208.MouseButton1Down:Connect(function()
			v916.Text = tostring(math.floor(v1207.R * 255));
			v917.Text = tostring(math.floor(v1207.G * 255));
			v918.Text = tostring(math.floor(v1207.B * 255));
		end);
	end
end
v506(v481, v33("user_color"), 30);
local v510 = v507(v481, 10, 54, 140, v33("username_ph"));
local v511 = v507(v481, 160, 54, 50, "0-255");
local v512 = v507(v481, 214, 54, 50, "0-255");
local v513 = v507(v481, 268, 54, 50, "0-255");
v509(v481, 84, v511, v512, v513);
local v514 = v508(v481, v33("apply"), 10, 118, 150);
local v515 = v508(v481, v33("recolor"), 170, 118, 150);
v506(v481, v33("theme_colors"), 154);
local v516 = v507(v481, 10, 178, 50, "0-255");
local v517 = v507(v481, 64, 178, 50, "0-255");
local v518 = v507(v481, 118, 178, 50, "0-255");
local v519 = v507(v481, 180, 178, 50, "0-255");
local v520 = v507(v481, 234, 178, 50, "0-255");
local v521 = v507(v481, 288, 178, 50, "0-255");
v509(v481, 208, v519, v520, v521);
local v522 = v508(v481, v33("apply_theme"), 10, 242, 150);
local v523 = v508(v481, v33("close"), 170, 242, 80);
local function v524(v929)
	local v930 = tonumber(v929);
	if ((930 < 4458) and not v930) then
		return 0;
	end
	return math.clamp(math.floor(v930 + 0.5), 0, 255);
end
local function v525()
	v66.BackgroundColor3 = v50;
	v77.BackgroundColor3 = v51;
	v146.BackgroundColor3 = v51;
	v227.BackgroundColor3 = v51;
	v177.BackgroundColor3 = v51;
	v164.BackgroundColor3 = v52;
	v289.BackgroundColor3 = v50;
	v299.BackgroundColor3 = v51;
	v314.BackgroundColor3 = v51;
	v481.BackgroundColor3 = v50;
	v491.BackgroundColor3 = v51;
	v407.BackgroundColor3 = v50;
	v417.BackgroundColor3 = v51;
end
v514.MouseButton1Down:Connect(function()
	local v944 = v45(v510.Text or "");
	if ((3273 == 3273) and (v944 == "")) then
		return;
	end
	local v945, v946, v947 = v524(v511.Text), v524(v512.Text), v524(v513.Text);
	v54[v944] = Color3.fromRGB(v945, v946, v947);
	v56();
end);
v515.MouseButton1Down:Connect(function()
	local v949 = v45(v510.Text or "");
	if ((3824 > 409) and (v949 == "")) then
		return;
	end
	local v950 = v54[v949];
	if ((662 <= 972) and not v950) then
		return;
	end
	for v1214 = 1, #v258 do
		local v1215 = v258[v1214];
		if ((4370 == 4370) and v1215.author and (v45(v1215.author) == v949) and v1215.node and v1215.node.Parent) then
			v1215.node.TextColor3 = v950;
		end
	end
end);
v522.MouseButton1Down:Connect(function()
	v50 = Color3.fromRGB(v524(v516.Text), v524(v517.Text), v524(v518.Text));
	v51 = Color3.fromRGB(v524(v519.Text), v524(v520.Text), v524(v521.Text));
	v55.themeColors.bg = {v524(v516.Text),v524(v517.Text),v524(v518.Text)};
	v55.themeColors.acc = {v524(v519.Text),v524(v520.Text),v524(v521.Text)};
	v525();
	v56();
end);
v523.MouseButton1Down:Connect(function()
	v481.Visible = false;
end);
local v526 = Instance.new("ScreenGui");
v526.Name = "SettingsGui";
v526.ResetOnSpawn = false;
v526.IgnoreGuiInset = true;
v526.Parent = v35:WaitForChild("PlayerGui");
local v531 = Instance.new("Frame");
v531.Name = "SettingsWindow";
v531.Parent = v526;
v531.BackgroundColor3 = v50;
v531.BorderSizePixel = 0;
v531.Position = UDim2.fromOffset(500, 200);
v531.Size = UDim2.new(0, v21, 0, v22);
v531.Active = true;
v531.Visible = false;
Instance.new("UICorner", v531).CornerRadius = UDim.new(0, 8);
local v541 = Instance.new("Frame");
v541.Parent = v531;
v541.BackgroundColor3 = v51;
v541.BorderSizePixel = 0;
v541.Size = UDim2.new(1, 0, 0, 26);
local v546 = Instance.new("TextLabel");
v546.Parent = v541;
v546.BackgroundTransparency = 1;
v546.Position = UDim2.new(0, 8, 0, 0);
v546.Size = UDim2.new(1, -40, 1, 0);
v546.Font = Enum.Font.SourceSansSemibold;
v546.TextColor3 = Color3.new(1, 1, 1);
v546.TextXAlignment = Enum.TextXAlignment.Left;
v546.TextSize = 16;
v546.Text = v33("settings_title");
local v556 = v320("×", 26, v541);
v556.Position = UDim2.new(1, -30, 0, 1);
v58(v531, {v541});
local v558 = Instance.new("ScrollingFrame");
v558.Parent = v531;
v558.BackgroundColor3 = Color3.fromRGB(18, 18, 18);
v558.BorderSizePixel = 0;
v558.Position = UDim2.new(0, 4, 0, 32);
v558.Size = UDim2.new(1, -8, 1, -36);
v558.ScrollBarThickness = 6;
v558.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v558.CanvasSize = UDim2.new(0, 0, 0, 0);
Instance.new("UICorner", v558).CornerRadius = UDim.new(0, 6);
local v568 = Instance.new("UIListLayout");
v568.Parent = v558;
v568.FillDirection = Enum.FillDirection.Vertical;
v568.SortOrder = Enum.SortOrder.LayoutOrder;
v568.Padding = UDim.new(0, 8);
Instance.new("UIPadding", v558).PaddingLeft = UDim.new(0, 8);
Instance.new("UIPadding", v558).PaddingRight = UDim.new(0, 8);
Instance.new("UIPadding", v558).PaddingTop = UDim.new(0, 8);
local function v576(v954, v955)
	local v956 = Instance.new("Frame");
	v956.Parent = v558;
	v956.BackgroundTransparency = 1;
	v956.Size = UDim2.new(1, -16, 0, 30);
	local v960 = Instance.new("TextLabel");
	v960.Parent = v956;
	v960.BackgroundTransparency = 1;
	v960.Position = UDim2.new(0, 0, 0, 0);
	v960.Size = UDim2.new(1, -100, 1, 0);
	v960.Font = Enum.Font.SourceSans;
	v960.TextSize = 14;
	v960.TextColor3 = v53;
	v960.TextXAlignment = Enum.TextXAlignment.Left;
	v960.Text = v954;
	return v956;
end
local v577 = v576(v33("language"), 0);
local v578 = Instance.new("TextButton");
v578.Parent = v577;
v578.AnchorPoint = Vector2.new(1, 0.5);
v578.Position = UDim2.new(1, 0, 0.5, 0);
v578.Size = UDim2.new(0, 80, 0, 24);
v578.BackgroundColor3 = v52;
v578.TextColor3 = Color3.new(1, 1, 1);
v578.Font = Enum.Font.SourceSansSemibold;
v578.TextSize = 14;
v578.Text = string.upper(v31);
Instance.new("UICorner", v578).CornerRadius = UDim.new(0, 6);
local v589 = Instance.new("Frame");
v589.Parent = v531;
v589.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
v589.BorderSizePixel = 0;
v589.Size = UDim2.new(0, 80, 0, 104);
v589.Visible = false;
v589.ZIndex = 400;
Instance.new("UICorner", v589).CornerRadius = UDim.new(0, 6);
local v597 = {"EN","ES","ZH","RU"};
local v598 = {EN="en",ES="es",ZH="zh",RU="ru"};
for v972, v973 in ipairs(v597) do
	local v974 = Instance.new("TextButton");
	v974.Parent = v589;
	v974.Position = UDim2.new(0, 4, 0, ((v972 - 1) * 26) + 2);
	v974.Size = UDim2.new(1, -8, 0, 24);
	v974.BackgroundColor3 = v52;
	v974.TextColor3 = Color3.new(1, 1, 1);
	v974.Font = Enum.Font.SourceSans;
	v974.TextSize = 14;
	v974.Text = v973;
	v974.ZIndex = 501;
	Instance.new("UICorner", v974).CornerRadius = UDim.new(0, 4);
	v974.MouseButton1Down:Connect(function()
		v31 = v598[v973];
		v578.Text = v973;
		v589.Visible = false;
		v55.language = v31;
		v56();
		v85.Text = v33("title");
		v98.Text = (v252 and v33("log_on")) or v33("log_off");
		v99.Text = (v253 and v33("auto_on")) or v33("auto_off");
		v164.Text = v33("clear");
		v245.Text = v33("filters");
		v246.Text = v33("save");
		v247.Text = (v254 and v33("wrap_on")) or v33("wrap_off");
		v248.Text = (v255 and v33("time_on")) or v33("time_off");
		v249.Text = v33("colors");
		v185.PlaceholderText = v33("search_placeholder");
		v197.Text = v33("close");
		v114.Text = v33("close_confirm");
		v124.Text = v33("yes");
		v135.Text = v33("no");
		v281.Text = v33("copy_line");
		v282.Text = v33("copy_all");
		v304.Text = v33("filter_title");
		v323.PlaceholderText = v33("search_name");
		v339.Text = v33("select_all");
		v341.Text = v33("clear_all");
		v343.Text = v33("refresh");
		v365.PlaceholderText = v33("add_user");
		v375.Text = v33("add");
		v422.Text = v33("blacklist_title");
		v449.PlaceholderText = v33("add_blacklist");
		v461.Text = v33("add");
		v496.Text = v33("color_title");
		v510.PlaceholderText = v33("username_ph");
		v514.Text = v33("apply");
		v515.Text = v33("recolor");
		v522.Text = v33("apply_theme");
		v523.Text = v33("close");
		v546.Text = v33("settings_title");
		v268();
		updateCountLabel();
		v474();
	end);
end
v578.MouseButton1Down:Connect(function()
	v589.Visible = not v589.Visible;
	if ((2087 == 2087) and v589.Visible) then
		local v1314 = v578.AbsolutePosition;
		local v1315 = v531.AbsolutePosition;
		v589.Position = UDim2.fromOffset(v1314.X - v1315.X, (v1314.Y - v1315.Y) + 26);
	end
end);
local v599 = v576(v33("opacity"), 0);
local v600 = Instance.new("Frame");
v600.Parent = v599;
v600.AnchorPoint = Vector2.new(1, 0.5);
v600.Position = UDim2.new(1, 0, 0.5, 0);
v600.Size = UDim2.new(0, 120, 0, 20);
v600.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
Instance.new("UICorner", v600).CornerRadius = UDim.new(0, 4);
local v607 = Instance.new("Frame");
v607.Parent = v600;
v607.BackgroundColor3 = Color3.fromRGB(80, 160, 255);
v607.BorderSizePixel = 0;
v607.Size = UDim2.new(v55.opacity, 0, 1, 0);
Instance.new("UICorner", v607).CornerRadius = UDim.new(0, 4);
local v613 = Instance.new("TextButton");
v613.Parent = v600;
v613.BackgroundTransparency = 1;
v613.Size = UDim2.new(1, 0, 1, 0);
v613.Text = "";
local v618 = false;
v613.InputBegan:Connect(function(v987)
	if ((v987.UserInputType == Enum.UserInputType.MouseButton1) or (3404 > 4503) or (4762 <= 861)) then
		v618 = true;
	end
end);
v37.InputEnded:Connect(function(v988)
	if ((v988.UserInputType == Enum.UserInputType.MouseButton1) or (1412 == 4264)) then
		v618 = false;
	end
end);
v37.InputChanged:Connect(function(v989)
	if ((v618 and (v989.UserInputType == Enum.UserInputType.MouseMovement)) or (3168 < 2153)) then
		local v1317 = v989.Position.X - v600.AbsolutePosition.X;
		local v1318 = v600.AbsoluteSize.X;
		local v1319 = math.clamp(v1317 / v1318, 0, 1);
		v55.opacity = v1319;
		v607.Size = UDim2.new(v1319, 0, 1, 0);
		v66.BackgroundTransparency = 1 - v1319;
		v77.BackgroundTransparency = 1 - v1319;
		v146.BackgroundTransparency = 1 - v1319;
		v227.BackgroundTransparency = 1 - v1319;
		v177.BackgroundTransparency = 1 - v1319;
		v207.BackgroundTransparency = 1 - v1319;
		for v1394, v1395 in ipairs({v98,v99,v100,v101,v164,v245,v246,v247,v248,v249,v250,v251}) do
			v1395.BackgroundTransparency = 1 - v1319;
		end
		v56();
	end
end);
local v619 = v576(v33("click_through"), 0);
local v620 = Instance.new("TextButton");
v620.Parent = v619;
v620.AnchorPoint = Vector2.new(1, 0.5);
v620.Position = UDim2.new(1, 0, 0.5, 0);
v620.Size = UDim2.new(0, 80, 0, 24);
v620.BackgroundColor3 = v52;
v620.TextColor3 = Color3.new(1, 1, 1);
v620.Font = Enum.Font.SourceSansSemibold;
v620.TextSize = 14;
v620.Text = (v55.clickThrough and "ON") or "OFF";
Instance.new("UICorner", v620).CornerRadius = UDim.new(0, 6);
v620.MouseButton1Down:Connect(function()
	v55.clickThrough = not v55.clickThrough;
	v620.Text = (v55.clickThrough and "ON") or "OFF";
	v66.Active = not v55.clickThrough;
	v56();
end);
local v631 = v576(v33("display_names"), 0);
local v632 = Instance.new("TextButton");
v632.Parent = v631;
v632.AnchorPoint = Vector2.new(1, 0.5);
v632.Position = UDim2.new(1, 0, 0.5, 0);
v632.Size = UDim2.new(0, 80, 0, 24);
v632.BackgroundColor3 = v52;
v632.TextColor3 = Color3.new(1, 1, 1);
v632.Font = Enum.Font.SourceSansSemibold;
v632.TextSize = 14;
v632.Text = (v55.showDisplayNames and "ON") or "OFF";
Instance.new("UICorner", v632).CornerRadius = UDim.new(0, 6);
v632.MouseButton1Down:Connect(function()
	v55.showDisplayNames = not v55.showDisplayNames;
	v632.Text = (v55.showDisplayNames and "ON") or "OFF";
	v56();
end);
v506(v558, v33("keywords_section"), 0);
local v643 = Instance.new("ScrollingFrame");
v643.Parent = v558;
v643.BackgroundColor3 = Color3.fromRGB(26, 26, 26);
v643.BorderSizePixel = 0;
v643.Size = UDim2.new(1, -16, 0, 120);
v643.ScrollBarThickness = 6;
v643.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v643.CanvasSize = UDim2.new(0, 0, 0, 0);
Instance.new("UICorner", v643).CornerRadius = UDim.new(0, 6);
local v652 = Instance.new("UIListLayout");
v652.Parent = v643;
v652.FillDirection = Enum.FillDirection.Vertical;
v652.SortOrder = Enum.SortOrder.LayoutOrder;
v652.Padding = UDim.new(0, 3);
local v657 = {};
local function v658(v995)
	if (v657[v995] or (3506 <= 1309)) then
		return;
	end
	local v996 = Instance.new("Frame");
	v996.Name = "KW_" .. v995;
	v996.Parent = v643;
	v996.BackgroundColor3 = Color3.fromRGB(50, 50, 50);
	v996.BorderSizePixel = 0;
	v996.Size = UDim2.new(1, -6, 0, 28);
	Instance.new("UICorner", v996).CornerRadius = UDim.new(0, 4);
	local v1003 = Instance.new("TextLabel");
	v1003.Parent = v996;
	v1003.BackgroundTransparency = 1;
	v1003.Position = UDim2.new(0, 6, 0, 0);
	v1003.Size = UDim2.new(1, -36, 1, 0);
	v1003.Font = Enum.Font.SourceSans;
	v1003.TextSize = 14;
	v1003.TextColor3 = Color3.fromRGB(255, 220, 100);
	v1003.TextXAlignment = Enum.TextXAlignment.Left;
	v1003.Text = v995;
	local v1015 = Instance.new("TextButton");
	v1015.Parent = v996;
	v1015.AnchorPoint = Vector2.new(1, 0.5);
	v1015.Position = UDim2.new(1, -4, 0.5, 0);
	v1015.Size = UDim2.new(0, 24, 0, 20);
	v1015.BackgroundColor3 = Color3.fromRGB(180, 60, 60);
	v1015.TextColor3 = Color3.new(1, 1, 1);
	v1015.Font = Enum.Font.SourceSansBold;
	v1015.TextSize = 14;
	v1015.Text = "×";
	Instance.new("UICorner", v1015).CornerRadius = UDim.new(0, 4);
	v1015.MouseButton1Down:Connect(function()
		v29[v45(v995)] = nil;
		v996:Destroy();
		v657[v995] = nil;
		v56();
	end);
	v657[v995] = v996;
end
local v659 = Instance.new("Frame");
v659.Parent = v558;
v659.BackgroundTransparency = 1;
v659.Size = UDim2.new(1, -16, 0, 30);
local v663 = Instance.new("TextBox");
v663.Parent = v659;
v663.Position = UDim2.new(0, 0, 0, 0);
v663.Size = UDim2.new(1, -80, 1, 0);
v663.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v663.TextColor3 = Color3.new(1, 1, 1);
v663.Font = Enum.Font.SourceSans;
v663.TextSize = 14;
v663.PlaceholderText = v33("add_keyword");
v663.Text = "";
v663.ClearTextOnFocus = false;
Instance.new("UICorner", v663).CornerRadius = UDim.new(0, 6);
local v675 = v320(v33("add"), 74, v659);
v675.Position = UDim2.new(1, -74, 0, 0);
v675.MouseButton1Down:Connect(function()
	local v1028 = v663.Text;
	if (((2955 == 2955) and v1028 and (v1028 ~= "")) or (4976 < 1332)) then
		v29[v45(v1028)] = true;
		v658(v1028);
		v663.Text = "";
		v56();
	end
end);
local v677 = Instance.new("Frame");
v677.Parent = v558;
v677.BackgroundTransparency = 1;
v677.Size = UDim2.new(1, -16, 0, 30);
local v681 = v320(v33("open_blacklist"), 140, v677);
v681.Position = UDim2.new(0, 0, 0, 0);
v681.MouseButton1Down:Connect(function()
	v407.Visible = not v407.Visible;
	if ((4628 == 4628) and v407.Visible) then
		v474();
	end
end);
v556.MouseButton1Down:Connect(function()
	v531.Visible = false;
end);
for v1031 in pairs(v29) do
	v658(v1031);
end
local function v683()
	pcall(function()
		if (((typeof(makefolder) == "function") and ((typeof(isfolder) ~= "function") or not isfolder(v27))) or (54 == 395)) then
			makefolder(v27);
		end
	end);
end
v683();
function v270(v1032, v1033)
	local v1034 = v1032 or table.concat(v259, "\n");
	if (v1034 == "") then
		return;
	end
	local v1035 = ("%04d-%02d-%02d_%02d-%02d-%02d"):format(tonumber(os.date("%Y")), tonumber(os.date("%m")), tonumber(os.date("%d")), tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")));
	local v1036 = ("ChatLog_%s_r%03d.txt"):format(v1035, v262);
	local v1037 = v27 .. "/" .. v1036;
	local v1038 = false;
	pcall(function()
		if ((typeof(writefile) == "function") or (2903 == 1495)) then
			writefile(v1037, v1034);
			v1038 = true;
		end
	end);
	if ((4546 >= 2275) and v1038) then
		return v1037;
	end
	if not v1033 then
		pcall(function()
			if (typeof(setclipboard) == "function") then
				setclipboard(v1034);
			end
		end);
	end
end
local function v684(v1039, v1040)
	local v1041 = v54[v45(v1039 or "")];
	if ((82 == 82) and v1041) then
		return v1041;
	end
	return v1040 or Color3.fromRGB(230, 230, 230);
end
local function v685()
	pcall(function()
		local v1255 = Instance.new("Sound");
		v1255.SoundId = "rbxassetid://4590662766";
		v1255.Volume = 0.5;
		v1255.Parent = v40;
		v1255:Play();
		task.delay(2, function()
			v1255:Destroy();
		end);
	end);
end
local function v686(v1042)
	local v1043 = v45(v1042);
	for v1259 in pairs(v29) do
		if (((819 >= 22) and v1043:find(v1259, 1, true)) or (581 < 282)) then
			return true;
		end
	end
	return false;
end
local v687 = "";
local function v688(v1044, v1045, v1046, v1047)
	if not v252 then
		return;
	end
	local v1048 = v253 and v266();
	local v1049 = v1044 or "Player";
	local v1050 = Instance.new("TextLabel");
	v1050.Parent = v207;
	v1050.BackgroundTransparency = 1;
	v1050.Size = UDim2.new(1, -10, 0, 0);
	v1050.AutomaticSize = Enum.AutomaticSize.Y;
	v1050.TextXAlignment = Enum.TextXAlignment.Left;
	v1050.TextYAlignment = Enum.TextYAlignment.Top;
	v1050.Font = Enum.Font.SourceSansSemibold;
	v1050.TextSize = v257;
	v1050.TextColor3 = v1047 or v684(v1049, v1046);
	v1050.TextWrapped = v254;
	v1050.TextTruncate = Enum.TextTruncate.None;
	v1050.RichText = false;
	local v1068 = v686(v1045);
	if (v1068 or (4609 < 2495)) then
		v1050.BackgroundTransparency = 0;
		v1050.BackgroundColor3 = Color3.fromRGB(80, 20, 20);
		v685();
	end
	local v1069 = (v255 and ("[" .. os.date("%H:%M:%S") .. "] ")) or "";
	v1050.Text = v1069 .. v1049 .. ": " .. v1045;
	v1050.LayoutOrder = math.floor(os.clock() * 1000);
	v1050.InputBegan:Connect(function(v1260)
		if ((3162 == 3162) and (v1260.UserInputType == Enum.UserInputType.MouseButton2)) then
			v283 = v1050;
			local v1397 = v37:GetMouseLocation();
			v271.Position = UDim2.fromOffset(v1397.X, v1397.Y);
			v271.Visible = true;
		end
	end);
	table.insert(v258, {node=v1050,author=v1049,text=v1045});
	local v1072 = v1069 .. v1049 .. ": " .. v1045;
	table.insert(v259, v1072);
	if ((1152 == 1152) and ((v687 ~= "") or (2369 > 4429))) then
		local v1332 = v45(v1050.Text);
		v1050.Visible = v1332:find(v687, 1, true) ~= nil;
	end
	v269();
	if ((1896 <= 3422) and (v24 > 0)) then
		v263 += 1
		if (((4095 >= 3183) and (v263 >= v24)) or (990 > 1620)) then
			v263 = 0;
			v262 += 1
			local v1425 = v270(nil, true);
			if (v25 or (3711 < 1008)) then
				for v1457 = #v258, 1, -1 do
					if v258[v1457].node then
						v258[v1457].node:Destroy();
					end
				end
				v258 = {};
				v259 = {};
				v263 = 0;
				task.defer(v267);
			end
		end
	end
	if ((#v259 > v23) or (877 > 4695)) then
		v262 += 1
		v270(nil, true);
		if ((2691 >= 1851) and (v25 or (1049 <= 906))) then
			for v1434 = #v258, 1, -1 do
				if (v258[v1434].node or (2985 >= 4856)) then
					v258[v1434].node:Destroy();
				end
			end
			v258 = {};
			v259 = {};
			v263 = 0;
		end
	end
	v268();
	if ((4276 >= 1195) and v1048) then
		task.defer(v267);
	end
end
v185:GetPropertyChangedSignal("Text"):Connect(function()
	v687 = v45(v185.Text);
	for v1261, v1262 in ipairs(v258) do
		if ((3232 <= 4690) and v1262.node and v1262.node.Parent) then
			if ((v687 == "") or (896 >= 3146)) then
				v1262.node.Visible = true;
			else
				local v1436 = v45(v1262.node.Text);
				v1262.node.Visible = v1436:find(v687, 1, true) ~= nil;
			end
		end
	end
end);
v251.MouseButton1Down:Connect(function()
	v177.Visible = not v177.Visible;
	if ((3061 >= 2958) and v177.Visible) then
		v207.Position = UDim2.new(0, 0, 0, v9 + v10 + 28);
		v207.Size = UDim2.new(1, 0, 1, -(v9 + v10 + v11 + 28));
		v185:CaptureFocus();
	else
		v207.Position = UDim2.new(0, 0, 0, v9 + v10);
		v207.Size = UDim2.new(1, 0, 1, -(v9 + v10 + v11));
		v185.Text = "";
		v687 = "";
		for v1400, v1401 in ipairs(v258) do
			if ((4513 > 2726) and v1401.node and v1401.node.Parent) then
				v1401.node.Visible = true;
			end
		end
	end
end);
v197.MouseButton1Down:Connect(function()
	v177.Visible = false;
	v207.Position = UDim2.new(0, 0, 0, v9 + v10);
	v207.Size = UDim2.new(1, 0, 1, -(v9 + v10 + v11));
	v185.Text = "";
	v687 = "";
	for v1263, v1264 in ipairs(v258) do
		if ((3187 >= 644) and v1264.node and v1264.node.Parent) then
			v1264.node.Visible = true;
		end
	end
end);
v98.MouseButton1Down:Connect(function()
	v252 = not v252;
	v98.Text = (v252 and v33("log_on")) or v33("log_off");
	v55.logging = v252;
	v56();
end);
v99.MouseButton1Down:Connect(function()
	v253 = not v253;
	v99.Text = (v253 and v33("auto_on")) or v33("auto_off");
	if (v253 or (1481 >= 2658)) then
		task.defer(v267);
	end
	v55.autoScroll = v253;
	v56();
end);
v100.MouseButton1Down:Connect(function()
	v257 = v257 - 1;
	v264();
	v55.fontSize = v257;
	v56();
end);
v101.MouseButton1Down:Connect(function()
	v257 = v257 + 1;
	v264();
	v55.fontSize = v257;
	v56();
end);
v245.MouseButton1Down:Connect(function()
	v289.Visible = not v289.Visible;
	if v289.Visible then
		for v1403, v1404 in pairs(v395) do
			if ((644 <= 704) and v1404) then
				v1404:Destroy();
			end
		end
		v395 = {};
		for v1405, v1406 in ipairs(v34:GetPlayers()) do
			v399(v1406);
		end
		v401();
		v396();
	end
end);
v249.MouseButton1Down:Connect(function()
	v481.Visible = not v481.Visible;
end);
v250.MouseButton1Down:Connect(function()
	v531.Visible = not v531.Visible;
end);
v246.MouseButton1Down:Connect(function()
	v270(nil, false);
end);
v247.MouseButton1Down:Connect(function()
	v254 = not v254;
	v247.Text = (v254 and v33("wrap_on")) or v33("wrap_off");
	for v1265, v1266 in ipairs(v258) do
		if ((958 > 947) and ((v1266.node and v1266.node.Parent) or (3220 == 1364))) then
			v1266.node.TextWrapped = v254;
		end
	end
	v55.wrapText = v254;
	v56();
end);
v248.MouseButton1Down:Connect(function()
	v255 = not v255;
	v248.Text = (v255 and v33("time_on")) or v33("time_off");
	v55.showTime = v255;
	v56();
end);
v164.MouseButton1Down:Connect(function()
	v270(nil, false);
	for v1267 = #v258, 1, -1 do
		if ((4492 >= 2654) and v258[v1267].node) then
			v258[v1267].node:Destroy();
		end
	end
	v258 = {};
	v259 = {};
	v263 = 0;
	v268();
end);
local v689 = {};
v104.MouseButton1Down:Connect(function()
	v256 = not v256;
	if v256 then
		v260 = v66.Size.X.Offset;
		v261 = v66.Size.Y.Offset;
		v207.Visible = false;
		v146.Visible = false;
		v227.Visible = false;
		v177.Visible = false;
		v98.Visible = false;
		v99.Visible = false;
		v100.Visible = false;
		v101.Visible = false;
		for v1408, v1409 in ipairs(v689) do
			v1409.Visible = false;
		end
		v66.Size = UDim2.fromOffset(v13, v9);
	else
		v207.Visible = true;
		v146.Visible = true;
		v227.Visible = true;
		v98.Visible = true;
		v99.Visible = true;
		v100.Visible = true;
		v101.Visible = true;
		for v1411, v1412 in ipairs(v689) do
			v1412.Visible = true;
		end
		v66.Size = UDim2.fromOffset(v260, v261);
		task.defer(v267);
	end
end);
v103.MouseButton1Down:Connect(function()
	v105.Visible = true;
end);
v135.MouseButton1Down:Connect(function()
	v105.Visible = false;
end);
v124.MouseButton1Down:Connect(function()
	v56();
	v59:Destroy();
	v284:Destroy();
	v476:Destroy();
	v526:Destroy();
	v402:Destroy();
end);
v37.InputBegan:Connect(function(v1093, v1094)
	if ((3442 >= 1503) and ((not v1094 and (v1093.KeyCode == v28)) or (1054 > 3392))) then
		v59.Enabled = not v59.Enabled;
		v284.Enabled = v59.Enabled;
		v476.Enabled = v59.Enabled;
		v526.Enabled = v59.Enabled;
		v402.Enabled = v59.Enabled;
	end
end);
local v690 = 10;
local function v691(v1095, v1096, v1097)
	local v1098 = Instance.new("Frame");
	v1098.Name = "Resize_" .. v1095;
	v1098.BackgroundTransparency = 1;
	v1098.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
	v1098.BorderSizePixel = 0;
	v1098.Position = v1096;
	v1098.Size = v1097;
	v1098.ZIndex = 100;
	v1098.Parent = v66;
	table.insert(v689, v1098);
	return v1098;
end
local v692 = v691("E", UDim2.new(1, -v690, 0, 0), UDim2.new(0, v690, 1, -v690));
local v693 = v691("S", UDim2.new(0, 0, 1, -v690), UDim2.new(1, -v690, 0, v690));
local v694 = v691("SE", UDim2.new(1, -v690, 1, -v690), UDim2.new(0, v690, 0, v690));
local v695 = false;
local v696 = nil;
local v697 = Vector2.new(0, 0);
local v698 = Vector2.new(0, 0);
local function v699(v1107, v1108)
	if ((v1107.UserInputType == Enum.UserInputType.MouseButton1) or (v1107.UserInputType == Enum.UserInputType.Touch) or (676 >= 1642) or (3170 <= 1464)) then
		v695 = true;
		v696 = v1108;
		v697 = v37:GetMouseLocation();
		v698 = v66.AbsoluteSize;
	end
end
v692.InputBegan:Connect(function(v1109)
	v699(v1109, "E");
end);
v693.InputBegan:Connect(function(v1110)
	v699(v1110, "S");
end);
v694.InputBegan:Connect(function(v1111)
	v699(v1111, "SE");
end);
v37.InputChanged:Connect(function(v1112)
	if (((4136 > 2397) and v695 and ((v1112.UserInputType == Enum.UserInputType.MouseMovement) or (v1112.UserInputType == Enum.UserInputType.Touch))) or (4797 == 4388)) then
		local v1364 = v37:GetMouseLocation();
		local v1365 = v1364 - v697;
		local v1366, v1367 = v698.X, v698.Y;
		if ((v696 == "E") or (v696 == "SE") or (4334 == 4245)) then
			v1366 = v698.X + v1365.X;
		end
		if ((v696 == "S") or (v696 == "SE")) then
			v1367 = v698.Y + v1365.Y;
		end
		v1366 = math.max(v5, v1366);
		v1367 = math.max(v6, v1367);
		v66.Size = UDim2.fromOffset(v1366, v1367);
		v55.windowSize.X = v1366;
		v55.windowSize.Y = v1367;
	end
end);
v37.InputEnded:Connect(function(v1113)
	if ((551 <= 681) and ((v1113.UserInputType == Enum.UserInputType.MouseButton1) or (v1113.UserInputType == Enum.UserInputType.Touch))) then
		if v695 then
			v695 = false;
			v56();
		end
		if (v253 and v266()) then
			task.defer(v267);
		end
	end
end);
v66:GetPropertyChangedSignal("Position"):Connect(function()
	if ((3277 > 407) and (not v256 or (4276 <= 3031))) then
		v55.windowPos.X = v66.Position.X.Offset;
		v55.windowPos.Y = v66.Position.Y.Offset;
	end
end);
task.spawn(function()
	local v1114 = v39:FindFirstChild("DefaultChatSystemChatEvents");
	local v1115 = v1114 and v1114:FindFirstChild("OnMessageDoneFiltering");
	if v1115 then
		v1115.OnClientEvent:Connect(function(v1414)
			local v1415, v1416 = v1414.FromSpeaker, v1414.Message;
			if (not v1415 or not v1416) then
				return;
			end
			local v1417 = v34:FindFirstChild(v1415);
			if ((4695 >= 1415) and (v47(v1415, (v1417 and v1417.UserId) or 0) or (4782 <= 1199))) then
				return;
			end
			local v1418 = false;
			if (v1417 or (3212 <= 944)) then
				if (v41[v45(v1417.Name)] or (4864 < 1902)) then
					v1418 = true;
				end
			elseif (v41[v45(v1415)] or (3096 <= 1798)) then
				v1418 = true;
			end
			if not v46() then
				v1418 = true;
			end
			if ((4839 >= 3700) and v1418) then
				local v1439 = v1415;
				if ((v55.showDisplayNames and v1417 and (v1417.DisplayName ~= "")) or (1075 > 1918)) then
					v1439 = v1417.DisplayName;
				end
				local v1440 = v54[v45(v1415)];
				local v1441 = "";
				local v1442 = v1440;
				if ((3537 == 3537) and (396 <= 3804) and (v1414.OriginalChannel == "Whisper")) then
					v1441 = "[WHISPER] ";
					v1442 = Color3.fromRGB(110, 150, 255);
				elseif ((3837 >= 1570) and (v1414.OriginalChannel == "Team")) then
					v1442 = Color3.fromRGB(120, 210, 120);
				end
				v688(v1439, v1441 .. v1416, v1442, v1440);
			end
		end);
	end
end);
function isWhisperChannel(v1116)
	return v1116 and v1116.Name and (string.find(v1116.Name, "Whisper") ~= nil);
end
v36.MessageReceived:Connect(function(v1117)
	if (not v1117.TextSource or (2950 == 3812)) then
		return;
	end
	if ((4723 >= 2318) and not v48(v1117)) then
		return;
	end
	local v1118 = v1117.TextChannel;
	local v1119 = v1117.Text or "";
	local v1120 = v1117.TextSource.UserId;
	local v1121 = "Player";
	local v1122 = v34:GetPlayerByUserId(v1120);
	if v1122 then
		if ((v55.showDisplayNames and (v1122.DisplayName ~= "")) or (4169 == 2187) or (2027 > 2852)) then
			v1121 = v1122.DisplayName;
		else
			v1121 = v1122.Name;
		end
	else
		local v1375, v1376 = pcall(function()
			return v34:GetNameFromUserIdAsync(v1120);
		end);
		if (v1375 and v1376) then
			v1121 = v1376;
		end
	end
	if v47(v1121, v1120) then
		return;
	end
	if ((1406 == 1406) and v1118 and isWhisperChannel(v1118)) then
		v688(v1121, "[WHISPER] " .. v1119, Color3.fromRGB(110, 150, 255), v54[v45(v1121)]);
		return;
	end
	local v1123 = v1118 and (string.find(v1118.Name, "Team") ~= nil);
	local v1124 = (v1123 and Color3.fromRGB(120, 210, 120)) or nil;
	v688(v1121, v1119, v1124, v54[v45(v1121)]);
end);
function updateAllTexts()
	v85.Text = v33("title");
	v98.Text = (v252 and v33("log_on")) or v33("log_off");
	v99.Text = (v253 and v33("auto_on")) or v33("auto_off");
	v164.Text = v33("clear");
	v245.Text = v33("filters");
	v246.Text = v33("save");
	v247.Text = (v254 and v33("wrap_on")) or v33("wrap_off");
	v248.Text = (v255 and v33("time_on")) or v33("time_off");
	v249.Text = v33("colors");
	v185.PlaceholderText = v33("search_placeholder");
	v197.Text = v33("close");
	v114.Text = v33("close_confirm");
	v124.Text = v33("yes");
	v135.Text = v33("no");
	v281.Text = v33("copy_line");
	v282.Text = v33("copy_all");
	v304.Text = v33("filter_title");
	v323.PlaceholderText = v33("search_name");
	v339.Text = v33("select_all");
	v341.Text = v33("clear_all");
	v343.Text = v33("refresh");
	v365.PlaceholderText = v33("add_user");
	v375.Text = v33("add");
	v422.Text = v33("blacklist_title");
	v449.PlaceholderText = v33("add_blacklist");
	v461.Text = v33("add");
	v496.Text = v33("color_title");
	v510.PlaceholderText = v33("username_ph");
	v514.Text = v33("apply");
	v515.Text = v33("recolor");
	v522.Text = v33("apply_theme");
	v523.Text = v33("close");
	v546.Text = v33("settings_title");
	v578.Text = string.upper(v31);
	v268();
	v396();
	v474();
end
function firstSetup()
	v57();
	v66.Position = UDim2.fromOffset(v55.windowPos.X, v55.windowPos.Y);
	v66.Size = UDim2.new(0, v55.windowSize.X, 0, v55.windowSize.Y);
	v257 = v55.fontSize;
	v252 = v55.logging;
	v253 = v55.autoScroll;
	v254 = v55.wrapText;
	v255 = v55.showTime;
	v31 = v55.language or "en";
	v66.Active = not v55.clickThrough;
	v620.Text = (v55.clickThrough and "ON") or "OFF";
	v632.Text = (v55.showDisplayNames and "ON") or "OFF";
	v525();
	v264();
	v474();
	for v1268 in pairs(v43) do
		v475(v1268);
	end
	updateAllTexts();
end
firstSetup();
v37.InputBegan:Connect(function(v1169)
	if ((v1169.UserInputType == Enum.UserInputType.MouseButton1) or (1136 > 4317)) then
		if ((4748 == 4748) and (1531 < 4271) and v271.Visible) then
			local v1428 = v37:GetMouseLocation();
			local v1429 = v271.AbsolutePosition;
			local v1430 = v271.AbsoluteSize;
			if ((3736 <= 4740) and ((v1428.X < v1429.X) or (v1428.X > (v1429.X + v1430.X)) or (v1428.Y < v1429.Y) or (v1428.Y > (v1429.Y + v1430.Y)))) then
				v271.Visible = false;
			end
		end
		if v589.Visible then
			local v1431 = v37:GetMouseLocation();
			local v1432 = v589.AbsolutePosition;
			local v1433 = v589.AbsoluteSize;
			if ((v1431.X < v1432.X) or (v1431.X > (v1432.X + v1433.X)) or (v1431.Y < v1432.Y) or (v1431.Y > (v1432.Y + v1433.Y)) or (3390 <= 3060)) then
				v589.Visible = false;
			end
		end
	end
end);