# 2025-06-25T16:24:52.815011
import vitis

client = vitis.create_client()
client.set_workspace(path="edt_zc702_workspace")

platform = client.create_platform_component(name = "zc702_edt",hw_design = "$COMPONENT_LOCATION/../../edt_zc702/system_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="zc702_edt")
status = platform.build()

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../zc702_edt/export/zc702_edt/zc702_edt.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

