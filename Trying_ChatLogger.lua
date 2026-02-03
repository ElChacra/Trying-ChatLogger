--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
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
local v27 = LUAOBFUSACTOR_DECRYPT_STR_0("\242\203\218\49\202\180\192\13", "\126\177\163\187\69\134\219\167");
local v28 = Enum.KeyCode.RightControl;
local v29 = {};
local v30 = LUAOBFUSACTOR_DECRYPT_STR_0("\0\197\43\209\208\44\202\45\192\238\0\194\36\195\245\36\131\32\214\243\45", "\156\67\173\74\165");
local v31 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\4\187\72\15\185\52\85", "\38\84\215\41\118\220\70"));
local v32 = v31.LocalPlayer;
local v33 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\100\19\58\6\221\88\23\54\33\251\66\0\43\17\251", "\158\48\118\66\114"));
local v34 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\158\55\21\36\90\171\235\190\48\35\51\97\179\242\168\33", "\155\203\68\112\86\19\197"));
local v35 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\97\200\63\207\69\106\243\241\69\216", "\152\38\189\86\156\32\24\133"));
local v36 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\206\82\183\74\245\84\166\82\249\83\148\82\243\69\166\65\249", "\38\156\55\199"));
local v37 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\155\114\105\38\23\71\255\81\190\116\127\45", "\35\200\29\28\72\115\20\154"));
local v38, v39 = {}, {};
local v40, v41 = {}, {};
for v677, v678 in ipairs(v0) do
	if (typeof(v678) == LUAOBFUSACTOR_DECRYPT_STR_0("\10\171\195\214\131\43", "\84\121\223\177\191\237\76")) then
		v38[string.lower(v678)] = true;
	elseif (typeof(v678) == LUAOBFUSACTOR_DECRYPT_STR_0("\181\67\196\162\63\66", "\161\219\54\169\192\90\48\80")) then
		v39[v678] = true;
	end
end
for v679, v680 in ipairs(v1) do
	if (typeof(v680) == LUAOBFUSACTOR_DECRYPT_STR_0("\90\86\18\44\71\69", "\69\41\34\96")) then
		v40[string.lower(v680)] = true;
	elseif (typeof(v680) == LUAOBFUSACTOR_DECRYPT_STR_0("\178\214\218\8\7\57", "\75\220\163\183\106\98")) then
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
	if v41[v683] then
		return true;
	end
	if v40[v42(v682)] then
		return true;
	end
	return false;
end
local function v45(v684)
	if not v684.TextSource then
		return false;
	end
	local v685 = v684.TextSource.UserId;
	if not v685 then
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
	if (v687 < v688) then
		return v688;
	elseif (v687 > v689) then
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
local v52 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\13\170\138\52\208\22\163", "\185\98\218\235\87")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\200\48\46\229\213\158\195\46\40\243\217\162", "\202\171\92\71\134\190")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\58\201\35\159\13\200\63\152\37\192\53\166\40\204\41\155", "\232\73\161\76")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\172\208\76\89\17\172\233\77\78", "\126\219\185\34\61")]={X=40,Y=220},[LUAOBFUSACTOR_DECRYPT_STR_0("\27\199\80\118\113\96\192\238\22\203", "\135\108\174\62\18\30\23\147")]={X=v7,Y=(v9 + v10 + v8 + v11)},[LUAOBFUSACTOR_DECRYPT_STR_0("\176\230\36\223\43\167\41\194", "\167\214\137\74\171\120\206\83")]=v4,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\255\53\90\241\169\140", "\199\235\144\82\61\152")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\6\3\173\36\52\21\171\36\11\26", "\75\103\118\217")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\70\113\4\141\27\223\64", "\126\167\52\16\116\217")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\219\38\47\151\128\16\241\205", "\156\168\78\64\224\212\121")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\12\235\188\217\8\252\161\221", "\174\103\142\197")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\67\59\90\42\6\81\244\89\58\76", "\152\54\72\63\88\69\62")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\192\204\235\81\209\231\225\80\219\214\253", "\60\180\164\142")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\90\89", "\114\56\62\101\73\71\141")]={18,18,18},[LUAOBFUSACTOR_DECRYPT_STR_0("\185\234\216", "\164\216\137\187")]={26,26,26},[LUAOBFUSACTOR_DECRYPT_STR_0("\208\242\63", "\107\178\134\81\210\198\158")]={40,40,40}}};
local function v53()
	local v690 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\55\30\131\197\163\44\23", "\202\88\110\226\166")]=v52.opacity,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\3\139\244\193\247\7\144\248\223\196\7", "\170\163\111\226\151")]=v52.clickThrough,[LUAOBFUSACTOR_DECRYPT_STR_0("\2\56\189\47\106\62\58\1\60\179\33\96\54\36\20\35", "\73\113\80\210\88\46\87")]=v52.showDisplayNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\150\37\195\22\232\150\28\194\1", "\135\225\76\173\114")]=v52.windowPos,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\228\182\180\163\170\148\19\247\189", "\199\122\141\216\208\204\221")]=v52.windowSize,[LUAOBFUSACTOR_DECRYPT_STR_0("\171\210\30\228\75\255\183\216", "\150\205\189\112\144\24")]=v52.fontSize,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\139\184\75\13\134\22", "\112\69\228\223\44\100\232\113")]=v52.logging,[LUAOBFUSACTOR_DECRYPT_STR_0("\213\10\19\220\133\127\148\219\19\11", "\230\180\127\103\179\214\28")]=v52.autoScroll,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\23\94\86\208\68\248\152", "\128\236\101\63\38\132\33")]=v52.wrapText,[LUAOBFUSACTOR_DECRYPT_STR_0("\191\161\30\83\130\226\194\169", "\175\204\201\113\36\214\139")]=v52.showTime,[LUAOBFUSACTOR_DECRYPT_STR_0("\76\201\44\203\11\85\200\38", "\100\39\172\85\188")]=v29,[LUAOBFUSACTOR_DECRYPT_STR_0("\184\107\188\146\16\162\116\182\146\32", "\83\205\24\217\224")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\242\205\200\48\227\230\194\49\233\215\222", "\93\134\165\173")]=v52.themeColors,[LUAOBFUSACTOR_DECRYPT_STR_0("\191\254\205\205\45\203\182\80\191\255\196\209", "\30\222\146\161\162\90\174\210")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\231\66\113\9\238\66\121\25\241\96\113\7\224\93", "\106\133\46\16")]={}};
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
		if (typeof(writefile) == LUAOBFUSACTOR_DECRYPT_STR_0("\94\53\125\255\78\73\87\46", "\32\56\64\19\156\58")) then
			local v1267 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\114\220\241\70\105\247\146\76\193\230\83", "\224\58\168\133\54\58\146")):JSONEncode(v690);
			writefile(v30, v1267);
		end
	end);
end
local function v54()
	local v692 = pcall(function()
		if ((typeof(readfile) == LUAOBFUSACTOR_DECRYPT_STR_0("\95\67\69\254\97\143\136\5", "\107\57\54\43\157\21\230\231")) and (typeof(isfile) == LUAOBFUSACTOR_DECRYPT_STR_0("\221\158\31\246\173\213\192\213", "\175\187\235\113\149\217\188")) and isfile(v30)) then
			local v1268 = readfile(v30);
			local v1269 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\20\187\149\92\208\124\106\42\166\130\73", "\24\92\207\225\44\131\25")):JSONDecode(v1268);
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
			if v1269.userColors then
				for v1333, v1334 in pairs(v1269.userColors) do
					v51[v1333] = Color3.fromRGB(v1334[1], v1334[2], v1334[3]);
				end
			end
			if v1269.themeColors then
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
		if v697 then
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
				if v698 then
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
local v56 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\120\208\170\73\30\115\108\198\177", "\29\43\179\216\44\123"));
v56.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\158\209\33\88\145\214\39\75\184\203\16\94\178", "\44\221\185\64");
v56.ResetOnSpawn = false;
v56.IgnoreGuiInset = true;
v56.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v56.Parent = v32:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\49\235\73\70\118\19\192\93\86", "\19\97\135\40\63"));
local v63 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\78\50\54\42", "\81\206\60\83\91\79"));
v63.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\109\163\209\102\24\202\67\160\65\188", "\196\46\203\176\18\79\163\45");
v63.Parent = v56;
v63.BackgroundColor3 = v47;
v63.BorderSizePixel = 0;
v63.Position = UDim2.fromOffset(v52.windowPos.X, v52.windowPos.Y);
v63.Size = UDim2.new(0, v52.windowSize.X, 0, v52.windowSize.Y);
v63.Active = true;
v63.AnchorPoint = Vector2.new(0, 0);
v63.BackgroundTransparency = 1 - v52.opacity;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\11\93\17\54\245\234\170", "\143\216\66\30\126\68\155"), v63).CornerRadius = UDim.new(0, 8);
local v74 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\218\12\198\192", "\129\202\168\109\171\165\195\183"));
v74.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\22\81\35\212\219\54\231\48", "\134\66\56\87\184\190\116");
v74.Parent = v63;
v74.BackgroundColor3 = v48;
v74.BorderSizePixel = 0;
v74.Size = UDim2.new(1, 0, 0, v9);
v74.Active = true;
v74.BackgroundTransparency = 1 - v52.opacity;
local v82 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\52\17\175\53\234\35\48\48", "\85\92\81\105\219\121\139\65"));
v82.Parent = v74;
v82.BackgroundTransparency = 1;
v82.Position = UDim2.new(0, 8, 0, 0);
v82.Size = UDim2.new(0.5, 0, 1, 0);
v82.Font = Enum.Font.SourceSansSemibold;
v82.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\201\161\73\76\114\216\189\144\88\68\104\243\242\180\87\64\110", "\191\157\211\48\37\28");
v82.TextColor3 = Color3.new(1, 1, 1);
v82.TextSize = 15;
v82.TextXAlignment = Enum.TextXAlignment.Left;
local function v94(v700, v701, v702)
	local v703 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\26\236\8\24\202\11\224\19\52", "\90\191\127\148\124"));
	v703.Parent = v74;
	v703.Size = UDim2.new(0, v701, 0, v9 - 4);
	v703.Position = UDim2.new(0, v702, 0, 2);
	v703.BackgroundColor3 = v49;
	v703.TextColor3 = Color3.new(1, 1, 1);
	v703.Font = Enum.Font.SourceSansSemibold;
	v703.TextSize = 14;
	v703.Text = v700;
	v703.BackgroundTransparency = 1 - v52.opacity;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\77\174\13\24\106\137\43\5", "\119\24\231\78"), v703).CornerRadius = UDim.new(0, 6);
	return v703;
end
local v95 = v94(LUAOBFUSACTOR_DECRYPT_STR_0("\174\34\162\10\231\111\63\191", "\113\226\77\197\42\188\32"), 86, 120);
local v96 = v94("Auto↓ [AUTO]", 108, 208);
local v97 = v94(LUAOBFUSACTOR_DECRYPT_STR_0("\27\91", "\213\90\118\148"), 36, 320);
local v98 = v94(LUAOBFUSACTOR_DECRYPT_STR_0("\122\101", "\45\59\78\212\54"), 36, 360);
local function v99(v715, v716)
	local v717 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\83\155\159\164\59\185\228\31\88", "\144\112\54\227\235\230\78\205"));
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
local v102 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\149\58\14\241\213", "\59\211\72\111\156\176"));
v102.Parent = v63;
v102.Size = UDim2.new(0, 200, 0, 90);
v102.AnchorPoint = Vector2.new(0.5, 0.5);
v102.Position = UDim2.new(0.5, 0, 0.5, 0);
v102.BackgroundColor3 = Color3.fromRGB(35, 35, 35);
v102.Visible = false;
v102.ZIndex = 200;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\174\192\34\92\137\230\63", "\77\46\231\131"), v102).CornerRadius = UDim.new(0, 8);
local v111 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\81\174\84\150\85\180\69\182", "\32\218\52\214"));
v111.Parent = v102;
v111.Size = UDim2.new(1, 0, 0, 40);
v111.BackgroundTransparency = 1;
v111.Text = "¿Cerrar Logger?";
v111.TextColor3 = Color3.new(1, 1, 1);
v111.Font = Enum.Font.SourceSansBold;
v111.TextSize = 16;
v111.ZIndex = 201;
local v121 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\18\41\188\211\165\81\78\65\25", "\58\46\119\81\200\145\208\37"));
v121.Parent = v102;
v121.Size = UDim2.new(0, 80, 0, 30);
v121.Position = UDim2.new(0, 10, 0, 50);
v121.BackgroundColor3 = Color3.fromRGB(180, 60, 60);
v121.Text = "Sí";
v121.TextColor3 = Color3.new(1, 1, 1);
v121.Font = Enum.Font.SourceSansBold;
v121.TextSize = 14;
v121.ZIndex = 201;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\165\19\163\187\179\51\57", "\86\75\236\80\204\201\221"), v121).CornerRadius = UDim.new(0, 6);
local v132 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\68\111\145\220\158\102\85\120\139", "\235\18\33\23\229\158"));
v132.Parent = v102;
v132.Size = UDim2.new(0, 80, 0, 30);
v132.Position = UDim2.new(1, -90, 0, 50);
v132.BackgroundColor3 = v49;
v132.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\126\181", "\219\48\218\161");
v132.TextColor3 = Color3.new(1, 1, 1);
v132.Font = Enum.Font.SourceSansBold;
v132.TextSize = 14;
v132.ZIndex = 201;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\95\70\201\65\229\246", "\128\132\17\28\41\187\47"), v132).CornerRadius = UDim.new(0, 6);
local v143 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\32\7\55\88", "\61\97\82\102\90"));
v143.Parent = v63;
v143.BackgroundColor3 = v48;
v143.BorderSizePixel = 0;
v143.Position = UDim2.new(0, 0, 0, v9);
v143.Size = UDim2.new(1, 0, 0, v10);
v143.BackgroundTransparency = 1 - v52.opacity;
local v150 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\43\179\95\235\86\28\12\160", "\105\204\78\203\43\167\55\126"));
v150.Parent = v143;
v150.BackgroundTransparency = 1;
v150.Position = UDim2.new(0, 8, 0, 0);
v150.Size = UDim2.new(1, -120, 1, 0);
v150.Font = Enum.Font.SourceSans;
v150.TextColor3 = Color3.fromRGB(210, 210, 210);
v150.TextXAlignment = Enum.TextXAlignment.Left;
v150.TextSize = 14;
v150.Text = "Líneas 0/0 (faltan 0) • Rot: 0";
local v161 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\175\59\10\49\17\211\69\170\164", "\49\197\202\67\126\115\100\167"));
v161.Parent = v143;
v161.AnchorPoint = Vector2.new(1, 0);
v161.Position = UDim2.new(1, -6, 0, 2);
v161.Size = UDim2.new(0, 86, 0, v10 - 4);
v161.BackgroundColor3 = v49;
v161.BorderSizePixel = 0;
v161.Font = Enum.Font.SourceSansSemibold;
v161.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\27\82\210\57\137\87\76", "\62\87\59\191\73\224\54");
v161.TextColor3 = Color3.new(1, 1, 1);
v161.TextSize = 14;
v161.BackgroundTransparency = 1 - v52.opacity;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\43\217\198\245\12\255\219", "\169\135\98\154"), v161).CornerRadius = UDim.new(0, 6);
local v174 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\101\37\89\248", "\168\171\23\68\52\157\83"));
v174.Parent = v63;
v174.BackgroundColor3 = v48;
v174.BorderSizePixel = 0;
v174.Position = UDim2.new(0, 0, 0, v9 + v10);
v174.Size = UDim2.new(1, 0, 0, 28);
v174.BackgroundTransparency = 1 - v52.opacity;
v174.Visible = false;
local v182 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\116\237\185\7\34\159", "\231\148\17\149\205\69\77"));
v182.Parent = v174;
v182.Position = UDim2.new(0, 6, 0, 2);
v182.Size = UDim2.new(1, -80, 0, 24);
v182.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v182.TextColor3 = Color3.new(1, 1, 1);
v182.Font = Enum.Font.SourceSans;
v182.TextSize = 14;
v182.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\162\178\212\248\86\237\192\162\201\187\82\243\192\164\207\250\67\177\206\233", "\159\224\199\167\155\55");
v182.Text = "";
v182.ClearTextOnFocus = false;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\194\218\31\221\229\253\57\192", "\178\151\147\92"), v182).CornerRadius = UDim.new(0, 6);
local v194 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\248\84\38\48\89\110\152\242\66", "\26\236\157\44\82\114\44"));
v194.Parent = v174;
v194.Position = UDim2.new(1, -70, 0, 2);
v194.Size = UDim2.new(0, 64, 0, 24);
v194.BackgroundColor3 = v49;
v194.TextColor3 = Color3.new(1, 1, 1);
v194.Font = Enum.Font.SourceSansSemibold;
v194.TextSize = 14;
v194.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\9\43\199\73\43\60", "\59\74\78\181");
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\248\121\85\161\43\212\72", "\211\69\177\58\58"), v194).CornerRadius = UDim.new(0, 6);
local v204 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\132\230\107\250\229\199\190\235\126\211\251\202\186\224", "\171\215\133\25\149\137"));
v204.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\205\199\53\202\238\62\249\78", "\34\129\168\82\154\143\80\156");
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
local v217 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\155\31\2\91\90\165\132\171\60\30\92", "\233\229\210\83\107\40\46"));
v217.Parent = v204;
v217.FillDirection = Enum.FillDirection.Vertical;
v217.SortOrder = Enum.SortOrder.LayoutOrder;
v217.Padding = UDim.new(0, 4);
local v224 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\80\51\219\0", "\101\161\34\82\182"));
v224.Parent = v63;
v224.BackgroundColor3 = v48;
v224.BorderSizePixel = 0;
v224.Size = UDim2.new(1, 0, 0, v11);
v224.Position = UDim2.new(0, 0, 1, -v11);
v224.BackgroundTransparency = 1 - v52.opacity;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\221\36\122\241\201\236\135\60", "\78\136\109\57\158\187\130\226"), v224).CornerRadius = UDim.new(0, 8);
local v232 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\22\213\248\45\43\213\240\39\48\236\229", "\145\94\95\153"));
v232.Parent = v224;
v232.FillDirection = Enum.FillDirection.Horizontal;
v232.HorizontalAlignment = Enum.HorizontalAlignment.Center;
v232.VerticalAlignment = Enum.VerticalAlignment.Center;
v232.Padding = UDim.new(0, 5);
local function v241(v728, v729)
	local v730 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\200\12\193\108\162\233\217\27\219", "\215\157\173\116\181\46"));
	v730.Parent = v224;
	v730.Size = UDim2.new(0, v729, 0, v11 - 8);
	v730.BackgroundColor3 = v49;
	v730.TextColor3 = Color3.new(1, 1, 1);
	v730.Font = Enum.Font.SourceSansSemibold;
	v730.TextSize = 14;
	v730.Text = v728;
	v730.BackgroundTransparency = 1 - v52.opacity;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\157\168\253\200\59\177\153", "\186\85\212\235\146"), v730).CornerRadius = UDim.new(0, 6);
	return v730;
end
local v242 = v241(LUAOBFUSACTOR_DECRYPT_STR_0("\228\136\26\234\43\225\75", "\56\162\225\118\158\89\142"), 70);
local v243 = v241(LUAOBFUSACTOR_DECRYPT_STR_0("\123\16\193\189\38\217\78", "\184\60\101\160\207\66"), 70);
local v244 = v241(LUAOBFUSACTOR_DECRYPT_STR_0("\6\144\125\172\113\185\83\146\12", "\220\81\226\28"), 80);
local v245 = v241(LUAOBFUSACTOR_DECRYPT_STR_0("\39\220\143\254\170\252\60\251\191", "\167\115\181\226\155\138"), 80);
local v246 = v241(LUAOBFUSACTOR_DECRYPT_STR_0("\193\45\235\83\105\116\213", "\166\130\66\135\60\27\17"), 70);
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
		if (v1113 and v1113.node and v1113.node.Parent) then
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
		if (v255[1] and v255[1].node) then
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
local v268 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\88\207\120\53", "\80\36\42\174\21"));
v268.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\109\31\57\110\75\8\35\87\75\30\34", "\26\46\112\87");
v268.Parent = v56;
v268.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
v268.BorderSizePixel = 0;
v268.Size = UDim2.new(0, 150, 0, 80);
v268.Visible = false;
v268.ZIndex = 300;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\10\136\123\173\177\64\166", "\212\217\67\203\20\223\223\37"), v268).CornerRadius = UDim.new(0, 6);
local function v277(v753, v754)
	local v755 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\136\176\198\152\152\188\198\181\131", "\178\218\237\200"));
	v755.Parent = v268;
	v755.Position = UDim2.new(0, 4, 0, v754);
	v755.Size = UDim2.new(1, -8, 0, 24);
	v755.BackgroundColor3 = v49;
	v755.TextColor3 = Color3.new(1, 1, 1);
	v755.Font = Enum.Font.SourceSans;
	v755.TextSize = 14;
	v755.Text = v753;
	v755.TextXAlignment = Enum.TextXAlignment.Left;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\156\214\209\178\177\239\222\177", "\176\214\213\134"), v755).PaddingLeft = UDim.new(0, 6);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\132\149\219\186\88\92\230", "\57\148\205\214\180\200\54"), v755).CornerRadius = UDim.new(0, 4);
	return v755;
end
local v278 = v277("Copiar línea", 4);
local v279 = v277(LUAOBFUSACTOR_DECRYPT_STR_0("\49\242\37\61\119\0\189\33\59\114\29", "\22\114\157\85\84"), 32);
local v280 = nil;
v278.MouseButton1Down:Connect(function()
	if (v280 and (typeof(setclipboard) == LUAOBFUSACTOR_DECRYPT_STR_0("\194\222\29\199\73\255\167\202", "\200\164\171\115\164\61\150"))) then
		setclipboard(v280.Text);
	end
	v268.Visible = false;
end);
v279.MouseButton1Down:Connect(function()
	if (typeof(setclipboard) == LUAOBFUSACTOR_DECRYPT_STR_0("\184\225\13\70\151\183\251\13", "\227\222\148\99\37")) then
		setclipboard(table.concat(v256, "\n"));
	end
	v268.Visible = false;
end);
local v281 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\81\64\243\252\61\117\71\255", "\153\83\50\50\150"));
v281.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\123\127\127\8\118\185\106\72\127", "\45\61\22\19\124\19\203");
v281.ResetOnSpawn = false;
v281.IgnoreGuiInset = true;
v281.Parent = v32:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\241\30\12\236\7\98\158\212\27", "\217\161\114\109\149\98\16"));
local v286 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\50\57\113\185", "\20\114\64\88\28\220"));
v286.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\23\8\222\160\253\194\138\56\15\214\187\239", "\221\81\97\178\212\152\176");
v286.Parent = v281;
v286.BackgroundColor3 = v47;
v286.BorderSizePixel = 0;
v286.Position = UDim2.fromOffset(460, 160);
v286.Size = UDim2.new(0, v14, 0, v15);
v286.Active = true;
v286.Visible = false;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\206\62\244\8\195\226\15", "\122\173\135\125\155"), v286).CornerRadius = UDim.new(0, 8);
local v296 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\162\211\1\180\58", "\168\228\161\96\217\95\81"));
v296.Parent = v286;
v296.BackgroundColor3 = v48;
v296.BorderSizePixel = 0;
v296.Size = UDim2.new(1, 0, 0, 26);
local v301 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\212\54\72\3\86\217\212\34", "\55\187\177\78\60\79"));
v301.Parent = v296;
v301.BackgroundTransparency = 1;
v301.Position = UDim2.new(0, 8, 0, 0);
v301.Size = UDim2.new(1, -8, 1, 0);
v301.Font = Enum.Font.SourceSansSemibold;
v301.TextColor3 = Color3.new(1, 1, 1);
v301.TextXAlignment = Enum.TextXAlignment.Left;
v301.TextSize = 16;
v301.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\11\199\83\255\84\192\147\109\202\90\171\83\220\149\44\220\86\228\85", "\224\77\174\63\139\38\175");
local v311 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\162\83\89\35\129", "\78\228\33\56"));
v311.Parent = v286;
v311.BackgroundColor3 = v48;
v311.BorderSizePixel = 0;
v311.Size = UDim2.new(1, 0, 0, v18);
v311.Position = UDim2.new(0, 0, 1, -v18);
v55(v286, {v296,v311});
local function v317(v771, v772, v773)
	local v774 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\250\123\170\23\167\219\106\166\12\139", "\229\174\30\210\99"));
	v774.Size = UDim2.new(0, v772, 0, 24);
	v774.BackgroundColor3 = v49;
	v774.TextColor3 = Color3.new(1, 1, 1);
	v774.Font = Enum.Font.SourceSansSemibold;
	v774.TextSize = 14;
	v774.Text = v771;
	v774.AutoButtonColor = true;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\196\165\94\255\51\60\9", "\89\123\141\230\49\141\93"), v774).CornerRadius = UDim.new(0, 6);
	v774.Parent = v773;
	return v774;
end
local v318 = v317("×", 26, v296);
v318.Position = UDim2.new(1, -30, 0, 1);
local v320 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\116\238\24\50\69\235", "\42\147\17\150\108\112"));
v320.Parent = v286;
v320.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\45\179\62\124\230\250\79\182\34\109\167\230\0\171\47\109\226\166\65\232", "\136\111\198\77\31\135");
v320.ClearTextOnFocus = false;
v320.Text = "";
v320.TextSize = 14;
v320.Size = UDim2.new(1, -8, 0, 26);
v320.Position = UDim2.new(0, 4, 0, 32);
v320.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v320.TextColor3 = Color3.new(1, 1, 1);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\32\132\89\175\234\18\187", "\201\98\105\199\54\221\132\119"), v320).CornerRadius = UDim.new(0, 6);
local v331 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\30\130\44\7", "\204\217\108\227\65\98\85"));
v331.Parent = v286;
v331.BackgroundTransparency = 1;
v331.Size = UDim2.new(1, -8, 0, 26);
v331.Position = UDim2.new(0, 4, 0, 62);
local v336 = v317(LUAOBFUSACTOR_DECRYPT_STR_0("\109\198\249\224\47\195\87\204\251\228\62", "\160\62\163\149\133\76"), 110, v331);
v336.Position = UDim2.new(0, 0, 0, 0);
local v338 = v317(LUAOBFUSACTOR_DECRYPT_STR_0("\250\169\0\63\202\215\178", "\163\182\192\109\79"), 92, v331);
v338.Position = UDim2.new(0, 116, 0, 0);
local v340 = v317(LUAOBFUSACTOR_DECRYPT_STR_0("\6\35\6\210\240\39\37\1\210", "\149\84\70\96\160"), 100, v331);
v340.Position = UDim2.new(0, 212, 0, 0);
local v342 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\5\31\226\52\10\4\227\63\32\31\236\53\3", "\141\88\102\109"));
v342.Parent = v286;
v342.BackgroundColor3 = Color3.fromRGB(18, 18, 18);
v342.BorderSizePixel = 0;
v342.Position = UDim2.new(0, 4, 0, 92);
v342.Size = UDim2.new(1, -8, 1, (-92 - 64) - v18);
v342.ScrollBarThickness = 6;
v342.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v342.CanvasSize = UDim2.new(0, 0, 0, 0);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\122\233\127\8\51\80\211", "\161\211\51\170\16\122\93\53"), v342).CornerRadius = UDim.new(0, 6);
local v352 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\135\158\33\232\186\158\41\226\161\167\60", "\72\155\206\210"));
v352.Parent = v342;
v352.FillDirection = Enum.FillDirection.Vertical;
v352.SortOrder = Enum.SortOrder.LayoutOrder;
v352.Padding = UDim.new(0, 3);
local v357 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\96\104\85\3\54", "\83\38\26\52\110"));
v357.Parent = v286;
v357.BackgroundTransparency = 1;
v357.Position = UDim2.new(0, 4, 1, -54 - v18);
v357.Size = UDim2.new(1, -8, 0, 50);
local v362 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\18\63\82\122\24\63", "\38\56\119\71"));
v362.Parent = v357;
v362.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\210\232\74\211\34\87\225\175\77\197\32\68\253\238\85\211\101\89\179\218\75\211\55\127\247\161\22\152", "\54\147\143\56\182\69");
v362.ClearTextOnFocus = false;
v362.Text = "";
v362.TextSize = 14;
v362.Size = UDim2.new(1, -60, 1, 0);
v362.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v362.TextColor3 = Color3.new(1, 1, 1);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\168\220\70\205\216\132\237", "\191\182\225\159\41"), v362).CornerRadius = UDim.new(0, 6);
local v372 = v317("Añadir", 56, v357);
v372.Position = UDim2.new(1, -56, 0, 0);
local v374 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\23\48\65\167\134\192\46\30", "\162\75\114\72\53\235\231"));
v374.Parent = v286;
v374.BackgroundTransparency = 1;
v374.Position = UDim2.new(0, 6, 1, -20 - v18);
v374.Size = UDim2.new(1, -12, 0, 16);
v374.Font = Enum.Font.SourceSans;
v374.TextColor3 = Color3.fromRGB(200, 200, 200);
v374.TextSize = 14;
v374.TextXAlignment = Enum.TextXAlignment.Left;
v374.Text = "";
local v384 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\170\46\69\239\86", "\98\236\92\36\130\51"));
v384.Parent = v286;
v384.AnchorPoint = Vector2.new(1, 1);
v384.Position = UDim2.new(1, -2, 1, -2 - v18);
v384.Size = UDim2.new(0, 12, 0, 12);
v384.BackgroundColor3 = Color3.fromRGB(180, 180, 180);
v384.BorderSizePixel = 0;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\48\47\181\87\166\176\34", "\80\196\121\108\218\37\200\213"), v384).CornerRadius = UDim.new(0, 3);
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
		if v393 then
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
	v374.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\51\118\14\122\72\13\131\15\125\3\123\68\29\208\64", "\234\96\19\98\31\43\110") .. tostring(v791);
end
local function v396(v793)
	local v794 = v793.Name;
	if v392[v794] then
		return v392[v794];
	end
	local v795 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\13\83\202\169", "\235\102\127\50\167\204\18"));
	v795.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\98\158", "\78\48\193\149\67\36") .. v794;
	v795.Parent = v342;
	v795.BackgroundColor3 = Color3.fromRGB(26, 26, 26);
	v795.BorderSizePixel = 0;
	v795.Size = UDim2.new(1, -6, 0, 24);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\5\55\163\23\83\62\27\146", "\33\80\126\224\120"), v795).CornerRadius = UDim.new(0, 4);
	local v802 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\173\27\208\126\249\188\23\203\82", "\60\140\200\99\164"));
	v802.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\164\252\15", "\194\231\148\100\70");
	v802.Parent = v795;
	v802.Size = UDim2.new(0, 24, 1, 0);
	v802.BackgroundTransparency = 1;
	v802.Font = Enum.Font.SourceSansBold;
	v802.TextSize = 18;
	v802.TextColor3 = Color3.new(1, 1, 1);
	v802.Text = "☐";
	local v812 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\73\217\183\218\201\68\73\205", "\168\38\44\161\195\150"));
	v812.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\174\253\143\115\28\234\186", "\118\224\156\226\22\80\136\214");
	v812.Parent = v795;
	v812.BackgroundTransparency = 1;
	v812.Position = UDim2.new(0, 26, 0, 0);
	v812.Size = UDim2.new(1, -26, 1, 0);
	v812.Font = Enum.Font.SourceSans;
	v812.TextXAlignment = Enum.TextXAlignment.Left;
	v812.TextSize = 14;
	v812.TextColor3 = Color3.fromRGB(230, 230, 230);
	v812.Text = (((v793.DisplayName ~= "") and v793.DisplayName) or v794) .. LUAOBFUSACTOR_DECRYPT_STR_0("\2\166\121", "\224\34\142\57") .. v794 .. ")";
	if (v38[v42(v794)] == nil) then
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
		if not v31:FindFirstChild(v1118) then
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
		if v1130 then
			v394(v1130, true);
		end
	end
end);
v338.MouseButton1Down:Connect(function()
	for v1131, v1132 in ipairs(v31:GetPlayers()) do
		v395(v1132.Name, false);
		local v1133 = v392[v1132.Name];
		if v1133 then
			v394(v1133, false);
		end
	end
end);
v340.MouseButton1Down:Connect(function()
	v397();
	v398();
end);
v320:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\234\162\221\201", "\110\190\199\165\189\19\145\61")):Connect(v398);
v31.PlayerAdded:Connect(function(v830)
	v395(v830.Name, true);
	if v286.Visible then
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
local v399 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\233\232\101\237\142\201\253\254\126", "\167\186\139\23\136\235"));
v399.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\56\185\137\14\17\185\129\30\14\146\157\4", "\109\122\213\232");
v399.ResetOnSpawn = false;
v399.IgnoreGuiInset = true;
v399.Parent = v32:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\222\251\163\41\235\229\133\37\231", "\80\142\151\194"));
local v404 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\212\118\65\6", "\44\99\166\23"));
v404.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\94\251\40\53\56\168\117\228\61\1\58\170\120\248\62", "\196\28\151\73\86\83");
v404.Parent = v399;
v404.BackgroundColor3 = v47;
v404.BorderSizePixel = 0;
v404.Position = UDim2.fromOffset(480, 180);
v404.Size = UDim2.new(0, 340, 0, 340);
v404.Active = true;
v404.Visible = false;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\42\10\31\144\86\29\100", "\22\147\99\73\112\226\56\120"), v404).CornerRadius = UDim.new(0, 8);
local v414 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\103\227\248\136", "\237\216\21\130\149"));
v414.Parent = v404;
v414.BackgroundColor3 = v48;
v414.BorderSizePixel = 0;
v414.Size = UDim2.new(1, 0, 0, 26);
local v419 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\182\75\71\75\156\200\92\135\66", "\62\226\46\63\63\208\169"));
v419.Parent = v414;
v419.BackgroundTransparency = 1;
v419.Position = UDim2.new(0, 8, 0, 0);
v419.Size = UDim2.new(1, -40, 1, 0);
v419.Font = Enum.Font.SourceSansSemibold;
v419.TextColor3 = Color3.new(1, 1, 1);
v419.TextXAlignment = Enum.TextXAlignment.Left;
v419.TextSize = 16;
v419.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\201\16\70\151\30\77\1\91\226\11\84\195\87\47\35\95\230\18\89\138\12\25\102", "\62\133\121\53\227\127\109\79");
local v429 = v317("×", 26, v414);
v429.Position = UDim2.new(1, -30, 0, 1);
v55(v404, {v414});
local v431 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\35\23\32\250\218\162\171\30\19\20\231\215\163\167", "\194\112\116\82\149\182\206"));
v431.Parent = v404;
v431.BackgroundColor3 = Color3.fromRGB(18, 18, 18);
v431.BorderSizePixel = 0;
v431.Position = UDim2.new(0, 4, 0, 32);
v431.Size = UDim2.new(1, -8, 1, -96);
v431.ScrollBarThickness = 6;
v431.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v431.CanvasSize = UDim2.new(0, 0, 0, 0);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\129\111\23\210\236\11\43", "\110\89\200\44\120\160\130"), v431).CornerRadius = UDim.new(0, 6);
local v441 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\234\103\79\80\94\23\76\178\204\94\82", "\45\203\163\43\38\35\42\91"));
v441.Parent = v431;
v441.FillDirection = Enum.FillDirection.Vertical;
v441.SortOrder = Enum.SortOrder.LayoutOrder;
v441.Padding = UDim.new(0, 3);
local v446 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\230\128\196\55\165\166\76", "\52\178\229\188\67\231\201"));
v446.Parent = v404;
v446.Position = UDim2.new(0, 4, 1, -58);
v446.Size = UDim2.new(1, -68, 0, 26);
v446.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v446.TextColor3 = Color3.new(1, 1, 1);
v446.Font = Enum.Font.SourceSans;
v446.TextSize = 14;
v446.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\0\70\66\1\240\93\49\97\84\67\17\246\78\42\46\1\81\68\245\80\34\34\74\92\13\228\72\109\111\15", "\67\65\33\48\100\151\60");
v446.Text = "";
v446.ClearTextOnFocus = false;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\206\141\215\225\209\226\188", "\147\191\135\206\184"), v446).CornerRadius = UDim.new(0, 6);
local v458 = v317("Añadir", 60, v404);
v458.Position = UDim2.new(1, -64, 1, -58);
local v460 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\45\190\213\244\82\176\129\36", "\210\228\72\198\161\184\51"));
v460.Parent = v404;
v460.BackgroundTransparency = 1;
v460.Position = UDim2.new(0, 6, 1, -28);
v460.Size = UDim2.new(1, -12, 0, 24);
v460.Font = Enum.Font.SourceSans;
v460.TextColor3 = Color3.fromRGB(200, 200, 200);
v460.TextSize = 14;
v460.TextXAlignment = Enum.TextXAlignment.Left;
v460.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\20\69\252\1\102\203\55\77\252\3\41\142\102", "\174\86\41\147\112\19");
local v470 = {};
local function v471()
	local v835 = 0;
	for v1134 in pairs(v40) do
		v835 += 1
	end
	for v1135 in pairs(v41) do
		v835 += 1
	end
	v460.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\121\12\130\26\48\10\16\175\84\19\215\75", "\203\59\96\237\107\69\111\113") .. tostring(v835);
end
local function v472(v837)
	if (v837 and (v837 ~= "")) then
		v40[v42(v837)] = true;
		v471();
		v53();
		local v1171 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\4\173\236\52", "\183\68\118\204\129\81\144"));
		v1171.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\44\129\66\235\28\189", "\226\110\205\16\132\107") .. v837;
		v1171.Parent = v431;
		v1171.BackgroundColor3 = Color3.fromRGB(60, 30, 30);
		v1171.BorderSizePixel = 0;
		v1171.Size = UDim2.new(1, -6, 0, 28);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\234\195\214\83\229\198\242", "\33\139\163\128\185"), v1171).CornerRadius = UDim.new(0, 4);
		local v1178 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\99\93\28\202\123\89\6\219\91", "\190\55\56\100"));
		v1178.Parent = v1171;
		v1178.BackgroundTransparency = 1;
		v1178.Position = UDim2.new(0, 6, 0, 0);
		v1178.Size = UDim2.new(1, -36, 1, 0);
		v1178.Font = Enum.Font.SourceSans;
		v1178.TextSize = 14;
		v1178.TextColor3 = Color3.fromRGB(255, 150, 150);
		v1178.TextXAlignment = Enum.TextXAlignment.Left;
		v1178.Text = v837;
		local v1190 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\170\36\10\49\246\231\66\160\50", "\147\54\207\92\126\115\131"));
		v1190.Parent = v1171;
		v1190.AnchorPoint = Vector2.new(1, 0.5);
		v1190.Position = UDim2.new(1, -4, 0.5, 0);
		v1190.Size = UDim2.new(0, 24, 0, 20);
		v1190.BackgroundColor3 = Color3.fromRGB(180, 60, 60);
		v1190.TextColor3 = Color3.new(1, 1, 1);
		v1190.Font = Enum.Font.SourceSansBold;
		v1190.TextSize = 14;
		v1190.Text = "×";
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\24\22\114\31\112\8\35", "\30\109\81\85\29\109"), v1190).CornerRadius = UDim.new(0, 4);
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
local v473 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\114\70\179\51\208\219\234\120", "\156\159\17\52\214\86\190"));
v473.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\141\224\177\179\188\200\168\181", "\220\206\143\221");
v473.ResetOnSpawn = false;
v473.IgnoreGuiInset = true;
v473.Parent = v32:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\182\113\44\14\221\222\245\147\116", "\178\230\29\77\119\184\172"));
local v478 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\172\11\22\114", "\152\149\222\106\123\23"));
v478.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\254\41\250\76\167\234\47\248\71\186\202", "\213\189\70\150\35");
v478.Parent = v473;
v478.BackgroundColor3 = v47;
v478.BorderSizePixel = 0;
v478.Position = UDim2.fromOffset(520, 220);
v478.Size = UDim2.new(0, v19, 0, v20);
v478.Active = true;
v478.Visible = false;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\124\87\7\93\91\113\26", "\104\47\53\20"), v478).CornerRadius = UDim.new(0, 8);
local v488 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\133\94\128\17\185", "\111\195\44\225\124\220"));
v488.Parent = v478;
v488.BackgroundColor3 = v48;
v488.BorderSizePixel = 0;
v488.Size = UDim2.new(1, 0, 0, 26);
local v493 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\236\67\24\103\135\170\218\67\12", "\203\184\38\96\19\203"));
v493.Parent = v488;
v493.BackgroundTransparency = 1;
v493.Position = UDim2.new(0, 8, 0, 0);
v493.Size = UDim2.new(1, -8, 1, 0);
v493.Font = Enum.Font.SourceSansSemibold;
v493.TextColor3 = Color3.new(1, 1, 1);
v493.TextXAlignment = Enum.TextXAlignment.Left;
v493.TextSize = 16;
v493.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\26\124\117\78\220\60\96\57\9\251\42\102\120\83\199\54\96\57\14\142\16\125\109\68\220\63\114\99\8", "\174\89\19\25\33");
v55(v478, {v488});
local function v503(v840, v841, v842)
	local v843 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\23\74\90\219\134\9\42\30", "\107\79\114\50\46\151\231"));
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
	local v860 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\163\173\61\168\54\175", "\160\89\198\213\73\234\89\215"));
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
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\88\151\241\215\70\116\166", "\165\40\17\212\158"), v860).CornerRadius = UDim.new(0, 6);
	return v860;
end
local function v505(v873, v874, v875, v876, v877)
	local v878 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\220\16\39\4\240\205\28\60\40", "\70\133\185\104\83"));
	v878.Parent = v873;
	v878.Position = UDim2.new(0, v875, 0, v876);
	v878.Size = UDim2.new(0, v877, 0, 26);
	v878.BackgroundColor3 = v49;
	v878.TextColor3 = Color3.new(1, 1, 1);
	v878.Font = Enum.Font.SourceSansSemibold;
	v878.TextSize = 14;
	v878.Text = v874;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\49\108\103\37\219\10\64\86", "\169\100\37\36\74"), v878).CornerRadius = UDim.new(0, 6);
	return v878;
end
local function v506(v889, v890, v891, v892, v893)
	local v894 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\149\163\93\5", "\48\96\231\194"));
	v894.Parent = v889;
	v894.Position = UDim2.new(0, 10, 0, v890);
	v894.Size = UDim2.new(1, -20, 0, 24);
	v894.BackgroundTransparency = 1;
	local v899 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\115\34\36\10\204\131\130\209\85\27\57", "\227\168\58\110\77\121\184\207"), v894);
	v899.FillDirection = Enum.FillDirection.Horizontal;
	v899.Padding = UDim.new(0, 6);
	local v903 = {Color3.fromRGB(255, 80, 80),Color3.fromRGB(80, 255, 80),Color3.fromRGB(80, 160, 255),Color3.fromRGB(255, 220, 0),Color3.fromRGB(255, 120, 0),Color3.fromRGB(200, 80, 255)};
	for v1136, v1137 in ipairs(v903) do
		local v1138 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\57\167\84\147\206\101\177\116\50", "\197\27\92\223\32\209\187\17"));
		v1138.Parent = v894;
		v1138.Text = "";
		v1138.BackgroundColor3 = v1137;
		v1138.Size = UDim2.new(0, 24, 0, 24);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\118\224\244\17\81\198\233", "\155\99\63\163"), v1138).CornerRadius = UDim.new(0, 4);
		v1138.MouseButton1Down:Connect(function()
			v891.Text = tostring(math.floor(v1137.R * 255));
			v892.Text = tostring(math.floor(v1137.G * 255));
			v893.Text = tostring(math.floor(v1137.B * 255));
		end);
	end
end
v503(v478, LUAOBFUSACTOR_DECRYPT_STR_0("\161\222\173\130\171\196\146\222\179\205\172\151\151\208\179\132\182\196\202\208\167\136\186\144\131\145\175\152\188\146\131\194\225\148\249\129\154\216\178\153\188\138\150\212\178\196\227", "\228\226\177\193\237\217"), 30);
local v507 = v504(v478, 10, 54, 140, LUAOBFUSACTOR_DECRYPT_STR_0("\33\163\38\244\58\177\46\227", "\134\84\208\67"));
local v508 = v504(v478, 160, 54, 50, LUAOBFUSACTOR_DECRYPT_STR_0("\67\225\212\9\70", "\60\115\204\230"));
local v509 = v504(v478, 214, 54, 50, LUAOBFUSACTOR_DECRYPT_STR_0("\183\119\185\37\178", "\16\135\90\139"));
local v510 = v504(v478, 268, 54, 50, LUAOBFUSACTOR_DECRYPT_STR_0("\4\57\84\102\27", "\24\52\20\102\83\46\52"));
v506(v478, 84, v508, v509, v510);
local v511 = v505(v478, LUAOBFUSACTOR_DECRYPT_STR_0("\229\63\45\45\12\197\61", "\111\164\79\65\68"), 10, 118, 150);
local v512 = v505(v478, LUAOBFUSACTOR_DECRYPT_STR_0("\244\220\128\209\34\229\212", "\138\166\185\227\190\78"), 170, 118, 150);
v503(v478, LUAOBFUSACTOR_DECRYPT_STR_0("\255\113\200\54\18\42\23\223\113\215\49\83\57\89\131\86\226\119\29\99\56\200\119\192\57\70\106\67", "\121\171\20\165\87\50\67"), 154);
local v513 = v504(v478, 10, 178, 50, LUAOBFUSACTOR_DECRYPT_STR_0("\150\117\235\99\236", "\98\166\88\217\86\217"));
local v514 = v504(v478, 64, 178, 50, LUAOBFUSACTOR_DECRYPT_STR_0("\166\187\43\84\211", "\188\150\150\25\97\230"));
local v515 = v504(v478, 118, 178, 50, LUAOBFUSACTOR_DECRYPT_STR_0("\138\196\13\87\89", "\141\186\233\63\98\108"));
local v516 = v504(v478, 180, 178, 50, LUAOBFUSACTOR_DECRYPT_STR_0("\161\167\126\227\112", "\69\145\138\76\214"));
local v517 = v504(v478, 234, 178, 50, LUAOBFUSACTOR_DECRYPT_STR_0("\32\130\219\220\234", "\118\16\175\233\233\223"));
local v518 = v504(v478, 288, 178, 50, LUAOBFUSACTOR_DECRYPT_STR_0("\219\201\103\238\187", "\29\235\228\85\219\142\235"));
v506(v478, 208, v516, v517, v518);
local v519 = v505(v478, LUAOBFUSACTOR_DECRYPT_STR_0("\28\196\182\212\116\79\53\18\9\209\183\220", "\50\93\180\218\189\23\46\71"), 10, 242, 150);
local v520 = v505(v478, LUAOBFUSACTOR_DECRYPT_STR_0("\253\161\73\94\69\206", "\40\190\196\59\44\36\188"), 170, 242, 80);
local function v521(v904)
	local v905 = tonumber(v904);
	if not v905 then
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
	if (v924 == "") then
		return;
	end
	local v925 = v51[v924];
	if not v925 then
		return;
	end
	for v1144 = 1, #v255 do
		local v1145 = v255[v1144];
		if (v1145.author and (v42(v1145.author) == v924) and v1145.node and v1145.node.Parent) then
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
local v523 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\70\206\177\255\115\42\41\76", "\109\92\37\188\212\154\29"));
v523.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\55\234\176\215\56\84\3\252\131\214\56", "\58\100\143\196\163\81");
v523.ResetOnSpawn = false;
v523.IgnoreGuiInset = true;
v523.Parent = v32:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\42\78\34\186\58\91\194\27\19", "\110\122\34\67\195\95\41\133"));
local v528 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\83\163\90\71\211", "\182\21\209\59\42"));
v528.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\132\82\209\9\40\176\176\68\242\20\47\186\184\64", "\222\215\55\165\125\65");
v528.Parent = v523;
v528.BackgroundColor3 = v47;
v528.BorderSizePixel = 0;
v528.Position = UDim2.fromOffset(500, 200);
v528.Size = UDim2.new(0, v21, 0, v22);
v528.Active = true;
v528.Visible = false;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\248\229\21\224\207\232\88", "\42\76\177\166\122\146\161\141"), v528).CornerRadius = UDim.new(0, 8);
local v538 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\152\4\195\124", "\22\197\234\101\174\25"));
v538.Parent = v528;
v538.BackgroundColor3 = v48;
v538.BorderSizePixel = 0;
v538.Size = UDim2.new(1, 0, 0, 26);
local v543 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\49\189\200\90\174\213\131\33", "\230\77\84\197\188\22\207\183"));
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
local v555 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\23\212\243\128\173\249\59\254\50\212\253\129\164", "\85\153\116\166\156\236\193\144"));
v555.Parent = v528;
v555.BackgroundColor3 = Color3.fromRGB(18, 18, 18);
v555.BorderSizePixel = 0;
v555.Position = UDim2.new(0, 4, 0, 32);
v555.Size = UDim2.new(1, -8, 1, -36);
v555.ScrollBarThickness = 6;
v555.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v555.CanvasSize = UDim2.new(0, 0, 0, 0);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\201\110\188\246\14\161\242", "\96\196\128\45\211\132"), v555).CornerRadius = UDim.new(0, 6);
local v565 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\164\87\86\193\187\152\217\44\130\110\75", "\184\85\237\27\63\178\207\212"));
v565.Parent = v555;
v565.FillDirection = Enum.FillDirection.Vertical;
v565.SortOrder = Enum.SortOrder.LayoutOrder;
v565.Padding = UDim.new(0, 8);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\112\57\94\12\93\0\81\15", "\63\104\57\105"), v555).PaddingLeft = UDim.new(0, 8);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\62\174\148\69\15\131\173\74\12", "\36\107\231\196"), v555).PaddingRight = UDim.new(0, 8);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\156\146\134\89\177\171\137\90", "\231\61\213\194"), v555).PaddingTop = UDim.new(0, 8);
local function v573(v929, v930)
	local v931 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\191\60\126\12", "\19\105\205\93"));
	v931.Parent = v555;
	v931.BackgroundTransparency = 1;
	v931.Size = UDim2.new(1, -16, 0, 30);
	local v935 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\157\13\198\149\19\168\10\219\141", "\95\201\104\190\225"));
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
local v574 = v573(LUAOBFUSACTOR_DECRYPT_STR_0("\128\219\192\205\166\207\192\202\239\207\196\142\185\206\207\218\174\197\192\148", "\174\207\171\161"), 0);
local v575 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\236\12\254\253", "\183\141\158\109\147\152"));
v575.Parent = v574;
v575.AnchorPoint = Vector2.new(1, 0.5);
v575.Position = UDim2.new(1, 0, 0.5, 0);
v575.Size = UDim2.new(0, 120, 0, 20);
v575.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\32\197\3\62\7\227\30", "\108\76\105\134"), v575).CornerRadius = UDim.new(0, 4);
local v582 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\215\176\236\203", "\174\139\165\209\129"));
v582.Parent = v575;
v582.BackgroundColor3 = Color3.fromRGB(80, 160, 255);
v582.BorderSizePixel = 0;
v582.Size = UDim2.new(v52.opacity, 0, 1, 0);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\154\193\206\212\13\117\106", "\24\195\211\130\161\166\99\16"), v582).CornerRadius = UDim.new(0, 4);
local v588 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\6\241\56\113\3\82\23\230\34", "\118\38\99\137\76\51"));
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
	if (v948.UserInputType == Enum.UserInputType.MouseButton1) then
		v593 = false;
	end
end);
v34.InputChanged:Connect(function(v949)
	if (v593 and (v949.UserInputType == Enum.UserInputType.MouseMovement)) then
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
local v594 = v573(LUAOBFUSACTOR_DECRYPT_STR_0("\208\41\1\29\73\3\241\47\6\25\68\20\245\52\10\7\14\40\167", "\64\157\70\101\114\105"), 0);
local v595 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\116\173\191\247\50\85\188\179\236\30", "\112\32\200\199\131"));
v595.Parent = v594;
v595.AnchorPoint = Vector2.new(1, 0.5);
v595.Position = UDim2.new(1, 0, 0.5, 0);
v595.Size = UDim2.new(0, 80, 0, 24);
v595.BackgroundColor3 = v49;
v595.TextColor3 = Color3.new(1, 1, 1);
v595.Font = Enum.Font.SourceSansSemibold;
v595.TextSize = 14;
v595.Text = (v52.clickThrough and LUAOBFUSACTOR_DECRYPT_STR_0("\3\126", "\66\76\48\60\216\163\203")) or LUAOBFUSACTOR_DECRYPT_STR_0("\149\160\95", "\68\218\230\25\147\63\174");
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\3\112\67\164\163\47\65", "\214\205\74\51\44"), v595).CornerRadius = UDim.new(0, 6);
v595.MouseButton1Down:Connect(function()
	v52.clickThrough = not v52.clickThrough;
	v595.Text = (v52.clickThrough and LUAOBFUSACTOR_DECRYPT_STR_0("\213\98", "\23\154\44\130\156")) or LUAOBFUSACTOR_DECRYPT_STR_0("\62\128\139", "\115\113\198\205\206\86");
	v63.Active = not v52.clickThrough;
	v53();
end);
local v606 = v573(LUAOBFUSACTOR_DECRYPT_STR_0("\169\88\237\78\150\86\236\26\160\94\237\74\136\86\231\26\170\86\243\95\151\13", "\58\228\55\158"), 0);
local v607 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\140\200\58\30\184\33\160\134\222", "\85\212\233\176\78\92\205"));
v607.Parent = v606;
v607.AnchorPoint = Vector2.new(1, 0.5);
v607.Position = UDim2.new(1, 0, 0.5, 0);
v607.Size = UDim2.new(0, 80, 0, 24);
v607.BackgroundColor3 = v49;
v607.TextColor3 = Color3.new(1, 1, 1);
v607.Font = Enum.Font.SourceSansSemibold;
v607.TextSize = 14;
v607.Text = (v52.showDisplayNames and LUAOBFUSACTOR_DECRYPT_STR_0("\101\118", "\130\42\56\232")) or LUAOBFUSACTOR_DECRYPT_STR_0("\197\147\2", "\95\138\213\68\131\32");
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\1\130\76\100\36\45\179", "\22\74\72\193\35"), v607).CornerRadius = UDim.new(0, 6);
v607.MouseButton1Down:Connect(function()
	v52.showDisplayNames = not v52.showDisplayNames;
	v607.Text = (v52.showDisplayNames and LUAOBFUSACTOR_DECRYPT_STR_0("\3\87", "\56\76\25\132")) or LUAOBFUSACTOR_DECRYPT_STR_0("\113\231\141", "\175\62\161\203\70");
	v53();
end);
v503(v555, "═══ Palabras Clave (Alertas) ═══", 0);
local v618 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\222\209\28\57\48\212\205\20\19\46\220\206\22", "\85\92\189\163\115"));
v618.Parent = v555;
v618.BackgroundColor3 = Color3.fromRGB(26, 26, 26);
v618.BorderSizePixel = 0;
v618.Size = UDim2.new(1, -16, 0, 120);
v618.ScrollBarThickness = 6;
v618.AutomaticCanvasSize = Enum.AutomaticSize.Y;
v618.CanvasSize = UDim2.new(0, 0, 0, 0);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\28\133\19\55\59\162\53\42", "\88\73\204\80"), v618).CornerRadius = UDim.new(0, 6);
local v627 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\170\60\79\58\206\2\130\9\73\60\206", "\186\78\227\112\38\73"));
v627.Parent = v618;
v627.FillDirection = Enum.FillDirection.Vertical;
v627.SortOrder = Enum.SortOrder.LayoutOrder;
v627.Padding = UDim.new(0, 3);
local v632 = {};
local function v633(v955)
	if v632[v955] then
		return;
	end
	local v956 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\69\252\88\86", "\26\156\55\157\53\51"));
	v956.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\167\239\41", "\48\236\184\118\185\216") .. v955;
	v956.Parent = v618;
	v956.BackgroundColor3 = Color3.fromRGB(50, 50, 50);
	v956.BorderSizePixel = 0;
	v956.Size = UDim2.new(1, -6, 0, 28);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\148\116\63\221\58\224\175", "\84\133\221\55\80\175"), v956).CornerRadius = UDim.new(0, 4);
	local v963 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\137\226\60\178\235\93\191\226\40", "\60\221\135\68\198\167"));
	v963.Parent = v956;
	v963.BackgroundTransparency = 1;
	v963.Position = UDim2.new(0, 6, 0, 0);
	v963.Size = UDim2.new(1, -36, 1, 0);
	v963.Font = Enum.Font.SourceSans;
	v963.TextSize = 14;
	v963.TextColor3 = Color3.fromRGB(255, 220, 100);
	v963.TextXAlignment = Enum.TextXAlignment.Left;
	v963.Text = v955;
	local v975 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\184\224\151\96\204\250\169\247\141", "\185\142\221\152\227\34"));
	v975.Parent = v956;
	v975.AnchorPoint = Vector2.new(1, 0.5);
	v975.Position = UDim2.new(1, -4, 0.5, 0);
	v975.Size = UDim2.new(0, 24, 0, 20);
	v975.BackgroundColor3 = Color3.fromRGB(180, 60, 60);
	v975.TextColor3 = Color3.new(1, 1, 1);
	v975.Font = Enum.Font.SourceSansBold;
	v975.TextSize = 14;
	v975.Text = "×";
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\236\116\245\81\61\242\74", "\151\56\165\55\154\35\83"), v975).CornerRadius = UDim.new(0, 4);
	v975.MouseButton1Down:Connect(function()
		v29[v42(v955)] = nil;
		v956:Destroy();
		v632[v955] = nil;
		v53();
	end);
	v632[v955] = v956;
end
local v634 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\81\4\227\165", "\142\192\35\101"));
v634.Parent = v555;
v634.BackgroundTransparency = 1;
v634.Size = UDim2.new(1, -16, 0, 30);
local v638 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\112\49\183\197\131\180", "\118\182\21\73\195\135\236\204"));
v638.Parent = v634;
v638.Position = UDim2.new(0, 0, 0, 0);
v638.Size = UDim2.new(1, -80, 1, 0);
v638.BackgroundColor3 = Color3.fromRGB(32, 32, 32);
v638.TextColor3 = Color3.new(1, 1, 1);
v638.Font = Enum.Font.SourceSans;
v638.TextSize = 14;
v638.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\41\59\8\69\3\12\239\72\44\27\76\5\15\239\9\124\25\76\5\27\248\70\114\84", "\157\104\92\122\32\100\109");
v638.Text = "";
v638.ClearTextOnFocus = false;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\143\236\197\47\41\136\185", "\203\195\198\175\170\93\71\237"), v638).CornerRadius = UDim.new(0, 6);
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
local v652 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\89\63\216\84", "\156\78\43\94\181\49\113"));
v652.Parent = v555;
v652.BackgroundTransparency = 1;
v652.Size = UDim2.new(1, -16, 0, 30);
local v656 = v317(LUAOBFUSACTOR_DECRYPT_STR_0("\83\234\214\170\25\3\91\126\233\199\168\7\74\106\102", "\25\18\136\164\195\107\35"), 140, v652);
v656.Position = UDim2.new(0, 0, 0, 0);
v656.MouseButton1Down:Connect(function()
	v404.Visible = not v404.Visible;
	if v404.Visible then
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
		if ((typeof(makefolder) == LUAOBFUSACTOR_DECRYPT_STR_0("\238\56\167\76\102\181\206\182", "\216\136\77\201\47\18\220\161")) and ((typeof(isfolder) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\43\249\37\217\28\213\141\35", "\226\77\140\75\186\104\188")) or not isfolder(v27))) then
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
	local v995 = ("%04d-%02d-%02d_%02d-%02d-%02d"):format(tonumber(os.date(LUAOBFUSACTOR_DECRYPT_STR_0("\252\247", "\47\217\174\176\95"))), tonumber(os.date(LUAOBFUSACTOR_DECRYPT_STR_0("\253\208", "\70\216\189\22\98\210\52\24"))), tonumber(os.date(LUAOBFUSACTOR_DECRYPT_STR_0("\159\219", "\179\186\191\195\231"))), tonumber(os.date(LUAOBFUSACTOR_DECRYPT_STR_0("\188\23", "\132\153\95\120"))), tonumber(os.date(LUAOBFUSACTOR_DECRYPT_STR_0("\244\159", "\192\209\210\110\77\151\186"))), tonumber(os.date(LUAOBFUSACTOR_DECRYPT_STR_0("\165\48", "\164\128\99\66\137\159"))));
	local v996 = ("ChatLog_%s_r%03d.txt"):format(v995, v259);
	local v997 = v27 .. "/" .. v996;
	local v998 = false;
	pcall(function()
		if (typeof(writefile) == LUAOBFUSACTOR_DECRYPT_STR_0("\6\156\231\189\20\128\230\176", "\222\96\233\137")) then
			writefile(v997, v994);
			v998 = true;
		end
	end);
	if v998 then
		return v997;
	end
	if not v993 then
		pcall(function()
			if (typeof(setclipboard) == LUAOBFUSACTOR_DECRYPT_STR_0("\191\166\169\28\156\250\255\183", "\144\217\211\199\127\232\147")) then
				setclipboard(v994);
			end
		end);
	end
end
local function v659(v999, v1000)
	local v1001 = v51[v42(v999 or "")];
	if v1001 then
		return v1001;
	end
	return v1000 or Color3.fromRGB(230, 230, 230);
end
local function v660()
	pcall(function()
		local v1148 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\32\43\38\209", "\36\152\79\94\72\181\37\98"));
		v1148.SoundId = LUAOBFUSACTOR_DECRYPT_STR_0("\197\218\95\62\196\203\66\43\222\220\29\112\152\140\18\102\135\142\17\109\128\142\17", "\95\183\184\39");
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
		if v1003:find(v1152, 1, true) then
			return true;
		end
	end
	return false;
end
local v662 = "";
local function v663(v1004, v1005, v1006, v1007)
	if not v249 then
		return;
	end
	local v1008 = v250 and v263();
	local v1009 = v1004 or LUAOBFUSACTOR_DECRYPT_STR_0("\133\51\230\63\81\146", "\98\213\95\135\70\52\224");
	local v1010 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\166\209\99\120\255\161\204\123", "\52\158\195\169\23"));
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
	if v1028 then
		v1010.BackgroundTransparency = 0;
		v1010.BackgroundColor3 = Color3.fromRGB(80, 20, 20);
		v660();
	end
	local v1029 = (v252 and ("[" .. os.date(LUAOBFUSACTOR_DECRYPT_STR_0("\63\148\104\49\171\111\62\184", "\235\26\220\82\20\230\85\27")) .. LUAOBFUSACTOR_DECRYPT_STR_0("\181\225", "\20\232\193\137\162"))) or "";
	v1010.Text = v1029 .. v1009 .. LUAOBFUSACTOR_DECRYPT_STR_0("\120\159", "\17\66\191\165\198\135\236\119") .. v1005;
	v1010.LayoutOrder = math.floor(os.clock() * 1000);
	v1010.InputBegan:Connect(function(v1153)
		if (v1153.UserInputType == Enum.UserInputType.MouseButton2) then
			v280 = v1010;
			local v1287 = v34:GetMouseLocation();
			v268.Position = UDim2.fromOffset(v1287.X, v1287.Y);
			v268.Visible = true;
		end
	end);
	table.insert(v255, {[LUAOBFUSACTOR_DECRYPT_STR_0("\1\160\170\22", "\177\111\207\206\115\159\136\140")]=v1010,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\156\4\28\219\93", "\63\101\233\112\116\180\47")]=v1009,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\62\245\6", "\86\163\91\141\114\152")]=v1005});
	local v1032 = v1029 .. v1009 .. LUAOBFUSACTOR_DECRYPT_STR_0("\9\75", "\90\51\107\20\19") .. v1005;
	table.insert(v256, v1032);
	if (v662 ~= "") then
		local v1222 = v42(v1010.Text);
		v1010.Visible = v1222:find(v662, 1, true) ~= nil;
	end
	v266();
	if (v24 > 0) then
		v260 += 1
		if (v260 >= v24) then
			v260 = 0;
			v259 += 1
			local v1315 = v267(nil, true);
			if v25 then
				for v1343 = #v255, 1, -1 do
					if v255[v1343].node then
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
	if (#v256 > v23) then
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
	if v1008 then
		task.defer(v264);
	end
end
v182:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\185\245\157\251", "\93\237\144\229\143")):Connect(function()
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
	if v174.Visible then
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
	v95.Text = (v249 and LUAOBFUSACTOR_DECRYPT_STR_0("\57\249\247\89\48\105\59\203", "\38\117\150\144\121\107")) or LUAOBFUSACTOR_DECRYPT_STR_0("\1\180\233\122\22\148\200\28\16", "\90\77\219\142");
	v52.logging = v249;
	v53();
end);
v96.MouseButton1Down:Connect(function()
	v250 = not v250;
	v96.Text = (v250 and "Auto↓ [AUTO]") or "Auto↓ [OFF]";
	if v250 then
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
	v244.Text = (v251 and LUAOBFUSACTOR_DECRYPT_STR_0("\209\22\32\41\12\60\85\200\57", "\26\134\100\65\89\44\103")) or LUAOBFUSACTOR_DECRYPT_STR_0("\198\241\49\51\228\202\204\22\5\153", "\196\145\131\80\67");
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
	v245.Text = (v252 and LUAOBFUSACTOR_DECRYPT_STR_0("\42\185\11\13\88\211\49\158\59", "\136\126\208\102\104\120")) or LUAOBFUSACTOR_DECRYPT_STR_0("\76\131\195\70\239\105\18\119\94\183", "\49\24\234\174\35\207\50\93");
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
	if v253 then
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
	if (not v1054 and (v1053.KeyCode == v28)) then
		v56.Enabled = not v56.Enabled;
		v281.Enabled = v56.Enabled;
		v473.Enabled = v56.Enabled;
		v523.Enabled = v56.Enabled;
		v399.Enabled = v56.Enabled;
	end
end);
local v665 = 10;
local function v666(v1055, v1056, v1057)
	local v1058 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\224\252\133\116", "\17\108\146\157\232"));
	v1058.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\121\198\7\228\53\173\116", "\200\43\163\116\141\79") .. v1055;
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
local v669 = v666(LUAOBFUSACTOR_DECRYPT_STR_0("\140\19", "\131\223\86\93\227\208\148"), UDim2.new(1, -v665, 1, -v665), UDim2.new(0, v665, 0, v665));
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
	v674(v1071, LUAOBFUSACTOR_DECRYPT_STR_0("\208\96", "\213\131\37\214\214\125"));
end);
v34.InputChanged:Connect(function(v1072)
	if (v670 and ((v1072.UserInputType == Enum.UserInputType.MouseMovement) or (v1072.UserInputType == Enum.UserInputType.Touch))) then
		local v1254 = v34:GetMouseLocation();
		local v1255 = v1254 - v672;
		local v1256, v1257 = v673.X, v673.Y;
		if ((v671 == "E") or (v671 == LUAOBFUSACTOR_DECRYPT_STR_0("\21\14", "\129\70\75\69\223"))) then
			v1256 = v673.X + v1255.X;
		end
		if ((v671 == "S") or (v671 == LUAOBFUSACTOR_DECRYPT_STR_0("\117\238", "\143\38\171\147\137\28"))) then
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
	if ((v1073.UserInputType == Enum.UserInputType.MouseButton1) or (v1073.UserInputType == Enum.UserInputType.Touch)) then
		if v670 then
			v670 = false;
			v53();
		end
		if (v250 and v263()) then
			task.defer(v264);
		end
	end
end);
v63:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\224\141\170\250\23\234\219\222", "\180\176\226\217\147\99\131")):Connect(function()
	if not v253 then
		v52.windowPos.X = v63.Position.X.Offset;
		v52.windowPos.Y = v63.Position.Y.Offset;
	end
end);
task.spawn(function()
	local v1074 = v36:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\247\188\41\6\198\181\59\36\219\184\59\52\202\170\59\2\222\154\39\6\199\156\57\2\221\173\60", "\103\179\217\79"));
	local v1075 = v1074 and v1074:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\101\185\49\208\82\159\162\77\178\56\218\79\137\133\67\187\8\208\83\133\173\77", "\195\42\215\124\181\33\236"));
	if v1075 then
		v1075.OnClientEvent:Connect(function(v1304)
			local v1305, v1306 = v1304.FromSpeaker, v1304.Message;
			if (not v1305 or not v1306) then
				return;
			end
			local v1307 = v31:FindFirstChild(v1305);
			if v44(v1305, (v1307 and v1307.UserId) or 0) then
				return;
			end
			local v1308 = false;
			if v1307 then
				if v38[v42(v1307.Name)] then
					v1308 = true;
				end
			elseif v38[v42(v1305)] then
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
				if (v1304.OriginalChannel == LUAOBFUSACTOR_DECRYPT_STR_0("\58\81\62\45\53\253\31", "\152\109\57\87\94\69")) then
					v1328 = LUAOBFUSACTOR_DECRYPT_STR_0("\194\224\34\138\141\226\113\154\196\151", "\200\153\183\106\195\222\178\52");
					v1329 = Color3.fromRGB(110, 150, 255);
				elseif (v1304.OriginalChannel == LUAOBFUSACTOR_DECRYPT_STR_0("\6\230\137\48", "\58\82\131\232\93\41")) then
					v1329 = Color3.fromRGB(120, 210, 120);
				end
				v663(v1326, v1328 .. v1306, v1329, v1327);
			end
		end);
	end
end);
local function v675(v1076)
	return v1076 and v1076.Name and (string.find(v1076.Name, LUAOBFUSACTOR_DECRYPT_STR_0("\180\95\217\6\77\58\145", "\95\227\55\176\117\61")) ~= nil);
end
v33.MessageReceived:Connect(function(v1077)
	if not v1077.TextSource then
		return;
	end
	if not v45(v1077) then
		return;
	end
	local v1078 = v1077.TextChannel;
	local v1079 = v1077.Text or "";
	local v1080 = v1077.TextSource.UserId;
	local v1081 = LUAOBFUSACTOR_DECRYPT_STR_0("\40\114\34\82\174\10", "\203\120\30\67\43");
	local v1082 = v31:GetPlayerByUserId(v1080);
	if v1082 then
		if (v52.showDisplayNames and (v1082.DisplayName ~= "")) then
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
	if v44(v1081, v1080) then
		return;
	end
	if (v1078 and v675(v1078)) then
		v663(v1081, LUAOBFUSACTOR_DECRYPT_STR_0("\202\18\101\198\234\193\0\127\210\153", "\185\145\69\45\143") .. v1079, Color3.fromRGB(110, 150, 255), v51[v42(v1081)]);
		return;
	end
	local v1083 = v1078 and (string.find(v1078.Name, LUAOBFUSACTOR_DECRYPT_STR_0("\190\26\24\171", "\188\234\127\121\198")) ~= nil);
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
	v95.Text = (v249 and LUAOBFUSACTOR_DECRYPT_STR_0("\20\61\20\195\3\29\61\190", "\227\88\82\115")) or LUAOBFUSACTOR_DECRYPT_STR_0("\111\16\189\231\57\92\101\57\135", "\19\35\127\218\199\98");
	v96.Text = (v250 and "Auto↓ [AUTO]") or "Auto↓ [OFF]";
	v244.Text = (v251 and LUAOBFUSACTOR_DECRYPT_STR_0("\43\233\11\242\92\192\37\204\33", "\130\124\155\106")) or LUAOBFUSACTOR_DECRYPT_STR_0("\226\217\247\191\227\205\83\153\243\246", "\223\181\171\150\207\195\150\28");
	v245.Text = (v252 and LUAOBFUSACTOR_DECRYPT_STR_0("\120\51\238\171\73\119\21\205\147", "\105\44\90\131\206")) or LUAOBFUSACTOR_DECRYPT_STR_0("\203\233\191\188\72\5\208\198\148\132", "\94\159\128\210\217\104");
	v63.Active = not v52.clickThrough;
	v595.Text = (v52.clickThrough and LUAOBFUSACTOR_DECRYPT_STR_0("\127\215", "\26\48\153\102\223\63\31\153")) or LUAOBFUSACTOR_DECRYPT_STR_0("\45\102\203", "\147\98\32\141");
	v607.Text = (v52.showDisplayNames and LUAOBFUSACTOR_DECRYPT_STR_0("\55\109", "\43\120\35\131\170\102\54")) or LUAOBFUSACTOR_DECRYPT_STR_0("\123\32\161", "\228\52\102\231\214\197\208");
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
	if (v1099.UserInputType == Enum.UserInputType.MouseButton1) then
		if v268.Visible then
			local v1318 = v34:GetMouseLocation();
			local v1319 = v268.AbsolutePosition;
			local v1320 = v268.AbsoluteSize;
			if ((v1318.X < v1319.X) or (v1318.X > (v1319.X + v1320.X)) or (v1318.Y < v1319.Y) or (v1318.Y > (v1319.Y + v1320.Y))) then
				v268.Visible = false;
			end
		end
	end
end);