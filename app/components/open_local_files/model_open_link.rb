class Components::OpenLocalFiles::ModelOpenLink < Components::Base
  def initialize(params = {})
    @model = params[:model]
  end

  def render?
    @model.present?
  end

  def before_template
    @file_url = ::OpenLocalFiles.file_url_for(path: @model.path, fallback_library_path: @model.library.path)
  end

  def view_template
    a href: @file_url, role: "menuitem", class: "dropdown-item", rel: "nofollow", aria_current: "false" do
      Icon(icon: "folder")
      whitespace
      span { t("components.open_local_files.model_open_link.label") }
    end
  end
end
