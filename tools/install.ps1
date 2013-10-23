param($installPath, $toolsPath, $package, $project)

$project |
	Add-Paths "{
		'scalejs.treemap-jit' : 'Scripts/scalejs.treemap-jit-$($package.Version)',
		'jit' : 'Scripts/jit',
		'color-scheme': 'Scripts/color-scheme.min'
	}" |
	Add-ScalejsExtension 'scalejs.treemap-jit' |
	Add-Shims "{
		'jit' : {
			exports: '`$jit'
		},
		'color-scheme': {
			exports: 'ColorScheme'
		}
	}" |
	Out-Null