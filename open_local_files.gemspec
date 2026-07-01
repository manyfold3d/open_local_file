require_relative "lib/open_local_files/version"

Gem::Specification.new do |spec|
  spec.name = "Open Local Files"
  spec.version = OpenLocalFiles::VERSION
  spec.authors = ["James Smith"]
  spec.email = ["james@floppy.org.uk"]
  spec.homepage = "https://github.com/manyfold3d/open_local_files"
  spec.summary = "Open local files directly via file:// URLs"
  spec.description = "Adds file:// URLs to file menus and model sidebar, so you can easily jump to actual files if they're available locally."
  spec.license = "MIT"
  spec.metadata = {
    "manyfold_version" => ">= 0.146.0"
  }
end
