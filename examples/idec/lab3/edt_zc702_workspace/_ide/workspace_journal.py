# 2025-06-27T14:39:13.586484800
import vitis

client = vitis.create_client()
client.set_workspace(path="edt_zc702_workspace")

platform = client.create_platform_component(name = "edt_zc702",hw_design = "$COMPONENT_LOCATION/../../edt_zc702/system_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="edt_zc702")
status = platform.build()

comp = client.create_app_component(name="custom_ip",platform = "$COMPONENT_LOCATION/../edt_zc702/export/edt_zc702/edt_zc702.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="custom_ip")
comp.build()

status = platform.build()

comp.build()

domain = platform.get_domain(name="zynq_fsbl")

status = domain.regenerate()

status = platform.build()

status = platform.build()

comp.build()

status = domain.regenerate()

status = platform.build()

status = platform.build()

comp.build()

client.delete_component(name="custom_ip")

comp = client.create_app_component(name="custom_ip",platform = "$COMPONENT_LOCATION/../edt_zc702/export/edt_zc702/edt_zc702.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

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

vitis.dispose()

