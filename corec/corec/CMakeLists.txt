add_library(corec STATIC
	array/array.c
	helpers/charconvert/charconvert_linux.c
	helpers/date/date_libc.c
	helpers/file/bufstream.c
	helpers/file/memstream.c
	helpers/file/streams.c
	helpers/file/tools.c
	helpers/file/file_libc.c
	helpers/file/stream_stdio.c
	helpers/md5/md5.c
	helpers/parser/parser2.c
	helpers/parser/strtab.c
	helpers/parser/strtypes.c
	helpers/parser/dataheap.c
	helpers/parser/buffer.c
	helpers/parser/hotkey.c
	helpers/parser/nodelookup.c
	helpers/parser/urlpart.c
	helpers/system/ccsystem_posix.c
	multithread/multithread_pthread.c
	node/node.c
	node/nodetree.c
	str/str_linux.c
)

install(FILES
	banned.h
	confhelper.h
	corec.h
	err.h
	helper.h
	memalloc.h
	memheap.h
	portab.h
	DESTINATION ${CMAKE_INSTALL_DIR}/lib/matroska2/include/corec
)