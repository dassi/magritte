baselines
baseline330ForPharo: spec
  spec
    for: #'squeakCommon'
    do: [ 
      spec
        package: 'Magritte-Deprecated3dot7'
          with: [ spec requires: #('Magritte-Model' 'Magritte-Morph') ];
        package: 'Magritte-Model'
          with: [ spec includes: #('Magritte-Pharo-Model' 'Magritte-Deprecated3dot7') ];
        package: 'Magritte-Tests-Model'
          with: [ spec includes: #('Magritte-Tests-Pharo-Model') ];
        package: 'Magritte-Pharo-Model'
          with: [ spec requires: #('Magritte-Model') ];
        package: 'Magritte-Tests-Pharo-Model'
          with: [ spec requires: #('Magritte-Pharo-Model') ];
        package: 'Magritte-Seaside'
          with: [ spec includes: #('Magritte-Pharo-Seaside') ];
        package: 'Magritte-Pharo-Seaside'
          with: [ spec requires: #('Magritte-Seaside') ];
        package: 'Magritte-Morph' with: [ spec requires: #('Magritte-Model') ];
        package: 'Magritte-Pharo-Tools'
          with: [ spec requires: #('Magritte-Deprecated') ].
      spec
        group: 'Tools' with: #('Magritte-Pharo-Tools');
        group: 'default' with: #('Magritte-Morph') ].
  spec
    for: #'pharo9.x'
    do: [ 
      spec
        package: 'Magritte-Pillar'
        with: [ spec requires: #('Magritte-Model')	"assumes Pillar is loaded, which is the case in P9 and GT" ] ].
  spec
    for: #(#'pharo7.x' #'pharo8.x' #'pharo9.x')
    do: [ 
      spec
        baseline: 'PharoEnhancements'
        with: [ spec repository: 'github://seandenigris/Pharo-Enhancements' ].
      spec
        package: 'Magritte-Deprecated3dot7'
          with: [ spec requires: #('Magritte-Model' 'Magritte-Morph') ];
        package: 'Magritte-Pharo-Model' with: 'Magritte-Pharo7-Model';
        package: 'Magritte-Glamour'
          with: [ spec requires: #('Magritte-Model' 'Magritte-Morph') ];
        package: 'Magritte-GT'
          with: [ spec requires: #('Magritte-Morph' 'Magritte-Glamour') ];
        package: 'Magritte-Developer'
          with: [ spec requires: #('Magritte-Model') ].	" create a temporary alias "
      spec group: 'default' with: #('Magritte-GT' 'Magritte-Developer') ].
  spec
    for: #(#'pharo6.x')
    do: [ 
      " create a temporary alias "
      spec package: 'Magritte-Pharo-Model' with: 'Magritte-Pharo3-Model' ].
  spec
    for: #'GToolkit'
    do: [ 
      spec
        package: 'Magritte-Developer'
          with: [ spec includes: #('Magritte-GToolkit') ];
        package: 'Magritte-GToolkit'
          with: [ spec requires: #('Magritte-Model' 'Magritte-UI') ];
        package: 'Magritte-Merging';
        package: 'Magritte-Merging-Bloc'
          with: [ spec requires: #('Magritte-Merging') ];
        package: 'Magritte-UI' with: [ spec requires: #('Magritte-Model') ].
      spec group: 'default' with: #(#'Magritte-GToolkit') ]