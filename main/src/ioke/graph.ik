use("node")

Graph = Origin mimic

Graph do(
	
	initialize = method(
		"initializes the graph",
		
		@nodes = Set mimic
	)
	
	getOrCreateNode = method(
		"Gets or creates a node in the graph", 
		nodeName,
	
		node = Node getOrCreateInContext(self, nodeName)
		@nodes << node
		
		node
	)

	describe = cell("do")

	pass = macro(
		nodeName = call message name
		if (#/[a-zA-Z]+[a-zA-Z0-9_]*/ =~ nodeName, getOrCreateNode(nodeName), nil)
	)
)