.PHONY: release

release:
	tar czf /tmp/${REPONAME}_${VERSION}_linux_amd64.tar.gz bin/ 
	sum=$$(sha512sum /tmp/${REPONAME}_${VERSION}_linux_amd64.tar.gz | cut -d ' ' -f 1); \
	f=$$(basename ${REPONAME}_${VERSION}_linux_amd64.tar.gz); \
	echo $$sum $${f} > /tmp/${REPONAME}_${VERSION}_sha512_checksums.txt; \
	echo $$sum;
