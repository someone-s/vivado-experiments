# 2025-07-25T19:24:04.833185
import vitis

client = vitis.create_client()
client.set_workspace(path="ps-pl-iic-control-software")

platform = client.get_component(name="platform")
status = platform.build()

vitis.dispose()

