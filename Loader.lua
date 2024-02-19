-- <- Services ->
local HttpService = game:GetService("HttpService")
-- <- Variables ->
local Commits = HttpService:JSONDecode(game:HttpGet("https://api.github.com/repos/razrukha/Celex/commits"))
-- <- Main ->
if Commits and typeof(Commits) == "table" and Commits[1] and Commits[1].sha then
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/razrukha/Celex/" .. Commits[1].sha .. "/Library.lua"))()
end