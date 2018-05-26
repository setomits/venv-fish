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
