# 2025-07-25T19:25:35.695595
import vitis

client = vitis.create_client()
client.set_workspace(path="ps-pl-iic-control-software")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="simple_led")
comp.build()

