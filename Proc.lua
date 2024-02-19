local Library, Utility, Flags = loadstring(game:HttpGet("https://raw.githubusercontent.com/razrukha/Celex/main/Library.lua"))()
local Window = Library:Create({Name = "drain.lol", Stamp = os.date("┃ %b %d %Y", os.time()), Size = Vector2.new(586, 620)})
--local Extra = Window:Create({Name = "extra", Single = true, Size = Vector2.new(386, 420)})
--
do -- Pages
    do -- Rage
        local Rage = Window:Page({Name = "rage"})
    end
    --
    do -- Legit
        local Legit = Window:Page({Name = "legit"})
        --
        do -- AimAssist
            local AimAssist = Legit:Section({Name = "aim assist"})
            --
            AimAssist:Toggle({Name = "enabled", Callback = function(State)
                Flags[Window]["Aim Assist Holder"]:Set(State)
            end}):Bind({State = Enum.KeyCode.E})
            AimAssist:Holder({Small = true, Return = function(Self)
                Self:Label({Name = "field of view", Inlayed = true})
                Self:Slider({State = 50})
                Self:Label({Name = "fov type", Inlayed = true})
                Self:Dropdown({State = 1, Options = {"Static", "Dynamic"}, Callback = function(State)
                    Flags[Window]["Dynamic FOV Holder"]:Set(State == 2)
                end})
                --
                Self:Holder({Small = true, Return = function(Self)
                    Self:Label({Name = "dynamic fov size", Inlayed = true})
                    Self:Slider({State = 25})
                end, Flag = "Dynamic FOV Holder"})
            end, Flag = "Aim Assist Holder"})
            
            AimAssist:Toggle({Name = "enabled", Callback = function(State)
                Flags[Window]["Aim Assist Holder 2"]:Set(State)
            end}):Bind({State = Enum.KeyCode.E})
            AimAssist:Holder({Small = true, Return = function(Self)
                Self:Label({Name = "field of view", Inlayed = true})
                Self:Slider({State = 50})
                Self:Label({Name = "fov type", Inlayed = true})
                Self:Dropdown({State = 1, Options = {"Static", "Dynamic"}, Callback = function(State)
                    Flags[Window]["Dynamic FOV Holder 2"]:Set(State == 2)
                end})
                --
                Self:Holder({Small = true, Return = function(Self)
                    Self:Label({Name = "dynamic fov size", Inlayed = true})
                    Self:Slider({State = 25})
                end, Flag = "Dynamic FOV Holder 2"})
            end, Flag = "Aim Assist Holder 2"})
        end
        --
        do -- TriggerBot
            local TriggerBot = Legit:Section({Name = "trigger bot"})
        end
    end
    --
    do -- AntiAim
        local AntiAim = Window:Page({Name = "antiaim"})
    end
    --
    do -- Visuals
        Visuals = Window:Page({Name = "visuals"})
        --
        local Visuals_Pxd = Visuals:Section({Name = "players", Size = 25})
        --
        local Visuals_Players = Visuals:Section({Name = "hi", Side = "Right", Size = 40})
        local Visuals_Pxdasd = Visuals:Section({Name = "asdasf", Side = "Right", Size = 60})
        --
        Visuals_Pxd:Dropdown({Options = {"hello", "rage", "detected", "cheez", "sneeze"}, State = 1})
        Visuals_Pxd:SearchList({State = {}, Maximum = 999, Minimum = 0, Options = Utility.Table:Sort({"M4 Handle", "Bandolier", "Flash Hider SVD", "Saiga 12", "AKM F. Hider", "DAGR", "7.62x39 Mag", "9x19AP", "Rags", "Ice Dagger", "Oil Can", "Ninjato", "W. Pants", "7.62x39AP", "Ghillie Hood", "AKMN Front", "Maska Visor", "Hand Wraps", "PSO-1", "Helmet", "Holosight", "Gorka Pants", "IOLA", "SVD", "AS Val", "AP-20", "TFZ98S", "AI-2", "Sandbag", "F1 Grenade Trap", "RGO", "6B47", "Nuts", "Ghillie Pants", "IZh-81", "9x18Z", "Airfield Key", "Barricade", "Altyn Visor", "RGD-5", "AKM-I Stock", "PN6K-5", "MON-50", "Cotton", "Buckshot", "ZSh Visor", "PMN2", "Ice Axe", "IZh-12 Front", ".338LM AP", "SVD Front", "9x18 Mag", "7.62x25 Mag", "RPG-7", "9x19 Drum Mag", "9x18 Drum Mag", "Saiga Front", "Planks", "Screwdriver", "Ghillie Shirt", "ONV-9", "TT-33", "Head Mount", "Sniper Scope", "MP5 Stock", "PH2", "9x18AP", "Nails", "AA Battery", "Repair Kit", "5.56x45T", "Lynx 10L", "TFZ-0", "T1 Micro", "Kulon", "7.62x25T", "5.56x45AP", "Cutlass", "AKM M. Brake", "PT-1", "PBS-1", "M4 Stock", "SOCOM556", "Filter", ".338 Mag", "Super Glue", "9x39Z", "W. Parts", "Crane Key", "IZh-12", "M4 F. Hider", "Garage Key", "7.62x39T", "PPSH-41", "Polymer Stock", "AS Val Stock", "RK-3", "AS Val Handle", "6B27", "6B2", "DV-2", "6B45", "Bloxy Cola", "AKMN", "Balaclava", "Max Energy", "9x19T", "Quad NVG", "9x39 Mag", "B-05 Key", "MP443", "7.62x54AP", "Gorka Shirt", "IZh-81 Front", "5.56x45 Mag", "Flare Gun", "IZh-81 Stock", "AI-4", "Village Key", "Tactical Front", "Pipe", "Gunpowder", "SSH-68", "ZSh-1-2M", "ACOG", "5.56x45 Drum Mag", "7.62x54T", "Laser Ptr.", "PPSH41 Stock", "7.62x25 Drum Mag", "Tortilla 45L", "Lighter", "M4A1", "Map", "W. Shirt", "Water Bottle", "Lighthouse Key", "Camo Pants", "7.62x54R Mag", "SVD Stock", "AKM-I Handle", "Hammer", "6B23", "GP-5", "AKM-I Front", "9x39AP", "IOTV Gen 4", "7.62x39 Drum Mag", "Fuze", "IZh-12 Stock", ".338LM T", "Res Kola", "Mosin Stock", "Knee Pads", "M4 Front", "Fast MT", "JPC", "AS Val Front", "AKMN Handle", "Gold", "Rubles", "12ga Mag", "Visor", "M84FB", "Catfrog Soda", "Linen", "HSPV", "T-Shield", "Aramid", "Tomahawk", "Wrench", "Replica", "Karambit", "Camo Shirt", "Bolts", "Altyn", "PM", "Beans", "C. Player", "Ripstop", "Coil", "Attak-5 60L", "MP5SD", "9x18T", "Dressing", "AKM-I", "F1", "OKP-7", "SPSh-44", "Pu 3.5x", "ATC Key", "Slug", "vz. 61", "Fueling Station Key", "PG-7", "Mosin", "Bandage", "6B5", "7.62x25AP", "Fast Visor", "Suit", "TOR-S", "AKMN Stock", "Mosin Front", "Flechette", "Duct Tape", "9x19 Mag", "Combat Gloves", "Metal"}), Holder = "Search"})
        --
        local x = Visuals_Players:Toggle({Name = "bounding box"});x:Picker({State = Color3.fromRGB(175, 55, 55)});x:Picker({Alpha = 0.5})
        local z = Visuals_Players:Toggle({Name = "name", State = true});z:Bind({State = Enum.KeyCode.X});z:Bind({State = Enum.UserInputType.MouseButton3})
        Visuals_Players:Button({Name = "Create", Callback = function() Utility.General:Unload() end})
        Visuals_Players:Slider({State = 73})
        Visuals_Players:Box({Name = "asd"})
        Visuals_Players:Dropdown({Options = {"hello", "rage", "detected", "cheez", "sneeze", "negro", "wave"}, State = {[1] = true, [3] = true, [5] = true}, Maximum = 999, Minimum = 0})
        Visuals_Players:Dropdown({Options = {"hello", "rage", "detected", "cheez", "sneeze"}, State = 1})
        Visuals_Players:Toggle({Name = "bounding box"})
        Visuals_Players:Toggle({Name = "name", State = true})
        Visuals_Players:SearchDown({Options = Utility.Table:Sort({"M4 Handle", "Bandolier", "Flash Hider SVD", "Saiga 12", "AKM F. Hider", "DAGR", "7.62x39 Mag", "9x19AP", "Rags", "Ice Dagger", "Oil Can", "Ninjato", "W. Pants", "7.62x39AP", "Ghillie Hood", "AKMN Front", "Maska Visor", "Hand Wraps", "PSO-1", "Helmet", "Holosight", "Gorka Pants", "IOLA", "SVD", "AS Val", "AP-20", "TFZ98S", "AI-2", "Sandbag", "F1 Grenade Trap", "RGO", "6B47", "Nuts", "Ghillie Pants", "IZh-81", "9x18Z", "Airfield Key", "Barricade", "Altyn Visor", "RGD-5", "AKM-I Stock", "PN6K-5", "MON-50", "Cotton", "Buckshot", "ZSh Visor", "PMN2", "Ice Axe", "IZh-12 Front", ".338LM AP", "SVD Front", "9x18 Mag", "7.62x25 Mag", "RPG-7", "9x19 Drum Mag", "9x18 Drum Mag", "Saiga Front", "Planks", "Screwdriver", "Ghillie Shirt", "ONV-9", "TT-33", "Head Mount", "Sniper Scope", "MP5 Stock", "PH2", "9x18AP", "Nails", "AA Battery", "Repair Kit", "5.56x45T", "Lynx 10L", "TFZ-0", "T1 Micro", "Kulon", "7.62x25T", "5.56x45AP", "Cutlass", "AKM M. Brake", "PT-1", "PBS-1", "M4 Stock", "SOCOM556", "Filter", ".338 Mag", "Super Glue", "9x39Z", "W. Parts", "Crane Key", "IZh-12", "M4 F. Hider", "Garage Key", "7.62x39T", "PPSH-41", "Polymer Stock", "AS Val Stock", "RK-3", "AS Val Handle", "6B27", "6B2", "DV-2", "6B45", "Bloxy Cola", "AKMN", "Balaclava", "Max Energy", "9x19T", "Quad NVG", "9x39 Mag", "B-05 Key", "MP443", "7.62x54AP", "Gorka Shirt", "IZh-81 Front", "5.56x45 Mag", "Flare Gun", "IZh-81 Stock", "AI-4", "Village Key", "Tactical Front", "Pipe", "Gunpowder", "SSH-68", "ZSh-1-2M", "ACOG", "5.56x45 Drum Mag", "7.62x54T", "Laser Ptr.", "PPSH41 Stock", "7.62x25 Drum Mag", "Tortilla 45L", "Lighter", "M4A1", "Map", "W. Shirt", "Water Bottle", "Lighthouse Key", "Camo Pants", "7.62x54R Mag", "SVD Stock", "AKM-I Handle", "Hammer", "6B23", "GP-5", "AKM-I Front", "9x39AP", "IOTV Gen 4", "7.62x39 Drum Mag", "Fuze", "IZh-12 Stock", ".338LM T", "Res Kola", "Mosin Stock", "Knee Pads", "M4 Front", "Fast MT", "JPC", "AS Val Front", "AKMN Handle", "Gold", "Rubles", "12ga Mag", "Visor", "M84FB", "Catfrog Soda", "Linen", "HSPV", "T-Shield", "Aramid", "Tomahawk", "Wrench", "Replica", "Karambit", "Camo Shirt", "Bolts", "Altyn", "PM", "Beans", "C. Player", "Ripstop", "Coil", "Attak-5 60L", "MP5SD", "9x18T", "Dressing", "AKM-I", "F1", "OKP-7", "SPSh-44", "Pu 3.5x", "ATC Key", "Slug", "vz. 61", "Fueling Station Key", "PG-7", "Mosin", "Bandage", "6B5", "7.62x25AP", "Fast Visor", "Suit", "TOR-S", "AKMN Stock", "Mosin Front", "Flechette", "Duct Tape", "9x19 Mag", "Combat Gloves", "Metal"}), State = {}, Holder = "Search", Shown = 12, Maximum = 999, Minimum = 0})
    end
    --
    do -- Misc
        local Misc = Window:Page({Name = "misc"})
    end
    --
    do -- Config
        local Config = Window:Page({Name = "config"})
        --
        do -- Options
            local Config_Options = Config:Section({Name = "options", Size = 36})
            --
            Config_Options:Label({Name = "ui toggle"}):Bind({State = Enum.KeyCode.Insert, Mode = "off toggle", Disabled = true, Flag = "Options UI Toggle Bind"})
            Config_Options:Toggle({Name = "watermark", State = true, Callback = function(State) Flags[Window]["Watermark"]:Set(State) end, Flag = "Options Watermark Enabled"})
            Config_Options:Toggle({Name = "top gradient", State = true, Callback = function(State) Flags[Window]["Watermark"]:Gradient(State) end, Flag = "Options Watermark Top"})
            Config_Options:Label({Name = "position", Inlayed = true})
            Config_Options:Dropdown({Options = {"top right", "top left", "bottom right", "bottom left", "middle right", "middle left", "middle top", "middle bottom"}, Callback = function(State) Flags[Window]["Watermark"]:Position(State) end, Flag = "Options Watermark Side"})
            Config_Options:Box({Holder = "Content", State = "$U $L $F $L $P $L $S $L $T", Flag = "Options Watermark Content"})
        end
        --
        do -- Theme
            local Config_Theme = Config:Section({Name = "theme"})
            --
            Config_Theme:Label({Name = "preset themes", Inlayed = true})
            Config_Theme:Dropdown({State = nil, Options = {"Azul", "Amethyst"}, Flag = "Selected Theme"})
            Config_Theme:Button({Name = "Load", Callback = function()
                local State = Flags[Window]["Selected Theme"]:Get()
                --
                if State then
                    local Theme = Flags[Window]["Selected Theme"].Options[State]
                    --
                    Utility.Theme:Set(Window, Theme)
                end
            end})
            --
            for Index, Value in pairs({"Light Contrast", "Dark Contrast", "Arrow Color", "Lighter Background", "Light Background", "Dark Background", "Outline", "Lighter Inline", "Light Inline", "Dark Inline", "Lighter Text", "Light Text", "Dark Text", "Darker Text"}) do
                Config_Theme:Label({Name = string.lower(Value)}):Picker({State = Library.Themes[Value], Callback = function(State) Utility.Theme:Update(Value, State) end, Flag = Value})
            end
        end
        --
        do -- Config
            local Config_Config = Config:Section({Name = "config", Side = "Right"})
            --
            Config_Config:Label({Name = "configurations", Inlayed = true, Wide = true})
            Config_Config:List({Options = {"main", "rage", "legit", "cfg2", "semirage", "semi-legit", "not legit at all", "watermelon", "pcfg", "187417415", "xd lmao", "1249124", "yooo"}, Wide = true, Shown = 15})
            Config_Config:Box({Wide = true, Callback = function(State)
                local Normal = Utility.String:Normalise(State)
                --
                if Normal ~= State then
                    Flags[Window]["Config Name"]:Set(Normal)
                else
                    Flags[Window]["Config Holder"]:Set(State ~= "" and State ~= " " and #State > 2)
                end
            end, Flag = "Config Name"})
            Config_Config:Holder({Return = function(Self)
                Self:Button({Name = "create", Wide = true})
            end, Flag = "Config Holder"})
            Config_Config:Button({Name = "load", Wide = true})
            Config_Config:Button({Name = "save", Wide = true})
            Config_Config:Button({Name = "delete", Wide = true})
            Config_Config:Button({Name = "reset", Wide = true})
            Config_Config:Button({Name = "unload", Callback = Utility.General.Unload, Wide = true})
        end
    end
    --
    do -- Skins
        local Skins = Window:Page({Name = "skins"})
    end
    --
    --[[do -- Playerlist
        local PlayerList = Extra:Page({Name = "playerlist"})
        --
        local Section = PlayerList:Section({Name = "playerlist"})
    end]]
    --
    do -- Watermark
        Window:Watermark({Refresh = 100, Update = function()
            local Flag = Flags[Window]["Options Watermark Content"]
            --
            return ("drain.lol [beta] ┃ %s"):format(Flag and Utility.String:Fill(Flag:Get()) or "")
        end})
    end
end
--
Window.Pages[#Window.Pages - 1]:Set(true)
--Extra.Pages[1]:Set(true)
--
Window:Initialise()
--Extra:Initialise()
