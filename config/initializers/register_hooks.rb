Rails.application.config.after_initialize do
  PluginManager.register(:model_menu, Components::OpenLocalFiles::ModelOpenLink)
end
