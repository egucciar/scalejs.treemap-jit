param($installPath, $toolsPath, $package, $project)

$project |
	Remove-Paths 'scalejs.treemap-jit, jit, color-scheme' |
	Remove-ScalejsExtension 'scalejs.treemap-jit' |
	Remove-Shims 'jit'
	Out-Null
