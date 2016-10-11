(mvn clean compile dependency:copy-dependencies -f ../node_modules/nablarch-dev-tool-server/ui_test/pom.xml);
if [ $? -ne 0 ]; then 
  echo "nablarch-dev-tool-serverのビルドに失敗しました。"
  exit $?
fi

(cd .. && npm install);
