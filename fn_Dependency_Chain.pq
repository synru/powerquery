(suffix as text, sourceList as any) =>
let
	Result=
	if List.Count(sourceList) = 0 then {suffix}
	else
		List.Combine(
			List.Transform(sourceList, each
				List.Transform(
					let t=_
					in
					@fn_Dependency_Chain(Text.From(t),
						Table.Column(Table.SelectRows(Dependency, each ([target_id] = t and [source_id] <> null), "source_id")),
					each Text.From(_) & "/" & suffix
				)
			)
		)
	in
		Result
