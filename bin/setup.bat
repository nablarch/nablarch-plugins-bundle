cd %~dp0

call mvn clean compile dependency:copy-dependencies -f ../node_modules/nablarch-dev-tool-server/ui_test/pom.xml

if NOT "%ERRORLEVEL%" == "0" (
  echo "nablarch-dev-tool-server�̃r���h�Ɏ��s���܂����B"
  exit /B
)

pushd ..
npm install
popd
pause
