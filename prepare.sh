#!/usr/bin/env sh
if [ "$TRAVIS_OS_NAME" = "windows" ]
then
    iex "(new-object net.webclient).downloadstring('https://get.scoop.sh')";
    scoop install deno;
else
    curl -sL https://deno.land/x/install/install.sh | sh -s $DENO_VERSION;
fi

# print deno info
$HOME/.deno/bin/deno version