class FileHandlers::OpenLocalFiles < FileHandlers::Base
  # i18n-tasks-use t('model_files.download.open_local_files')

  ENVIRONMENTS = [:client].freeze

  INPUT_TYPES = Mime::LOOKUP.values.freeze

  def self.open_url_for(file, client_os: nil)
    ::OpenLocalFiles.file_url_for(path: file.path_within_library, fallback_library_path: file.model.library.path)
  end
end
