OUTPUT_DIR = .\bin
INCLUDE_DIR = .\headers

EXECUTABLE = Hello.exe

SOURCES = \
          HelloWorld.cpp \
		  Add.cpp

COMPILE_CL = \
             cl /EHsc $(SOURCES) /I $(INCLUDE_DIR) /link \
             /out:$(OUTPUT_DIR)\$(EXECUTABLE)

COMPILE_GCC = \
              g++ -o $(OUTPUT_DIR)\$(EXECUTABLE) \
              -I $(INCLUDE_DIR) \
              $(SOURCES) 
             

all : $(EXECUTABLE)

$(EXECUTABLE) : $(SOURCES)
				$(COMPILE_GCC)