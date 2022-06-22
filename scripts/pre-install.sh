#!/bin/bash
########################################################
##### 반드시 꼭 Shell Script를 ec2-user로 실행할 것.... #####
########################################################
#ec2-user로 실행할 것

# Node.js 구성
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# nvm 설치 스크립트 실행
. ~/.nvm/nvm.sh

# Node.js 설치
nvm install 16.15.1

# 설치된 Node.js 버전 확인
node -e "console.log('Running Node.js ' + process.version)"

# 경로 생성 후 ec2-user 소유로 변경
sudo mkdir /www
sudo chown ec2-user /www