# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "width_blue" -parent ${Page_0}
  ipgui::add_param $IPINST -name "width_green" -parent ${Page_0}
  ipgui::add_param $IPINST -name "width_red" -parent ${Page_0}


}

proc update_PARAM_VALUE.width_blue { PARAM_VALUE.width_blue } {
	# Procedure called to update width_blue when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.width_blue { PARAM_VALUE.width_blue } {
	# Procedure called to validate width_blue
	return true
}

proc update_PARAM_VALUE.width_green { PARAM_VALUE.width_green } {
	# Procedure called to update width_green when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.width_green { PARAM_VALUE.width_green } {
	# Procedure called to validate width_green
	return true
}

proc update_PARAM_VALUE.width_red { PARAM_VALUE.width_red } {
	# Procedure called to update width_red when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.width_red { PARAM_VALUE.width_red } {
	# Procedure called to validate width_red
	return true
}


proc update_MODELPARAM_VALUE.width_red { MODELPARAM_VALUE.width_red PARAM_VALUE.width_red } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.width_red}] ${MODELPARAM_VALUE.width_red}
}

proc update_MODELPARAM_VALUE.width_green { MODELPARAM_VALUE.width_green PARAM_VALUE.width_green } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.width_green}] ${MODELPARAM_VALUE.width_green}
}

proc update_MODELPARAM_VALUE.width_blue { MODELPARAM_VALUE.width_blue PARAM_VALUE.width_blue } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.width_blue}] ${MODELPARAM_VALUE.width_blue}
}

