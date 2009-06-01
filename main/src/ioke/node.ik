use("edge")

Node = Origin mimic 

Node do(
	initialize = method("Initialises the node", id, 
		@id = id

		@outgoing_edges = (Set mimic)
		@incoming_edges = (Set mimic)
	)

	getOrCreateInContext = method(
		"references a named node in the specified context, or creates it if needed",
		context, nodeName,
	
		if (context cell?(nodeName), 
		; then
			context cell(nodeName),
		; else
			node = Node mimic(nodeName)
			context cell(nodeName) = node 
;			"Created node '#{node}'" println
			node
		)	
	) 

	asText = method("Describes the node",
		"##{@id}"
	)
	
	notice = cell("asText")

	connectTo = method("Connects to another node", otherNode, weight 1.0, 
		edge = Edge mimic(self, otherNode, weight)
		@outgoing_edges << edge
		otherNode incoming_edges << edge

		edge
	)
	-> = cell("connectTo")

	connectBoth = method("Bi-directional connection", otherNode, weight 1.0,
		edge1 = self connectTo(otherNode, weight)
		edge2 = otherNode connectTo(self, weight)
		
		[ edge1, edge2 ]
	)
	<-> = cell("connectBoth")
)
