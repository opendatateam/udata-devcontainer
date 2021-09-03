. /usr/local/share/nvm/nvm.sh

for val in udata udata-gouvfr; do
    cd $val
    nvm install
    nvm use
    npm install
    inv assets-build
    cd -
done
