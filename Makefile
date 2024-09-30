PWD=$(shell pwd)

.PHONY: install
install: generate
	@mkdir -p ~/.config
	@ln -sf $(PWD)/generated/foot ~/.config/
	@ln -sf $(PWD)/generated/fuzzel ~/.config/
	@ln -sf $(PWD)/generated/mako ~/.config/
	@ln -sf $(PWD)/generated/sway ~/.config/
	@ln -sf $(PWD)/generated/yambar ~/.config/
	@ln -sf $(PWD)/generated/zathura ~/.config/
	@ln -sf $(PWD)/generated/.bashrc ~/.bashrc
	@ln -sf $(PWD)/generated/.bash_profile ~/.bash_profile
	@ln -sf $(PWD)/generated/wallpaper.jpg ~/.config/wallpaper.jpg
	@if ! test -d ~/.config/nvim; then git clone http://github.com/Kravantokh/nvim ~/.config/nvim; fi
	@echo "Successfully installed everything."

.PHONY: remove
remove:
	@unlink ~/.config/foot
	@unlink ~/.config/fuzzel
	@unlink ~/.config/mako
	@unlink ~/.config/sway
	@unlink ~/.config/yambar
	@unlink ~/.config/zathura
	@unlink ~/.bashrc
	@unlink ~/.bash_profile
	@unlink ~/.config/wallpaper.jpg
	@rm -rf ~/.config/nvim

.PHONY: update
update: install
	git -C ~/.config/nvim pull
	@echo "Successfully updated everything."

generate:  generated/.bashrc generated/.bash_profile generated/foot/foot.ini generated/fuzzel/fuzzel.ini generated/mako/config generated/sway/config generated/yambar/config.yml generated/zathura/zathurarc generated/wallpaper.jpg

generated/.bashrc: src/bash/.bashrc
	mkdir -p generated
	cp src/bash/.bashrc generated/.bashrc

generated/.bash_profile: src/bash/.bash_profile
	mkdir -p generated
	cp src/bash/.bash_profile generated/.bash_profile


generated/foot/foot.ini: src/foot/foot.ini theme/colors.cfg
	mkdir -p generated/foot
	cat theme/colors.cfg src/foot/foot.ini | sed -n -f sedpreproc/preproc.sed | sed -f profile/foot.sed > generated/foot/foot.ini

generated/fuzzel/fuzzel.ini: src/fuzzel/fuzzel.ini theme/colors.cfg
	mkdir -p generated/fuzzel
	cat theme/colors.cfg src/fuzzel/fuzzel.ini | sed -n -f sedpreproc/preproc.sed | sed -f profile/fuzzel.sed > generated/fuzzel/fuzzel.ini

generated/mako/config: src/mako/config theme/colors.cfg
	mkdir -p generated/mako
	cat theme/colors.cfg src/mako/config | sed -n -f sedpreproc/preproc.sed | sed -f profile/mako.sed > generated/mako/config

generated/sway/config: src/sway/config theme/colors.cfg
	mkdir -p generated/sway
	cat src/sway/config | sed -f profile/sway.sed > generated/sway/config

generated/yambar/config.yml: src/yambar/config.yml theme/colors.cfg
	mkdir -p generated/yambar
	cat theme/colors.cfg src/yambar/config.yml | sed -n -f sedpreproc/preproc.sed | sed -f profile/yambar.sed > generated/yambar/config.yml

generated/zathura/zathurarc: src/zathura/zathurarc theme/colors.cfg
	mkdir -p generated/zathura
	cat theme/colors.cfg src/zathura/zathurarc | sed -n -f sedpreproc/preproc.sed | sed -f profile/zathura.sed > generated/zathura/zathurarc

generated/wallpaper.jpg: theme/wallpaper.jpg
	cp theme/wallpaper.jpg generated/wallpaper.jpg


