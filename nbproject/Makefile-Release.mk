#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_CONF=Release
CND_DISTDIR=dist

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=build/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/source/EDC.o \
	${OBJECTDIR}/source/prepared.o \
	${OBJECTDIR}/source/mylib.o \
	${OBJECTDIR}/source/process_prepared_statement.o \
	${OBJECTDIR}/source/eibtrace.o

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L/usr/local/lib -L/usr/lib/mysql -L/usr/lib -leibnetmux -lpth -lzlogger -lmysqld

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-Release.mk dist/Release/GNU-Linux-x86/edc__

dist/Release/GNU-Linux-x86/edc__: ${OBJECTFILES}
	${MKDIR} -p dist/Release/GNU-Linux-x86
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/edc__ ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/source/EDC.o: nbproject/Makefile-${CND_CONF}.mk source/EDC.cpp 
	${MKDIR} -p ${OBJECTDIR}/source
	${RM} $@.d
	$(COMPILE.cc) -O2 -I/usr/include/mysql++ -I/usr/include/mysql -I/usr/local/include/eibnetmux -I/usr/local/include/polarssl -I/usr/local/include/zlogger -MMD -MP -MF $@.d -o ${OBJECTDIR}/source/EDC.o source/EDC.cpp

${OBJECTDIR}/source/prepared.o: nbproject/Makefile-${CND_CONF}.mk source/prepared.cpp 
	${MKDIR} -p ${OBJECTDIR}/source
	${RM} $@.d
	$(COMPILE.cc) -O2 -I/usr/include/mysql++ -I/usr/include/mysql -I/usr/local/include/eibnetmux -I/usr/local/include/polarssl -I/usr/local/include/zlogger -MMD -MP -MF $@.d -o ${OBJECTDIR}/source/prepared.o source/prepared.cpp

${OBJECTDIR}/source/mylib.o: nbproject/Makefile-${CND_CONF}.mk source/mylib.cpp 
	${MKDIR} -p ${OBJECTDIR}/source
	${RM} $@.d
	$(COMPILE.cc) -O2 -I/usr/include/mysql++ -I/usr/include/mysql -I/usr/local/include/eibnetmux -I/usr/local/include/polarssl -I/usr/local/include/zlogger -MMD -MP -MF $@.d -o ${OBJECTDIR}/source/mylib.o source/mylib.cpp

${OBJECTDIR}/source/process_prepared_statement.o: nbproject/Makefile-${CND_CONF}.mk source/process_prepared_statement.cpp 
	${MKDIR} -p ${OBJECTDIR}/source
	${RM} $@.d
	$(COMPILE.cc) -O2 -I/usr/include/mysql++ -I/usr/include/mysql -I/usr/local/include/eibnetmux -I/usr/local/include/polarssl -I/usr/local/include/zlogger -MMD -MP -MF $@.d -o ${OBJECTDIR}/source/process_prepared_statement.o source/process_prepared_statement.cpp

${OBJECTDIR}/source/eibtrace.o: nbproject/Makefile-${CND_CONF}.mk source/eibtrace.cpp 
	${MKDIR} -p ${OBJECTDIR}/source
	${RM} $@.d
	$(COMPILE.cc) -O2 -I/usr/include/mysql++ -I/usr/include/mysql -I/usr/local/include/eibnetmux -I/usr/local/include/polarssl -I/usr/local/include/zlogger -MMD -MP -MF $@.d -o ${OBJECTDIR}/source/eibtrace.o source/eibtrace.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/Release
	${RM} dist/Release/GNU-Linux-x86/edc__

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
