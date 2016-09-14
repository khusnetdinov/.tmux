#!/bin/bash

function die() {
  echo "${@}"
  exit 1
}

unlink "${HOME}/.tmux.conf"

rm -rf "${HOME}/.tmux" || die "Can't remove .tmux"

echo "Uninstall .tmux is done!"
