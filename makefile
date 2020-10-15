SASS_FLAGS = --no-source-map -s compressed

all: gtk

gtk: clean
	mkdir -p out/qarbon/gtk-3.0
	sass $(SASS_FLAGS) src/gtk/main.scss out/qarbon/gtk-3.0/gtk.css
	cp src/index.theme out/qarbon/

clean:
	rm -rf out/

install: uninstall
	sudo cp -r out/qarbon /usr/share/themes

uninstall:
	sudo rm -rf /usr/share/themes/qarbon

buildNInstall: gtk install
