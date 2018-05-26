function lsvenv --description "List all of the environments."
    if test -e $VENV
        eval ls $VENV
    else
        echo "No directory for environments"
    end
end
