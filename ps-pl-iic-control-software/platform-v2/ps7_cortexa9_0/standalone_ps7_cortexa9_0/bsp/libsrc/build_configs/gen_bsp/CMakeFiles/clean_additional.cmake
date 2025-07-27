# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/eden/Documents/vivado-experiments/ps-pl-iic-control-software/platform-v2/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/sleep.h"
  "/home/eden/Documents/vivado-experiments/ps-pl-iic-control-software/platform-v2/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xiltimer.h"
  "/home/eden/Documents/vivado-experiments/ps-pl-iic-control-software/platform-v2/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xtimer_config.h"
  "/home/eden/Documents/vivado-experiments/ps-pl-iic-control-software/platform-v2/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/lib/libxiltimer.a"
  )
endif()
