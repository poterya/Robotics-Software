UnmarkedObjectFolder := C:/projects/lab3t/BRlab4/Logical/Libraries/Library
MarkedObjectFolder := C:/projects/lab3t/BRlab4/Logical/Libraries/Library

$(AS_CPU_PATH)/Library.br: \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library/ANSIC.lby \
	$(AS_CPU_PATH)/Library/Library.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/Library/Library.ox" -o "$(AS_CPU_PATH)/Library.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B J4.25 -extConstants -r Library -s "Libraries.Library" -L "Acp10_MC: V3.13.1, Acp10man: V3.13.1, Acp10par: V3.13.1, Acp10sdc: V3.13.1, Acp10sim: V3.13.1, Arnc0man: V3.13.0, AsArLog: V*, AsArProf: V*, AsIecCon: V*, AsIOTime: V*, AsMath: V*, AsMem: V*, asstring: V*, astime: V*, brsystem: V*, DataObj: V*, FileIO: V*, Library: V*, NcGlobal: V3.13.1, Operator: V*, Runtime: V*, sys_lib: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"


$(AS_CPU_PATH)/Library.xref: \
	$(AS_CPU_PATH)/Library/Library.xrefox
	@"$(AS_BIN_PATH)/BR.AS.CrossRefExtender.exe" "$(AS_CPU_PATH)/Library/Library.xrefox" -o "$(AS_CPU_PATH)/Library.xref" -r Library -T SG4  -M IA32  -D _SG4 -D _DEFAULT_INCLUDES -include "$(AS_CPU_PATH)/Libraries.h" -I "$(AS_PROJECT_PATH)/Logical/Libraries/Library" "$(AS_TEMP_PATH)/Includes/Libraries/Library" "$(AS_TEMP_PATH)/Includes" -l "$(AS_PROJECT_PATH)/Logical/Libraries/Library/Library.fun" -s "Libraries.Library" -t "$(AS_TEMP_PATH)"

$(AS_CPU_PATH)/Library/Library.ox: \
	$(AS_CPU_PATH)/Library/a.out
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/Library/a.out" -o "$(AS_CPU_PATH)/Library/Library.ox" -T SG4 -r Library   -X "$(AS_CPU_PATH)/Library/Library.xrefox" -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/Library/a.out: \
	$(AS_CPU_PATH)/Library/FB_Motor.c.o \
	$(AS_CPU_PATH)/Library/FB_Controller.c.o \
	$(AS_CPU_PATH)/Library/FB_Integrator.c.o \
	$(AS_CPU_PATH)/Library/FB_Endswitch.c.o \
	$(AS_CPU_PATH)/Library/FB_Axis.c.o
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link "$(AS_CPU_PATH)/Library/FB_Motor.c.o" "$(AS_CPU_PATH)/Library/FB_Controller.c.o" "$(AS_CPU_PATH)/Library/FB_Integrator.c.o" "$(AS_CPU_PATH)/Library/FB_Endswitch.c.o" "$(AS_CPU_PATH)/Library/FB_Axis.c.o"  -o "$(AS_CPU_PATH)/Library/a.out"  -G V4.1.2  -T SG4  -M IA32  "-Wl,$(AS_PROJECT_PATH)/Logical/Libraries/Acp10_MC/SG4/IA32/libacp10_mc.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libAsIecCon.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libAsMem.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libAsArProf.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libFileIO.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libAsArLog.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libDataObj.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libAsMath.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libsys_lib.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libbrsystem.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libAsIOTime.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libasstring.a" "-Wl,$(AS_PROJECT_PATH)/Logical/Libraries/NcGlobal/SG4/IA32/libncglobal.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libastime.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/liboperator.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libruntime.a" -specs=I386specs -Wl,-q,-T,bur_elf_i386.x -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Library/FB_Motor.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library/FB_Motor.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library/Library.fun \
	$(AS_TEMP_PATH)/Includes/Library.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/Library/FB_Motor.c" -o "$(AS_CPU_PATH)/Library/FB_Motor.c.o"  -T SG4  -M IA32  -B J4.25 -G V4.1.2  -s "Libraries.Library" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/Library" "$(AS_TEMP_PATH)/Includes/Libraries/Library" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _LIBRARY_EXPORT -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Library/FB_Controller.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library/FB_Controller.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library/Library.fun \
	$(AS_TEMP_PATH)/Includes/Library.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/Library/FB_Controller.c" -o "$(AS_CPU_PATH)/Library/FB_Controller.c.o"  -T SG4  -M IA32  -B J4.25 -G V4.1.2  -s "Libraries.Library" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/Library" "$(AS_TEMP_PATH)/Includes/Libraries/Library" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _LIBRARY_EXPORT -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Library/FB_Integrator.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library/FB_Integrator.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library/Library.fun \
	$(AS_TEMP_PATH)/Includes/Library.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/Library/FB_Integrator.c" -o "$(AS_CPU_PATH)/Library/FB_Integrator.c.o"  -T SG4  -M IA32  -B J4.25 -G V4.1.2  -s "Libraries.Library" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/Library" "$(AS_TEMP_PATH)/Includes/Libraries/Library" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _LIBRARY_EXPORT -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Library/FB_Endswitch.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library/FB_Endswitch.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library/Library.fun \
	$(AS_TEMP_PATH)/Includes/Library.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/Library/FB_Endswitch.c" -o "$(AS_CPU_PATH)/Library/FB_Endswitch.c.o"  -T SG4  -M IA32  -B J4.25 -G V4.1.2  -s "Libraries.Library" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/Library" "$(AS_TEMP_PATH)/Includes/Libraries/Library" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _LIBRARY_EXPORT -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Library/FB_Axis.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library/FB_Axis.c \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library/Library.fun \
	$(AS_TEMP_PATH)/Includes/Library.h
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/Library/FB_Axis.c" -o "$(AS_CPU_PATH)/Library/FB_Axis.c.o"  -T SG4  -M IA32  -B J4.25 -G V4.1.2  -s "Libraries.Library" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/Library" "$(AS_TEMP_PATH)/Includes/Libraries/Library" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _LIBRARY_EXPORT -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 

