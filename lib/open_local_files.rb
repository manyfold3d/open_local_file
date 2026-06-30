require "open_local_files/version"
require "open_local_files/engine"

module OpenLocalFiles

  def self.file_url_for(path:, fallback_library_path: nil)
    library_path = ENV.fetch("OPEN_LOCAL_FILES_LIBRARY_PATH", fallback_library_path)
    return nil unless library_path

    local_path = File.join(library_path, path)
    URI::File.build(path: local_path.split(File::SEPARATOR).map {CGI.escapeURIComponent it}.join("/")).to_s
  end

end
