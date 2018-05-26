function rmvenv --description "Remove an environment."
    if test (count $argv) -eq 1
        set --local venv $VENV/$argv[1]

        if test -e $venv
            eval rm -rf $venv
        else
            echo "$venv does not exist."
        end
    end
end
