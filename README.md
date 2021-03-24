# vim_tts_interface
A plugin for vim to communicate with Tabletop Simulator for scripting.

### You have to create the following folder structure inside the vim plugin
/cache/script
/cache/gui

## Todo
### Automatically build the folder structure
### properly sort the cache into a structure as follows
```
/cache/<TTS-save>/<guid>/script/
/cache/<TTS-save>/<guid>/gui/
```

an example would look like
```
/cache/TS_Save_4/62deaa/script
/cache/TS_Save_4/62deaa/gui
```

where /script/ contains '.lua' files, and /gui/ contains '.xml' files

### manage netcat processes, currently if they don't receive a message they just sit there taking up a socket
