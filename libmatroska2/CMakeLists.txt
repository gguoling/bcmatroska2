add_library(matroska2 STATIC
	matroskamain.c
	matroskablock.c
	matroska_sem.c
)

target_include_directories(matroska2
	PUBLIC ${CMAKE_SOURCE_DIR}/libebml2
	PUBLIC ${CMAKE_SOURCE_DIR}/libmatroska2
)

target_link_libraries(matroska2 ebml2 corec)

install(DIRECTORY matroska
	DESTINATION ${CMAKE_INSTALL_PREFIX}/include
)

install(TARGETS matroska2
	ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
)