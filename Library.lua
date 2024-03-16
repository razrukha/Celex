-- // Tables
local Library, Utility, Flags = {
    Storage = {},
    Objects = {},
    Themes = {},
    Images = {
        Saturation = "rbxassetid://14639149555",
        Hue = "rbxassetid://14639140994",
        Alpha = "rbxassetid://14639150937"
    },
    --
    Pages = {},
    Sections = {
        Addons = {}
    }
}, {
    Connections = {},
    Screens = {},
    --
    Inputs = {
		KeyCodes = {
			["Q"] = true, ["W"] = true, ["E"] = true, ["R"] = true, ["T"] = true, ["Y"] = true, ["U"] = true, ["I"] = true, ["O"] = true, ["P"] = true, ["A"] = true, ["S"] = true, ["D"] = true, ["F"] = true, ["G"] = true, ["H"] = true, ["J"] = true, ["K"] = true, ["L"] = true, ["Z"] = true, ["X"] = true, ["C"] = true, ["V"] = true, ["B"] = true, ["N"] = true, ["M"] = true, ["Hash"] = true, ["One"] = true, ["Two"] = true, ["Three"] = true, ["Four"] = true, ["Five"] = true, ["Six"] = true, ["Seveen"] = true, ["Eight"] = true, ["Nine"] = true, ["Zero"] = true, ["Minus"] = true, ["Equals"] = true, ["F1"] = true, ["F2"] = true, ["F3"] = true, ["F4"] = true, ["F5"] = true, ["F6"] = true, ["F7"] = true, ["F8"] = true, ["F9"] = true, ["F10"] = true, ["F11"] = true, ["F12"] = true, ["Insert"] = true, ["Tab"] = true, ["Home"] = true, ["End"] = true, ["LeftAlt"] = true, ["LeftControl"] = true, ["LeftShift"] = true, ["RightAlt"] = true, ["RightControl"] = true, ["RightShift"] = true, ["CapsLock"] = true, ["BackSlash"] = true, ["Space"] = true, ["Up"] = true, ["Left"] = true, ["Down"] = true, ["Right"] = true,
			["MouseButton1"] = true, ["MouseButton2"] = true, ["MouseButton3"] = true,
			["ButtonL2"] = true, ["ButtonR2"] = true, ["ButtonL1"] = true, ["ButtonR1"] = true, ["ButtonStart"] = true, ["ButtonSelect"] = true, ["ButtonY"] = true, ["ButtonX"] = true, ["ButtonA"] = true, ["ButtonB"] = true, ["ButtonL3"] = true, ["ButtonR3"] = true, ["DPadUp"] = true, ["DPadLeft"] = true, ["DPadDown"] = true, ["DPadRight"] = true
		},
		Shortened = {
			["BackSlash"] = "Bs", ["Hash"] = "Hs", ["End"] = "En", ["One"] = "1", ["Two"] = "2", ["Three"] = "3", ["Four"] = "4", ["Five"] = "5", ["Six"] = "6", ["Seven"] = "7", ["Eight"] = "8", ["Nine"] = "9", ["Zero"] = "0", ["Minus"] = "Mn", ["Equals"] = "Eq", ["Home"] = "Hm", ["Space"] = "Sp", ["Insert"] = "In", ["LeftAlt"] = "La", ["LeftControl"] = "Lc", ["LeftShift"] = "Ls", ["RightAlt"] = "Ra", ["RightControl"] = "Rc", ["RightShift"] = "Rs", ["CapsLock"] = "Ca", ["Left"] = "Lf", ["Down"] = "Dw", ["Right"] = "Rg",
			["MouseButton1"] = "M1", ["MouseButton2"] = "M2", ["MouseButton3"] = "M3",
			["ButtonL2"] = "L2", ["ButtonR2"] = "R2", ["ButonL1"] = "L1", ["ButtonR1"] = "R1", ["ButtonStart"] = "St", ["ButtonSelect"] = "Sl", ["ButtonY"] = "Cy", ["ButtonX"] = "Cx", ["ButtonA"] = "Ca", ["ButtonB"] = "Cb", ["ButtonL3"] = "L3", ["ButtonR3"] = "R3", ["DPadUp"] = "Up", ["DPadLeft"] = "Lf", ["DPadDown"] = "Dw", ["DPadRight"] = "Rg"
		},
        Modes = {
            "On Hold",
            "Off Hold",
            "On Toggle",
            "Off Toggle",
            "Always On"
        }
	},
    Presets = {
        Themes = {
            Celex = {
                ["Light Contrast"] = Color3.fromRGB(155, 75, 165),
                ["Dark Contrast"] = Color3.fromRGB(119, 57, 127),
                ["Arrow Color"] = Color3.fromRGB(119, 57, 127),
                ["Lighter Background"] = Color3.fromRGB(15, 15, 15),
                ["Light Background"] = Color3.fromRGB(11, 11, 11),
                ["Dark Background"] = Color3.fromRGB(8, 8, 8),
                ["Outline"] = Color3.fromRGB(6, 6, 6),
                ["Lighter Inline"] = Color3.fromRGB(25, 25, 25),
                ["Light Inline"] = Color3.fromRGB(21, 21, 21),
                ["Dark Inline"] = Color3.fromRGB(18, 18, 18),
                ["Lighter Text"] = Color3.fromRGB(175, 175, 175),
                ["Light Text"] = Color3.fromRGB(145, 145, 145),
                ["Dark Text"] = Color3.fromRGB(120, 120, 120),
                ["Darker Text"] = Color3.fromRGB(49, 49, 49)
            },
            Azul = {
                ["Light Contrast"] = Color3.fromRGB(85, 170, 235),
                ["Dark Contrast"] = Color3.fromRGB(75, 140, 195),
                ["Arrow Color"] = Color3.fromRGB(75, 140, 195),
                ["Lighter Background"] = Color3.fromRGB(10, 10, 10),
                ["Light Background"] = Color3.fromRGB(14, 14, 14),
                ["Dark Background"] = Color3.fromRGB(8, 8, 8),
                ["Outline"] = Color3.fromRGB(0, 0, 0),
                ["Lighter Inline"] = Color3.fromRGB(45, 45, 45),
                ["Light Inline"] = Color3.fromRGB(25, 25, 25),
                ["Dark Inline"] = Color3.fromRGB(20, 20, 20),
                ["Lighter Text"] = Color3.fromRGB(175, 175, 175),
                ["Light Text"] = Color3.fromRGB(145, 145, 145),
                ["Dark Text"] = Color3.fromRGB(120, 120, 120),
                ["Darker Text"] = Color3.fromRGB(45, 45, 45)
            },
            Amethyst = {
                ["Light Contrast"] = Color3.fromRGB(170, 85, 235),
                ["Dark Contrast"] = Color3.fromRGB(140, 75, 195),
                ["Arrow Color"] = Color3.fromRGB(108, 108, 108),
                ["Lighter Background"] = Color3.fromRGB(25, 25, 25),
                ["Light Background"] = Color3.fromRGB(19, 19, 19),
                ["Dark Background"] = Color3.fromRGB(12, 12, 12),
                ["Outline"] = Color3.fromRGB(0, 0, 0),
                ["Lighter Inline"] = Color3.fromRGB(65, 65, 65),
                ["Light Inline"] = Color3.fromRGB(48, 48, 48),
                ["Dark Inline"] = Color3.fromRGB(41, 41, 41),
                ["Lighter Text"] = Color3.fromRGB(205, 205, 205),
                ["Light Text"] = Color3.fromRGB(180, 180, 180),
                ["Dark Text"] = Color3.fromRGB(140, 140, 140),
                ["Darker Text"] = Color3.fromRGB(90, 90, 90)
            },
            Magenta = {
                ["Light Contrast"] = Color3.fromRGB(166, 64, 89),
                ["Dark Contrast"] = Color3.fromRGB(166, 64, 89),
                ["Arrow Color"] = Color3.fromRGB(166, 64, 89),
                ["Lighter Background"] = Color3.fromRGB(13, 13, 13),
                ["Light Background"] = Color3.fromRGB(10, 10, 10),
                ["Dark Background"] = Color3.fromRGB(2, 2, 2),
                ["Outline"] = Color3.fromRGB(0, 0, 0),
                ["Lighter Inline"] = Color3.fromRGB(32, 32, 32),
                ["Light Inline"] = Color3.fromRGB(26, 26, 26),
                ["Dark Inline"] = Color3.fromRGB(20, 20, 20),
                ["Lighter Text"] = Color3.fromRGB(175, 175, 175),
                ["Light Text"] = Color3.fromRGB(145, 145, 145),
                ["Dark Text"] = Color3.fromRGB(120, 120, 120),
                ["Darker Text"] = Color3.fromRGB(50, 50, 50)
            }
        }
    },
    Fills = {},
    --
    General = {},
    String = {},
    Table = {},
    Theme = {},
    Math = {},
    --
    Unloaded = false,
    Unload = false
}, {}
-- // Variables
local UserInputService, RunService, GuiService, Players, Stats = game:GetService("UserInputService"), game:GetService("RunService"), game:GetService("GuiService"), game:GetService("Players"), game:GetService('Stats')
--
local FrameManager, Network, Client = Stats.FrameRateManager, Stats.Network, Players.LocalPlayer
--
local Gui = (Client:FindFirstChild("PlayerGui") or game:GetService("StarterGui"))
-- // Functions
do -- Utility
    do -- General
        function Utility.General:Update(Object, Properties)
            for Property, Value in next, Properties do
                if string.find(string.lower(Property), "color") and typeof(Value) == "string" then
                    local Found = Library.Themes[Value]
                    --
                    if Found then
                        if Library.Storage[Object] then
                            Library.Storage[Object][Property] = Value
                        else
                            Library.Storage[Object] = {
                                [Property] = Value
                            }
                        end
                        --
                        Object[Property] = Found
                    else
                        warn("Invalid Color Type", Property, Value)
                    end
                else
                    Object[Property] = Value
                end
            end
        end
        --
        function Utility.General:Create(ObjectType, ObjectProperties)
            local Object = Instance.new(ObjectType)
            --
            if ObjectType == "ScreenGui" then
                Utility.Screens[Object] = true
            end
            --
            Utility.General:Update(Object, ObjectProperties)
            --
            return Object
        end
        --
        function Utility.General:Connect(Name, ...)
            local Table = {
                Connection = Name:Connect(...)
            }
            --
            function Table:Disconnect()
                Utility.Connections[Table] = nil
                --
                Table.Connection:Disconnect()
                --
                Table.Connection = nil
                Table.Disconnect = nil
                Table = nil
            end
            --
            Utility.Connections[Table] = true
            --
            return Table
        end
        --
        function Utility.General:Call(Func, ...)
            if Func then
                local Passed, Statement = pcall(Func, ...)
                --
                if not Passed then
                    warn("Celex: Utility/General/Call ", Statement)
                end
                --
                return Passed, Statement
            end
        end
        --
        function Utility.General:Thread(Func, ...)
			coroutine.wrap(Func)(...)
		end
        --
        function Utility.General:Location()
            local Location = UserInputService:GetMouseLocation()
            --
            return Vector2.new(Location.X, Location.Y)
        end
        --
        function Utility.General:Attach(Func)
            Utility.Unload = Func
        end
        --
        function Utility.General:Unload()
            if Utility.Unload then
                local Passed, Statement = pcall(Utility.Unload)
                --
                if not Passed then
                    warn("Celex: Error while calling external unload:", Statement)
                end
            end
            --
            for Index, Value in next, Utility.Connections do
                Index:Disconnect()
            end
            --
            for Index, Value in next, Utility.Screens do
                Index:Remove()
            end
            --
            Utility.Unloaded = true
        end
    end
    --
    do -- String
        function Utility.String:Normalise(String)
            return String:gsub(" ", ""):gsub("\n", "")
        end
        --
        function Utility.String:Fill(String)
            for Index, Value in next, Utility.Fills do
                if string.find(String, Index) then
                    String = string.gsub(String, Index, Value())
                end
            end
            --
            return String
        end
    end
    --
    do -- Theme
        function Utility.Theme:Update(Theme, Color)
            if Library.Themes[Theme] ~= Color then
                Library.Themes[Theme] = Color
                --
                for Index, Value in next, Library.Storage do
                    if not Index.Parent then
                        Library.Storage[Index] = nil
                    end
                    --
                    for Index2, Value2 in next, Value do
                        if Value2 == Theme then
                            Index[Index2] = Color
                        end
                    end
                end
            end
        end
        --
        function Utility.Theme:Set(Window, Type)
            local Theme = Utility.Presets.Themes[Type]
            --
            if Theme then
                for Index, Value in next, Theme do
                    Flags[Window][Index]:Set(Value)
                end
            else
                warn("Celex: Unable to find theme.")
            end
        end
    end
    --
    do -- Table
        function Utility.Table:Property(Properties, ...)
            local Indexes = {}
            --
            for Index, Value in next, {...} do
                Indexes[string.lower(Value)] = true
            end
            --
            for Index2, Value2 in next, Properties do
                if Indexes[string.lower(Index2)] then
                    return Value2
                end
            end
        end
        --
        function Utility.Table:State(State, Value)
			if typeof(State) == "table" then
				return (State[Value] or false)
			else
				return (State == Value)
			end
			--
			return false
		end
		--
		function Utility.Table:Modify(State, Value, Min, Max)
			if typeof(State) == "table" then
				local Current = 0
				--
				for Index, Value2 in next, State do
					if Value2 then
						Current = (Current + 1)
					end
				end
				--
				if (State[Value] and ((Current - 1) >= Min)) or (not State[Value] and ((Current + 1) <= Max)) then
					State[Value] = ((not State[Value]) or nil)
				end
				--
				return State
			else
				return Value
			end
			--
			return 1
		end
		--
		function Utility.Table:Stringify(Value, Table)
			if typeof(Value) == "table" then
				local String = ""
				local Strings = {}
				--
				for Index, Value2 in next, Table do
					if Value[Index] then
						Strings[#Strings + 1] = Value2
					end
				end
				--
				for Index, Value2 in next, Strings do
					String = (String .. Value2 .. (Index == #Strings and "" or ", "))
				end
				--
				return String
			else
				return Table[Value]
			end
		end
        --
        function Utility.Table:Count(Table)
            local Count = 0
            --
            for Index, Value in next, Table do
                Count += 1
            end
            --
            return Count
        end
        --
        function Utility.Table:Last(Table)
            local Last = 0
            --
            for Index, Value in next, Table do
                Last = Value
            end
            --
            return Last
        end
        --
        function Utility.Table:Sort(Table, Order)
            local Order = (Order or "Alphabetical")
            --
            if typeof(Table) == "table" and Order == "Alphabetical" then
                table.sort(Table, function(Previous, Next)
                    return (Previous:byte() < Next:byte())
                end)
            end
            --
            return Table
        end
    end
    --
    do -- Math
        function Utility.Math:Over(Location, Position, Size)
            return ((Location.X >= Position.X) and (Location.X <= (Position.X + Size.X)) and (Location.Y >= Position.Y) and (Location.Y <= (Position.Y + Size.Y)))
        end
        --
        function Utility.Math:Percentile(Value, Minimum, Maximum)
			return ((Maximum - Value) / (Maximum - Minimum))
		end
		--
		function Utility.Math:Normalise(Value, Decimals, Minimum, Maximum)
			local Rounded = (Decimals ~= 1 and (math.round(Value * Decimals) / Decimals) or math.round(Value))
			--
			return math.clamp(Rounded, Minimum, Maximum)
		end
		--
		function Utility.Math:Value(Axis, Lowest, Highest)
			return (math.clamp(Axis - Lowest, 0, Highest) / Highest)
		end
		--
		function Utility.Math:Interpolate(Axis, Lowest, Highest, Minimum, Maximum)
			return (Minimum + (Maximum - Minimum) * Utility.Math:Value(Axis, Lowest, Highest))
		end
    end
    --
    do -- Fills
        Utility.Fills["$U"] = function() return "envo : 1" end
        Utility.Fills["$L"] = function() return "┃" end
        Utility.Fills["$F"] = function()
            local Fps = 0
            --
            local RenderAverage = FrameManager:FindFirstChild('RenderAverage')
            --
            if RenderAverage then
                Fps = string.format('%.1f', (1000 / RenderAverage:GetValue()))
            end
            --
            return Fps
        end
        Utility.Fills["$P"] = function()
            local Ping = 0
            --
            local ServerStatsItem = Network:FindFirstChild("ServerStatsItem")
            --
            if ServerStatsItem then
                Ping = math.floor(ServerStatsItem["Data Ping"]:GetValue())
            end
            --
            return Ping
        end
        Utility.Fills["$S"] = function() return (Workspace.CurrentCamera.ViewportSize.X .. ", " .. Workspace.CurrentCamera.ViewportSize.Y) end
        Utility.Fills["$T"] = function() return os.date("%X", os.time()) end
    end
end
--
do -- Library
    do -- Objects
        function Library.Objects:Button(Parent, Index)
            return Utility.General:Create("TextButton", {
                BackgroundTransparency = 1,
                Parent = Parent,
                Position = UDim2.new(0, 0, 0, 0),
                Size = UDim2.new(1, 0, 1, 0),
                Text = "",
                ZIndex = Index
            })
        end
        --
        function Library.Objects:Frame(AnchorPoint, Color, Transparency, BorderColor, BorderMode, BorderSize, Parent, Position, Size, Visible, Index)
            return Utility.General:Create("Frame", {
                AnchorPoint = AnchorPoint,
                BackgroundColor3 = Color,
                BackgroundTransparency = Transparency,
                BorderColor3 = BorderColor,
                BorderMode = BorderMode,
                BorderSizePixel = BorderSize,
                Parent = Parent,
                Position = Position,
                Size = Size,
                Visible = Visible,
                ZIndex = Index
            })
        end
        --
        function Library.Objects:Holder(AnchorPoint, Parent, Position, Size, Visible, Index)
            return Library.Objects:Frame(AnchorPoint, nil, 1, nil, nil, 0, Parent, Position, Size, Visible, Index)
        end
        --
        function Library.Objects:Outline(AnchorPoint, Parent, Position, Size, Frame, Inline, Outline, Index)
            local Outline = Library.Objects:Frame(AnchorPoint, (Inline or "Light Inline"), nil, (Outline or "Outline"), "Inset", 1, Parent, Position, Size, nil, Index)
            --
            return Outline, (Frame and Library.Objects:Frame(nil, Frame, nil, nil, nil, 0, Outline, UDim2.new(0, 1, 0, 1), UDim2.new(1, -2, 1, -2), nil, Index))
        end
        --
        function Library.Objects:Text(AnchorPoint, Parent, Position, Size, Name, Color, Alignment, Index, Truncate, TextSize)
            return Utility.General:Create("TextLabel", {
                AnchorPoint = AnchorPoint,
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Parent = Parent,
                Position = (Position or UDim2.new(0, 0, 0, -1)),
                Size = Size,
                FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
                Text = Name,
                TextColor3 = (Color or "Light Text"),
                TextSize = (TextSize or 10),
                TextXAlignment = (Alignment or "Left"),
                ZIndex = Index,
                TextTruncate = Truncate
            })
        end
        --
        function Library.Objects:Box(AnchorPoint, Parent, Position, Size, Name, Placeholder, Color, Alignment, Index, Truncate)
            return Utility.General:Create("TextBox", {
                AnchorPoint = AnchorPoint,
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Parent = Parent,
                Position = (Position or UDim2.new(0, 0, 0, -1)),
                Size = Size,
                FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
                PlaceholderColor3 = "Dark Text",
                PlaceholderText = Placeholder,
                Text = Name,
                TextColor3 = (Color or "Light Text"),
                TextSize = 10,
                TextXAlignment = (Alignment or "Center"),
                ZIndex = Index,
                TextTruncate = Truncate,
                ClearTextOnFocus = false
            })
        end
        --
        function Library.Objects:Scroll(Parent, Gradients, Offset, Bottom, Top, Size, Index)
            local Objects = {}
            --
            do -- Objects
                Objects["Bar"] = Library.Objects:Frame(Vector2.new(1, 0), "Light Inline", nil, nil, nil, 0, Parent, UDim2.new(1, 1, 0, 0), UDim2.new(0, ((Size or 4) + 2), 1, 0), false, Index)
                Objects["Content"] = Utility.General:Create("ScrollingFrame", {
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Parent = Parent,
                    Position = UDim2.new(0, 0, 0, 1),
                    Size = UDim2.new(1, 0, 1, -2),
                    ZIndex = Index,
                    ClipsDescendants = true,
                    AutomaticCanvasSize = "Y",
                    BottomImage = "rbxassetid://14520850538",
                    CanvasSize = UDim2.new(0, 0, 0, 0),
                    HorizontalScrollBarInset = "None",
                    ElasticBehavior = "Never",
                    HorizontalScrollBarInset = "None",
                    MidImage = "rbxassetid://14520850538",
                    ScrollBarImageColor3 = "Lighter Inline",
                    ScrollBarImageTransparency = 0,
                    ScrollBarThickness = (Size or 4),
                    ScrollingDirection = "Y",
                    ScrollingEnabled = true,
                    TopImage = "rbxassetid://14520850538",
                    VerticalScrollBarInset = "None",
                })
                Objects["List"] = Library.Objects:List(Offset, Objects["Content"], "Vertical", "Center", "Top")
                --
                Library.Objects:Padding(Objects["Content"], Bottom, Top)
                --
                if Gradients then
                    for Index2, Value in next, {"rbxassetid://14557257303", "rbxassetid://14557262853"} do
                        local Gradient = Utility.General:Create("ImageLabel", {
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Parent,
                            Position = UDim2.new(0, 0, (Index2 == 2 and 1 or 0), (Index2 == 2 and -22 or 0)),
                            Size = UDim2.new(1, -5, 0, 22),
                            Image = Value,
                            ImageColor3 = "Light Background",
                            ZIndex = Index
                        })
                    end
                end
            end
            --
            local SizeConnection, ContentSizeConnection
            --
            do -- Connections
                SizeConnection = Utility.General:Connect(Objects["Content"]:GetPropertyChangedSignal("AbsoluteSize"), function()
                    Objects["Bar"].Visible = ((Objects["Content"].AbsoluteCanvasSize.Y - Objects["Content"].AbsoluteWindowSize.Y) > 0)
                end)
                --
                ContentSizeConnection = Utility.General:Connect(Objects["List"]:GetPropertyChangedSignal("AbsoluteContentSize"), function()
                    Objects["Bar"].Visible = ((Objects["Content"].AbsoluteCanvasSize.Y - Objects["Content"].AbsoluteWindowSize.Y) > 0)
                end)
            end
            --
            return Objects["Content"], SizeConnection, ContentSizeConnection
        end
        --
        function Library.Objects:List(Padding, Parent, Direction, Horizontal, Vertical)
            return Utility.General:Create("UIListLayout", {
                Padding = Padding,
                Parent = Parent,
                FillDirection = Direction,
                HorizontalAlignment = Horizontal,
                VerticalAlignment = Vertical
            })
        end
        --
        function Library.Objects:Stroke(StrokeMode, Color, JoinMode, Thickness, Transparency, Parent)
            return Utility.General:Create("UIStroke", {
                ApplyStrokeMode = StrokeMode,
                Color = Color,
                LineJoinMode = JoinMode,
                Thickness = Thickness,
                Transparency = Transparency,
                Parent = Parent
            })
        end
        --
        function Library.Objects:Padding(Parent, Bottom, Top, Left, Right)
            return Utility.General:Create("UIPadding", {
                Parent = Parent,
                PaddingBottom = Bottom,
                PaddingLeft = Left,
                PaddingRight = Right,
                PaddingTop = Top
            })
        end
        --
        function Library.Objects:Gradient(Color, Rotation, Transparency, Parent)
            return Utility.General:Create("UIGradient", {
                Color = (Color and ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
                    ColorSequenceKeypoint.new(1, Color)
                })),
                Rotation = Rotation,
                Transparency = (Transparency and NumberSequence.new({
                    NumberSequenceKeypoint.new(0, Transparency),
                    NumberSequenceKeypoint.new(1, Transparency)
                })),
                Parent = Parent
            })
        end
    end
    --
    do -- Functions
        do -- Main
            function Library:Create(Properties)
                local Properties = (Properties or {})
                local Window = {
                    Objects = {},
                    Content = {},
                    Opened = {
                        Dropdown = {},
                        Picker = {},
                        Bind = {},
                        BindMode = {}
                    },
                    Pages = {},
                    Holds = {},
                    Binds = {},
                    --
                    Inset = GuiService:GetGuiInset(),
                    State = true,
                    Init = false,
                    --
                    Self = (self.Content and self),
                    --
                    Stamp = (Utility.Table:Property(Properties, "Stamp", "Description") or ""),
                    Name = (Utility.Table:Property(Properties, "Name", "Text") or "Window"),
                    Size = (Utility.Table:Property(Properties, "Size") or Vector2.new(516, 560)),
                    Single = (Utility.Table:Property(Properties, "Combined", "Combine", "Single") or false)
                }
                --
                do -- Init
                    for Theme, Color in next, Utility.Presets.Themes.Celex do
                        Library.Themes[Theme] = Color
                    end
                end
                --
                do -- Objects
                    Window.Objects["Screen"] = (Window.Self and Window.Self.Objects["Screen_Outline"] or Utility.General:Create("ScreenGui", {
                        DisplayOrder = 9999,
                        Enabled = true,
                        IgnoreGuiInset = true,
                        Parent = Gui,
                        ResetOnSpawn = false
                    }))
                    --
                    Window.Objects["Screen_Outline"], Window.Objects["Screen_Frame"] = Library.Objects:Outline(nil, Window.Objects["Screen"], UDim2.new((Window.Self and 1 or 0), (Window.Self and 11 or 100), 0, (Window.Self and -1 or 100)), UDim2.new(0, Window.Size.X, 0, Window.Size.Y), "Dark Background")
                    --
                    do -- Top
                        local Frame_Top = Library.Objects:Holder(Vector2.new(0, 1), Window.Objects["Screen_Frame"], UDim2.new(0, 10, 0, 26), UDim2.new(1, -20, 0, 20))
                        --
                        Window.Objects["Text"] = Library.Objects:Text(nil, Frame_Top, nil, UDim2.new(1, 0, 1, -6), Window.Name, "Light Contrast")
                        Window.Objects["Stamp"] = Library.Objects:Text(nil, Frame_Top, nil, UDim2.new(1, 0, 1, -6), Window.Stamp, "Dark Text")
                        local Top_Gradient = Library.Objects:Holder(nil, Frame_Top, UDim2.new(0, 0, 0, 18), UDim2.new(1, 0, 0, 2))
                        --
                        local Gradient_Line1 = Library.Objects:Frame(nil, "Light Contrast", nil, nil, nil, 0, Top_Gradient, nil, UDim2.new(1, 0, 0, 2))
                        local Gradient_Line2 = Library.Objects:Frame(nil, "Outline", 0.45, nil, nil, 0, Top_Gradient, UDim2.new(0, 0, 0, 1), UDim2.new(1, 0, 0, 1))
                        --
                        if not Window.Self then
                            Window.Objects["Button"] = Library.Objects:Button(Frame_Top)
                        end
                    end
                    --
                    do -- Buttons
                        Window.Objects["Buttons"] = Library.Objects:Holder(Vector2.new(0, 1), Window.Objects["Screen_Frame"], UDim2.new(0, 10, 0, 61), UDim2.new(1, -21, 0, 30))
                        --
                        Library.Objects:List(UDim.new(0, -1), Window.Objects["Buttons"], "Horizontal", "Left", "Top")
                    end
                    --
                    do -- Outline
                        Window.Objects["Outline"], Window.Objects["Frame"] = Library.Objects:Outline(Vector2.new(0, 1), Window.Objects["Screen_Frame"], UDim2.new(0, 10, 1, -12), UDim2.new(1, -20, 1, -79), "Dark Background")
                    end
                end
                --
                do -- Functions
                    function Window:Initialise()
                        self.Objects["Stamp"].Position = UDim2.new(0, (self.Objects["Text"].TextBounds.X), 0, -1)
                        --
                        local Size = (1 / #self.Pages)
                        --
                        for Index, Value in next, self.Pages do
                            Value:Initialise(Size)
                        end
                        --
                        if not Window.Self then
                            Flags[Window]["Binds"]:Update()
                        end
                        --
                        self.Init = true
                    end
                    --
                    function Window:Update(Began)
                        if Window.Init then
                            for Bind, Value in next, Window.Binds do
                                local State = Bind.State
                                --
                                if #State > 0 then
                                    local BindInput = Enum[State[1]][State[2]]
                                    --
                                    if BindInput == self then
                                        Bind:Update(Began)
                                    end
                                end
                            end
                        end
                    end
                    --
                    function Window:Scroll(Content, Holder)
                        local ContentSize = Content.AbsoluteSize
                        --
                        if Content.AbsoluteCanvasSize.Y > ContentSize.Y then
                            local ContentPosition = (Content.AbsolutePosition + Vector2.new(0, 6))
                            local HolderPosition = Holder.AbsolutePosition
                            --
                            if HolderPosition.Y < ContentPosition.Y then
                                Content.CanvasPosition = Vector2.new(0, Content.CanvasPosition.Y + math.round((HolderPosition - ContentPosition).Y - 16))
                            else
                                local FullHolderPosition = (HolderPosition + Holder.AbsoluteSize)
                                local FullContentPosition = (ContentPosition + (ContentSize - Vector2.new(0, 12)))
                                --
                                if FullHolderPosition.Y > FullContentPosition.Y then
                                    Content.CanvasPosition = Vector2.new(0, Content.CanvasPosition.Y + math.round((FullHolderPosition - FullContentPosition).Y + 16))
                                end
                            end
                        end
                    end
                    --
                    function Window:Switch(State)
                        self.State = State
                        --
                        self.Objects["Screen_Outline"].Visible = self.State
                    end
                    --
                    do -- Reposition
                        if not Window.Self then
                            function Window:Reposition(Location)
                                local Size = Workspace.CurrentCamera.ViewportSize
                                --
                                self.Objects["Screen_Outline"].Position = UDim2.new(0, math.clamp((Location.X - self.Drag.X), 5, (Size.X - self.Size.X - 5)), 0, math.clamp((Location.Y - self.Drag.Y + self.Inset.Y), 5, (Size.Y - self.Size.Y - 5)))
                            end
                        end
                    end
                    --
                    do -- Content
                        do -- Functions
                            function Window:Close(Self, Type)
                                local Opened = false
                                --
                                for Index, Value in next, self.Opened do
                                    for Index2, Value2 in next, Value do
                                        if Index2 == Self and Index == Type then
                                            Opened = true
                                        else
                                            Value2:Close()
                                        end
                                    end
                                end
                                --
                                return Opened
                            end
                            --
                            function Window:Open(Content, Type)
                                local Opened = self:Close(Content, Type)
                                --
                                if not Opened then
                                    self.Content[Type](Content, Type)
                                end
                            end
                        end
                        --
                        function Window.Content.Dropdown(Self, Type)
                            local Content = {
                                Connections = {},
                                Objects = {},
                                Items = {},
                                --
                                Tick = tick()
                            }
                            --
                            do -- Init
                                Window:Scroll(Self.Section.Objects["Content"], Self.Objects["Holder"])
                            end
                            --
                            do -- Objects
                                local SelfPosition = (Self.Objects["Outline"].AbsolutePosition - Self.Section.Objects["Content"].AbsolutePosition)
                                local OutlinePosition = UDim2.new(0, SelfPosition.X, 0, math.round(SelfPosition.Y + Self.Objects["Outline"].AbsoluteSize.Y - 1))
                                --
                                Content.Objects["Outline"], Content.Objects["Frame"] = Library.Objects:Outline(nil, Self.Section.Objects["Open"], OutlinePosition, UDim2.new(0, Self.Objects["Outline"].AbsoluteSize.X, 0, (math.clamp(Self.Shown, 0, (Self.Shown > Utility.Table:Count(Self.Selected) and Utility.Table:Count(Self.Selected) or 999)) * 20) + 6), "Lighter Background", nil, nil, 2)
                                --
                                Content.Objects["Content"], Content.Connections["Size"], Content.Connections["ContentSize"] = Library.Objects:Scroll(Content.Objects["Frame"], false, nil, nil, nil, 3, 2)
                                -- 
                                do -- Options
                                    local State = Self:Get()
                                    --
                                    for Index, Value in next, Self.Selected do
                                        local Index, Value = (typeof(Value) == "table" and Value[1] or Index), (typeof(Value) == "table" and Value[2] or Value)
                                        --
                                        local Item = {
                                            Objects = {},
                                            --
                                            State = Utility.Table:State(State, Index)
                                        }
                                        --
                                        do -- Objects
                                            Item.Objects["Holder"] = Library.Objects:Holder(nil, Content.Objects["Content"], nil, UDim2.new(1, 0, 0, 20), nil, 2)
                                            --
                                            Item.Objects["Text"] = Library.Objects:Text(nil, Item.Objects["Holder"], UDim2.new(0, 8, 0, 0), UDim2.new(1, -14, 1, 0), Value, nil, nil, 2)
                                            --
                                            Item.Objects["Button"] = Library.Objects:Button(Item.Objects["Holder"], 2)
                                        end
                                        --
                                        do -- Functions
                                            function Item:Set(State)
                                                Item.State = State
                                                --
                                                Utility.General:Update(Item.Objects["Text"], {
                                                    Position = UDim2.new(0, (Item.State and 9 or 8), 0, 0),
                                                    Size = UDim2.new(1, -(Item.State and 16 or 14), 1, 0),
                                                    TextColor3 = (Item.State and "Dark Contrast" or "Light Text")
                                                })
                                            end
                                        end
                                        --
                                        do -- Connections
                                            Content.Connections[#Content.Connections + 1] = Utility.General:Connect(Item.Objects["Button"].MouseButton1Down, function()
                                                local State = Utility.Table:Modify(Self:Get(), Index, Self.Minimum, Self.Maximum)
                                                --
                                                Self:Set(State)
                                                --
                                                if typeof(State) == "table" then
                                                    for Index2, Value2 in next, Content.Items do
                                                        Content.Items[Index2]:Set(State[Index2] == true)
                                                    end
                                                else
                                                    for Index2, Value2 in next, Content.Items do
                                                        if (Index2 == State) then
                                                            Value2:Set(true)
                                                        elseif Value2.State then
                                                            Value2:Set(false)
                                                        end
                                                    end
                                                end
                                            end)
                                        end
                                        --
                                        do -- Setup
                                            if Item.State then
                                                Item:Set(true)
                                            end
                                            --
                                            Content.Items[Index] = Item
                                        end
                                    end
                                end
                            end
                            --
                            do -- Functions
                                function Content:Close()
                                    for Index, Value in next, Content.Connections do
                                        Value:Disconnect()
                                    end
                                    --
                                    if Content.Objects["Outline"] then Content.Objects["Outline"]:Remove() end
                                    --
                                    Self.Objects["Arrow"].Rotation = 0
                                    --
                                    Content.Connections = nil
                                    Content.Objects = nil
                                    --
                                    for Index, Value in next, Content.Items do
                                        Value.Objects = nil
                                        Value.State = nil
                                        --
                                        Value = nil
                                    end
                                    --
                                    Content.Items = nil
                                    Content.Init = nil
                                    Content.Tick = nil
                                    --
                                    Content = nil
                                    --
                                    Window.Opened[Type][Self] = nil
                                end
                                --
                                function Content:Input(Mouse)
                                    if Content.Init or ((tick() - Content.Tick) >= 0.05) then
                                        local Location = (Utility.General:Location() - Window.Inset)
                                        --
                                        local ContentPosition = Content.Objects["Content"].AbsolutePosition
                                        local ContentSize = Content.Objects["Content"].AbsoluteSize
                                        --
                                        if not Utility.Math:Over(Location, ContentPosition, ContentSize) then
                                            local Extra = Self.Objects["Extra"]
                                            --
                                            if Mouse and Extra then
                                                local ExtraPosition = Extra.AbsolutePosition
                                                local ExtraSize = Extra.AbsoluteSize
                                                --
                                                if not Utility.Math:Over(Location, ExtraPosition, ExtraSize) then
                                                    Content:Close()
                                                end
                                            else
                                                Content:Close()
                                            end
                                        end
                                    end
                                    --
                                    if Content then Content.Init = true end
                                end
                            end
                            --
                            do -- Connections
                                Content.Connections[#Content.Connections + 1] = Utility.General:Connect(UserInputService.InputBegan, function(Input)
                                    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                                        Content:Input(true)
                                    end
                                end)
                                --
                                Content.Connections[#Content.Connections + 1] = Utility.General:Connect(UserInputService.InputChanged, function(Input)
                                    if Input.UserInputType == Enum.UserInputType.MouseWheel then
                                        Content:Input()
                                    end
                                end)
                            end
                            --
                            do -- Setup
                                Self.Objects["Arrow"].Rotation = 180
                                --
                                Window.Opened[Type][Self] = Content
                            end
                        end
                        --
                        function Window.Content.Picker(Self, Type)
                            local Content = {
                                Connections = {},
                                Objects = {},
                                Buttons = {},
                                Items = {},
                                --
                                Tick = tick()
                            }
                            --
                            do -- Init
                                Window:Scroll(Self.Section.Objects["Content"], Self.Objects["Holder"])
                            end
                            --
                            do -- Objects
                                local SelfPosition = (Self.Objects["Outline"].AbsolutePosition - Self.Section.Objects["Content"].AbsolutePosition)
                                local OutlinePosition = UDim2.new(0, SelfPosition.X, 0, math.round(SelfPosition.Y + Self.Objects["Outline"].AbsoluteSize.Y + 4))
                                local OutlineSize = Vector2.new((Self.Alpha and 200 or (200 - 16)), 165)
                                --
                                Content.Objects["Outline"], Content.Objects["Frame"] = Library.Objects:Outline(nil, Self.Section.Objects["Open"], OutlinePosition, UDim2.new(0, OutlineSize.X, 0, OutlineSize.Y), "Lighter Background", nil, nil, 2)
                                --
                                local SaturationSize = (OutlineSize.X - 14 - ((13 + 3) * (Self.Alpha and 2 or 1)))
                                --
                                for Index, Value in next, {"Saturation", "Hue", (Self.Alpha and "Alpha")} do
                                    local BoxPosition = UDim2.new(0, (Value == "Saturation" and 5 or Value == "Hue" and (SaturationSize + 5 + 3) or (SaturationSize + 5 + 13 + 6)), 0, 5)
                                    local BoxSize = UDim2.new(0, (Value == "Saturation" and SaturationSize or 13), 0, (OutlineSize.Y - 14))
                                    --
                                    Content.Objects[Value .. "_Outline"] = Library.Objects:Outline(nil, Content.Objects["Frame"], BoxPosition, BoxSize, nil, Color3.fromHSV(Self.State[1], (Value == "Alpha" and Self.State[2] or 1), 1), nil, 2)
                                    --
                                    Content.Objects[Value .. "_Image"] = Utility.General:Create("ImageLabel", {
                                        BackgroundTransparency = 1,
                                        BorderSizePixel = 0,
                                        Parent = Content.Objects[Value .. "_Outline"],
                                        Position = UDim2.new(0, 0, 0, 0),
                                        Size = UDim2.new(1, 0, 1, 0),
                                        Image = Library.Images[Value],
                                        ZIndex = 2
                                    })
                                    --
                                    Content.Objects[Value .. "_Cursor"] = Library.Objects:Frame(Vector2.new((Value == "Saturation" and 0.5 or 0), 0.5), "Outline", nil, nil, nil, 0, Content.Objects[Value .. "_Image"], nil, (Value == "Saturation" and UDim2.new(0, 4, 0, 4) or UDim2.new(1, 2, 0, 4)), nil, 2)
                                    Content.Objects[Value .. "_Cursor2"] = Library.Objects:Frame(nil, nil, nil, nil, nil, 0, Content.Objects[Value .. "_Cursor"], UDim2.new(0, 1, 0, 1), UDim2.new(1, -2, 1, -2), nil, 2)
                                    --
                                    Content.Buttons[Value] = Library.Objects:Button(Content.Objects[Value .. "_Outline"], 2)
                                end
                            end
                            --
                            do -- Functions
                                function Content:Close()
                                    for Index, Value in next, Content.Connections do
                                        Value:Disconnect()
                                    end
                                    --
                                    if Content.Objects["Outline"] then Content.Objects["Outline"]:Remove() end
                                    --
                                    Content.Connections = nil
                                    Content.Objects = nil
                                    Content.Buttons = nil
                                    Content.Items = nil
                                    --
                                    Content.Init = nil
                                    Content.Tick = nil
                                    --
                                    Content = nil
                                    --
                                    Window.Opened[Type][Self] = nil
                                end
                                --
                                function Content:Update(Type)
                                    local Size = Content.Objects[(Type == "Saturation" and "Saturation_Image" or Type == "Hue" and "Hue_Image" or Type == "Alpha" and "Alpha_Image")].AbsoluteSize
                                    --
                                    if Type == "Saturation" then
                                        Content.Objects["Saturation_Cursor"].Position = UDim2.new(0, math.clamp((Self.State[2] * Size.X), 1, Size.X - 1), 0, math.clamp(((1 - Self.State[3]) * Size.Y), 1, Size.Y - 1))
                                        Content.Objects["Saturation_Cursor2"].BackgroundColor3 = Color3.fromHSV(Self.State[1], Self.State[2], 1)
                                    elseif Type == "Hue" then
                                        Content.Objects["Hue_Cursor"].Position = UDim2.new(0, -1, 0, math.clamp((Self.State[1] * Size.Y), 1, Size.Y - 1))
                                        --
                                        Content.Objects["Saturation_Outline"].BackgroundColor3 = Color3.fromHSV(Self.State[1], 1, 1)
                                        Content.Objects["Hue_Cursor2"].BackgroundColor3 = Color3.fromHSV(Self.State[1], 1, 1)
                                        Content.Objects["Saturation_Cursor2"].BackgroundColor3 = Color3.fromHSV(Self.State[1], Self.State[2], 1)
                                    elseif Type == "Alpha" then
                                        Content.Objects["Alpha_Cursor"].Position = UDim2.new(0, -1, 0, math.clamp((Self.State[4] * Size.Y), 1, Size.Y - 1))
                                    end
                                    --
                                    if Content.Objects["Alpha_Outline"] then
                                        Content.Objects["Alpha_Cursor2"].BackgroundColor3 = Color3.fromHSV(Self.State[1], Self.State[2], (1 - Self.State[4]))
                                        Content.Objects["Alpha_Outline"].BackgroundColor3 = Color3.fromHSV(Self.State[1], Self.State[2], 1)
                                    end
                                end
                                --
                                function Content:Refresh()
                                    local Location = Utility.General:Location()
                                    --
                                    if Content.Saturation then
                                        Self.State[2] = (Utility.Math:Value(Location.X, Content.Objects["Saturation_Image"].AbsolutePosition.X + Window.Inset.X, Content.Objects["Saturation_Image"].AbsoluteSize.X))
                                        Self.State[3] = (1 - Utility.Math:Value(Location.Y, Content.Objects["Saturation_Image"].AbsolutePosition.Y + Window.Inset.Y, Content.Objects["Saturation_Image"].AbsoluteSize.Y))
                                        --
                                        Content:Update("Saturation")
                                        --
                                        Self:Set(Self.State)
                                    elseif Content.Hue then
                                        Self.State[1] = (Utility.Math:Value(Location.Y, Content.Objects["Hue_Image"].AbsolutePosition.Y + Window.Inset.Y, Content.Objects["Hue_Image"].AbsoluteSize.Y))
                                        --
                                        Content:Update("Hue")
                                        --
                                        Self:Set(Self.State)
                                    elseif Content.Alpha then
                                        Self.State[4] = (Utility.Math:Value(Location.Y, Content.Objects["Alpha_Image"].AbsolutePosition.Y + Window.Inset.Y, Content.Objects["Alpha_Image"].AbsoluteSize.Y))
                                        --
                                        Content:Update("Alpha")
                                        --
                                        Self:Set(Self.State)
                                    end
                                end
                                --
                                function Content:Input(Mouse)
                                    if Content.Init or ((tick() - Content.Tick) >= 0.05) then
                                        local Location = (Utility.General:Location() - Window.Inset)
                                        --
                                        for Index, Value in next, Content.Buttons do
                                            local ButtonPosition = Value.AbsolutePosition
                                            local ButtonSize = Value.AbsoluteSize
                                            --
                                            if Utility.Math:Over(Location, ButtonPosition, ButtonSize) then
                                                return
                                            end
                                        end
                                        --
                                        Content:Close()
                                    end
                                    --
                                    if Content then Content.Init = true end
                                end
                            end
                            --
                            do -- Connections
                                for Index, Value in next, Content.Buttons do
                                    Content.Connections[#Content.Connections + 1] = Utility.General:Connect(Value.MouseButton1Down, function(Input)
                                        Content[Index] = true
                                        --
                                        Window.Holds[Content] = Index
                                        --
                                        Content:Refresh()
                                    end)
                                end
                                --
                                Content.Connections[#Content.Connections + 1] = Utility.General:Connect(UserInputService.InputBegan, function(Input)
                                    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                                        Content:Input(true)
                                    end
                                end)
                                --
                                Content.Connections[#Content.Connections + 1] = Utility.General:Connect(UserInputService.InputChanged, function(Input)
                                    if Input.UserInputType == Enum.UserInputType.MouseWheel then
                                        Content:Close()
                                    end
                                end)
                            end
                            --
                            do -- Setup
                                Content:Update("Saturation")
                                Content:Update("Hue")
                                if Self.Alpha then Content:Update("Alpha") end
                                --
                                Window.Opened[Type][Self] = Content
                            end
                        end
                        --
                        function Window.Content.Bind(Self, Type)
                            local Content = {
                                Connections = {},
                                --
                                Tick = tick()
                            }
                            --
                            do -- Functions
                                function Content:Close()
                                    for Index, Value in next, Content.Connections do
                                        Value:Disconnect()
                                    end
                                    --
                                    Content.Connections = nil
                                    --
                                    Content = nil
                                    --
                                    Utility.General:Update(Self.Objects["Value"], {
                                        TextColor3 = "Darker Text"
                                    })
                                    --
                                    Window.Opened[Type][Self] = nil
                                end
                                --
                                function Content:Input(Input)
                                    if ((tick() - Content.Tick) >= 0.05) then
                                        local Key = (Input.KeyCode.Name ~= "Unknown" and Input.KeyCode or Input.UserInputType)
										--
										if Key then
											if Key.Name == "Backspace" or Key.Name == "Escape" then
												Content:Close()
											elseif Utility.Inputs.KeyCodes[Key.Name] then
												Self:Set(Key)
												--
												Content:Close()
											end
										end
                                    end
                                end
                            end
                            --
                            do -- Connections
                                Content.Connections[#Content.Connections + 1] = Utility.General:Connect(UserInputService.InputBegan, function(Input)
                                    Content:Input(Input)
                                end)
                            end
                            --
                            do -- Setup
                                Self:Set()
                                --
                                Utility.General:Update(Self.Objects["Value"], {
                                    TextColor3 = "Dark Contrast"
                                })
                                --
                                Window.Opened[Type][Self] = Content
                            end
                        end
                        --
                        function Window.Content.BindMode(Self, Type)
                            local Content = {
                                Connections = {},
                                Objects = {},
                                Items = {},
                                --
                                Tick = tick()
                            }
                            --
                            do -- Init
                                Window:Scroll(Self.Section.Objects["Content"], Self.Objects["Holder"])
                            end
                            --
                            do -- Objects
                                local SelfPosition = (Self.Objects["Holder"].AbsolutePosition - Self.Section.Objects["Content"].AbsolutePosition)
                                local OutlinePosition = UDim2.new(0, (SelfPosition.X + 1), 0, math.round(SelfPosition.Y + Self.Objects["Holder"].AbsoluteSize.Y + 2))
                                --
                                Content.Objects["Outline"], Content.Objects["Frame"] = Library.Objects:Outline(nil, Self.Section.Objects["Open"], OutlinePosition, UDim2.new(0, 86, 0, ((#Utility.Inputs.Modes * 16) + 6)), "Lighter Background", nil, nil, 2)
                                --
                                Content.Objects["List"] = Library.Objects:List(nil, Content.Objects["Frame"], nil, nil, nil)
                                Content.Objects["Padding"] = Library.Objects:Padding(Content.Objects["List"], UDim.new(0, 2), UDim.new(0, 2))
                                --
                                do -- Options
                                    for Index, Value in next, Utility.Inputs.Modes do
                                        local Item = {
                                            Objects = {},
                                            --
                                            State = (Self.Mode == Value)
                                        }
                                        --
                                        do -- Objects
                                            Item.Objects["Holder"] = Library.Objects:Holder(nil, Content.Objects["Frame"], nil, UDim2.new(1, 0, 0, 16), nil, 2)
                                            --
                                            Item.Objects["Text"] = Library.Objects:Text(nil, Item.Objects["Holder"], UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), Value, nil, "Center", 2)
                                            --
                                            Item.Objects["Button"] = Library.Objects:Button(Item.Objects["Holder"], 2)
                                        end
                                        --
                                        do -- Functions
                                            function Item:Set(State)
                                                Item.State = State
                                                --
                                                Utility.General:Update(Item.Objects["Text"], {
                                                    TextColor3 = (Item.State and "Dark Contrast" or "Light Text")
                                                })
                                            end
                                        end
                                        --
                                        do -- Connections
                                            Content.Connections[#Content.Connections + 1] = Utility.General:Connect(Item.Objects["Button"].MouseButton1Down, function()
                                                if not Item.State then
                                                    Self:Adjust(Value)
                                                    --
                                                    for Index2, Value2 in next, Content.Items do
                                                        Value2:Set(Value2 == Item)
                                                    end
                                                end
                                            end)
                                        end
                                        --
                                        do -- Setup
                                            if Item.State then
                                                Item:Set(true)
                                            end
                                            --
                                            Content.Items[Index] = Item
                                        end
                                    end
                                end
                            end
                            --
                            do -- Functions
                                function Content:Close()
                                    for Index, Value in next, Content.Connections do
                                        Value:Disconnect()
                                    end
                                    --
                                    if Content.Objects["Outline"] then Content.Objects["Outline"]:Remove() end
                                    --
                                    Content.Connections = nil
                                    Content.Objects = nil
                                    --
                                    Content.Items = nil
                                    Content.Init = nil
                                    Content.Tick = nil
                                    --
                                    Content = nil
                                    --
                                    Window.Opened[Type][Self] = nil
                                end
                                --
                                function Content:Input()
                                    if Content.Init or ((tick() - Content.Tick) >= 0.05) then
                                        local Location = (Utility.General:Location() - Window.Inset)
                                        --
                                        local ContentPosition = (Content.Objects["Frame"].AbsolutePosition + Vector2.new(0, 2))
                                        local ContentSize = (Content.Objects["Frame"].AbsoluteSize - Vector2.new(0, 4))
                                        --
                                        if not Utility.Math:Over(Location, ContentPosition, ContentSize) then
                                            Content:Close()
                                        end
                                    end
                                    --
                                    if Content then Content.Init = true end
                                end
                            end
                            --
                            do -- Connections
                                Content.Connections[#Content.Connections + 1] = Utility.General:Connect(UserInputService.InputBegan, function(Input)
                                    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                                        Content:Input(true)
                                    end
                                end)
                                --
                                Content.Connections[#Content.Connections + 1] = Utility.General:Connect(UserInputService.InputChanged, function(Input)
                                    if Input.UserInputType == Enum.UserInputType.MouseWheel then
                                        Content:Close()
                                    end
                                end)
                            end
                            --
                            do -- Setup
                                Window.Opened[Type][Self] = Content
                            end
                        end
                    end
                end
                --
                do -- Connections
                    if not Window.Self then
                        Utility.General:Connect(Window.Objects["Button"].MouseButton1Down, function()
                            local Location = Utility.General:Location()
                            local Position = Window.Objects["Screen_Outline"].AbsolutePosition
                            --
                            Window.Drag = (Location - Position)
                            --
                            Window:Reposition(Location)
                        end)
                    end
                    --
                    Utility.General:Connect(UserInputService.InputBegan, function(Input)
                        Utility.General:Thread(Window.Update, (Input.KeyCode.Name ~= "Unknown" and Input.KeyCode or Input.UserInputType), true)
                    end)
                    --
                    Utility.General:Connect(UserInputService.InputEnded, function(Input)
                        if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                            for Index, Value in next, Window.Holds do
                                Index[Value] = nil
                                --
                                Window.Holds[Index] = nil
                            end
                        end
                        --
                        if Window.Drag and Input.UserInputType == Enum.UserInputType.MouseButton1 then
                            Window.Drag = nil
                        end
                        --
                        Utility.General:Thread(Window.Update, (Input.KeyCode.Name ~= "Unknown" and Input.KeyCode or Input.UserInputType))
                    end)
                    --
                    Utility.General:Connect(UserInputService.InputChanged, function(Input)
                        if Window.Drag then
                            Window:Reposition(Utility.General:Location())
                        end
                        --
                        for Index, Value in next, Window.Holds do
                            Index:Refresh()
                        end
                    end)
                end
                --
                do -- Setup
                    Flags[Window] = {}
                    --
                    Library.Binds(Window)
                    --
                    return setmetatable(Window, {
                        __index = Library
                    })
                end
            end
            --
            function Library:Watermark(Properties)
                local Properties = (Properties or {})
                local Watermark = {
                    Objects = {},
                    --
                    State = true,
                    Position = 1,
                    Top = true,
                    --
                    Tick = tick(),
                    --
                    Window = self,
                    --
                    Refresh = (Utility.Table:Property(Properties, "RefreshRate", "Refresh", "Rate", "Tick") or 10),
                    Callback = (Utility.Table:Property(Properties, "Callback", "Function", "Func", "Update"))
                }
                --
                do -- Objects
                    Watermark.Objects["Outline"], Watermark.Objects["Frame"] = Library.Objects:Outline(Vector2.new(1, 0), Watermark.Window.Objects["Screen"], UDim2.new(1, -(54 + 8), 0, 8), UDim2.new(0, 200, 0, 25), "Light Background", "Dark Inline", nil, 1000)
                    --
                    Watermark.Objects["Gradient"] = Library.Objects:Holder(nil, Watermark.Objects["Frame"], UDim2.new(0, 1, 0, 1), UDim2.new(1, -2, 0, 2))
                    --
                    Watermark.Objects["Gradient_Line1"] = Library.Objects:Frame(nil, "Light Contrast", nil, nil, nil, 0, Watermark.Objects["Gradient"], nil, UDim2.new(1, 0, 0, 2), nil, 1000)
                    Watermark.Objects["Gradient_Line2"] = Library.Objects:Frame(nil, "Outline", 0.45, nil, nil, 0, Watermark.Objects["Gradient"], UDim2.new(0, 0, 0, 1), UDim2.new(1, 0, 0, 1), nil, 1000)
                    --
                    Watermark.Objects["Text_Outline"] = Library.Objects:Text(Vector2.new(0, 0.5), Watermark.Objects["Frame"], UDim2.new(0, 1, 0.5, 2), UDim2.new(1, 0, 1, -6), "", "Outline", "Center", 1000)
                    Watermark.Objects["Text"] = Library.Objects:Text(nil, Watermark.Objects["Text_Outline"], UDim2.new(0, -1, 0, -1), UDim2.new(1, 0, 1, 0), "", "Light Text", "Center", 1000)
                end
                --
                do -- Functions
                    function Watermark:Update()
                        local Passed, Statement = Utility.General:Call(Watermark.Callback)
                        --
                        if Passed and Statement then
                            Watermark.Objects["Outline"].Visible = true
                            --
                            Watermark.Objects["Text_Outline"].Text = Statement
                            Watermark.Objects["Text"].Text = Statement
                            --
                            Watermark.Objects["Outline"].Size = UDim2.new(0, (Watermark.Objects["Text_Outline"].TextBounds.X + 14), 0, 25)
                        else
                            Watermark.Objects["Outline"].Visible = false
                        end
                    end
                    --
                    function Watermark:Set(State)
                        Watermark.State = (typeof(State) == nil and Watermark.State or State)
                        --
                        Watermark.Objects["Outline"].Visible = Watermark.State
                    end
                    --
                    function Watermark:Position(State)
                        Watermark.SetPosition = (typeof(State) == nil and Watermark.SetPosition or State)
                        --
                        Watermark.Objects["Outline"].AnchorPoint = Vector2.new(
                            (Watermark.SetPosition == 1 and 1 or Watermark.SetPosition == 3 and 1 or Watermark.SetPosition == 5 and 1 or Watermark.SetPosition == 7 and 0.5 or Watermark.SetPosition == 8 and 0.5 or 0),
                            (Watermark.SetPosition == 3 and 1 or Watermark.SetPosition == 4 and 1 or Watermark.SetPosition == 5 and 0.5 or Watermark.SetPosition == 6 and 0.5 or Watermark.SetPosition == 8 and 1 or 0)
                        )
                        --
                        Watermark.Objects["Outline"].Position = UDim2.new(
                            (Watermark.SetPosition == 1 and 1 or Watermark.SetPosition == 3 and 1 or Watermark.SetPosition == 5 and 1 or Watermark.SetPosition == 7 and 0.5 or Watermark.SetPosition == 8 and 0.5 or 0),
                            (Watermark.SetPosition == 1 and -(54 + 8) or Watermark.SetPosition == 3 and -8 or Watermark.SetPosition == 5 and -8 or Watermark.SetPosition == 7 and 0 or Watermark.SetPosition == 8 and 0 or 8),
                            (Watermark.SetPosition == 3 and 1 or Watermark.SetPosition == 4 and 1 or Watermark.SetPosition == 5 and 0.5 or Watermark.SetPosition == 6 and 0.5 or Watermark.SetPosition == 8 and 1 or 0),
                            (Watermark.SetPosition == 3 and -8 or Watermark.SetPosition == 4 and -8 or Watermark.SetPosition == 5 and 0 or Watermark.SetPosition == 6 and 0 or Watermark.SetPosition == 8 and -8 or 8)
                        )
                    end
                    --
                    function Watermark:Gradient(State)
                        Watermark.Top = State
                        --
                        Watermark.Objects["Text_Outline"].Position = UDim2.new(0, 1, 0.5, (Watermark.Top and 2 or 0))
                        Watermark.Objects["Gradient"].Position = UDim2.new(0, 1, 0, (Watermark.Top and 1 or 18))
                        Watermark.Objects["Gradient_Line2"].Position = UDim2.new(0, 0, 0, (Watermark.Top and 1 or 0))
                    end
                end
                --
                do -- Connections
                    Utility.General:Connect(RunService.RenderStepped, function()
                        if Watermark.State then
                            local Tick = tick()
                            --
                            if (((Tick - Watermark.Tick) * 1000) >= Watermark.Refresh) then
                                Watermark:Update()
                                --
                                Watermark.Tick = Tick
                            end
                        end
                    end)
                end
                --
                do -- Setup
                    Flags[Watermark.Window]["Watermark"] = Watermark
                    --
                    Watermark:Update()
                    --
                    return Watermark
                end
            end
            --
            function Library:Binds()
                local Binds = {
                    Objects = {},
                    Items = {},
                    --
                    Refresh = 5,
                    State = true,
                    --
                    Tick = tick(),
                    --
                    Window = self
                }
                --
                do -- Objects
                    Binds.Objects["Outline"], Binds.Objects["Frame"] = Library.Objects:Outline(Vector2.new(0, 0.5), Binds.Window.Objects["Screen"], UDim2.new(0, 8, 0.5, 0), UDim2.new(0, 175, 0, 200), "Light Background", "Dark Inline", nil, 1000)
                    --
                    Binds.Objects["Gradient"] = Library.Objects:Holder(nil, Binds.Objects["Frame"], UDim2.new(0, 1, 0, 1), UDim2.new(1, -2, 0, 2))
                    --
                    Binds.Objects["Gradient_Line1"] = Library.Objects:Frame(nil, "Light Contrast", nil, nil, nil, 0, Binds.Objects["Gradient"], nil, UDim2.new(1, 0, 0, 2), nil, 1000)
                    Binds.Objects["Gradient_Line2"] = Library.Objects:Frame(nil, "Outline", 0.45, nil, nil, 0, Binds.Objects["Gradient"], UDim2.new(0, 0, 0, 1), UDim2.new(1, 0, 0, 1), nil, 1000)
                    --
                    Binds.Objects["Text_Outline"] = Library.Objects:Text(Vector2.new(0, 0), Binds.Objects["Frame"], UDim2.new(0, 1, 0, 5), UDim2.new(1, 0, 0, 15), "", "Outline", "Center", 1000)
                    Binds.Objects["Text"] = Library.Objects:Text(nil, Binds.Objects["Text_Outline"], UDim2.new(0, -1, 0, -1), UDim2.new(1, 0, 1, 0), "Binds", "Light Text", "Center", 1000)
                    --
                    Binds.Objects["Holder_Outline"], Binds.Objects["Holder_Frame"] = Library.Objects:Outline(nil, Binds.Objects["Frame"], UDim2.new(0, 2, 0, 22), UDim2.new(1, -4, 1, -24), "Lighter Background", nil, nil, 1000)
                    --
                    Binds.Objects["Holder"] = Library.Objects:Holder(nil, Binds.Objects["Holder_Frame"], UDim2.new(0, 4, 0, 2), UDim2.new(1, -8, 1, -4))
                    --
                    Library.Objects:List(nil, Binds.Objects["Holder"], nil, nil, nil)
                end
                --
                do -- Functions
                    function Binds:Insert(Content)
                        local Item = {
                            Objects = {},
                            --
                            Active = false
                        }
                        --
                        do -- Objects
                            Item.Objects["Holder"] = Library.Objects:Holder(nil, Binds.Objects["Holder"], UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 0, 17), false)
                            --
                            Item.Objects["Name"] = Library.Objects:Text(nil, Item.Objects["Holder"], UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), Content.Name, "Light Text", nil, 1000)
                            Item.Objects["State"] = Library.Objects:Text(nil, Item.Objects["Holder"], UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), "", "Light Text", "Right", 1000)
                        end
                        --
                        do -- Functions
                            function Item:Update()
                                self.Active = (typeof(Content.Short) == "string")
                                --
                                if Content.Short then
                                    self.Objects["Holder"].Visible = true
                                    --
                                    self.Objects["State"].Text = ("[ %s : %s ]"):format(Content.Short, (Content.Active and "Y" or "N"))
                                else
                                    self.Objects["Holder"].Visible = false
                                end
                                --
                                Binds:Update()
                            end
                        end
                        --
                        do -- Setup
                            Binds.Items[#Binds.Items + 1] = Item
                            --
                            return Item
                        end
                    end
                    --
                    function Binds:Update()
                        local Count = 0
                        --
                        for Index, Item in next, self.Items do
                            if Item.Active then
                                Count += 1
                            end
                        end
                        --
                        Binds.Objects["Outline"].Size = UDim2.new(0, 175, 0, ((Count * 18) + 28 + 5))
                    end
                end
                --
                do -- Setup
                    Flags[Binds.Window]["Binds"] = Binds
                    --
                    return Binds
                end
            end
            --
            function Library:Page(Properties)
                local Properties = (Properties or {})
                local Page = {
                    Objects = {},
                    Sections = {
                        left = {},
                        right = (not self.Single and {} or nil)
                    },
                    --
                    State = false,
                    --
                    Window = self,
                    --
                    Name = (Utility.Table:Property(Properties, "Name", "Text") or "Page"),
                }
                --
                do -- Objects
                    Page.Objects["Outline"], Page.Objects["Outline_Frame"] = Library.Objects:Outline(nil, Page.Window.Objects["Buttons"], nil, UDim2.new(0, 1, 1, 0), "Dark Inline", "Dark Inline")
                    --
                    Page.Objects["Gradient"] = Library.Objects:Gradient(Color3.fromRGB(0, 0, 0), 90, 0.4, Page.Objects["Outline_Frame"])
                    Page.Objects["Text"] = Library.Objects:Text(nil, Page.Objects["Outline_Frame"], nil, UDim2.new(1, 0, 1, 0), Page.Name, "Dark Text", "Center")
                    --
                    Page.Objects["Frame"] = Library.Objects:Holder(nil, Page.Window.Objects["Frame"], UDim2.new(0, 14, 0, 14), UDim2.new(1, -28, 1, -28), false)
                    --
                    Page.Objects["left"] = Library.Objects:Holder(nil, Page.Objects["Frame"], UDim2.new(0, 0, 0, 0), (Page.Window.Single and UDim2.new(1,0, 1, 0) or UDim2.new(0.5, -6, 1, 0)))
                    --
                    if not Page.Window.Single then
                        Page.Objects["right"] = Library.Objects:Holder(Vector2.new(1, 0), Page.Objects["Frame"], UDim2.new(1, 0, 0, 0), UDim2.new(0.5, -6, 1, 0))
                    end
                    --
                    Library.Objects:List(UDim.new(0, 14), Page.Objects["left"], "Vertical", "Left", "Top")
                    Library.Objects:List(UDim.new(0, 14), Page.Objects["right"], "Vertical", "Left", "Top")
                    --
                    Page.Objects["Button"] = Library.Objects:Button(Page.Objects["Outline"])
                end
                --
                do -- Functions
                    function Page:Initialise(Size)
                        Page.Objects["Outline"].Size = UDim2.new(Size, 1, 1, 0)
                        --
                        local Totals = {}
                        --
                        for Index, Value in next, Page.Sections do
                            Totals[Index] = {
                                Total = 0, 
                                Objects = {}
                            }
                            --
                            for Index2, Value2 in next, Value do
                                if Value2.Size then
                                    Totals[Index].Total = (Totals[Index].Total + Value2.Size)
                                else
                                    Totals[Index].Objects[#Totals[Index].Objects + 1] = Value2
                                end
                            end
                        end
                        --
                        for Index, Value in next, Totals do
                            if #Value.Objects > 0 then
                                for Index2, Value2 in next, Value.Objects do
                                    Value2.Size = ((100 - Value.Total) / #Value.Objects)
                                end
                            end
                        end
                        --
                        for Index, Value in next, Page.Sections do
                            local Frame = Page.Objects[Index]
                            local Total, Size = 0, (Frame.AbsoluteSize.Y - ((#Value - 1) * 14))
                            --
                            for Index2, Value2 in next, Value do
                                local Size2 = math.floor(Size * (Value2.Size / 100))
                                --
                                Total = (Total + Size2)
                                --
                                Value2:Initialise(Size2)
                            end
                        end
                    end
                    --  
                    function Page:Set(State)
                        Page.State = State
                        --
                        Utility.General:Update(Page.Objects["Gradient"], {Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, (Page.State and 0.6 or 0.4)), NumberSequenceKeypoint.new(1, (Page.State and 0.6 or 0.4))})})
                        Utility.General:Update(Page.Objects["Text"], {TextColor3 = (Page.State and "Light Contrast" or "Dark Text")})
                        Utility.General:Update(Page.Objects["Frame"], {Visible = Page.State})
                    end
                end
                --
                do -- Connections
                    Utility.General:Connect(Page.Objects["Button"].MouseEnter, function()
                        local Transparency = ((Page.State and 0.6 or 0.4) - 0.1)
                        --
                        Page.Objects["Gradient"].Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, Transparency),
                            NumberSequenceKeypoint.new(1, Transparency)
                        })
                    end)
                    --
                    Utility.General:Connect(Page.Objects["Button"].MouseLeave, function()
                        local Transparency = (Page.State and 0.6 or 0.4)
                        --
                        Page.Objects["Gradient"].Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, Transparency),
                            NumberSequenceKeypoint.new(1, Transparency)
                        })
                    end)
                    --
                    Utility.General:Connect(Page.Objects["Button"].MouseButton1Down, function()
                        if not Page.State then
                            Page:Set(true)
                            --
                            for Index, Value in next, Page.Window.Pages do
                                if Value ~= Page and Value.State then
                                    Value:Set(false)
                                end
                            end
                        end
                    end)
                end
                --
                do -- Setup
                    Page.Window.Pages[#Page.Window.Pages + 1] = Page
                    --
                    return setmetatable(Page, {
                        __index = Library.Pages
                    })
                end
            end
            --
            function Library.Pages:Section(Properties)
                local Properties = (Properties or {})
                local Section = {
                    Objects = {},
                    Content = {},
                    --
                    Window = self.Window,
                    Page = self,
                    --
                    Name = (Utility.Table:Property(Properties, "Name", "Text") or "Section"),
                    Size = (Utility.Table:Property(Properties, "Size", "Height", "Percent")),
                    Side = (Utility.Table:Property(Properties, "Side", "Direction", "Dir") or "Left"):lower(),
                }
                --
                do -- Objects
                    Section.Objects["Frame"] = Library.Objects:Outline(nil, Section.Page.Objects[Section.Side], nil, UDim2.new(1, 0, 0, 250), nil, "Light Background", "Light Inline")
                    --
                    Section.Objects["Content"] = Library.Objects:Scroll(Section.Objects["Frame"], true, UDim.new(0, 0), UDim.new(0, 11), UDim.new(0, 11))
                    Section.Objects["Line"] = Library.Objects:Frame(nil, "Light Background", nil, nil, nil, 0, Section.Objects["Frame"], UDim2.new(0, 9, 0, -2), UDim2.new(0, 0, 0, 2))
                    Section.Objects["Text"] = Library.Objects:Text(Vector2.new(0, 0.5), Section.Objects["Frame"], UDim2.new(0, 12, 0, 0), UDim2.new(1, -20, 0, 20), Section.Name, "Lighter Text")
                    Section.Objects["Open"] = Library.Objects:Holder(nil, Section.Objects["Frame"], UDim2.new(0, 0, 0, 1), UDim2.new(1, 0, 1, -2), nil)
                end
                --
                do -- Functions
                    function Section:Initialise(Size)
                        Section.Objects["Frame"].Size = UDim2.new(1, 0, 0, Size)
                        Section.Objects["Line"].Size = UDim2.new(0, (Section.Objects["Text"].TextBounds.X + 6), 0, 2)
                        --
                        for Content, Value in next, Section.Content do
                            if not Content.NoCallback then
                                Utility.General:Call(Content.Set, Content, Content.State, Content.Alpha)
                            end
                        end
                    end
                end
                --
                do -- Setup
                    Section.Page.Sections[Section.Side][#Section.Page.Sections[Section.Side] + 1] = Section
                    --
                    return setmetatable(Section, {
                        __index = Library.Sections
                    })
                end
            end
        end
        --
        do -- Content
            function Library.Sections:Holder(Properties)
                local Properties = (Properties or {})
                local Content = {
                    Objects = {},
                    --
                    Window = self.Window,
                    Page = self.Page,
                    Section = (self.Section or self),
                    --
                    Flag = (Utility.Table:Property(Properties, "Flag", "Pointer")),
                    Small = (Utility.Table:Property(Properties, "Decreased", "Minified", "Smaller", "Small")),
                    Callback = (Utility.Table:Property(Properties, "Callback", "Function", "Func", "Return"))
                }
                --
                do -- Objects
                    Content.Objects["Holder"] = Library.Objects:Holder(nil, self.Objects["Content"], nil, UDim2.new(1, (Content.Small and -12 or 0), 0, 0), false)
                    --
                    Library.Objects:List(nil, Content.Objects["Holder"], nil, "Center")
                end
                --
                do -- Functions
                    function Content:Set(State)
                        Content.Objects["Holder"].Visible = State
                    end
                end
                --
                do -- Setup
                    Content.Objects["Holder"].AutomaticSize = "Y"
                    Content.Objects["Content"] = Content.Objects["Holder"]
                    --
                    if Content.Flag then
                        Flags[Content.Window][Content.Flag] = Content
                    end
                    --
                    local Content = setmetatable(Content, {
                        __index = Library.Sections
                    })
                    --
                    Content.Callback(Content)
                    --
                    return Content
                end
            end
            --
            function Library.Sections:Label(Properties)
                local Properties = (Properties or {})
                local Content = {
                    Objects = {},
                    --
                    Window = self.Window,
                    Page = self.Page,
                    Section = (self.Section or self),
                    --
                    Offset = 0,
                    --
                    Name = (Utility.Table:Property(Properties, "Name", "Text") or "Content"),
                    Center = (Utility.Table:Property(Properties, "Center", "Middle") or false),
                    Inlay = (Utility.Table:Property(Properties, "Inlayed", "Inlay") or false),
                    Wide = (Utility.Table:Property(Properties, "Wide", "Wider") or false)
                }
                --
                do -- Objects
                    Content.Objects["Holder"] = Library.Objects:Holder(nil, self.Objects["Content"], nil, UDim2.new(1, 0, 0, (Content.Inlay and 12 or 16)))
                    --
                    Content.Objects["Text"] = Library.Objects:Text(nil, Content.Objects["Holder"], UDim2.new(0, (Content.Wide and 25 or 37), 0, (Content.Inlay and 1 or -1)), UDim2.new(1, -37, 1, 0), Content.Name, "Light Text", (Content.Center and "Center"))
                end
                --
                do -- Functions
                    function Content:Picker(Properties)
                        return Library.Sections.Addons:Picker(Content, Properties)
                    end
                    --
                    function Content:Bind(Properties)
                        return Library.Sections.Addons:Bind(Content, Properties)
                    end
                end
                --
                do -- Setup
                    if Content.Inlay then Content.Offset = 2 end
                    --
                    return Content
                end
            end
            --
            function Library.Sections:Button(Properties)
                local Properties = (Properties or {})
                local Content = {
                    Objects = {},
                    --
                    Window = self.Window,
                    Page = self.Page,
                    Section = (self.Section or self),
                    --
                    Name = (Utility.Table:Property(Properties, "Name", "Text") or "Content"),
                    Wide = (Utility.Table:Property(Properties, "Wide", "Wider") or false),
                    Callback = (Utility.Table:Property(Properties, "Callback", "Function", "Func", "Return"))
                }
                --
                do -- Objects
                    Content.Objects["Holder"] = Library.Objects:Holder(nil, self.Objects["Content"], nil, UDim2.new(1, 0, 0, 23))
                    --
                    Content.Objects["Outline"], Content.Objects["Frame"] = Library.Objects:Outline(nil, Content.Objects["Holder"], UDim2.new(0, (Content.Wide and 24 or 36), 0, 4), UDim2.new(1, (Content.Wide and -49 or -69), 0, 18), "Lighter Background")
                    --
                    Content.Objects["Text"] = Library.Objects:Text(nil, Content.Objects["Frame"], UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), Content.Name, "Light Text", "Center")
                    --
                    Content.Objects["Button"] = Library.Objects:Button(Content.Objects["Holder"])
                end
                --
                do -- Connections
                    Utility.General:Connect(Content.Objects["Button"].MouseEnter, function()
                        Content.Objects["Frame"].BackgroundTransparency = 0.1
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Button"].MouseLeave, function()
                        Content.Objects["Frame"].BackgroundTransparency = 0
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Button"].MouseButton1Down, function()
                        Utility.General:Thread(function()
                            Content.Objects["Frame"].BackgroundTransparency = 0.2
                            --
                            task.wait(0.075)
                            --
                            Content.Objects["Frame"].BackgroundTransparency = 0
                        end)
                        --
                        Utility.General:Call(Content.Callback)
                    end)
                end
                --
                do -- Setup
                    return Content
                end
            end
            --
            function Library.Sections:Box(Properties)
                local Properties = (Properties or {})
                local Content = {
                    Objects = {},
                    --
                    Window = self.Window,
                    Page = self.Page,
                    Section = (self.Section or self),
                    --
                    State = (Utility.Table:Property(Properties, "State", "Current", "Default", "Def") or ""),
                    Holder = (Utility.Table:Property(Properties, "Name", "Text", "Holder", "PlaceHolder", "PlaceHolderText") or ""),
                    Confirm = (Utility.Table:Property(Properties, "Confirmation", "Confirm") or false),
                    Wide = (Utility.Table:Property(Properties, "Wide", "Wider") or false),
                    Flag = (Utility.Table:Property(Properties, "Flag", "Pointer")),
                    Callback = (Utility.Table:Property(Properties, "Callback", "Function", "Func", "Return"))
                }
                --
                do -- Objects
                    Content.Objects["Holder"] = Library.Objects:Holder(nil, self.Objects["Content"], nil, UDim2.new(1, 0, 0, 25))
                    --
                    Content.Objects["Outline"], Content.Objects["Outline_Frame"] = Library.Objects:Outline(nil, Content.Objects["Holder"], UDim2.new(0, (Content.Wide and 24 or 36), 0, 4), UDim2.new(1, (Content.Wide and -49 or -69), 0, 20), "Outline")
                    Content.Objects["Frame"] = Library.Objects:Frame(nil, "Lighter Background", nil, nil, nil, 0, Content.Objects["Outline_Frame"], UDim2.new(0, 1, 0, 1), UDim2.new(1, -2, 1, -2))
                    --
                    Content.Objects["Value"] = Library.Objects:Box(nil, Content.Objects["Frame"], UDim2.new(0, 6, 0, 0), UDim2.new(1, -12, 1, 0), "", Content.Holder, "Light Text", nil, nil, "AtEnd")
                    --
                    Content.Objects["Button"] = Library.Objects:Button(Content.Objects["Holder"])
                end
                --
                do -- Functions
                    function Content:Set(State)
                        Content.State = State
                        --
                        Content.Objects["Value"].Text = Content.State
                        --
                        Utility.General:Call(Content.Callback, Content.State)
                    end
                    --
                    function Content:Get(Raw)
                        return Content.State
                    end
                end
                --
                do -- Connections
                    Utility.General:Connect(Content.Objects["Value"]:GetPropertyChangedSignal("Text"), function()
                        if not Content.Confirm then
                            Content:Set(Content.Objects["Value"].Text)
                        end
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Value"].Focused, function()
                        Utility.General:Update(Content.Objects["Outline"], {
                            BackgroundColor3 = "Dark Contrast"
                        })
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Value"].FocusLost, function()
                        if Content.Confirm then
                            Content:Set(Content.Objects["Value"].Text)
                        end
                        --
                        Utility.General:Update(Content.Objects["Outline"], {
                            BackgroundColor3 = "Light Inline"
                        })
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Button"].MouseEnter, function()
                        Content.Objects["Frame"].BackgroundTransparency = 0.1
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Button"].MouseLeave, function()
                        Content.Objects["Frame"].BackgroundTransparency = 0
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Button"].MouseButton1Down, function()
                        Content.Objects["Value"]:CaptureFocus()
                    end)
                end
                --
                do -- Setup
                    Content.Section.Content[Content] = true
                    --
                    if Content.Flag then
                        Flags[Content.Window][Content.Flag] = Content
                    end
                    --
                    return Content
                end
            end
            --
            function Library.Sections:List(Properties)
                local Properties = (Properties or {})
                local Content = {
                    Objects = {},
                    Items = {},
                    --
                    Window = self.Window,
                    Page = self.Page,
                    Section = (self.Section or self),
                    --
                    State = (Utility.Table:Property(Properties, "State", "Current", "Default", "Def") or 1),
                    Shown = (Utility.Table:Property(Properties, "Shown", "Listed", "Viewed") or 10),
                    Maximum = (Utility.Table:Property(Properties, "Maximum", "Max", "Most", "Maximal") or 1),
                    Minimum = (Utility.Table:Property(Properties, "Minimum", "Min", "Least", "Minimal") or 1),
                    Options = (Utility.Table:Property(Properties, "Options", "List") or {"1", "2", "3", "4", "5"}),
                    Selected = (Utility.Table:Property(Properties, "Global", "Selected", "Select")),
                    Wide = (Utility.Table:Property(Properties, "Wide", "Wider") or false),
                    Flag = (Utility.Table:Property(Properties, "Flag", "Pointer")),
                    Callback = (Utility.Table:Property(Properties, "Callback", "Function", "Func", "Return")),
                    NoCallback = (Utility.Table:Property(Properties, "NoCallback", "DontCallback", "IgnoreCallback", "Ignore") or false)
                }
                --
                do -- Objects
                    Content.Objects["Holder"] = Library.Objects:Holder(nil, self.Objects["Content"], nil, UDim2.new(1, 0, 0, ((Content.Shown * 18) + 6 + 2)))
                    --
                    Content.Objects["Outline"], Content.Objects["Frame"] = Library.Objects:Outline(nil, Content.Objects["Holder"], UDim2.new(0, (Content.Wide and 24 or 36), 0, 2), UDim2.new(1, (Content.Wide and -49 or -69), 0, (Content.Shown * 18) + 6), "Lighter Background")
                    --
                    Content.Objects["Content"] = Library.Objects:Scroll(Content.Objects["Frame"])
                end
                --
                do -- Functions
                    function Content:Set(State)
                        Content.State = State
                        --
                        if typeof(Content.State) == "table" then
                            for Index, Value in next, Content.Items do
                                Content.Items[Index]:Set(Content.State[Index] == true)
                            end
                        else
                            for Index, Value in next, Content.Items do
                                if (Index == Content.State) then
                                    Value:Set(true)
                                elseif Value.State then
                                    Value:Set(false)
                                end
                            end
                        end
                        --
                        Utility.General:Call(Content.Callback, Content.State)
                    end
                    --
                    function Content:Get(Raw)
                        return Content.State
                    end
                    --
                    function Content:Insert(Value)
                        if not Content.Items[Value] then
                            local Item = {
                                Connections = {},
                                Objects = {},
                                --
                                State = false
                            }
                            --
                            do -- Objects
                                Item.Objects["Holder"] = Library.Objects:Holder(nil, Content.Objects["Content"], nil, UDim2.new(1, 0, 0, 18))
                                Item.Objects["Text"] = Library.Objects:Text(nil, Item.Objects["Holder"], UDim2.new(0, 12, 0, 0), UDim2.new(1, -24, 1, 0), Value, "Light Text")
                                --
                                Item.Objects["Button"] = Library.Objects:Button(Item.Objects["Holder"])
                            end
                            --
                            do -- Functions
                                function Item:Remove()
                                    for Index, Value in next, Item.Connections do
                                        Value:Disconnect()
                                    end
                                    --
                                    for Index, Value in next, Item.Objects do
                                        Value:Remove()
                                    end
                                    --
                                    Item.Connections = nil
                                    Item.Objects = nil
                                    Item.State = nil
                                    Item = nil
                                end
                                --
                                function Item:Show(State)
                                    Item.Objects["Holder"].Visible = State
                                end
                                --
                                function Item:Set(State)
                                    Item.State = State
                                    --
                                    Utility.General:Update(Item.Objects["Text"], {
                                        TextColor3 = (Item.State and "Dark Contrast" or "Light Text")
                                    })
                                end
                            end
                            --
                            do -- Connections
                                Item.Connections[#Item.Connections + 1] = Item.Objects["Button"].MouseButton1Down:Connect(function()
                                    local State = Utility.Table:Modify(Content:Get(), Value, Content.Minimum, Content.Maximum)
                                    --
                                    Content:Set(State)
                                end)
                            end
                            --
                            Content.Items[Value] = Item
                        end
                    end
                    --
                    function Content:Remove(Value)
                        local Item = Content.Items[Value]
                        --
                        if Item then
                            Item:Remove()
                        end
                    end
                    --
                    function Content:Refresh(Options, Selected)
                        Content.Options = Options
                        Content.Selected = (Selected or Content.Options)
                        --
                        for Index, Value in next, Content.Items do
                            if not Content.Options[Index] then
                                Utility.General:Thread(Value.Remove)
                            end
                        end
                        --
                        for Index, Value in next, Content.Options do
                            if not Content.Items[Index] then
                                Content:Insert(Index)
                            end
                        end
                        --
                        for Index, Value in next, Content.Options do
                            Content.Items[Index]:Show(Content.Selected[Index])
                        end
                    end
                end
                --
                do -- Setup
                    Content.Section.Content[Content] = true
                    --
                    local OptionsTable = {}
                    --
                    for Index, Value in next, Content.Options do
                        OptionsTable[Value] = true
                    end
                    --
                    Content:Refresh(OptionsTable)
                    --
                    if Content.Flag then
                        Flags[Content.Window][Content.Flag] = Content
                    end
                    --
                    return Content
                end
            end
            --
            function Library.Sections:Toggle(Properties)
                local Properties = (Properties or {})
                local Content = {
                    Objects = {},
                    --
                    Window = self.Window,
                    Page = self.Page,
                    Section = (self.Section or self),
                    --
                    Offset = 0,
                    --
                    Name = (Utility.Table:Property(Properties, "Name", "Text") or "Content"),
                    State = (Utility.Table:Property(Properties, "State", "Current", "Default", "Def") or false),
                    Flag = (Utility.Table:Property(Properties, "Flag", "Pointer")),
                    Callback = (Utility.Table:Property(Properties, "Callback", "Function", "Func", "Return"))
                }
                --
                do -- Objects
                    Content.Objects["Holder"] = Library.Objects:Holder(nil, self.Objects["Content"], nil, UDim2.new(1, 0, 0, 16))
                    --
                    Content.Objects["Frame"] = Library.Objects:Outline(nil, Content.Objects["Holder"], UDim2.new(0, 16, 0, 4), UDim2.new(0, 8, 0, 8), nil, "Lighter Inline")
                    Content.Objects["Text"] = Library.Objects:Text(nil, Content.Objects["Holder"], UDim2.new(0, 37, 0, -1), UDim2.new(1, -37, 1, 0), Content.Name, "Light Text")
                    --
                    Content.Objects["Gradient"] = Library.Objects:Gradient(Color3.fromRGB(75, 75, 75), 90, nil, Content.Objects["Frame"])
                    --
                    Content.Objects["Button"] = Library.Objects:Button(Content.Objects["Holder"])
                end
                --
                do -- Functions
                    function Content:Set(State)
                        Content.State = State
                        --
                        Utility.General:Update(Content.Objects["Frame"], {
                            BackgroundColor3 = (Content.State and "Dark Contrast" or "Lighter Inline")
                        })
                        --
                        Utility.General:Call(Content.Callback, Content.State)
                    end
                    --
                    function Content:Get(Raw)
                        return Content.State
                    end
                    --
                    function Content:Picker(Properties)
                        return Library.Sections.Addons:Picker(Content, Properties)
                    end
                    --
                    function Content:Bind(Properties)
                        return Library.Sections.Addons:Bind(Content, Properties)
                    end
                end
                --
                do -- Connections
                    Utility.General:Connect(Content.Objects["Button"].MouseEnter, function()
                        Content.Objects["Gradient"].Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 0.25),
                            NumberSequenceKeypoint.new(1, 0.25)
                        })
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Button"].MouseLeave, function()
                        Content.Objects["Gradient"].Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 0),
                            NumberSequenceKeypoint.new(1, 0)
                        })
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Button"].MouseButton1Down, function()
                        Content:Set(not Content.State)
                    end)
                end
                --
                do -- Setup
                    Content.Section.Content[Content] = true
                    --
                    if Content.Flag then
                        Flags[Content.Window][Content.Flag] = Content
                    end
                    --
                    return Content
                end
            end
            --
            function Library.Sections:Slider(Properties)
                local Properties = (Properties or {})
                local Content = {
                    Objects = {},
                    --
                    Current = "",
                    Tick = tick(),
                    --
                    Window = self.Window,
                    Page = self.Page,
                    Section = (self.Section or self),
                    --
                    State = (Utility.Table:Property(Properties, "State", "Current", "Default", "Def") or 50),
                    Maximum = (Utility.Table:Property(Properties, "Maximum", "Max", "Most", "Maximal") or 100),
                    Minimum = (Utility.Table:Property(Properties, "Minimum", "Min", "Least", "Minimal") or 0),
                    Decimals = (1 / (Utility.Table:Property(Properties, "Decimals", "Rounding", "Tick") or 1)),
                    Ending = (Utility.Table:Property(Properties, "Ending", "Suffix", "Sub") or ""),
                    Flag = (Utility.Table:Property(Properties, "Flag", "Pointer")),
                    Callback = (Utility.Table:Property(Properties, "Callback", "Function", "Func", "Return"))
                }
                --
                do -- Objects
                    Content.Objects["Holder"] = Library.Objects:Holder(nil, self.Objects["Content"], nil, UDim2.new(1, 0, 0, 18))
                    --
                    Content.Objects["Outline"] = Library.Objects:Outline(nil, Content.Objects["Holder"], UDim2.new(0, 36, 0, 5), UDim2.new(1, -69, 0, 8), nil, "Lighter Inline")
                    Content.Objects["Outline_Gradient"] = Library.Objects:Gradient(Color3.fromRGB(75, 75, 75), 90, nil, Content.Objects["Outline"])
                    --
                    Content.Objects["Frame"] = Library.Objects:Frame(nil, "Dark Contrast", nil, nil, nil, 0, Content.Objects["Outline"], nil, UDim2.new(0, 0, 1, 0))
                    Content.Objects["Frame_Gradient"] = Library.Objects:Gradient(Color3.fromRGB(75, 75, 75), 90, nil, Content.Objects["Frame"])
                    --
                    Content.Objects["Value"] = Library.Objects:Box(nil, Content.Objects["Frame"], UDim2.new(1, 0, 0, 3), UDim2.new(0, 0, 1, 0), "", nil, "Light Text", "Center")
                    --
                    Content.Objects["Button"] = Library.Objects:Button(Content.Objects["Holder"])
                end
                --
                do -- Functions
                    function Content:Set(State)
                        Content.Last = Content.State
                        --
                        Content.State = Utility.Math:Normalise(State, Content.Decimals, Content.Minimum, Content.Maximum)
                        --
                        Content.Current = (Content.State .. Content.Ending)
                        Content.Objects["Value"].Text = Content.Current
                        --
                        Content.Objects["Frame"].Size = UDim2.new((1 - Utility.Math:Percentile(Content.State, Content.Minimum, Content.Maximum)), 0, 1, 0)
                        --
                        Utility.General:Call(Content.Callback, Content.State)
                    end
                    --
                    function Content:Get(Raw)
                        return Content.State
                    end
                    --
                    function Content:Refresh()
                        local Location = Utility.General:Location()
                        --
                        Content:Set(Utility.Math:Interpolate(Location.X, Content.Objects["Frame"].AbsolutePosition.X, (Content.Objects["Outline"].AbsoluteSize.X - 2), Content.Minimum, Content.Maximum))
                    end
                end
                --
                do -- Connections
                    Utility.General:Connect(Content.Objects["Button"].MouseEnter, function()
                        Content.Objects["Outline_Gradient"].Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 0.25),
                            NumberSequenceKeypoint.new(1, 0.25)
                        })
                        --
                        Content.Objects["Frame_Gradient"].Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 0.25),
                            NumberSequenceKeypoint.new(1, 0.25)
                        })
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Button"].MouseLeave, function()
                        Content.Objects["Outline_Gradient"].Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 0),
                            NumberSequenceKeypoint.new(1, 0)
                        })
                        --
                        Content.Objects["Frame_Gradient"].Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 0),
                            NumberSequenceKeypoint.new(1, 0)
                        })
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Value"].FocusLost, function()
                        local Number = tonumber(Content.Objects["Value"].Text)
                        --
                        if Number then
                            Content:Set(Number)
                        else
                            Content.Objects["Value"].Text = Content.Current
                        end
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Button"].MouseButton1Down, function()
                        if ((tick() - Content.Tick) <= 0.2) then
                            Content.Tick = 0
                            --
                            if Content.Last then
                                Content:Set(Content.Last)
                            end
                            --
                            Content.Objects["Value"]:CaptureFocus()
                        else
                            Content.Tick = tick()
                            --
                            Content.Holding = true
                            Content.Window.Holds[Content] = "Holding"
                            --
                            Content:Refresh()
                        end
                    end)
                end
                --
                do -- Setup
                    Content.Section.Content[Content] = true
                    --
                    if Content.Flag then
                        Flags[Content.Window][Content.Flag] = Content
                    end
                    --
                    return Content
                end
            end
            --
            function Library.Sections:Dropdown(Properties)
                local Properties = (Properties or {})
                local Content = {
                    Objects = {},
                    --
                    Window = self.Window,
                    Page = self.Page,
                    Section = (self.Section or self),
                    --
                    State = (Utility.Table:Property(Properties, "State", "Current", "Default", "Def") or 1),
                    Shown = (Utility.Table:Property(Properties, "Shown", "Listed", "Viewed") or 5),
                    Maximum = (Utility.Table:Property(Properties, "Maximum", "Max", "Most", "Maximal") or 1),
                    Minimum = (Utility.Table:Property(Properties, "Minimum", "Min", "Least", "Minimal") or 1),
                    Options = (Utility.Table:Property(Properties, "Options", "List") or {"1", "2", "3", "4", "5"}),
                    Selected = (Utility.Table:Property(Properties, "Global", "Selected", "Select")),
                    Wide = (Utility.Table:Property(Properties, "Wide", "Wider") or false),
                    Flag = (Utility.Table:Property(Properties, "Flag", "Pointer")),
                    Callback = (Utility.Table:Property(Properties, "Callback", "Function", "Func", "Return")),
                    NoCallback = (Utility.Table:Property(Properties, "NoCallback", "DontCallback", "IgnoreCallback", "Ignore") or false)
                }
                --
                do -- Objects
                    Content.Objects["Holder"] = Library.Objects:Holder(nil, self.Objects["Content"], nil, UDim2.new(1, 0, 0, 25))
                    --
                    Content.Objects["Outline"], Content.Objects["Frame"] = Library.Objects:Outline(nil, Content.Objects["Holder"], UDim2.new(0, (Content.Wide and 24 or 36), 0, 4), UDim2.new(1, (Content.Wide and -49 or -69), 0, 20), "Lighter Background")
                    --
                    Content.Objects["Arrow"] = Utility.General:Create("ImageLabel", {
                        BackgroundTransparency = 1,
                        BorderSizePixel = 0,
                        Parent = Content.Objects["Frame"],
                        Position = UDim2.new(1, -13, 0, 7),
                        Size = UDim2.new(0, 5, 0, 3),
                        Image = "rbxassetid://14555080158",
                        ImageColor3 = "Arrow Color"
                    })
                    Content.Objects["Value"] = Library.Objects:Text(nil, Content.Objects["Frame"], UDim2.new(0, 6, 0, 0), UDim2.new(1, -22, 1, 0), "", "Light Text", nil, nil, "AtEnd")
                    --
                    Content.Objects["Button"] = Library.Objects:Button(Content.Objects["Holder"])
                end
                --
                do -- Functions
                    function Content:Set(State)
                        Content.State = State
                        --
                        Content.Objects["Value"].Text = Utility.Table:Stringify(Content.State, Content.Options)
                        --
                        Utility.General:Call(Content.Callback, Content.State)
                    end
                    --
                    function Content:Get(Raw)
                        return Content.State
                    end
                end
                --
                do -- Connections
                    Utility.General:Connect(Content.Objects["Button"].MouseEnter, function()
                        Content.Objects["Frame"].BackgroundTransparency = 0.1
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Button"].MouseLeave, function()
                        Content.Objects["Frame"].BackgroundTransparency = 0
                    end)
                    --
                    Utility.General:Connect(Content.Objects["Button"].MouseButton1Down, function()
                        Content.Window:Open(Content, "Dropdown")
                    end)
                end
                --
                do -- Setup
                    Content.Section.Content[Content] = true
                    --
                    if not Content.Selected then
                        Content.Selected = Content.Options
                    end
                    --
                    if Content.Flag then
                        Flags[Content.Window][Content.Flag] = Content
                    end
                    --
                    return Content
                end
            end
            --
            function Library.Sections:SearchDown(Properties)
                local Properties, Content = (Properties or {})
                local Box = self:Box({
                    Holder = (Utility.Table:Property(Properties, "Name", "Text", "Holder", "PlaceHolder", "PlaceHolderText") or ""),
                    Confirm = true,
                    Callback = function(State)
                        local Searched = {}
                        --
                        for Index, Value in next, Content.Options do
                            if Value:lower():find(State:lower()) then
                                Searched[#Searched + 1] = {Index, Value}
                            end
                        end
                        --
                        Content.Selected = (Utility.Table:Count(Searched) > 0 and Searched or Content.Options)
                        --
                        Content.Window:Close()
                        Content.Window:Open(Content, "Dropdown")
                    end,
                    NoCallback = true
                })
                --
                Content = self:Dropdown(Properties)
                --
                do -- Objects
                    Content.Objects["Extra"] = Box.Objects["Holder"]
                    --
                    self:Button({Name = "Clear", Callback = function()
                        Content:Set({})
                    end})
                end
                --
                do -- Setup
                    return Content
                end
            end
            --
            function Library.Sections:SearchList(Properties)
                local Properties, Content = (Properties or {})
                local Box = self:Box({
                    Holder = (Utility.Table:Property(Properties, "Name", "Text", "Holder", "PlaceHolder", "PlaceHolderText") or ""),
                    Wide = (Utility.Table:Property(Properties, "Wide", "Wider") or false),
                    Confirm = true,
                    Callback = function(State)
                        local Searched = {}
                        --
                        for Index, Value in next, Content.Options do
                            if Index:lower():find(State:lower()) then
                                Searched[Index] = true
                            end
                        end
                        --
                        Content:Refresh(Content.Options, (Utility.Table:Count(Searched) > 0 and Searched or Content.Options))
                    end,
                    NoCallback = true
                })
                --
                Content = self:List(Properties)
                --
                do -- Setup
                    return Content
                end
            end
            --
            do -- Addons
                function Library.Sections.Addons:Holder(Content)
                    local Holder = Content.Objects["Addon_Holder"]
                    --
                    if Holder then
                        return Holder
                    else
                        Content.Objects["Addon_Holder"] = Library.Objects:Holder(Vector2.new(1, 0), Content.Objects["Holder"], UDim2.new(1, -12, 0, Content.Offset), UDim2.new(0, 0, 1, 0))
                        --
                        Library.Objects:List(nil, Content.Objects["Addon_Holder"], "Horizontal", "Right", "Top")
                        --
                        return Content.Objects["Addon_Holder"]
                    end
                end
                --
                function Library.Sections.Addons:Picker(Self, Properties)
                    local Properties = (Properties or {})
                    local Content = {
                        Objects = {},
                        --
                        Window = Self.Window,
                        Page = Self.Page,
                        Section = Self.Section,
                        Self = Self,
                        --
                        State = (Utility.Table:Property(Properties, "State", "Current", "Default", "Color", "Def") or Color3.fromRGB(255, 255, 255)),
                        Alpha = (Utility.Table:Property(Properties, "Transparency", "Transp", "Alpha")),
                        Flag = (Utility.Table:Property(Properties, "Flag", "Pointer")),
                        Callback = (Utility.Table:Property(Properties, "Callback", "Function", "Func", "Return"))
                    }
                    --
                    do -- Objects
                        Content.Objects["Addon"] = Library.Sections.Addons:Holder(Self)
                        Content.Objects["Holder"] = Library.Objects:Holder(nil, Content.Objects["Addon"], nil, UDim2.new(0, 20, 1, 0))
                        --
                        Content.Objects["Outline"] = Library.Objects:Outline(Vector2.new(0, 0.5), Content.Objects["Holder"], UDim2.new(0, 1, 0.5, 0), UDim2.new(0, 18, 0, 9), nil)
                        --
                        if Content.Alpha then
                            Content.Objects["Alpha"] = Utility.General:Create("ImageLabel", {
                                BackgroundTransparency = 1,
                                BorderSizePixel = 0,
                                Parent = Content.Objects["Outline"],
                                Position = UDim2.new(0, 0, 0, 0),
                                Size = UDim2.new(1, 0, 1, 0),
                                Image = "rbxassetid://14641036512"
                            })
                        end
                        --
                        Content.Objects["Frame"] = Library.Objects:Frame(nil, Color3.fromRGB(255, 255, 255), nil, nil, nil, 0, Content.Objects["Outline"], UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0))
                        --
                        Content.Objects["Gradient"] = Library.Objects:Gradient(Color3.fromRGB(125, 125, 125), 90, nil, Content.Objects["Frame"])
                        --
                        Content.Objects["Button"] = Library.Objects:Button(Content.Objects["Holder"])
                    end
                    --
                    do -- Functions
                        function Content:Set(State, Alpha)
                            if typeof(State) == "table" then
                                Content.State = State
                            else
                                local Hue, Saturation, Value = State:ToHSV()
                                --
                                Content.State = {Hue, Saturation, Value, (Content.Alpha and Alpha or nil)}
                            end
                            --
                            local Color = Color3.fromHSV(Content.State[1], Content.State[2], Content.State[3])
                            --
                            Content.Objects["Frame"].BackgroundColor3 = Color
					        Content.Objects["Frame"].BackgroundTransparency = (Content.Alpha and Content.State[4] or 0)
                            --
                            Utility.General:Call(Content.Callback, Color, Content.State[4])
                        end
                        --
                        function Content:Get(Raw)
                            if Raw then
                                return Content.State
                            else
                                return Color3.fromHSV(Content.State[1], Content.State[2], Content.State[3]), Content.State[4]
                            end
                        end
                    end
                    --
                    do -- Connections
                        Utility.General:Connect(Content.Objects["Button"].MouseEnter, function()
                            Content.Objects["Gradient"].Transparency = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 0.15),
                                NumberSequenceKeypoint.new(1, 0.15)
                            })
                        end)
                        --
                        Utility.General:Connect(Content.Objects["Button"].MouseLeave, function()
                            Content.Objects["Gradient"].Transparency = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 0),
                                NumberSequenceKeypoint.new(1, 0)
                            })
                        end)
                        --
                        Utility.General:Connect(Content.Objects["Button"].MouseButton1Down, function()
                            Content.Window:Open(Content, "Picker")
                        end)
                    end
                    --
                    do -- Setup
                        Content.Section.Content[Content] = true
                        --
                        if Content.Flag then
                            Flags[Content.Window][(Self.Flag and (Self.Flag .. " ") or "") .. Content.Flag] = Content
                        end
                        --
                        return Content
                    end
                end
                --
                function Library.Sections.Addons:Bind(Self, Properties)
                    local Properties = (Properties or {})
                    local Content = {
                        Objects = {},
                        --
                        Active = false,
                        --
                        Window = Self.Window,
                        Page = Self.Page,
                        Section = Self.Section,
                        Self = Self,
                        --
                        Name = (Utility.Table:Property(Properties, "Name", "Text")),
                        State = (Utility.Table:Property(Properties, "State", "Current", "Default", "Bind", "Def")),
                        Mode = (Utility.Table:Property(Properties, "Mode", "Type") or "On Hold"),
                        Disable = (Utility.Table:Property(Properties, "Disabled", "Disable", "NoMode") or false),
                        Flag = (Utility.Table:Property(Properties, "Flag", "Pointer")),
                        Callback = (Utility.Table:Property(Properties, "Callback", "Function", "Func", "Return"))
                    }
                    --
                    do -- Objects
                        Content.Objects["Addon"] = Library.Sections.Addons:Holder(Self)
                        Content.Objects["Holder"] = Library.Objects:Holder(nil, Content.Objects["Addon"], nil, UDim2.new(0, 20, 1, 0))
                        --
                        Content.Objects["Value"] = Library.Objects:Text(Vector2.new(0, 0.5), Content.Objects["Holder"], UDim2.new(0, 1, 0.5, 0), UDim2.new(0, 18, 0, 9), "", "Darker Text", nil, nil, nil, 8)
                        --
                        Content.Objects["Button"] = Library.Objects:Button(Content.Objects["Holder"])
                    end
                    --
                    do -- Functions
                        function Content:Set(State)
                            if typeof(State) == "table" then
                                Content.State = State
                            else
                                Content.State = ((State and (State.EnumType or State.KeyCode)) and {State.EnumType == Enum.KeyCode and "KeyCode" or "UserInputType", State.Name} or {})
                            end
                            --
                            Content.Short = (#Content.State > 0 and (Utility.Inputs.Shortened[Content.State[2]] or Content.State[2]))
                            --
                            Content.Objects["Value"].Text = ("[%s]"):format(Content.Short or "..")
                            --
                            Content:Adjust(Content.Mode)
                            --
                            Content.Item:Update()
                        end
                        --
                        function Content:Get(Raw)
                            if Raw then
                                return Content.State
                            else
                                if #Content.State > 0 then
                                    return Content.State[1][Content.State[2]]
                                end
                            end
                        end
                        --
                        function Content:Adjust(Mode)
                            Content.Mode = Mode
                            --
                            Content.Active = (Content.Mode == "Off Hold" or Content.Mode == "Off Toggle" or Content.Mode == "Always On")
                            --
                            Content.Item:Update()
                        end
                        --
                        function Content:Update(Type)
                            local Previous = Content.Active
                            --
                            if Content.Mode ~= "Always On" then
                                if Content.Mode == "On Hold" or Content.Mode == "Off Hold" then
                                    Content.Active = not Content.Active
                                elseif Content.Mode == "On Toggle" or Content.Mode == "Off Toggle" then
                                    if Type then
                                        Content.Active = not Content.Active
                                    end
                                end
                            end
                            --
                            if Content.Active ~= Previous then
                                Utility.General:Call(Content.Callback, Content.Active, Previous)
                                --
                                Content.Item:Update()
                            end
                        end
                        --
                        function Content:Activate(State)
                            if Content.Mode ~= "Always On" then
                                Content.State = State
                            end
                        end
                    end
                    --
                    do -- Connections
                        Utility.General:Connect(Content.Objects["Button"].MouseButton1Down, function()
                            Content.Window:Open(Content, "Bind")
                        end)
                        --
                        Utility.General:Connect(Content.Objects["Button"].MouseButton2Down, function()
                            if not Content.Disable then
                                Content.Window:Open(Content, "BindMode")
                            end
                        end)
                    end
                    --
                    do -- Setup
                        Content.Section.Content[Content] = true
                        Content.Window.Binds[Content] = true
                        --
                        if Content.Flag then
                            Flags[Content.Window][(Self.Flag and (Self.Flag .. " ") or "") .. Content.Flag] = Content
                        end
                        --
                        if Content.Name then
                            Content.Item = Flags[Content.Window]["Binds"]:Insert(Content)
                        end
                        --
                        return Content
                    end
                end
            end
        end
    end
end
-- // Return
return Library, Utility, Flags