DEST=/

install:
	cp kmodguard-{clean,restore,save} $(DEST)/usr/bin
	cp kmodguard-{restore,save}.hook $(DEST)/usr/share/libalpm/hooks
	cp kmodguard-clean.service $(DEST)/usr/lib/systemd/system
