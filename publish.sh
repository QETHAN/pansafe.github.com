rm -R -f ./out
git clone git@github.com:pansafe/pansafe.github.com.git --branch master ./out
if [ -e $GITHUB_USERNAME ] 
then  
  echo -e "请输入你的Github用户名:\c"
  read GITHUB_USERNAME
  export GITHUB_USERNAME $GITHUB_USERNAME
  echo -e "请输入你的Github密码:\c"
  read GITHUB_PASSWORD
  export GITHUB_PASSWORD $GITHUB_PASSWORD
fi
docpad generate
cd out
git add --all
git commit --all --message 'compiled from branch src'
git push
cd ..
rm -R -f ./out
