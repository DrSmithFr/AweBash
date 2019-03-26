# Docker
export DOCKER_HOST=''
alias di="docker-init"
alias dc="docker-compose"
alias dconsole="docker/console"
alias dcomposer="docker/composer"

function docker_cleanup()
{
    sudo rm -rf /var/lib/docker/* && \
    docker rmi $(docker images -a --filter=dangling=true -q) && \
    docker rm $(docker ps --filter=status=exited --filter=status=created -q)
}