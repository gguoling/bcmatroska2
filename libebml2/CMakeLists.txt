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

install(DIRECTORY ebml
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/matroska2/include
)