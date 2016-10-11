cd %~dp0

call mvn clean compile dependency:copy-dependencies -f ../node_modules/nablarch-dev-tool-server/ui_test/pom.xml

if NOT "%ERRORLEVEL%" == "0" (
  echo "nablarch-dev-tool-server‚Ìƒrƒ‹ƒh‚É¸”s‚µ‚Ü‚µ‚½B"
  exit /B
)

pushd ..
npm install
popd
pause
