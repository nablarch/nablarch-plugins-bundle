@setlocal

cd %~dp0

set PROJECT_ROOT=../../nablarch-tutorial-project
set UI_PLUGINS_DIRS=ui_plugins

node "..\\node_modules\\nablarch-dev-tool-installer\\bin\\installer.js"
