set(COREC_SOURCES
	array/array.c
	helpers/file/bufstream.c
	helpers/file/memstream.c
	helpers/file/streams.c
	helpers/file/tools.c
	helpers/md5/md5.c
	helpers/parser/parser2.c
	helpers/parser/strtab.c
	helpers/parser/strtypes.c
	helpers/parser/dataheap.c
	helpers/parser/buffer.c
	helpers/parser/hotkey.c
	helpers/parser/nodelookup.c
	helpers/parser/urlpart.c
	node/node.c
	node/nodetree.c
	str/str.c
)

if(${CMAKE_HOST_SYSTEM_NAME} EQUAL Windows)
	list(APPEND COREC_SOURCES
		helpers/charconvert/charconvert_win32.c
		helpers/date/date_win32.c
		helpers/file/file_win32.c
		helpers/system/ccsystem_win32.c
		multithread/multithread_win32.c
		str/str_win32.c
	)
else()
	list(APPEND COREC_SOURCES
		helpers/charconvert/charconvert_linux.c
		helpers/date/date_libc.c
		helpers/file/file_libc.c
		helpers/system/ccsystem_posix.c
		multithread/multithread_pthread.c
		str/str_linux.c
	)
endif()

if(${CONFIG_STDIO})
	list(APPEND COREC_SOURCES
		helpers/file/stream_stdio.c
	)
endif()

add_library(corec STATIC ${COREC_SOURCES})

install(FILES
	banned.h
	confhelper.h
	corec.h
	err.h
	helper.h
	memalloc.h
	memheap.h
	portab.h
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/matroska2/include/corec
)