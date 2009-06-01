use("graph")

graph = Graph mimic

graph describe(
	a -> b
	d -> b
	(a <-> c) each(weight = 5.0)

	b_6 -> d5
)

graph nodes each(inspect println)

