# 2025-07-24T18:02:22.213053
import vitis

client = vitis.create_client()
client.set_workspace(path="ps-pl-nand-gate-software")

platform = client.get_component(name="platform")
domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.set_qemu_data(path="resources/standalone_ps7_cortexa9_0/qemu")

status = platform.build()

comp = client.get_component(name="not_gate")
comp.build()

vitis.dispose()

