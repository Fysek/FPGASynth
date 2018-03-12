transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {synth.vho}

vcom -93 -work work {D:/intelFPGA_lite/17.0/synth/simulation/modelsim/synth_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /synth_tb=synth_vhd.sdo -L altera -L altera_lnsim -L fiftyfivenm -L gate_work -L work -voptargs="+acc"  synth_tb

add wave *
view structure
view signals
run -all
