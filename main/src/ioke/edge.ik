Edge = Origin mimic
Edge do(

	initialize = method(
		"Initializes the edge", 
		node1, node2, weight 1.0,
		
		@node1 = node1
		@node2 = node2
		@weight = weight
	)
	
	asText = method(
		"Describes the edge",
		
		"#{@node1} -> #{@node2}#{if(weight != 1.0, "(#{@weight})", "")}"
	)	

	notice = cell("asText")	
)

