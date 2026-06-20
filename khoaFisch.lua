--[[

discord.gg/25ms

--]]
local v126 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local v127 =
    v126:CreateWindow(
    {
        ["Title"] = "Khoa Dev - Fisch",
        ["SubTitle"] = "by Vo Anh Khoa",
        ["TabWidth"] = 588 - 428,
        ["Size"] = UDim2.fromOffset(580, 280 + 180),
        ["Acrylic"] = true,
        ["Theme"] = "Dark",
        ["MinimizeKey"] = Enum.KeyCode.LeftControl
    }
)
local v128 = {
    ["Home"] = v127:AddTab({["Title"] = "Trang Chủ", ["Icon"] = "rbxassetid://7733960981"}),
    ["Main"] = v127:AddTab({["Title"] = "Tính Năng Chính", ["Icon"] = "rbxassetid://7733749837"}),
    ["Misc"] = v127:AddTab({["Title"] = "Tính Năng Khác", ["Icon"] = "rbxassetid://7733789088"}),
    ["Weather"] = v127:AddTab({["Title"] = "Thời Tiết", ["Icon"] = "rbxassetid://7734068495"}),
    ["Teleport"] = v127:AddTab({["Title"] = "Dịch Chuyển", ["Icon"] = "rbxassetid://7733924216"}),
    ["Performance"] = v127:AddTab({["Title"] = "Hiệu Suất", ["Icon"] = "rbxassetid://7733955511"}),
    ["Settings"] = v127:AddTab({["Title"] = "Cài Đặt", ["Icon"] = "settings"})
}
local v129 =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))(

)
local v130 =
    loadstring(
    game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua")
)()
v129:SetLibrary(v126)
v130:SetLibrary(v126)
v130:BuildInterfaceSection(v128.Settings)
v129:BuildConfigSection(v128.Settings)
v127:SelectTab(2 - 1)
v128.Home:AddButton(
    {
        ["Title"] = "Tham gia Discord của chúng tôi",
        ["Description"] = "Nhấp vào nút này để sao chép liên kết mời!",
        ["Callback"] = function()
            local v149 = 0
            local v150
            while true do
                if (v149 == 0) then
                    v150 = "https://discord.gg/25ms"
                    if setclipboard then
                        local v308 = 0
                        local v309
                        while true do
                            if (v308 == 0) then
                                v309 = 0
                                while true do
                                    if (v309 == 0) then
                                        setclipboard(v150)
                                        print("Đã sao chép liên kết mời Discord!")
                                        break
                                    end
                                end
                                break
                            end
                        end
                    else
                        print("Hàm setclipboard không khả dụng.")
                    end
                    break
                end
            end
        end
    }
)
v128.Home:AddParagraph(
    {
        ["Title"] = "Giới thiệu Discord",
        ["Content"] = "Khoa Dev - Fisch, trung tâm hỗ trợ hack/exploit game Fisch trên Roblox! Đây là nơi giúp bạn luôn cập nhật những tính năng, script và thông báo mới nhất. Dưới đây là những gì bạn có thể làm trong máy chủ của chúng tôi:\n\nCập Nhật Thông Tin:\nNhận thông tin cập nhật theo thời gian thực về các phát triển mới nhất, bản phát hành script và tính năng có sẵn.\nYêu Cầu Script:\nCần một script cụ thể? Gửi yêu cầu của bạn, đội ngũ hoặc cộng đồng của chúng tôi sẽ hỗ trợ thiết lập.\nQuà Tặng Độc Quyền:\nTham gia các chương trình giveaway Robux và vật phẩm độc quyền cho thành viên Discord.\nTương Tác Cộng Đồng:\nGiao lưu với những người chơi khác, chia sẻ mẹo chơi game và nhận hỗ trợ từ cộng đồng năng động."
    }
)
v128.Home:AddParagraph(
    {
        ["Title"] = "Tham gia ngay",
        ["Content"] = "Tham gia cộng đồng ngay để nâng tầm trải nghiệm chơi Fisch của bạn cùng Khoa Dev!"
    }
)
v128.Main:AddButton(
    {
        ["Title"] = "Bán Cá Đang Cầm",
        ["Description"] = "Bán con cá bạn đang cầm trên tay",
        ["Callback"] = function()
            Workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild(
                "merchant"
            ):WaitForChild("sell"):InvokeServer()
        end
    }
)
v128.Main:AddButton(
    {
        ["Title"] = "Bán Tất Cả Cá",
        ["Description"] = "Bán toàn bộ cá có trong túi đồ của bạn",
        ["Callback"] = function()
            Workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild(
                "merchant"
            ):WaitForChild("sellall"):InvokeServer()
        end
    }
)
v128.Main:AddButton(
    {
        ["Title"] = "Định Giá Cá",
        ["Description"] = "Gửi cá đi định giá tại NPC Appraiser",
        ["Callback"] = function()
            Workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Appraiser"):WaitForChild("appraiser"):WaitForChild(
                "appraise"
            ):InvokeServer()
        end
    }
)
v128.Main:AddButton(
    {
        ["Title"] = "Tự động Câu (Thu + Lắc + Quăng dây)",
        ["Description"] = "Bật menu hỗ trợ tự động câu cá hoàn toàn phiên bản tối ưu",
        ["Callback"] = function()
            local v151 =
                loadstring(
                game:HttpGet("https://raw.githubusercontent.com/Turtle-Brand/Turtle-Lib/main/source.lua")
            )()
            local v152 =
                v151:Window(
                "Khoa Dev - Fisch",
                {
                    ["Color"] = Color3.fromRGB(25, 11 + 24, 74 - 29),
                    ["Size"] = UDim2.new(0, 500, 0, 1995 - (210 + 1385))
                }
            )
            local v153 = game:GetService("Players")
            local v154 = game:GetService("StarterGui")
            local v155 = game:GetService("GuiService")
            local v156 = game:GetService("ReplicatedStorage")
            local v157 = game:GetService("VirtualInputManager")
            local v158 = game:GetService("UserInputService")
            local v159 = v153.LocalPlayer
            local v160 = false
            local v161 = nil
            local v162 = false
            local v163 = false
            local v164
            local v165 = 1689 - (1201 + 488)
            local function v166(v236, v237)
                v154:SetCore(
                    "SendNotification",
                    {
                        ["Title"] = "Khoa Dev - Fisch",
                        ["Text"] = v236,
                        ["Duration"] = v237 or (0.5 + 0),
                        ["Button1Text"] = "Đồng ý"
                    }
                )
            end
            local function v167()
                local v238 = 0
                local v239
                while true do
                    if (v238 == 0) then
                        v239 = 0
                        while true do
                            if (v239 == (585 - (352 + 233))) then
                                v160 = not v160
                                if v160 then
                                    v164 = v159.Character.HumanoidRootPart.Position
                                    v166("Tự Động Câu: ĐÃ BẬT", 2.5 - 1)
                                    task.spawn(
                                        function()
                                            while v160 do
                                                local v402 = 0
                                                local v403
                                                while true do
                                                    if (v402 == 0) then
                                                        v403 = 0
                                                        while true do
                                                            if (v403 == 0) then
                                                                if v161 then
                                                                    local v447 = 574 - (489 + 85)
                                                                    local v448
                                                                    while true do
                                                                        if (v447 == 0) then
                                                                            v448 = 1501 - (277 + 1224)
                                                                            while true do
                                                                                if (v448 == (1493 - (663 + 830))) then
                                                                                    v161.events.shake:FireServer()
                                                                                    print("Đang lắc cần...")
                                                                                    break
                                                                                end
                                                                            end
                                                                            break
                                                                        end
                                                                    end
                                                                end
                                                                task.wait(0.1 + 0)
                                                                break
                                                            end
                                                        end
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    )
                                else
                                    local v375 = 0
                                    while true do
                                        if (v375 == 0) then
                                            v163 = false
                                            v162 = false
                                            v375 = 1
                                        end
                                        if (v375 == 2) then
                                            v166("Tự Động Câu: ĐÃ TẮT", 2.5 - 1)
                                            break
                                        end
                                        if (v375 == (876 - (461 + 414))) then
                                            v155.SelectedObject = nil
                                            if v161 then
                                                v161.events.reset:FireServer()
                                            end
                                            v375 = 1
                                        end
                                    end
                                end
                                break
                            end
                        end
                        break
                    end
                end
            end
            v159.Character.ChildAdded:Connect(
                function(v240)
                    if (v240:IsA("Tool") and v240.Name:lower():find("rod")) then
                        v161 = v240
                    end
                end
            )
            v159.Character.ChildRemoved:Connect(
                function(v241)
                    if (v241 == v161) then
                        v160 = false
                        v163 = false
                        v162 = false
                        v161 = nil
                        v155.SelectedObject = nil
                    end
                end
            )
            v159.PlayerGui.DescendantAdded:Connect(
                function(v242)
                    if v160 then
                        if ((v242.Name == "button") and (v242.Parent.Name == "safezone")) then
                            local v310 = 0
                            local v311
                            while true do
                                if (v310 == 0) then
                                    v311 = 0
                                    while true do
                                        if (v311 == 1) then
                                            v157:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                                            v157:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                                            v311 = 2 + 0
                                        end
                                        if (v311 == 2) then
                                            task.wait(250.1 - (172 + 78))
                                            v155.SelectedObject = nil
                                            break
                                        end
                                        if ((0) == v311) then
                                            task.wait(0.3)
                                            v155.SelectedObject = v242
                                            v311 = 1 + 0
                                        end
                                    end
                                    break
                                end
                            end
                        elseif ((v242.Name == "playerbar") and (v242.Parent.Name == "bar")) then
                            local v337 = 0
                            while true do
                                if (v337 == 1) then
                                    v156.events.reelfinished:FireServer(100, true)
                                    v165 = v165 + 1 + 0
                                    break
                                end
                                if (v337 == 0) then
                                    v163 = true
                                    v242:GetPropertyChangedSignal("Position"):Wait()
                                    v337 = 1 - 0
                                end
                            end
                        end
                    end
                end
            )
            v159.PlayerGui.DescendantRemoving:Connect(
                function(v243)
                    if (v243.Name == "reel") then
                        local v275 = 0
                        local v276
                        while true do
                            if (v275 == 0) then
                                v276 = 0
                                while true do
                                    if ((0) == v276) then
                                        v163 = false
                                        v162 = false
                                        break
                                    end
                                end
                                break
                            end
                        end
                    end
                end
            )
            task.spawn(
                function()
                    while true do
                        local v258 = 0
                        local v259
                        while true do
                            if (v258 == 0) then
                                v259 = 0
                                while true do
                                    if ((0) == v259) then
                                        if (v160 and not v162) then
                                            if v161 then
                                                v162 = true
                                                task.wait(0.5 + 0)
                                                v161.events.reset:FireServer()
                                                v161.events.cast:FireServer(58.5 + 42)
                                            end
                                        end
                                        task.wait()
                                        break
                                    end
                                end
                                break
                            end
                        end
                    end
                end
            )
            task.spawn(
                function()
                    while true do
                        local v260 = 447 - (133 + 314)
                        local v261
                        while true do
                            if (v260 == 0) then
                                v261 = 0
                                while true do
                                    if (0 == v261) then
                                        if v160 then
                                            v159.Character.HumanoidRootPart.Position = v164
                                        end
                                        task.wait(0.75 + 0)
                                        break
                                    end
                                end
                                break
                            end
                        end
                    end
                end
            )
            v152:Button(
                "Bật / Tắt",
                function()
                    v167()
                end
            )
            local v168 =
                v152:Label("Trạng thái Auto Farm: TẮT", Color3.fromRGB(468 - (199 + 14), 590 - 425, 1549 - (647 + 902)))
            local v169 = v152:Label("Số cá câu được: 0", Color3.fromRGB(381 - 254, 376 - (85 + 148), 1455 - (426 + 863)))
            task.spawn(
                function()
                    while true do
                        local v262 = 0
                        while true do
                            if ((1655 - (873 + 781)) == v262) then
                                task.wait(1)
                                break
                            end
                            if (v262 == 0) then
                                if v160 then
                                    v168.Text = "Trạng thái Auto Farm: BẬT"
                                else
                                    v168.Text = "Trạng thái Auto Farm: TẮT"
                                end
                                v169.Text = "Số cá đã câu: " .. v165
                                v262 = 2 - 1
                            end
                        end
                    end
                end
            )
        end
    }
)
local v131 =
    v128.Misc:AddToggle(
    "MyToggle",
    {
        ["Title"] = "Đóng Băng Nhân Vật",
        ["Description"] = "Đóng băng (Anchor) vị trí nhân vật của bạn",
        ["Default"] = false,
        ["Callback"] = function(v170)
            local v171 = 0
            local v172
            while true do
                if (v171 == 0) then
                    v172 = game:GetService("Players").LocalPlayer
                    if (v172 and v172.Character and v172.Character:FindFirstChild("HumanoidRootPart")) then
                        if v170 then
                            local v340 = 0
                            local v341
                            while true do
                                if (0 == v340) then
                                    v341 = 0
                                    while true do
                                        if ((0) == v341) then
                                            v172.Character.HumanoidRootPart.Anchored = true
                                            print("Nhân vật đã bị đóng băng.")
                                            break
                                        end
                                    end
                                    break
                                end
                            end
                        else
                            local v342 = 0
                            while true do
                                if (v342 == 0) then
                                    v172.Character.HumanoidRootPart.Anchored = false
                                    print("Nhân vật đã được mở băng.")
                                    break
                                end
                            end
                        end
                    else
                        warn("Không tìm thấy Nhân vật hoặc HumanoidRootPart!")
                    end
                    break
                end
            end
        end
    }
)
v128.Misc:AddButton(
    {["Title"] = "Chống AFK", ["Description"] = "Ngăn game tự ngắt kết nối khi cắm máy treo câu cá", ["Callback"] = function()
            loadstring(
                game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/Anti-afk/main/antiafkbyhassanxzyn")
            )()
        end}
)
local v132 =
    v128.Misc:AddToggle(
    "UnlimitedOxygenToggle",
    {
        ["Title"] = "Vô Hạn Oxy",
        ["Description"] = "Vô hiệu hóa Oxy của nhân vật để không bao giờ bị đuối nước.",
        ["Default"] = false,
        ["Callback"] = function(v173)
            local v174 = game.Players.LocalPlayer
            local v175 = v174.Character or v174.CharacterAdded:Wait()
            if v173 then
                local v263 = 0
                while true do
                    if (v263 == (1947 - (414 + 1533))) then
                        if (v175 and v175:FindFirstChild("client") and v175.client:FindFirstChild("oxygen")) then
                            local v343 = 0
                            local v344
                            while true do
                                if (v343 == (555 - (443 + 112))) then
                                    v344 = v175.client.oxygen
                                    if (v344 and v344.Enabled) then
                                        local v409 = 1479 - (888 + 591)
                                        local v410
                                        while true do
                                            if (v409 == 0) then
                                                v410 = 0
                                                while true do
                                                    if ((0) == v410) then
                                                        v344.Enabled = false
                                                        print("Vô Hạn Oxy: ĐÃ BẬT")
                                                        break
                                                    end
                                                end
                                                break
                                            end
                                        end
                                    end
                                    break
                                end
                            end
                        end
                        v174.CharacterAdded:Connect(
                            function()
                                local v331 = 0
                                local v332
                                while true do
                                    if (v331 == 0) then
                                        v332 = 0
                                        while true do
                                            if (v332 == 0) then
                                                v175 = v174.Character or v174.CharacterAdded:Wait()
                                                if
                                                    (v175 and v175:FindFirstChild("client") and
                                                        v175.client:FindFirstChild("oxygen"))
                                                 then
                                                     local v431 = v175.client.oxygen
                                                     if (v431 and v431.Enabled) then
                                                         v431.Enabled = false
                                                     end
                                                 end
                                                break
                                            end
                                        end
                                        break
                                    end
                                end
                            end
                        )
                        break
                    end
                end
            elseif (v175 and v175:FindFirstChild("client") and v175.client:FindFirstChild("oxygen")) then
                local v291 = 0
                local v292
                while true do
                    if (v291 == 0) then
                        v292 = v175.client.oxygen
                        if (v292 and not v292.Enabled) then
                            local v376 = 0
                            while true do
                                if (v376 == (1678 - (136 + 1542))) then
                                    v292.Enabled = true
                                    print("Hệ thống Oxy đã được kích hoạt lại.")
                                    break
                                end
                            end
                        end
                        break
                    end
                end
            end
        end
    }
)
local v133 =
    v128.Misc:AddToggle(
    "DisableSwimmingToggle",
    {
        ["Title"] = "Tắt Chế Độ Bơi",
        ["Description"] = "Không cho phép nhân vật bơi khi ở dưới nước.",
        ["Default"] = false,
        ["Callback"] = function(v176)
            local v177 = 0
            local v178
            local v179
            local v180
            while true do
                if (v177 == (3 - 2)) then
                    v180 = nil
                    while true do
                        if (1 == v178) then
                            if (v180 and v180:FindFirstChild("Humanoid")) then
                                local v361 = 0
                                local v362
                                while true do
                                    if (v361 == 0) then
                                        v362 = v180:FindFirstChild("Humanoid")
                                        if v362 then
                                            if v176 then
                                                v362:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
                                                print("Đã tắt trạng thái bơi.")
                                            else
                                                local v432 = 486 - (68 + 418)
                                                while true do
                                                    if ((0) == v432) then
                                                        v362:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
                                                        print("Đã bật lại trạng thái bơi.")
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                        break
                                    end
                                end
                            else
                                warn("Không tìm thấy Humanoid!")
                            end
                            break
                        end
                        if ((0) == v178) then
                            local v333 = 0
                            while true do
                                if (v333 == (1092 - (770 + 322))) then
                                    v179 = game.Players.LocalPlayer
                                    v180 = v179.Character or v179.CharacterAdded:Wait()
                                    v333 = 1
                                end
                                if (v333 == 1) then
                                    v178 = 1
                                    break
                                end
                            end
                        end
                    end
                    break
                end
                if (v177 == 0) then
                    v178 = 0
                    v179 = nil
                    v177 = 1
                end
            end
        end
    }
)
local v134 =
    v128.Misc:AddToggle(
    "TeleportToggle",
    {
        ["Title"] = "Dịch Chuyển (T + Click chuột trái)",
        ["Description"] = "Nhấn giữ phím T và nhấn chuột trái để dịch chuyển tức thời.",
        ["Default"] = false,
        ["Callback"] = function(v181)
            local v182 = 0
            while true do
                if (v182 == 0) then
                    if (not hasUserToggled and not isTeleportEnabled) then
                        local v313 = 0
                        local v314
                        while true do
                            if (v313 == 0) then
                                v314 = 0
                                while true do
                                    local v378 = 0
                                    while true do
                                        if ((0) == v378) then
                                            if (v314 == (3 - 2)) then
                                                return
                                            end
                                            if ((0) == v314) then
                                                hasUserToggled = true
                                                isTeleportEnabled = v181
                                                v314 = 1 - 0
                                            end
                                            break
                                        end
                                    end
                                end
                                break
                            end
                        end
                    end
                    isTeleportEnabled = v181
                    v182 = 1 + 0
                end
                if (1 == v182) then
                    if v181 then
                        if not connection then
                            connection =
                                game:GetService("UserInputService").InputBegan:Connect(
                                function(v363, v364)
                                    if
                                        (not v364 and isTeleportEnabled and
                                            (v363.UserInputType == Enum.UserInputType.MouseButton1))
                                     then
                                         if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.T) then
                                             local v412 = 0
                                             local v413
                                             local v414
                                             while true do
                                                 if (v412 == 1) then
                                                     v413.Character:MoveTo(
                                                         Vector3.new(v414.Hit.x, v414.Hit.y, v414.Hit.z)
                                                     )
                                                     break
                                                 end
                                                 if (v412 == 0) then
                                                     local v433 = 0
                                                     while true do
                                                         if ((0) == v433) then
                                                             v413 = game:GetService("Players").LocalPlayer
                                                             v414 = v413:GetMouse()
                                                             v433 = 4 - 3
                                                         end
                                                         if (v433 == (3 - 2)) then
                                                             v412 = 1 + 0
                                                             break
                                                         end
                                                     end
                                                 end
                                             end
                                         end
                                     end
                                end
                            )
                        end
                    elseif connection then
                        local v346 = 0
                        while true do
                            if (v346 == 0) then
                                connection:Disconnect()
                                connection = nil
                                break
                            end
                        end
                    end
                    break
                end
            end
        end
    }
)
local v135 =
    v128.Misc:AddToggle(
    "InfiniteJumpToggle",
    {
        ["Title"] = "Nhảy Vô Hạn",
        ["Description"] = "Bật hoặc tắt tính năng nhảy vô hạn trên không.",
        ["Default"] = false,
        ["Callback"] = function(v183)
            _G.infinjump = v183
        end
    }
)
if not _G.infinJumpStarted then
    local v244 = 831 - (762 + 69)
    local v245
    local v246
    while true do
        if (v244 == 0) then
            _G.infinJumpStarted = true
            _G.infinjump = false
            v244 = 3 - 2
        end
        if (v244 == 1) then
            v245 = game:GetService("Players").LocalPlayer
            v246 = v245:GetMouse()
            v244 = 2
        end
        if (2 == v244) then
            v246.KeyDown:Connect(
                function(v315)
                    if _G.infinjump then
                        if (v315:byte() == 32) then
                            local v379 = 0
                            local v380
                            while true do
                                if (v379 == 0) then
                                    v380 = v245.Character and v245.Character:FindFirstChildOfClass("Humanoid")
                                    if v380 then
                                        v380:ChangeState("Jumping")
                                        wait()
                                        v380:ChangeState("Seated")
                                    end
                                    break
                                end
                            end
                        end
                    end
                end
            )
            break
        end
    end
end
local v136 =
    v128.Misc:AddSlider(
    "SpeedSlider",
    {
        ["Title"] = "Tốc Độ Di Chuyển",
        ["Description"] = "Tăng tốc độ chạy của nhân vật",
        ["Default"] = 38 - 22,
        ["Min"] = 6 + 10,
        ["Max"] = 500,
        ["Rounding"] = 1 + 0,
        ["Callback"] = function(v184)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v184
        end
    }
)
local v136 =
    v128.Misc:AddSlider(
    "JumpSlider",
    {
        ["Title"] = "Lực Nhảy",
        ["Description"] = "Tăng sức mạnh/độ cao khi nhảy",
        ["Default"] = 194 - 144,
        ["Min"] = 207 - (8 + 149),
        ["Max"] = 1820 - (1199 + 121),
        ["Rounding"] = 1 - 0,
        ["Callback"] = function(v186)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = v186
        end
    }
)
local v137 =
    v128.Weather:AddToggle(
    "DayNightToggle",
    {
        ["Title"] = "Sáng Toàn Bộ (FullBright)",
        ["Description"] = "Bật hoặc tắt chế độ nhìn sáng cả ngày lẫn đêm (xóa bóng tối).",
        ["Default"] = false,
        ["Callback"] = function(v188)
            if v188 then
                if not _G.FullBrightExecuted then
                    _G.FullBrightEnabled = true
                    _G.NormalLightingSettings = {
                        ["Brightness"] = game:GetService("Lighting").Brightness,
                        ["ClockTime"] = game:GetService("Lighting").ClockTime,
                        ["FogEnd"] = game:GetService("Lighting").FogEnd,
                        ["GlobalShadows"] = game:GetService("Lighting").GlobalShadows,
                        ["Ambient"] = game:GetService("Lighting").Ambient
                    }
                    game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(
                        function()
                            if
                                ((game:GetService("Lighting").Brightness ~= (2 - 1)) and
                                    (game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness))
                             then
                                local v347 = 0
                                local v348
                                while true do
                                    if ((0) == v347) then
                                        v348 = 0
                                        while true do
                                            if (v348 == 0) then
                                                _G.NormalLightingSettings.Brightness =
                                                    game:GetService("Lighting").Brightness
                                                if not _G.FullBrightEnabled then
                                                    repeat
                                                        wait()
                                                    until _G.FullBrightEnabled
                                                end
                                                v348 = 1
                                            end
                                            if (v348 == 1) then
                                                game:GetService("Lighting").Brightness = 1
                                                break
                                            end
                                        end
                                        break
                                    end
                                end
                            end
                        end
                    )
                    game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(
                        function()
                            if
                                ((game:GetService("Lighting").ClockTime ~= 12) and
                                    (game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime))
                             then
                                local v349 = 1807 - (518 + 1289)
                                while true do
                                    if (v349 == 1) then
                                        game:GetService("Lighting").ClockTime = 2 + 10
                                        break
                                    end
                                    if (v349 == 0) then
                                        _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                                        if not _G.FullBrightEnabled then
                                            repeat
                                                wait()
                                            until _G.FullBrightEnabled
                                        end
                                        v349 = 1 + 0
                                    end
                                end
                            end
                        end
                    )
                    game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(
                        function()
                            if
                                ((game:GetService("Lighting").FogEnd ~= (787012 - (304 + 165))) and
                                    (game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd))
                             then
                                local v350 = 0
                                while true do
                                    if (v350 == 1) then
                                        game:GetService("Lighting").FogEnd = 786703 - (54 + 106)
                                        break
                                    end
                                    if (v350 == 0) then
                                        _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                                        if not _G.FullBrightEnabled then
                                            repeat
                                                wait()
                                            until _G.FullBrightEnabled
                                        end
                                        v350 = 1970 - (1618 + 351)
                                    end
                                end
                            end
                        end
                    )
                    game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(
                        function()
                            if
                                ((game:GetService("Lighting").GlobalShadows ~= false) and
                                    (game:GetService("Lighting").GlobalShadows ~=
                                        _G.NormalLightingSettings.GlobalShadows))
                             then
                                local v351 = 0
                                local v352
                                while true do
                                    if (v351 == 0) then
                                        v352 = 1016 - (10 + 1006)
                                        while true do
                                            if (v352 == 1) then
                                                game:GetService("Lighting").GlobalShadows = false
                                                break
                                            end
                                            if (v352 == 0) then
                                                _G.NormalLightingSettings.GlobalShadows =
                                                    game:GetService("Lighting").GlobalShadows
                                                if not _G.FullBrightEnabled then
                                                    repeat
                                                        wait()
                                                    until _G.FullBrightEnabled
                                                end
                                                v352 = 3 - 2
                                            end
                                        end
                                        break
                                    end
                                end
                            end
                        end
                    )
                    game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(
                        function()
                            if
                                ((game:GetService("Lighting").Ambient ~=
                                    Color3.fromRGB(178, 1211 - (912 + 121), 178)) and
                                    (game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient))
                             then
                                local v353 = 0
                                while true do
                                    if (v353 == 0) then
                                        _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                                        if not _G.FullBrightEnabled then
                                            repeat
                                                wait()
                                            until _G.FullBrightEnabled
                                        end
                                        v353 = 1290 - (1140 + 149)
                                    end
                                    if (v353 == 1) then
                                        game:GetService("Lighting").Ambient = Color3.fromRGB(236 - 58, 178, 178)
                                        break
                                    end
                                end
                            end
                        end
                    )
                    game:GetService("Lighting").Brightness = 1 + 0
                    game:GetService("Lighting").ClockTime = 40 - 28
                    game:GetService("Lighting").FogEnd = 1475181 - 688638
                    game:GetService("Lighting").GlobalShadows = false
                    game:GetService("Lighting").Ambient = Color3.fromRGB(31 + 147, 178, 178)
                    local v299 = true
                    spawn(
                        function()
                            repeat
                                wait()
                            until _G.FullBrightEnabled
                            while wait() do
                                if (_G.FullBrightEnabled ~= v299) then
                                    local v365 = 0
                                    while true do
                                        if (v365 == 0) then
                                            if not _G.FullBrightEnabled then
                                                local v426 = 0
                                                while true do
                                                    if (v426 == (188 - (165 + 21))) then
                                                        game:GetService("Lighting").Ambient =
                                                            _G.NormalLightingSettings.Ambient
                                                        break
                                                    end
                                                    if (v426 == (112 - (61 + 50))) then
                                                        game:GetService("Lighting").FogEnd =
                                                            _G.NormalLightingSettings.FogEnd
                                                        game:GetService("Lighting").GlobalShadows =
                                                            _G.NormalLightingSettings.GlobalShadows
                                                        v426 = 1
                                                    end
                                                    if (v426 == 0) then
                                                        game:GetService("Lighting").Brightness =
                                                            _G.NormalLightingSettings.Brightness
                                                        game:GetService("Lighting").ClockTime =
                                                            _G.NormalLightingSettings.ClockTime
                                                        v426 = 1 - 0
                                                    end
                                                end
                                            else
                                                local v427 = 0
                                                while true do
                                                    if (v427 == 0) then
                                                        game:GetService("Lighting").Brightness = 1
                                                        game:GetService("Lighting").ClockTime = 12
                                                        v427 = 1 + 0
                                                    end
                                                    if (v427 == (1461 - (1295 + 165))) then
                                                        game:GetService("Lighting").FogEnd = 179470 + 607073
                                                        game:GetService("Lighting").GlobalShadows = false
                                                        v427 = 2
                                                    end
                                                    if (v427 == (1)) then
                                                        game:GetService("Lighting").Ambient =
                                                            Color3.fromRGB(
                                                            1575 - (819 + 578),
                                                            1580 - (331 + 1071),
                                                            178
                                                        )
                                                        break
                                                    end
                                                end
                                            end
                                            v299 = not v299
                                            break
                                        end
                                    end
                                end
                            end
                        end
                    )
                end
                _G.FullBrightExecuted = true
                _G.FullBrightEnabled = not _G.FullBrightEnabled
            elseif _G.FullBrightEnabled then
                local v300 = 0
                local v301
                while true do
                    if (v300 == (743 - (588 + 155))) then
                        v301 = 0
                        while true do
                            if (1 == v301) then
                                game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                                game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                                v301 = 1284 - (546 + 736)
                            end
                            if ((1937 - (1834 + 103)) == v301) then
                                _G.FullBrightEnabled = false
                                game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                                v301 = 1
                            end
                            if (v301 == 2) then
                                game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                                game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                                break
                            end
                        end
                        break
                    end
                end
            end
        end
    }
)
local v138 =
    v128.Weather:AddToggle(
    "NoFogToggle",
    {
        ["Title"] = "Xóa Sương Mù",
        ["Description"] = "Loại bỏ hoàn toàn sương mù trong game giúp nhìn rõ hơn.",
        ["Default"] = false,
        ["Callback"] = function(v189)
            if v189 then
                local v264 = 0
                local v265
                while true do
                    if (v264 == 0) then
                        v265 = 0
                        while true do
                            if (v265 == (1766 - (1536 + 230))) then
                                game.Lighting.FogEnd = 100491 - (128 + 363)
                                game.Lighting.FogStart = 0
                                v265 = 1
                            end
                            if (v265 == (2 - 1)) then
                                game.Lighting.ClockTime = 4 + 10
                                game.Lighting.Brightness = 2 - 0
                                v265 = 5 - 3
                            end
                            if (v265 == (4 - 2)) then
                                game.Lighting.GlobalShadows = false
                                break
                            end
                        end
                        break
                    end
                end
            else
                local v266 = 0
                while true do
                    if (v266 == (1011 - (615 + 394))) then
                        game.Lighting.GlobalShadows = true
                        break
                    end
                    if (v266 == 1) then
                        game.Lighting.ClockTime = 12 + 0
                        game.Lighting.Brightness = 2 - 1
                        v266 = 2
                    end
                    if (v266 == 0) then
                        game.Lighting.FogEnd = 787194 - (59 + 592)
                        game.Lighting.FogStart = 0
                        v266 = 1 - 0
                    end
                end
            end
        end
    }
)
local v139 =
    v128.Teleport:AddDropdown(
    "TeleportLocationsDropdown",
    {
        ["Title"] = "Dịch Chuyển Đến Đảo / Địa Điểm",
        ["Description"] = "Chọn một đảo hoặc vị trí để dịch chuyển tới",
        ["Values"] = {
            "Đền thờ (Altar)",
            "Vòm đá (Arch)",
            "Đảo Bạch Dương (Birch)",
            "Hồ Nước Muối (Brine)",
            "Đại Dương Sâu (Deep)",
            "Cửa hàng Đáy Biển (Deepshop)",
            "Đền Cường Hóa (Enchant)",
            "Khu Vực Executive",
            "Đền Keepers",
            "Nhà Admin (Mod House)",
            "Moosewood (Đảo chính)",
            "Mushgrove (Đảo Nấm)",
            "Đảo Roslit",
            "Đảo Tuyết (Snow)",
            "Snowcap (Đỉnh Tuyết)",
            "Đảo Harvester's Spike",
            "Tượng Đá",
            "Đảo Sunstone",
            "Đầm Lầy (Swamp)",
            "Đảo Terrapin",
            "Đền Trident (Ba Chĩa)",
            "Vực Vertigo",
            "Núi Lửa (Volcano)",
            "Wilson",
            "Khu vực cần Wilson (Wilson's Rod)"
        },
        ["Multi"] = false,
        ["Default"] = "None",
        ["Callback"] = function(v190)
            local v191 = {
                ["Đền thờ (Altar)"] = Vector3.new(1234.320068359375 + 62, -808.5519409179688, -(550.9381713867188 - 252)),
                ["Vòm đá (Arch)"] = Vector3.new(2232.966796875 - (885 + 349), 126.6849365234375, -1237.1434326171875),
                ["Đảo Bạch Dương (Birch)"] = Vector3.new(1384.3203125 + 358, 138.25787353515625, -(6822.23779296875 - 4320)),
                ["Hồ Nước Muối (Brine)"] = Vector3.new(-(5218.10596 - 3424), -145.849701, -3302.92358),
                ["Đại Dương Sâu (Deep)"] = Vector3.new(-(2478.88672 - (915 + 53)), -237.695053, -2852.90674),
                ["Cửa hàng Đáy Biển (Deepshop)"] = Vector3.new(-979.196411, -(1048.910156 - (768 + 33)), -(10334.87207 - 7635)),
                ["Đền Cường Hóa (Enchant)"] = Vector3.new(1296.320068359375, -(1422.5519409179688 - 614), -298.93817138671875),
                ["Khu Vực Executive"] = Vector3.new(
                    -29.836761474609375,
                    -(578.48486328125 - (287 + 41)),
                    1046.1161499023438 - (638 + 209)
                ),
                ["Đền Keepers"] = Vector3.new(
                    674.320068359375 + 622,
                    -808.5519409179688,
                    -(1984.9381713867188 - (96 + 1590))
                ),
                ["Nhà Admin (Mod House)"] = Vector3.new(
                    -30.205902099609375,
                    -(1921.4059448242188 - (741 + 931)),
                    101.05290222167969 + 103
                ),
                ["Moosewood (Đảo chính)"] = Vector3.new(1090.1011352539062 - 707, 611.2406005859375 - 480, 243.93385314941406),
                ["Mushgrove (Đảo Nấm)"] = Vector3.new(1074.48583984375 + 1427, 127.7583236694336, -(310.699462890625 + 410)),
                ["Đảo Roslit"] = Vector3.new(
                    -(471.511474609375 + 1005),
                    493.1684265136719 - 363,
                    219.685302734375 + 452
                ),
                ["Đảo Tuyết (Snow)"] = Vector3.new(2648.67578125, 68.06605529785156 + 71, 10283.29736328125 - 7762),
                ["Snowcap (Đỉnh Tuyết)"] = Vector3.new(2648.67578125, 125.06605529785156 + 14, 2521.29736328125),
                ["Đảo Harvester's Spike"] = Vector3.new(-1254.800537109375, 627.8855590820312 - (64 + 430), 1554.2021484375),
                ["Tượng Đá"] = Vector3.new(
                    72.8836669921875,
                    137.6964874267578 + 1,
                    -(1391.4193115234375 - (106 + 257))
                ),
                ["Đảo Sunstone"] = Vector3.new(-(662.259705 + 271), 128.143951, -1119.52063),
                ["Đầm Lầy (Swamp)"] = Vector3.new(3222.48583984375 - (496 + 225), 259.7583236694336 - 132, -720.699462890625),
                ["Đảo Terrapin"] = Vector3.new(
                    -(696.875244140625 - 553),
                    1799.1676025390625 - (256 + 1402),
                    1909.6070556640625
                ),
                ["Đền Trident (Ba Chĩa)"] = Vector3.new(
                    -(3378.4898700000003 - (30 + 1869)),
                    -(1597.710632 - (213 + 1156)),
                    -(2579.39307 - (96 + 92))
                ),
                ["Vực Vertigo"] = Vector3.new(-112.007278, -(84.901093 + 408), 1939.32788 - (142 + 757)),
                ["Núi Lửa (Volcano)"] = Vector3.new(-1888.52319, 163.847565, 269.238281 + 60),
                ["Wilson"] = Vector3.new(1201.80591 + 1737, 356.474762 - (32 + 47), 4544.13379 - (1053 + 924)),
                ["Khu vực cần Wilson (Wilson's Rod)"] = Vector3.new(2820.2085 + 59, 135.07663, 2723.64233)
            }
            local v192 = v191[v190]
            if v192 then
                local v267 = 0
                local v268
                while true do
                    if (v267 == (1648 - (685 + 963))) then
                        v268 = game.Players.LocalPlayer
                        if (v268 and v268.Character and v268.Character:FindFirstChild("HumanoidRootPart")) then
                            v268.Character.HumanoidRootPart.CFrame = CFrame.new(v192)
                        end
                        break
                    end
                end
            else
                warn("Vị trí dịch chuyển không hợp lệ!")
            end
        end
    }
)
local v140 =
    v128.Teleport:AddDropdown(
    "FishAreaTeleport",
    {
        ["Title"] = "Dịch Chuyển Khu Vực Câu Cá",
        ["Description"] = "Chọn một vùng nước/khu vực câu cá để dịch chuyển tới",
        ["Values"] = {
            "Vịnh Roslit (Roslit Bay)",
            "Đại Dương (Ocean)",
            "Ao Tuyết (Snowcap Pond)",
            "Cảng Moosewood",
            "Đại Dương Sâu (Deep Ocean)",
            "Vực Vertigo",
            "Biển Snowcap (Snowcap Ocean)",
            "Đảo Gai (Harvester's Spike)",
            "Khu vực SunStone",
            "Biển Vịnh Roslit (Roslit Bay Ocean)",
            "Ao Moosewood (Moosewood Pond)",
            "Biển Terrapin (Terrapin Ocean)",
            "Khu vực Isonade",
            "Biển Moosewood",
            "Ao Roslit (Roslit Pond)",
            "Biển Moosewood Kỳ Ảo (Mythical)",
            "Hồ Kỳ Dông Terrapin (Terrapin Olm)",
            "Khu vực Vòm Đá (The Arch)",
            "Biển Sò Điệp (Scallop Ocean)",
            "Khu vực SunStone Ẩn",
            "Đá Nấm Mushgrove",
            "Bàn Thờ Keepers",
            "Dòng Dung Nham (Lava)",
            "Hồ Tảo Biển Roslit"
        },
        ["Default"] = "None",
        ["Callback"] = function(v193)
            local v194 = {
                ["Vịnh Roslit (Roslit Bay)"] = Vector3.new(-(4572.7388900000005 - 2909), 119.234116 + 30, 495.498016),
                ["Đại Dương (Ocean)"] = Vector3.new(7868.104 - (166 + 37), 125.444443, 2601.59351),
                ["Ao Tuyết (Snowcap Pond)"] = Vector3.new(
                    4659.09009 - (22 + 1859),
                    2055.283783 - (843 + 929),
                    2842.323 - (30 + 232)
                ),
                ["Cảng Moosewood"] = Vector3.new(
                    979.2359924316406 - 636,
                    133.61595153808594,
                    1044.0580139160156 - (55 + 722)
                ),
                ["Đại Dương Sâu (Deep Ocean)"] = Vector3.new(7660.07153 - 4091, 125.480949, 6697.12695),
                ["Vực Vertigo"] = Vector3.new(-(1812.697098 - (78 + 1597)), -(162.86377000000005 + 574), 1233.15271),
                ["Biển Snowcap (Snowcap Ocean)"] = Vector3.new(2810.66699 + 278, 110.534332 + 21, 3136.11304 - (305 + 244)),
                ["Đảo Gai (Harvester's Spike)"] = Vector3.new(-(1145.61523 + 89), 230.228767 - (95 + 10), 1748.57166),
                ["Khu vực SunStone"] = Vector3.new(-845.903992, 95.172211 + 38, -(3685.57776 - 2522)),
                ["Biển Vịnh Roslit (Roslit Bay Ocean)"] = Vector3.new(
                    -(2336.0930200000003 - 628),
                    917.000015 - (592 + 170),
                    1339.928009 - 955
                ),
                ["Ao Moosewood (Moosewood Pond)"] = Vector3.new(1277.735992 - 768, 71.000031 + 81, 118.17300399999999 + 184),
                ["Biển Terrapin (Terrapin Ocean)"] = Vector3.new(58.6469994, 325.49998500000004 - 190, 2147.41699),
                ["Khu vực Isonade"] = Vector3.new(-(172.99901999999997 + 888), 121.164787, 953.996033),
                ["Biển Moosewood"] = Vector3.new(-167.642715, 231.19548 - 106, 755.009521 - (353 + 154)),
                ["Ao Roslit (Roslit Pond)"] = Vector3.new(-(2410.96997 - 599), 201.047089 - 53, 409.642517 + 183),
                ["Biển Moosewood Kỳ Ảo (Mythical)"] = Vector3.new(198.802994 + 54, 90.849625 + 45, 51.8839989 - 15),
                ["Hồ Kỳ Dông Terrapin (Terrapin Olm)"] = Vector3.new(22.0639992, 182.000015, 1944.36804),
                ["Khu vực Vòm Đá (The Arch)"] = Vector3.new(2428.3089600000003 - 1145, 303.923569 - 173, -(1251.29602 - (7 + 79))),
                ["Biển Sò Điệp (Scallop Ocean)"] = Vector3.new(23.2255898, 125.236847, 346.952271 + 392),
                ["Khu vực SunStone Ẩn"] = Vector3.new(
                    -1139.55701,
                    315.62203999999997 - (24 + 157),
                    -(2146.94324 - 1070)
                ),
                ["Đá Nấm Mushgrove"] = Vector3.new(5386.36011 - 2861, 131.000015, -(221.18402100000003 + 555)),
                ["Bàn Thờ Keepers"] = Vector3.new(
                    1307.13599,
                    -(2168.2922360000002 - 1363),
                    -(541.363998 - (262 + 118))
                ),
                ["Dòng Dung Nham (Lava)"] = Vector3.new(-(3042.86206 - (1038 + 45)), 416.144821 - 223, 501.960999 - (19 + 211)),
                ["Hồ Tảo Biển Roslit"] = Vector3.new(
                    -(1898.2869873046875 - (88 + 25)),
                    376.1578063964844 - 228,
                    318.92999267578125 + 321
                )
            }
            local v195 = v194[v193]
            if v195 then
                local v269 = 0
                local v270
                while true do
                    if (0 == v269) then
                        v270 = game.Players.LocalPlayer
                        if (v270 and v270.Character and v270.Character:FindFirstChild("HumanoidRootPart")) then
                            v270.Character.HumanoidRootPart.CFrame = CFrame.new(v195)
                        end
                        break
                    end
                end
            else
                warn("Khu vực dịch chuyển không hợp lệ!")
            end
        end
    }
)
local v141 =
    v128.Teleport:AddDropdown(
    "Teleport To NPC",
    {
        ["Title"] = "Dịch Chuyển Đến NPC",
        ["Description"] = "Chọn một NPC để dịch chuyển đến vị trí của họ",
        ["Values"] = {
            "Phù Thủy (Witch)",
            "Quiet Synph",
            "Pierre",
            "Phineas",
            "Paul",
            "Thợ Đóng Tàu (Shipwright)",
            "Người câu cá (Angler)",
            "Thương nhân Marc",
            "Lucas",
            "Người Giữ Đèn 1 (Lantern Keeper)",
            "Người Giữ Đèn 2 (Lantern Keeper 2)",
            "Chủ Quán Trọ (Inn Keeper)",
            "Người Giữ Đảo Roslit",
            "NPC Câu Cá 1",
            "NPC Câu Cá 2",
            "NPC Câu Cá 3",
            "Henry",
            "Daisy",
            "Người Định Giá (Appraiser)",
            "Thương Nhân (Merchant)",
            "Người Giữ Mod (Mod Keeper)",
            "Ashe",
            "Alfredrickus"
        },
        ["Multi"] = false,
        ["Default"] = "None",
        ["Callback"] = function(v196)
            local v197 = {
                ["Phù Thủy (Witch)"] = Vector3.new(812.6380919999999 - (342 + 61), 59.45152300000001 + 75, 311.403687),
                ["Quiet Synph"] = Vector3.new(566.263245, 317.00003100000004 - (4 + 161), 217.872101 + 136),
                ["Pierre"] = Vector3.new(1227.3885500000001 - 836, 354.348389 - 219, 693.712387 - (322 + 175)),
                ["Phineas"] = Vector3.new(
                    1032.912292 - (173 + 390),
                    37.69342 + 113,
                    591.9549870000001 - (203 + 111)
                ),
                ["Paul"] = Vector3.new(24.741881999999976 + 357, 136.500031, 341.891022),
                ["Thợ Đóng Tàu (Shipwright)"] = Vector3.new(357.972595, 94.61596700000001 + 39, 752.154541 - 494),
                ["Người câu cá (Angler)"] = Vector3.new(434.102478 + 46, 856.501053 - (57 + 649), 686.226898 - (328 + 56)),
                ["Thương nhân Marc"] = Vector3.new(149.160034 + 317, 151.00206, 224.497086),
                ["Lucas"] = Vector3.new(961.3396299999999 - (433 + 79), 181.999893, 17.68907200000001 + 163),
                ["Người Giữ Đèn 1 (Lantern Keeper)"] = Vector3.new(-39.0456772, -(199.599976 + 47), 655.644363 - 460),
                ["Người Giữ Đèn 2 (Lantern Keeper 2)"] = Vector3.new(-(80.4230175 - 63), -304.970276, -(11.529892 + 3)),
                ["Chủ Quán Trọ (Inn Keeper)"] = Vector3.new(434.458466 + 53, 150.800034, 1267.498932 - (562 + 474)),
                ["Người Giữ Đảo Roslit"] = Vector3.new(-(3527.37891 - 2015), 134.500031, 631.24353),
                ["NPC Câu Cá 1"] = Vector3.new(-1429.04138, 272.371552 - 138, 1591.034424 - (76 + 829)),
                ["NPC Câu Cá 2"] = Vector3.new(-1778.55408, 1822.791779 - (1506 + 167), 648.097107),
                ["NPC Câu Cá 3"] = Vector3.new(
                    -(3339.26807 - 1561),
                    413.83164999999997 - (58 + 208),
                    386.258606 + 267
                ),
                ["Henry"] = Vector3.new(483.539307, 109.38305700000001 + 43, 136.296143 + 100),
                ["Daisy"] = Vector3.new(
                    2370.550049 - 1789,
                    502.49075300000004 - (258 + 79),
                    28.499968999999993 + 185
                ),
                ["Người Định Giá (Appraiser)"] = Vector3.new(952.182373 - 499, 150.500031, 1676.908783 - (1219 + 251)),
                ["Thương Nhân (Merchant)"] = Vector3.new(416.690521, 1801.302628 - (1231 + 440), 400.765289 - (34 + 24)),
                ["Người Giữ Mod (Mod Keeper)"] = Vector3.new(-(23.090583799999997 + 16), -245.141144, 195.837891),
                ["Ashe"] = Vector3.new(-(3189.9405500000003 - 1480), 66.86241100000001 + 83, 2213.399536 - 1484),
                ["Alfredrickus"] = Vector3.new(-(4872.60632 - 3352), 373.923264 - 231, 2559.522034 - 1795)
            }
            local v198 = v197[v196]
            if v198 then
                local v271 = game.Players.LocalPlayer
                if (v271 and v271.Character and v271.Character:FindFirstChild("HumanoidRootPart")) then
                    v271.Character.HumanoidRootPart.CFrame = CFrame.new(v198)
                end
            else
                warn("NPC đã chọn không hợp lệ!")
            end
        end
    }
)
local v141 =
    v128.Teleport:AddDropdown(
    "Teleport To Items",
    {
        ["Title"] = "Dịch Chuyển Đến Vật Phẩm / Cần Câu",
        ["Description"] = "Chọn một vật phẩm hoặc cần câu để dịch chuyển tới",
        ["Values"] = {
            "Cần câu Tập sự (Training Rod)",
            "Cần câu Nhựa (Plastic Rod)",
            "Cần câu May mắn (Lucky Rod)",
            "Cần câu Vua (King's Rod)",
            "Cần câu Yếu (Flimsy Rod)",
            "Cần câu Bóng đêm (Nocturnal Rod)",
            "Cần câu Nhanh (Fast Rod)",
            "Cần câu Carbon",
            "Cần câu Dài (Long Rod)",
            "Cần câu Thần thoại (Mythical Rod)",
            "Cần câu Midas",
            "Cần câu Đinh ba (Trident Rod)",
            "Bàn Cường Hóa (Enchanted Altar)",
            "Thùng Mồi Câu (Bait Crate)",
            "Thùng Mồi Chất Lượng (Quality Bait Crate)",
            "Lồng Cua (Crab Cage)",
            "Thiết bị định vị GPS",
            "Bộ Đồ Lặn Cơ Bản",
            "Radar Dò Cá (Fish Radar)"
        },
        ["Multi"] = false,
        ["Default"] = "None",
        ["Callback"] = function(v199)
            local v200 = {
                ["Cần câu Tập sự (Training Rod)"] = Vector3.new(1741.693848 - (299 + 985), 36.357529 + 112, 753.414307 - 523),
                ["Cần câu Nhựa (Plastic Rod)"] = Vector3.new(547.425385 - (86 + 7), 604.1697389999999 - 456, 229.172424),
                ["Cần câu May mắn (Lucky Rod)"] = Vector3.new(
                    43.085999000000015 + 403,
                    1028.253006 - (672 + 208),
                    96.16000399999999 + 126
                ),
                ["Cần câu Vua (King's Rod)"] = Vector3.new(1375.57642, -(942.201721 - (14 + 118)), -(748.509247 - (339 + 106))),
                ["Cần câu Yếu (Flimsy Rod)"] = Vector3.new(471.107697, 148.36171, 183.642441 + 46),
                ["Cần câu Bóng đêm (Nocturnal Rod)"] = Vector3.new(-141.874237, -515.313538, 573.04529 + 566),
                ["Cần câu Nhanh (Fast Rod)"] = Vector3.new(1842.183563 - (440 + 955), 146.225739 + 2, 395.187454 - 175),
                ["Cần câu Carbon"] = Vector3.new(454.083618, 50.59007299999999 + 100, 560.328827 - 335),
                ["Cần câu Dài (Long Rod)"] = Vector3.new(333.695038 + 152, 524.656326 - (260 + 93), 136.746109 + 9),
                ["Cần câu Thần thoại (Mythical Rod)"] = Vector3.new(889.716705 - 500, 238.588821 - 106, 2288.042847 - (1181 + 793)),
                ["Cần câu Midas"] = Vector3.new(103.98165899999998 + 298, 133.258316, 633.325745 - (105 + 202)),
                ["Cần câu Đinh ba (Trident Rod)"] = Vector3.new(-(1190.34192 + 294), -222.325562, -(3004.77002 - (352 + 458))),
                ["Bàn Cường Hóa (Enchanted Altar)"] = Vector3.new(5281.54651 - 3971, -(2042.469604 - 1243), -(80.7303467 + 2)),
                ["Thùng Mồi Câu (Bait Crate)"] = Vector3.new(1122.575134 - 738, 135.351928, 1286.534027 - (438 + 511)),
                ["Thùng Mồi Chất Lượng (Quality Bait Crate)"] = Vector3.new(
                    -(1560.876 - (1262 + 121)),
                    1212.472 - (728 + 340),
                    3722.844 - (816 + 974)
                ),
                ["Lồng Cua (Crab Cage)"] = Vector3.new(1451.803589 - 977, 535.664566 - 386, 229.49469),
                ["Thiết bị định vị GPS"] = Vector3.new(856.896729 - (163 + 176), 423.21763599999997 - 274, 284.856842),
                ["Bộ Đồ Lặn Cơ Bản"] = Vector3.new(1695.174774 - 1326, 132.508835, 75.70536799999999 + 173),
                ["Radar Dò Cá (Fish Radar)"] = Vector3.new(2175.75177 - (1564 + 246), 134.50499, 619.105804 - (124 + 221))
            }
            local v201 = v200[v199]
            if v201 then
                local v272 = 0
                local v273
                while true do
                    if (v272 == (451 - (115 + 336))) then
                        v273 = game.Players.LocalPlayer
                        if (v273 and v273.Character and v273.Character:FindFirstChild("HumanoidRootPart")) then
                            v273.Character.HumanoidRootPart.CFrame = CFrame.new(v201)
                        end
                        break
                    end
                end
            else
                warn("Vật phẩm đã chọn không hợp lệ!")
            end
        end
    }
)
local v136 =
    v128.Performance:AddSlider(
    "FPSCAP",
    {
        ["Title"] = "Giới hạn FPS",
        ["Description"] = "Mức giới hạn FPS của game (Tối đa 4000)",
        ["Default"] = 132 - 72,
        ["Min"] = 1 + 0,
        ["Max"] = 4046 - (45 + 1),
        ["Rounding"] = 1,
        ["Callback"] = function(v202)
            setfpscap(v202)
        end
    }
)
v128.Performance:AddButton(
    {
        ["Title"] = "Giảm Lag",
        ["Description"] = "Cải thiện FPS bằng cách vô hiệu hóa một số hiệu ứng và giảm chất lượng kết cấu.",
        ["Callback"] = function()
            local v203 = true
            local v204 = game
            local v205 = v204.Workspace
            local v206 = v204.Lighting
            local v207 = v205.Terrain
            v207.WaterWaveSize = 0
            v207.WaterWaveSpeed = 0
            v207.WaterReflectance = 0
            v207.WaterTransparency = 1990 - (1282 + 708)
            v206.GlobalShadows = false
            v206.FogEnd = 8999999488
            v206.Brightness = 1212 - (583 + 629)
            settings().Rendering.QualityLevel = "Level01"
            for v247, v248 in pairs(v204:GetDescendants()) do
                if (v248:IsA("Part") or v248:IsA("Union") or v248:IsA("CornerWedgePart") or v248:IsA("TrussPart")) then
                    local v278 = 0
                    local v279
                    while true do
                        if (v278 == 0) then
                            v279 = 0
                            while true do
                                if (v279 == (1170 - (943 + 227))) then
                                    v248.Material = "Plastic"
                                    v248.Reflectance = 0
                                    break
                                end
                            end
                            break
                        end
                    end
                elseif (v248:IsA("Decal") or (v248:IsA("Texture") and v203)) then
                    v248.Transparency = 1632 - (1539 + 92)
                elseif (v248:IsA("ParticleEmitter") or v248:IsA("Trail")) then
                    v248.Lifetime = NumberRange.new(1946 - (706 + 1240))
                elseif v248:IsA("Explosion") then
                    local v383 = 258 - (81 + 177)
                    while true do
                        if ((0) == v383) then
                            v248.BlastPressure = 258 - (212 + 45)
                            v248.BlastRadius = 3 - 2
                            break
                        end
                    end
                elseif (v248:IsA("Fire") or v248:IsA("SpotLight") or v248:IsA("Smoke")) then
                    v248.Enabled = false
                elseif v248:IsA("MeshPart") then
                    v248.Material = "Plastic"
                    v248.Reflectance = 0
                    v248.TextureID = 10385902758728956
                end
            end
            for v249, v250 in pairs(v206:GetChildren()) do
                if
                    (v250:IsA("BlurEffect") or v250:IsA("SunRaysEffect") or v250:IsA("ColorCorrectionEffect") or
                        v250:IsA("BloomEffect") or
                        v250:IsA("DepthOfFieldEffect"))
                 then
                    v250.Enabled = false
                end
            end
            print("Đã áp dụng các thiết lập Giảm Lag!")
        end
    }
)
local v142 = game:GetService("Players")
local v143 = v142.LocalPlayer
local function v144(v216)
    if v216 then
        for v281, v282 in ipairs(v216:GetDescendants()) do
            if (v282:IsA("BasePart") and (v282.Name ~= "HumanoidRootPart")) then
                local v325 = 1946 - (708 + 1238)
                while true do
                    if (v325 == 0) then
                        v282.Transparency = 1 + 0
                        v282.CanCollide = false
                        break
                    end
                end
            elseif v282:IsA("Decal") then
                v282.Transparency = 1668 - (586 + 1081)
            elseif (v282:IsA("Accessory") and v282:FindFirstChild("Handle")) then
                v282.Handle.Transparency = 512 - (348 + 163)
                v282.Handle.CanCollide = false
            end
        end
    end
end
local function v145(v217)
    if v217 then
        for v283, v284 in ipairs(v217:GetDescendants()) do
            if (v284:IsA("BasePart") and (v284.Name ~= "HumanoidRootPart")) then
                v284.Transparency = 0
                v284.CanCollide = true
            elseif v284:IsA("Decal") then
                v284.Transparency = 280 - (215 + 65)
            elseif (v284:IsA("Accessory") and v284:FindFirstChild("Handle")) then
                local v386 = 0
                while true do
                    if (v386 == (1859 - (1541 + 318))) then
                        v284.Handle.Transparency = 0
                        v284.Handle.CanCollide = true
                        break
                    end
                end
            end
        end
    end
end
local v146 =
    v128.Performance:AddToggle(
    "HidePlayersToggle",
    {
        ["Title"] = "Ẩn Người Chơi Khác",
        ["Description"] = "Ẩn hoặc hiển thị tất cả những người chơi khác xung quanh để giảm lag.",
        ["Default"] = false,
        ["Callback"] = function(v218)
            for v251, v252 in ipairs(v142:GetPlayers()) do
                if (v252 ~= v143) then
                    v252.CharacterAdded:Connect(
                        function(v303)
                            if v218 then
                                v144(v303)
                            else
                                v145(v303)
                            end
                        end
                    )
                    if v252.Character then
                        if v218 then
                            v144(v252.Character)
                        else
                            v145(v252.Character)
                        end
                    end
                end
            end
        end
    }
)
local function v147()
    local v219 = game.Workspace
    local v220 = game.Lighting
    local v221 = v219.Terrain
    v221.WaterWaveSize = 0
    v221.WaterWaveSpeed = 0
    v221.WaterReflectance = 0
    v221.WaterTransparency = 1750 - (1036 + 714)
    v220.GlobalShadows = false
    v220.FogEnd = 8999999488
    v220.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for v253, v254 in pairs(game:GetDescendants()) do
        if (v254:IsA("BasePart") or v254:IsA("MeshPart")) then
            local v285 = 0
            while true do
                if (v285 == 1) then
                    v254.CastShadow = false
                    break
                end
                if (v285 == 0) then
                    v254.Material = "SmoothPlastic"
                    v254.Reflectance = 1280 - (883 + 397)
                    v285 = 591 - (563 + 27)
                end
            end
        elseif v254:IsA("Decal") then
            v254.Transparency = 1
        elseif (v254:IsA("ParticleEmitter") or v254:IsA("Trail")) then
            v254.Lifetime = NumberRange.new(0)
        elseif v254:IsA("Explosion") then
            local v387 = 1986 - (1369 + 617)
            while true do
                if (v387 == (1487 - (85 + 1402))) then
                    v254.BlastPressure = 1 + 0
                    v254.BlastRadius = 2 - 1
                    break
                end
            end
        elseif (v254:IsA("Fire") or v254:IsA("SpotLight") or v254:IsA("Smoke")) then
            v254.Enabled = false
        end
    end
    for v255, v256 in pairs(v220:GetChildren()) do
        if (v256:IsA("PostEffect") or v256:IsA("DepthOfFieldEffect")) then
            v256.Enabled = false
        end
    end
end
v128.Performance:AddButton(
    {
        ["Title"] = "Tăng FPS 1-Click",
        ["Description"] = "Tối ưu hóa tức thì các cài đặt đồ họa và hiệu ứng để tăng tối đa FPS.",
        ["Callback"] = function()
            v147()
        end
    }
)
