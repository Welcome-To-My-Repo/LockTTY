default:
	g++ -c lock.cpp -olocktty
	strip locktty

debug:
	g++ lock.cpp -g -olocktty

clean:
	rm -f locktty

install:
	@echo installing...
	@cp locktty /usr/local/bin/
	@echo finished

uninstall:
	@echo uninstalling...
	@rm /usr/local/bin/locktty
	@echo finished
