# -*-cmake-*-
#
# Nightwave Studios - FindNightwaveCore.cmake
# https://www.nightwave.co
#
# Search for NightwaveCore library files
#
# Once loaded this will define:
#   NightwaveCore_FOUND       - system has NightwaveCore
#   NightwaveCore_INCLUDE_DIR - include directory for NightwaveCore
#   NightwaveCore_LIBRARY_DIR - library directory for NightwaveCore
#   NightwaveCore_LIBRARIES   - libraries you need to link to



# Find headers
FIND_PATH(NightwaveCore_INCLUDE_DIR
	NAMES "NightwaveCore/NightwaveCore.h"
	PATHS
	"[HKEY_LOCAL_MACHINE\\SOFTWARE\\NightwaveCore\\Current;BinPath]"
	"$ENV{NightwaveCore_LOCATION}"
	"$ENV{NightwaveCore_LOCATION}/include"
	"$ENV{NightwaveCore_LOCATION}/include/NightwaveCore"
	"$ENV{NightwaveCore_HOME}/include"
	/usr/include/
	/usr/include/NightwaveCore
	/usr/local/include
	/usr/local/include/NightwaveCore
	/opt/local/include/NightwaveCore
)

# Find compiled library file
FIND_LIBRARY(NightwaveCore_LIBRARIES
	NAMES libNightwaveCore NightwaveCore
	PATHS 
	"[HKEY_LOCAL_MACHINE\\SOFTWARE\\NightwaveCore\\Current;BinPath]"
	"$ENV{NightwaveCore_LOCATION}/NightwaveCore/.libs"
	"$ENV{NightwaveCore_LOCATION}/lib"
	"$ENV{NightwaveCore_HOME}/lib"
	/usr/lib64
	/usr/local/lib64
	/opt/local/lib64
	/usr/lib
	/usr/local/lib
	/opt/local/lib
	DOC "NightwaveCore library"
)

# Get path to library
GET_FILENAME_COMPONENT(NightwaveCore_LIBRARY_DIR ${NightwaveCore_LIBRARIES} PATH)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(
	NightwaveCore
	DEFAULT_MSG

	NightwaveCore_LIBRARIES
	NightwaveCore_INCLUDE_DIR
)
