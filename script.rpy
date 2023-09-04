init python:
    # [renpy.load_module(x.split(".")[0]) for x in renpy.list_files(True) if x.endswith(".rpym")]
    for x in renpy.list_files(True):
        if x.endswith(".rpym"):
            try:
                renpy.load_module(x.split(".")[0])
            except:
                pass