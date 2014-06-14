import QtQuick 2.1

Item {
	function respondKey(event) {
		if (event.key == Qt.Key_Escape) { main_controller.toggleFullscreen(); return }
		if (config.hotkeysPlayHotkeyEnabled) {
			for(var i = 0; i < config.hotKeysPlay.length; i++) {
				if (_utils.checkKeySequenceEqual(event.modifiers, event.key, 
					config.hotKeysPlay[i].key)) 
				{
					eval("main_controller." + config.hotKeysPlay[i].command + "()")
					return
				}
			}
		} 
		if (config.hotkeysFrameSoundHotkeyEnabled) {
			for(var i = 0; i < config.hotkeysFrameSound.length; i++) {
				if (_utils.checkKeySequenceEqual(event.modifiers, event.key, 
					config.hotkeysFrameSound[i].key)) 
				{
					eval("main_controller." + config.hotkeysFrameSound[i].command + "()")
					return
				}
			}
		} 
		if (config.hotkeysFilesHotkeyEnabled) {
			for(var i = 0; i < config.hotkeysFiles.length; i++) {
				if (_utils.checkKeySequenceEqual(event.modifiers, event.key, 
					config.hotkeysFiles[i].key)) 
				{
					eval("main_controller." + config.hotkeysFiles[i].command + "()")
					return
				}
			}
		} 
		if (config.hotkeysSubtitlesHotkeyEnabled) {
			for(var i = 0; i < config.hotkeysSubtitles.length; i++) {
				if (_utils.checkKeySequenceEqual(event.modifiers, event.key, 
					config.hotkeysSubtitles[i].key)) 
				{
					eval("main_controller." + config.hotkeysSubtitles[i].command + "()")
					return
				}
			}
		} 
	}
}