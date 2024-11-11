
function __fish_gul_needs_command
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 1 -a $cmd[1] = 'gul' ]
    return 0
  end  
  return 1
end

function __fish_gul_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
end

complete -c gul -f
complete -c gul -n '__fish_gul_needs_command' -a 'install add check init'
complete -c gul -n '__fish_gul_using_command install' -a '.'
complete -c gul -n '__fish_gul_using_command check' -a '.'
