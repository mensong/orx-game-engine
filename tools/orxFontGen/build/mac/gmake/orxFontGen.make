# GNU Make project makefile autogenerated by Premake
ifndef config
  config=debug64
endif

ifndef verbose
  SILENT = @
endif

CC = gcc
CXX = g++
AR = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/orxfontgen
  DEFINES   += -D__orxDEBUG__ -D__orxSTATIC__
  INCLUDES  += -I../../../include -I../../../../../code/include -I../../../../../extern/stb_image -I../../../../../extern/freetype-2.4.1/include
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -msse2 -ffast-math -g -m64 -mmacosx-version-min=10.6 -gdwarf-2 -Wno-write-strings
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS) -fno-exceptions
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../../../code/lib/dynamic -L../../../../../extern/freetype-2.4.1/lib/mac -L. -m64 -L/usr/lib64 -mmacosx-version-min=10.6 -dead_strip
  LIBS      += -lorxd -lfreetype -framework Foundation -framework AppKit -framework OpenGL -lz -lpthread
  LDDEPS    +=
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(shell [ -f ../../../../../code/lib/dynamic/liborx.dylib ] && cp -f ../../../../../code/lib/dynamic/liborx*.dylib ../../../bin)
  endef
endif

ifeq ($(config),profile64)
  OBJDIR     = obj/x64/Profile
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/orxfontgen
  DEFINES   += -D__orxPROFILER__ -D__orxSTATIC__
  INCLUDES  += -I../../../include -I../../../../../code/include -I../../../../../extern/stb_image -I../../../../../extern/freetype-2.4.1/include
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -msse2 -ffast-math -g -O2 -m64 -mmacosx-version-min=10.6 -gdwarf-2 -Wno-write-strings
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS) -fno-exceptions -fno-rtti
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../../../code/lib/dynamic -L../../../../../extern/freetype-2.4.1/lib/mac -L. -m64 -L/usr/lib64 -mmacosx-version-min=10.6 -dead_strip
  LIBS      += -lorxp -lfreetype -framework Foundation -framework AppKit -framework OpenGL -lz -lpthread
  LDDEPS    +=
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(shell [ -f ../../../../../code/lib/dynamic/liborx.dylib ] && cp -f ../../../../../code/lib/dynamic/liborx*.dylib ../../../bin)
  endef
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/orxfontgen
  DEFINES   += -D__orxSTATIC__
  INCLUDES  += -I../../../include -I../../../../../code/include -I../../../../../extern/stb_image -I../../../../../extern/freetype-2.4.1/include
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -msse2 -ffast-math -g -O2 -m64 -mmacosx-version-min=10.6 -gdwarf-2 -Wno-write-strings
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS) -fno-exceptions -fno-rtti
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../../../code/lib/dynamic -L../../../../../extern/freetype-2.4.1/lib/mac -L. -m64 -L/usr/lib64 -mmacosx-version-min=10.6 -dead_strip
  LIBS      += -lorx -lfreetype -framework Foundation -framework AppKit -framework OpenGL -lz -lpthread
  LDDEPS    +=
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(shell [ -f ../../../../../code/lib/dynamic/liborx.dylib ] && cp -f ../../../../../code/lib/dynamic/liborx*.dylib ../../../bin)
  endef
endif

ifeq ($(config),debug32)
  OBJDIR     = obj/x32/Debug
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/orxfontgen
  DEFINES   += -D__orxDEBUG__ -D__orxSTATIC__
  INCLUDES  += -I../../../include -I../../../../../code/include -I../../../../../extern/stb_image -I../../../../../extern/freetype-2.4.1/include
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -msse2 -ffast-math -g -m32 -mmacosx-version-min=10.6 -gdwarf-2 -Wno-write-strings -mfix-and-continue
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS) -fno-exceptions
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../../../code/lib/dynamic -L../../../../../extern/freetype-2.4.1/lib/mac -L. -m32 -L/usr/lib32 -mmacosx-version-min=10.6 -dead_strip
  LIBS      += -lorxd -lfreetype -framework Foundation -framework AppKit -framework OpenGL -lz -lpthread
  LDDEPS    +=
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(shell [ -f ../../../../../code/lib/dynamic/liborx.dylib ] && cp -f ../../../../../code/lib/dynamic/liborx*.dylib ../../../bin)
  endef
endif

ifeq ($(config),profile32)
  OBJDIR     = obj/x32/Profile
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/orxfontgen
  DEFINES   += -D__orxPROFILER__ -D__orxSTATIC__
  INCLUDES  += -I../../../include -I../../../../../code/include -I../../../../../extern/stb_image -I../../../../../extern/freetype-2.4.1/include
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -msse2 -ffast-math -g -O2 -m32 -mmacosx-version-min=10.6 -gdwarf-2 -Wno-write-strings -mfix-and-continue
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS) -fno-exceptions -fno-rtti
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../../../code/lib/dynamic -L../../../../../extern/freetype-2.4.1/lib/mac -L. -m32 -L/usr/lib32 -mmacosx-version-min=10.6 -dead_strip
  LIBS      += -lorxp -lfreetype -framework Foundation -framework AppKit -framework OpenGL -lz -lpthread
  LDDEPS    +=
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(shell [ -f ../../../../../code/lib/dynamic/liborx.dylib ] && cp -f ../../../../../code/lib/dynamic/liborx*.dylib ../../../bin)
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = obj/x32/Release
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/orxfontgen
  DEFINES   += -D__orxSTATIC__
  INCLUDES  += -I../../../include -I../../../../../code/include -I../../../../../extern/stb_image -I../../../../../extern/freetype-2.4.1/include
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -msse2 -ffast-math -g -O2 -m32 -mmacosx-version-min=10.6 -gdwarf-2 -Wno-write-strings -mfix-and-continue
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS) -fno-exceptions -fno-rtti
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../../../code/lib/dynamic -L../../../../../extern/freetype-2.4.1/lib/mac -L. -m32 -L/usr/lib32 -mmacosx-version-min=10.6 -dead_strip
  LIBS      += -lorx -lfreetype -framework Foundation -framework AppKit -framework OpenGL -lz -lpthread
  LDDEPS    +=
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(shell [ -f ../../../../../code/lib/dynamic/liborx.dylib ] && cp -f ../../../../../code/lib/dynamic/liborx*.dylib ../../../bin)
  endef
endif

OBJECTS := \
	$(OBJDIR)/orxFontGen.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking orxFontGen
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning orxFontGen
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	$(SILENT) $(CC) -x c-header $(ALL_CFLAGS) -MMD -MP $(DEFINES) $(INCLUDES) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
endif

$(OBJDIR)/orxFontGen.o: ../../../src/orxFontGen.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
