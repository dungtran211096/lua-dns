local socket = require ("socket")

-- @module Resolver
local Resolver = {}
Resolver.__index = Resolver 
--------------------------------
-- Creates a new table of `resolver`
--
-- @function #Resolver new
-- @param #table servers        list of DNS server
-- @param #number timeout       connection timeout
-- @retrun new table of `resolver`

function Resolver.new(servers, timeout)
    return setmetatable({server = servers or {},
                    cache = {}, timeout = timeout or 5,
                    tcp = false}, Resolver)
end        
-----------------------------------------------------
-- Add a dns server to server table
--
-- @function #Resolver addServer
-- @param #string server		DNS server

function Resolver.addServer(server)
	local server = self.servers
	servers[#server + 1] = server
end
------------------------------------------------------
-- Enable TCP
--
-- @function #Resolver enableTCP

function Resolver.enableTCP()
	self.tcp = true
end
-------------------------------------------------------
-- Disable cache 
--
-- @function #Resolver disCache

function Resolver.disCache()
	self.cache = nil
end

