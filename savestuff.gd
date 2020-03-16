extends Node

const SAVE_PATH = "res://config.cfg"
var _config_file = ConfigFile.new()
var _settings = {
	"stats": {
		"score": (global.score),
		"lives": (global.lives),
		"level": (global.level)
	}
}

func _ready():
	#save_settings()
	#load_settings()
	pass
func save_settings():
	for section in _settings.keys():
		for key in _settings[section]:
			_config_file.set_value(section, key, _settings[section][key])
			_config_file.set_value("stats","score",global.score)
			_config_file.set_value("stats","lives",global.lives)
			_config_file.set_value("stats","level",global.level)
		_config_file.save(SAVE_PATH)
	
func load_settings():
	var error = _config_file.load(SAVE_PATH)
	if error != OK:
		print("Failed loading settings file. Error code %s" % error)
		return null
	for section in _settings.keys():
		for key in _settings[section]:
			_settings[section][key] = _config_file.get_value(section, key, null)
			
	global.score = _config_file.get_value("stats","score")
	global.lives = _config_file.get_value("stats","lives")
	global.level = _config_file.get_value("stats","level")
	if global.level == 2:
		get_tree().change_scene("res://Scenes/Level2.tscn")
	if global.level == 1:
		get_tree().change_scene("res://Scenes/Level1.tscn")
