function love.conf(t)
    t.identity = "data/saves"
    t.version = "1.0.0"
    t.console = false -- (Windows) true/false
    t.externalstorage = true -- (Android) save to sdcard instead of phone storage
    t.gammacorrect = true
    t.audio.mic = true
    t.window.title = "Cool Ball Game"
    t.window.icon = "icon/game_icon.jpg"
    t.window.width = 1200
    t.window.height = 700
    t.window.resizable = false
    t.window.borderless = false
end