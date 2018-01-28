PROJECTS = qo no crypto

all clean install: 
	for prj in $(PROJECTS) ; do \
        make -C $$prj $@ ; \
	done
