# REPO_URL <https://github.com/lee-lej/blackb-t-1>
#commands on steps 1 to 8

npx create-react-app blackb-t-1
cd blackb-t-1

gh auth login

gh repo create
git checkout -b update_logo

sed -i "" 's|img src={logo}|img src="https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg"|g' src/App.js
sed -i "" 's|href="https://reactjs.org"|href="https://www.propelleraero.com/dirtmate/"|g' src/App.js
git add .
git commit -m "Update logo to Propeller and link to Dirtmate"
git push --set-upstream origin update_logo

gh pr create --title "Update logo and link"
gh pr merge
