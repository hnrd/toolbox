# example run:

    docker run -ti --rm -v some_data_volume:/data -v ${HOME}/.ssh/known_hosts:/root/.ssh/known_hosts:ro hnrd/toolbox
