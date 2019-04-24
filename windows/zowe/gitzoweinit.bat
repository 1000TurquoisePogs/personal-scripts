@echo off
git clone --recursive git@github.com:zowe/zlux.git %1
cd %1
git clone git@github.com:zowe/file-transfer-app.git
git clone git@github.com:zowe/jupyter-app.git
git clone git@github.com:zowe/db-browser.git
git clone git@github.com:zowe/db-browser-db2.git
git clone git@github.com:zowe/workshop-starter-app.git
git clone git@github.com:zowe/sample-angular-app.git
git clone git@github.com:zowe/sample-react-app.git
git clone git@github.com:zowe/sample-iframe-app.git
git clone git@github.com:zowe/tn3270-ng2.git
git clone git@github.com:zowe/vt-ng2.git
git clone git@github.com:zowe/zss-auth.git
git clone git@github.com:zowe/zosmf-auth.git

call doforallgit git remote rename origin zowe
call doforallgit git remote add origin git@github.com:%2/%%%%G.git
call doforallgit git fetch origin
call doforallgit git checkout staging
goto :finished

:finished
echo Done
