function __fish_gul_no_sub
    # Здесь можно указать возможные аргументы для вашей команды
    echo 'install'
    echo 'add'
    echo 'check'
    echo 'init'
end

complete -c gul -a '(__fish_gul_no_sub)'
# complete -c gul -n '__fish_use_subcommand'
