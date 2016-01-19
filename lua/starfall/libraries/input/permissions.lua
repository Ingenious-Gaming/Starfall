local P = {}

function P.check ( player, node, target )
	if target == player then
		return SF.Permissions.hasNode( player, node .. ".self" )
	end

	--return SF.Permissions.hasNode( player, node .. ".buddy" )

	return SF.Permissions.hasNode( player, node .. ".other" )
end

SF.Permissions.registerProvider( P )
