#! /bin/env python3

from i3ipc import Connection, Event

i3 = Connection()

def on_window_focus(i3, e):
    focused = i3.get_tree().find_focused()
    if focused.rect.width > focused.rect.height:
        i3.command("split h")
    else:
        i3.command("split v")

i3.on(Event.WINDOW_FOCUS, on_window_focus)
i3.main()