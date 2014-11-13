#!/usr/bin/env bash

rm -rf ~/.vim/

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

rm -f ~/.vimrc
mv ~/vim/.vimrc ~/.vimrc

cp -rf ~/vim/bundle ~/.vim/

echo Gracias por usar mi configuración!
echo manujas
