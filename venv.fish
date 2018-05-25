if test -z $VENV
    set VENV $HOME/venv
end

function lsvenv --description "List all of the environments."
    eval ls $VENV
end

function mkvenv --description "Create a new environment."
    if test (count $argv) -eq 1
        set venv $VENV/$argv[1]

        if not test -e $venv
            eval python3 -m venv $venv
            workon $argv[1]
        end
    end
end

function rmvenv --description "Remove an environment."
    if test (count $argv) -eq 1
        set venv $VENV/$argv[1]

        if test -e $venv
            eval rm -rf $venv
        end
    end
end

function workon --description "Change working virtual environments."
    if test (count $argv) -eq 1
        set venv $VENV/$argv[1]
    else
        set venv $VENV/(basename (pwd))
    end

    if test -e $venv/bin/activate.fish
        source $venv/bin/activate.fish
    end
end

complete --command lsvenv --no-files
complete --command mkvenv --no-files
complete --command rmvenv --arguments "(lsvenv)" --no-files
complete --command workon --arguments "(lsvenv)" --no-files
