#!/usr/bin/env bash
if [ ! -d "myblog" ]; then
  echo "Downloading jarvis"
  git clone https://github.com/chengcx1019/Jarvis.git jarvis

else
  echo "Dependencies found, skipping retrieval..."
fi

docker build . --network host -t jarvis:v1



