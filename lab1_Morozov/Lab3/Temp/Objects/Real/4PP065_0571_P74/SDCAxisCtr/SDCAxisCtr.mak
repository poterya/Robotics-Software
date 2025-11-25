UnmarkedObjectFolder := C:/projects/lab3t/BRlab4/Logical/SDCAxisCtrl_X
MarkedObjectFolder := C:/projects/lab3t/BRlab4/Logical/SDCAxisCtrl_X

$(AS_CPU_PATH)/SDCAxisCtr.br: \
	$(AS_PROJECT_CPU_PATH)/Cpu.per \
	$(AS_CPU_PATH)/SDCAxisCtr/SDCAxisCtr.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/SDCAxisCtr/SDCAxisCtr.ox" -o "$(AS_CPU_PATH)/SDCAxisCtr.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B J4.25 -extConstants -r Cyclic1 -p 2 -s "SDCAxisCtrl_X" -L "Acp10_MC: V3.13.1, Acp10man: V3.13.1, Acp10par: V3.13.1, Acp10sdc: V3.13.1, Acp10sim: V3.13.1, Arnc0man: V3.13.0, AsArLog: V*, AsArProf: V*, AsIecCon: V*, AsIOTime: V*, AsMath: V*, AsMem: V*, asstring: V*, astime: V*, brsystem: V*, DataObj: V*, FileIO: V*, Library: V*, NcGlobal: V3.13.1, Operator: V*, Runtime: V*, sys_lib: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"


$(AS_CPU_PATH)/SDCAxisCtr.xref: \
	$(AS_CPU_PATH)/SDCAxisCtr/SDCAxisCtr.xrefox
	@"$(AS_BIN_PATH)/BR.AS.CrossRefExtender.exe" "$(AS_CPU_PATH)/SDCAxisCtr/SDCAxisCtr.xrefox" -o "$(AS_CPU_PATH)/SDCAxisCtr.xref" -T SG4  -M IA32  -D _SG4 -D _DEFAULT_INCLUDES -include "$(AS_CPU_PATH)/Libraries.h" -I "$(AS_PROJECT_PATH)/Logical/SDCAxisCtrl_X" "$(AS_TEMP_PATH)/Includes/SDCAxisCtrl_X" "$(AS_TEMP_PATH)/Includes" -l "$(AS_PROJECT_PATH)/Logical/SDCAxisCtrl_X/Variables.var" -s "SDCAxisCtrl_X" -t "$(AS_TEMP_PATH)"

$(AS_CPU_PATH)/SDCAxisCtr/SDCAxisCtr.ox: \
	$(AS_CPU_PATH)/SDCAxisCtr/a.out
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/SDCAxisCtr/a.out" -o "$(AS_CPU_PATH)/SDCAxisCtr/SDCAxisCtr.ox" -T SG4 -r Cyclic1   -X "$(AS_CPU_PATH)/SDCAxisCtr/SDCAxisCtr.xrefox" -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/SDCAxisCtr/a.out: \
	$(AS_CPU_PATH)/SDCAxisCtr/Main.c.o
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link "$(AS_CPU_PATH)/SDCAxisCtr/Main.c.o"  -o "$(AS_CPU_PATH)/SDCAxisCtr/a.out"  -G V4.1.2  -T SG4  -M IA32  "-Wl,$(AS_PROJECT_PATH)/Logical/Libraries/Acp10_MC/SG4/IA32/libacp10_mc.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libAsIecCon.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libAsMem.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libAsArProf.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libFileIO.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libAsArLog.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libDataObj.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libAsMath.a" "-Wl,$(AS_TEMP_PATH)/Archives/$(AS_CONFIGURATION)/$(AS_PLC)/libLibrary.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libsys_lib.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libbrsystem.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libAsIOTime.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libasstring.a" "-Wl,$(AS_PROJECT_PATH)/Logical/Libraries/NcGlobal/SG4/IA32/libncglobal.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libastime.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/liboperator.a" "-Wl,$(AS_SYSTEM_PATH)/J0425/SG4/IA32/libruntime.a" -specs=I386specs -Wl,-q,-T,bur_elf_i386.x -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/SDCAxisCtr/Main.c.o: \
	$(AS_PROJECT_PATH)/Logical/SDCAxisCtrl_X/Main.c \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/SDCAxisCtrl_X/Main.c" -o "$(AS_CPU_PATH)/SDCAxisCtr/Main.c.o"  -T SG4  -M IA32  -B J4.25 -G V4.1.2  -s "SDCAxisCtrl_X" -t "$(AS_TEMP_PATH)" -I "$(AS_PROJECT_PATH)/Logical/SDCAxisCtrl_X" "$(AS_TEMP_PATH)/Includes/SDCAxisCtrl_X" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 



FORCE: