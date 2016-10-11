@setlocal

cd %~dp0
@echo off
REM set PROJECT_ROOT=../../nablarch-tutorial-project

if "%PROJECT_ROOT%" == "" (
  echo ===============================================================
  echo コメントアウトされている PROJECT_ROOT を設定してください。

  echo ===============================================================
  pause
  GOTO :END
)
@echo on

set UI_PLUGINS_DIRS=ui_plugins

node "..\\node_modules\\nablarch-dev-tool-update_support\\bin\\updated_plugin.js"
pause

:END