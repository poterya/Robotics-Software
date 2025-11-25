UnmarkedObjectFolder := C:/projects/lab3t/BRlab4/Logical/AxisApt
MarkedObjectFolder := C:/projects/lab3t/BRlab4/Logical/AxisApt

$(AS_CPU_PATH)/AxisApt.br: \
	$(AS_PROJECT_PATH)/Logical/AxisApt/AcpParTab.apt
	@"$(AS_BIN_PATH)/BR.MC.Builder.exe"   "$(AS_PROJECT_PATH)/Logical/AxisApt/AcpParTab.apt" -o "$(AS_CPU_PATH)/AxisApt.br" -T SG4  -B J4.25 -v V1.00.0 -s "AxisApt" -L "Acp10_MC: V3.13.1, Acp10man: V3.13.1, Acp10par: V3.13.1, Arnc0man: V3.13.0, NcGlobal: V3.13.1" -warmRestart -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.mc.builder.exe"

