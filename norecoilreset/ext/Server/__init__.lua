class 'norecoilresetServer'


function norecoilresetServer:__init()
	print("Initializing norecoilresetServer")
	self:RegisterVars()
	self:RegisterEvents()
end


function norecoilresetServer:RegisterVars()
	--self.m_this = that
end


function norecoilresetServer:RegisterEvents()
	self.m_ReadInstanceEvent = Events:Subscribe('Partition:ReadInstance', self, self.ReadInstance)
end


function norecoilresetServer:ReadInstance(p_Instance,p_PartitionGuid, p_Guid)
	if p_Instance == nil then
		return
	end
	
	if p_Instance.typeName == "SomeType" then
		local s_Instance = SomeType(p_Instance)
		s_Instance.someThing = true
	end
	
	
	if p_Guid == Guid("Some-Guid", "D") then
		local s_Instance = SomeClass(p_Instance)
		s_Instance.someThing = true
	end
end


g_norecoilresetServer = norecoilresetServer()

