require "open_local_files/version"
require "open_local_files/engine"

module OpenLocalFiles

  def self.file_url_for(path:, fallback_library_path: nil)
    library_path = ENV.fetch("OPEN_LOCAL_FILES_LIBRARY_PATH", fallback_library_path)
    return nil unless library_path

    path = File.join(library_path, file.path_within_library)
    URI::File.build(path: path.split(File::SEPARATOR).map {CGI.escapeURIComponent it}.join("/")).to_s
  end

end
