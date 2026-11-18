hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")

-- Make GTK apps fall back to compositor-side blur (layer rules) instead of the protocol
hl.env("GDK_WAYLAND_DISABLE", "ext_background_effect_manager_v1")
