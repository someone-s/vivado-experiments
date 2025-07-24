# 2025-07-24T14:36:37.106088
import vitis

client = vitis.create_client()
client.set_workspace(path="ps-pl-nand-gate-software")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../ps-pl-nand-gate/main_design_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

client.delete_component(name="hello_world")

comp = client.create_app_component(name="not_gate",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

