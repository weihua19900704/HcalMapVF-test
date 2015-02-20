ALL_TOOLS      += xdaq
xdaq_EX_INCLUDE := /afs/cern.ch/cms/slc6_amd64_gcc472/external/xdaq/VR17173-cms6/include /afs/cern.ch/cms/slc6_amd64_gcc472/external/xdaq/VR17173-cms6/include/linux
xdaq_EX_LIB := toolbox xdaq config xoap xgi xdata cgicc log4cplus xcept logudpappender peer logxmlappender asyncresolv ptfifo pthttp pttcp i2outils xdaq2rc xoapfilter xalan-c xalanMsg wsaddressing wsclientsubscriber wseventing wsserviceeventing
xdaq_EX_USE := xerces-c sockets mimetic libuuid
xdaq_EX_FLAGS_CPPDEFINES  := -DSOAP__ -DLITTLE_ENDIAN__ -Dlinux

