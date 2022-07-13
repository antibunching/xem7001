# -*- coding: utf-8 -*-
"""
Created on Tue Jul  5 17:59:20 2022

@author: kolkowitz-group
"""

import ok
import time

bit_file_name = '../digital_sequencer.runs/impl_1/digital_sequencer.bit'
fp = ok.okCFrontPanel()
dev = ok.FrontPanelDevices()
serial = dev.GetSerial(0)

fp.OpenBySerial(serial)
fp.ConfigureFPGA(bit_file_name)

IDLE = 0
LOAD = 1
RUN = 2
def set_mode(mode):
    #mode_word = 0 | 2 * int(self.running) | self.loading
    mode_wire = 0x00 # state = idle/run/load
    fp.SetWireInValue(mode_wire, mode)
    fp.UpdateWireIns()
    
set_mode(IDLE)

    
for i in range(0,8):
    fp.SetWireInValue(i, 0)
fp.UpdateWireIns()

def load_sequence():
    pipe_addr = 0x80
    one_s = [128, 240, 250, 2] # 1s
    two_s = [0, 225, 245, 5]
    fast = [16, 37, 19, 0]
    # all_hi = [255] * 8 + one_s
    all_hi = [255] *8 + fast
    all_lo = [0] * 8 + fast
    stop = [0] * 8
    byte_array = (all_hi + all_lo )* 2 + stop
    #set_mode(IDLE)
    set_mode(LOAD)
    err = fp.WriteToPipeIn(pipe_addr, bytearray(byte_array))
    #print(err)

load_sequence()
set_mode(RUN)

def run_test():
    while (True):
        load_sequence()
        set_mode(RUN)
        while(True):
            fp.UpdateTriggerOuts()
            time.sleep(0.2)
            if (fp.IsTriggered(0x60, 1) == True):
                break
    