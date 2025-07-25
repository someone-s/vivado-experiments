# 2025-07-25T19:44:47.928287
import vitis

client = vitis.create_client()
client.set_workspace(path="ps-pl-iic-control-software")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ps-pl-iic-control/main_design_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="simple_led")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.set_config(option = "os", param = "standalone_stdin", value = "ps7_coresight_comp_0")

status = domain.set_config(option = "os", param = "standalone_stdout", value = "ps7_coresight_comp_0")

status = platform.build()

status = platform.build()

comp.build()

status = domain.set_config(option = "os", param = "standalone_stdin", value = "ps7_uart_0")

status = domain.set_config(option = "os", param = "standalone_stdout", value = "ps7_uart_0")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

