CXXFLAGS += -O3 -Wall -shared -std=c++11 -fPIC -fdiagnostics-color
#CPPFLAGS += $(shell python3 -m pybind11 --includes)
CPPFLAGS = -I/opt/conda/include/python3.8 -I/opt/conda/lib/python3.8/site-packages/pybind11/include
LIBNAME = helpers
LIBEXT = $(shell /opt/conda/bin/python3-config --extension-suffix)

default: $(LIBNAME)$(LIBEXT)

%$(LIBEXT): %.cpp
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) $< -o $@
