add_subdirectory(io)  # special CMakeLists.txt
add_subdirectory(rootpcm)
add_subdirectory(sql)
add_subdirectory(xml)
if(xml)
  add_subdirectory(xmlparser)
endif()
if(gfal)
  add_subdirectory(gfal)
endif()
if(dcache)
  add_subdirectory(dcache)
endif()
