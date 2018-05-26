function mkvenv --description "Create a new environment."
    if not test -e $VENV
        eval mkdir $VENV
    end

    if test (count $argv) -eq 1
        set --local venv $VENV/$argv[1]

        if test -e $venv
            echo "$argv[1] is already exists."
        else
            eval python3 -m venv $venv
            workon $argv[1]
        end
    end
end
