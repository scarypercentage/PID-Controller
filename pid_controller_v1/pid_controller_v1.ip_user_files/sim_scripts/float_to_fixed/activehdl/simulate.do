onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+float_to_fixed -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L floating_point_v7_1_10 -L xil_defaultlib -L secureip -O5 xil_defaultlib.float_to_fixed

do {wave.do}

view wave
view structure

do {float_to_fixed.udo}

run -all

endsim

quit -force
