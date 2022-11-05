~/.vim/colors/everforest.vim:
	curl -o ~/.vim/colors/everforest.vim --create-dirs https://raw.githubusercontent.com/sainnhe/everforest/master/colors/everforest.vim 

~/.vim/autoload/everforest.vim:
	curl -o ~/.vim/autoload/everforest.vim --create-dirs https://raw.githubusercontent.com/sainnhe/everforest/master/autoload/everforest.vim 

.PHONY: dotfiles
dotfiles: ~/.vim/colors/everforest.vim ~/.vim/autoload/everforest.vim
	cp -r dotfiles/ ~/
	source ~/.bashrc

.PHONY: rust
rust: 
	curl https://sh.rustup.rs -sSf | sh -s -- -y

.PHONY: install
install: 
	make dotfiles
	make tmp/setshell 
	make rust

tmp/setshell:
	chsh -s /bin/bash
	[ -d tmp ] || mkdir tmp
	touch tmp/setshell

.PHONY:clean
clean:
	rm -rf ~/.vim
	rm -rf tmp
