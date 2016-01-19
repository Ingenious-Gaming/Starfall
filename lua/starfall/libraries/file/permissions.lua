local P = {}

function P.check ( player, node, target )
	if SERVER then
		return SF.Permissions.hasNode( player, node .. ".server" )
	elseif CLIENT then
		--TODO: Allow buddy detection
		if player == target then
			return SF.Permissions.hasNode( player, node .. ".client.self" )
		else
			return SF.Permissions.hasNode( player, node .. ".client.other" )
		end
	end
end

SF.Permissions.registerProvider( P )
