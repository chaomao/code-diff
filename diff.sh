#!/bin/sh
 pushd home-ideas
 git pull
 old_version=`cat ../version.txt`
 echo $old_version
 git log -1 --format=format:"%H" > ../version.txt
 git diff $old_version..head | mate
 popd
