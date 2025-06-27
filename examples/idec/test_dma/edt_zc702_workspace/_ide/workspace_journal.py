# 2025-06-27T11:39:12.676973100
import vitis

client = vitis.create_client()
client.set_workspace(path="edt_zc702_workspace")

platform = client.create_platform_component(name = "edt_zc702",hw_design = "$COMPONENT_LOCATION/../../edt_zc702/system_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="edt_zc702")
status = platform.build()

comp = client.create_app_component(name="test_dma",platform = "$COMPONENT_LOCATION/../edt_zc702/export/edt_zc702/edt_zc702.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="test_dma")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

status = platform.build()

status = platform.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

