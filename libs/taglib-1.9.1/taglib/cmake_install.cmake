# Install script for directory: /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/lib/libtag.so.1.14.0"
      "$ENV{DESTDIR}/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/lib/libtag.so.1"
      "$ENV{DESTDIR}/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/lib/libtag.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/lib/libtag.so.1.14.0;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/lib/libtag.so.1;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/lib/libtag.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/lib" TYPE SHARED_LIBRARY FILES
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/libtag.so.1.14.0"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/libtag.so.1"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/libtag.so"
    )
  foreach(file
      "$ENV{DESTDIR}/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/lib/libtag.so.1.14.0"
      "$ENV{DESTDIR}/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/lib/libtag.so.1"
      "$ENV{DESTDIR}/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/lib/libtag.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tag.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/fileref.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/audioproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/taglib_export.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/taglib_config.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/taglib.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tstring.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tlist.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tlist.tcc;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tstringlist.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tbytevector.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tbytevectorlist.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tbytevectorstream.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tiostream.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tfilestream.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tmap.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tmap.tcc;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tpropertymap.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/trefcounter.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/tdebuglistener.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/mpegfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/mpegproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/mpegheader.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/xingheader.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/id3v1tag.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/id3v1genres.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/id3v2extendedheader.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/id3v2frame.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/id3v2header.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/id3v2synchdata.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/id3v2footer.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/id3v2framefactory.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/id3v2tag.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/attachedpictureframe.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/commentsframe.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/generalencapsulatedobjectframe.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/ownershipframe.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/popularimeterframe.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/privateframe.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/relativevolumeframe.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/textidentificationframe.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/uniquefileidentifierframe.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/unknownframe.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/unsynchronizedlyricsframe.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/urllinkframe.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/oggfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/oggpage.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/oggpageheader.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/xiphcomment.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/vorbisfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/vorbisproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/oggflacfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/speexfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/speexproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/opusfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/opusproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/flacfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/flacpicture.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/flacproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/flacmetadatablock.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/apefile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/apeproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/apetag.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/apefooter.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/apeitem.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/mpcfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/mpcproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/wavpackfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/wavpackproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/trueaudiofile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/trueaudioproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/rifffile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/aifffile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/aiffproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/wavfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/wavproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/infotag.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/asffile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/asfproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/asftag.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/asfattribute.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/asfpicture.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/mp4file.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/mp4atom.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/mp4tag.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/mp4item.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/mp4properties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/mp4coverart.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/modfilebase.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/modfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/modtag.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/modproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/itfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/itproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/s3mfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/s3mproperties.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/xmfile.h;/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib/xmproperties.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bin/include/taglib" TYPE FILE FILES
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/tag.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/fileref.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/audioproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/taglib_export.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib_config.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/taglib.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tstring.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tlist.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tlist.tcc"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tstringlist.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tbytevector.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tbytevectorlist.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tbytevectorstream.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tiostream.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tfilestream.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tmap.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tmap.tcc"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tpropertymap.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/trefcounter.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/toolkit/tdebuglistener.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/mpegfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/mpegproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/mpegheader.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/xingheader.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v1/id3v1tag.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v1/id3v1genres.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/id3v2extendedheader.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/id3v2frame.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/id3v2header.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/id3v2synchdata.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/id3v2footer.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/id3v2framefactory.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/id3v2tag.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/frames/attachedpictureframe.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/frames/commentsframe.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/frames/generalencapsulatedobjectframe.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/frames/ownershipframe.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/frames/popularimeterframe.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/frames/privateframe.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/frames/relativevolumeframe.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/frames/textidentificationframe.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/frames/uniquefileidentifierframe.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/frames/unknownframe.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/frames/unsynchronizedlyricsframe.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpeg/id3v2/frames/urllinkframe.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ogg/oggfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ogg/oggpage.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ogg/oggpageheader.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ogg/xiphcomment.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ogg/vorbis/vorbisfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ogg/vorbis/vorbisproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ogg/flac/oggflacfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ogg/speex/speexfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ogg/speex/speexproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ogg/opus/opusfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ogg/opus/opusproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/flac/flacfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/flac/flacpicture.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/flac/flacproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/flac/flacmetadatablock.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ape/apefile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ape/apeproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ape/apetag.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ape/apefooter.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/ape/apeitem.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpc/mpcfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mpc/mpcproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/wavpack/wavpackfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/wavpack/wavpackproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/trueaudio/trueaudiofile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/trueaudio/trueaudioproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/riff/rifffile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/riff/aiff/aifffile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/riff/aiff/aiffproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/riff/wav/wavfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/riff/wav/wavproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/riff/wav/infotag.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/asf/asffile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/asf/asfproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/asf/asftag.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/asf/asfattribute.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/asf/asfpicture.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mp4/mp4file.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mp4/mp4atom.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mp4/mp4tag.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mp4/mp4item.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mp4/mp4properties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mp4/mp4coverart.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mod/modfilebase.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mod/modfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mod/modtag.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/mod/modproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/it/itfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/it/itproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/s3m/s3mfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/s3m/s3mproperties.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/xm/xmfile.h"
    "/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/taglib/xm/xmproperties.h"
    )
endif()

