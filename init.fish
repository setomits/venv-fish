if test -z $VENV
    set VENV $HOME/venv
end

if not test -e $VENV
    eval mkdir $VENV
end
