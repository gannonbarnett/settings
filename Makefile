~/.vim/colors/everforest.vim:
	curl -o ~/.vim/colors/everforest.vim --create-dirs https://raw.githubusercontent.com/sainnhe/everforest/master/colors/everforest.vim 

~/.vim/autoload/everforest.vim:
	curl -o ~/.vim/autoload/everforest.vim --create-dirs https://raw.githubusercontent.com/sainnhe/everforest/master/autoload/everforest.vim 

.PHONY: install
install: ~/.vim/colors/everforest.vim ~/.vim/autoload/everforest.vim
	install vimrc ~/.vimrc

.PHONY:clean
clean:
	rm -rf ~/.vim
	rm -rf ~/.vimrc
