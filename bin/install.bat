@setlocal

cd %~dp0
@echo off
REM set PROJECT_ROOT=../../web_project

if "%PROJECT_ROOT%" == "" (
  echo ===============================================================
  echo コメントアウトされている PROJECT_ROOT を設定してください。

  echo ===============================================================
  pause
  GOTO :END
)
@echo on

set UI_PLUGINS_DIRS=ui_plugins

node "..\\node_modules\\nablarch-dev-tool-installer\\bin\\installer.js"

:END