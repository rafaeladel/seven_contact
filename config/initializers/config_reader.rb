require 'yaml'
config_file = %W"#{Rails.root} config seven_contact_config.yml".join(File::SEPARATOR)

if File.exist? config_file
	SevenContact::ENGINE_CONFIG = YAML.load_file config_file
end

SevenContact::ENGINE_CONFIG ||= {}
