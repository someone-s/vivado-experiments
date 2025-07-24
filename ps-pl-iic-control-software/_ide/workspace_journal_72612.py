# 2025-07-24T18:54:55.200657
import vitis

client = vitis.create_client()
client.set_workspace(path="ps-pl-iic-control-software")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../ps-pl-nand-gate/main_design_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

