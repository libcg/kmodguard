DESTDIR=/

install:
	cp kmodguard-{clean,restore,save} $(DESTDIR)/usr/bin
	cp kmodguard-{restore,save}.hook $(DESTDIR)/usr/share/libalpm/hooks
	cp kmodguard-clean.service $(DESTDIR)/usr/lib/systemd/system
