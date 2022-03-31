# Sample .profile for SUSE Linux
# rewritten by Christian Steinruecken <cstein@suse.de>
#
# This file is read each time a login shell is started.
# All other interactive shells will only read .bashrc; this is particularly
# important for language settings, see below.

test -z "$PROFILEREAD" && . /etc/profile || true

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# export PATH="$HOME/.cargo/bin:$PATH"
# export PATH="$HOME/go/bin:$PATH"

# export DOCKER_HOST=unix:///run/user/1000/docker.sock
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export JAVA_HOME="/usr/lib64/jvm/java-11-openjdk-11"
# export PGDATA=/var/lib/pgsql/data
