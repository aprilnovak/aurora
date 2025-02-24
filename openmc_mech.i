[Mesh]
  type = GeneratedMesh
  dim = 1
  nx = 1
[]

[Problem]
  type = OpenMCProblem
[]

[Executioner]
  type = OpenMCExecutioner
  variables = 'heating-local flux'
  err_variables = 'heating-local-err flux-err'
  score_names = 'heating-local flux'
  tally_ids = '1 1'
  neutron_source = 1.0e18
  launch_threads=true
  n_threads=4
[]

[UserObjects]
  [moab]
    type = MoabUserObject
    bin_varname = "temp"
    density_name = "density_local"
    material_names = 'copper_density air_density'
    material_openmc_names = 'copper air'
    output_skins = true
    length_scale = 1.0
  []
[]

#  Uncomment these lines to disable output to screen
#[Outputs]
#  console = false
#  [my_console]
#    type = Console
#    output_screen = false
#  []
#[]
