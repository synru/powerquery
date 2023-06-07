(dependencies as table, separator as text, startList as list, optional suffix as text) as list =>
let
	Result=
	if List.Count(startList) = 0 then {suffix}
	else
		List.Combine(
			List.Transform(startList, each
				List.Transform(
					let t=_
					in
					@fn_Dependency_Chain(dependencies,separator,
						Table.Column(
							Table.SelectRows(dependencies, each ([target_id] = t and [source_id] <> null))
						, "source_id"), Text.From(t)
					),
					each Text.From(_) & (if suffix = null then "" else separator & suffix)
				)
			)
		)
	in
		Result
