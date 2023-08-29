ROOT=D:/Programming/Projects/Weaver #config this
DEP=include/GLAD/src/glad.c
SRC = $(wildcard src/*/*.cpp) $(wildcard src/*.cpp) 
GLINCLUDE=-Iinclude/GLFW/include -Iinclude/GLAD/include -Iinclude/GLAD/include/glad -Iinclude/GLAD/include/KHR 
HEADER=-Iinclude $(addprefix -I,$(wildcard include/*/*/)) $(addprefix -I,$(wildcard include/*/))
LIB=-L$(ROOT)/include/GLFW/lib-mingw -lglfw3dll 

all:
	g++ --std=c++17 $(DEP) $(SRC) $(GLINCLUDE) $(HEADER) $(LIB) -o builds/app.exe

