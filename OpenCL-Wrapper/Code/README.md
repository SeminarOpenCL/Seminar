OpenCL C++ Wrapper
==================

The OpenCL Utility Toolkit contains C++ Wrapper classes for a more convient utilization of the OpenCL API. Using the 'Makefile', a static library 'libOclWrapper.a' is created which can be then used for further linking. In order to be able to compile, a GCC Version => 4.6.x and an OpenCL library featuring the OpenCL standard >= 1.1 is needed. The OpenCL wrapper classes are in the namespace 'ocl'. Next to these classes you find helper functions and classes which are encapsulated by the 'utl' namespace. A more detailed description of the framework is given by the doxygen documentation which can be created using the 'Doxyfile'. You need to specify which OpenCL Standard you use in the ../library.mk.

Folders
--------------
In order to be able to 'make' the 'libOclWrapper.a', a certain folder layout must exist.

* inc
	* Contains all C++ headers '*.h'
* lib
	* Contains the created 'libOclWrapper.a'
* src
	* Contains all C++ definitions '*.cpp'
* build 
	* Contains all object files '*.o'


Files
--------------
* Makefile
	* Creates with 'make' the static library 'libOclWrapper.a'
* Doxyfile
	* Creates with 'doxygen' the 'docu' folder in which the OpenCL wrapper classes are documented. Use the 'index.html' as the starting page.
* utils.pro
	* Is a QT project file with which the project can be edited with QT-Creator.
* Readme.md
	* This file.

Make
--------------
You need to make sure that GCC version >= 4.6.x are used and that OpenCL runtime libraries of the corresponding vendors support the OpenCL standard >= 1.1. If you don't use the GCC, make sure that your compiler supports the C++11 standard. Follow the steps in order to create the library.

1. 'clone' the project.
2. Edit the 'Makefile' and verify that the paths set in OPENCL_INC and OPENCL_LIB are correct.
3. In the command line type 'make' to create the static library.
4. In the command line type 'doxygen' to create the documentation (docu/index.html). 
5. Link the static library 'libOclWrapper.a' in a new project and use the OpenCL C++wrapper classes by providing
	* the include path of this project and
	* the library path of this project.

Missing
--------------
* Need to update for OpenCL 2.0.

Known Bugs
--------------
* Event and EventLists are not fully tested.
