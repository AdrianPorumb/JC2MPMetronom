local s1=os.time()
local m1=os.time()
local O1=os.time()
local s2=os.time()
function Secundar()
if os.difftime(os.time(),s1)>=1 then
 s1=os.time()
Events:Fire("Secundar")
--print("Secundar")
end
end

function Secundar2()
if os.difftime(os.time(),s2)>=2 then
 s2=os.time()
Events:Fire("Secundar2")
--print("Secundar")
end
end

function Minutar()
if os.difftime(os.time(),m1)>=60 then
 m1=os.time()
Events:Fire("Minutar")
--print("Minutar")
end
end
function Ora()
if os.difftime(os.time(),O1)>=3600 then
 O1=os.time()
Events:Fire("Ora")
--print("Ora")
end
end
Events:Subscribe("PreTick",Secundar)
Events:Subscribe("PreTick",Secundar2)
Events:Subscribe("PreTick",Minutar)
Events:Subscribe("PreTick",Ora)