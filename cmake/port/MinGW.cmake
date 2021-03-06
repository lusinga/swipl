message("-- Using MinGW packages from ${MINGW_ROOT}")
set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} ${MINGW_ROOT}/lib)
set(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} ${MINGW_ROOT}/include)

set(ZLIB_ROOT ${MINGW_ROOT})
set(GMP_ROOT ${MINGW_ROOT})
set(LibUUID_ROOT ${MINGW_ROOT})
set(OPENSSL_ROOT_DIR ${MINGW_ROOT})

if(WIN64)

set(WIN_PROGRAM_FILES "Program Files")

else(WIN64)

set(WIN_PROGRAM_FILES "Program Files (x86)")

endif(WIN64)

if(NOT DEFINED JAVA_HOME)
  file(GLOB JAVA_HOME "$ENV{HOME}/.wine/drive_c/${WIN_PROGRAM_FILES}/Java/jdk*")
  set(JAVA_HOME ${JAVA_HOME} CACHE PATH "Location of the JDK" FORCE)
  message("-- JAVA_HOME at ${JAVA_HOME}")
endif()
