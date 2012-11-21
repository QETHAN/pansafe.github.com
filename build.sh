if [ -e $GITHUB_USERNAME ] 
then  
  echo -e "请输入你的Github用户名:\c"
  read GITHUB_USERNAME
  export GITHUB_USERNAME $GITHUB_USERNAME
  echo -e "请输入你的Github密码:\c"
  read GITHUB_PASSWORD
  export GITHUB_PASSWORD $GITHUB_PASSWORD
fi
docpad generate --out ./