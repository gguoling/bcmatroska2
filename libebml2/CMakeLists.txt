add_library(ebml2 STATIC
	ebmlmain.c
	ebmlelement.c
	ebmlmaster.c
	ebmlbinary.c
	ebmlstring.c
	ebmlnumber.c
	ebmlcrc.c
	ebmldate.c
	ebmlvoid.c
)

target_link_libraries(ebml2 corec)

install(TARGETS ebml2
	ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
)

install(DIRECTORY ebml
	DESTINATION ${CMAKE_INSTALL_PREFIX}/include
)