# 2025-06-25T16:40:17.596638900
import vitis

client = vitis.create_client()
client.set_workspace(path="edt_zc702_workspace")

platform = client.get_component(name="zc702_edt")
status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

