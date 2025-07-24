# 2025-07-24T14:46:27.468133
import vitis

client = vitis.create_client()
client.set_workspace(path="ps-pl-nand-gate-software")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="not_gate")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

