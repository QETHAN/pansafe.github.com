sudo npm install docpad -g
rm -R -f ./out
git clone git@github.com:pansafe/pansafe.github.com.git --branch master ./out
npm install
npm update
docpad generate
cd out
git add --all
git commit --all --message 'compiled from branch src'
git push
cd ..
rm -R -f ./out
