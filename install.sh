#!/bin/bash

function die() {
  echo "${@}"
  exit 1
}

git clone --recursive https:https://github.com/khusnetdinov/.tmux \
  || die "Could not clone repository to ${HOME}/.tmux"

brew install tmux || die "Could not install tmux to OS"

ln -s "${HOME}/.tmux/tmux.conf" "${HOME}/.tmux.conf" \
  || die "Cpuld not link .tmux.conf file"
echo ".tmux.conf has been linked to .tmux/tmux.conf"

