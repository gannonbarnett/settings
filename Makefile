~/.vim/colors/everforest.vim:
	curl -o ~/.vim/colors/everforest.vim --create-dirs https://raw.githubusercontent.com/sainnhe/everforest/master/colors/everforest.vim 

~/.vim/autoload/everforest.vim:
	curl -o ~/.vim/autoload/everforest.vim --create-dirs https://raw.githubusercontent.com/sainnhe/everforest/master/autoload/everforest.vim 

.PHONY: install
install: ~/.vim/colors/everforest.vim ~/.vim/autoload/everforest.vim
	cp -r dotfiles/ ~/
	chsh -s /bin/bash
	source ~/.bashrc

.PHONY:clean
clean:
	rm -rf ~/.vim
	rm -rf ~/.vimrc
	rm ~/.bashrc
	rm ~/.profile
