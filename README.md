PathView [![Build Status](https://travis-ci.org/hpi-swa-teaching/PathView.svg)](https://travis-ci.org/hpi-swa-teaching/PathView)
===================

Install in 4.6 and use a cloned repository with filetree
```smalltalk
"install path view from local filetree"
{
 Metacello new
  baseline: 'PathView';
  repository: 'filetree://absolute-path-to-git-repository/packages'.
}
 do: [ :baseline | baseline get ];
 do: [ :baseline | baseline
  onConflict: [ :ex | ex allow ];
  load: 'Tests'
].
```

Install in 4.6 and pull code directly from github
```smalltalk
"Install PathView@presentation-release"
{
Metacello new
	baseline: 'PathView';
	githubUser: 'hpi-swa-teaching'
	project: 'PathView'
	commitish: 'final-release'
	path: 'packages'
}
do: [ :baseline | baseline get ];
do: [ :baseline | baseline
	onConflict: [ :ex | ex allow ];
	load: 'Tests' ].
```
