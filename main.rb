TEMPLATE_REPO_URL = "https://github.com/onedesign/rails3_template/raw/master"

def pull_down_file(remote_file_path, local_file_path=nil)
  local_file_path = local_file_path || remote_file_path
  puts local_file_path
  run "curl -L --insecure '#{TEMPLATE_REPO_URL}/#{remote_file_path}' > #{local_file_path}"
end

run "rm -Rf .gitignore README README.rdoc public/index.html test app/views/layouts/*"

pull_down_file "Gemfile"
pull_down_file "gitignore", ".gitignore"


run "bundle install"

application  <<-GENERATORS
  config.generators do |g|
    g.template_engine :haml
    g.test_framework  :rspec, fixture: true
    g.fixture_replacement :factory_girl
    g.helper false
    g.view_specs false
  end
GENERATORS

if yes?("Would you like to install Devise?")
  gem("devise")
  generate("devise:install")
  model_name = ask("What would you like the user model to be called? [user]")
  model_name = "user" if model_name.blank?
  generate("devise", model_name)
end

# Run Gem installers
generate "rspec:install"
generate "simple_form:install"
generate "cucumber:install"
generate "backbone:install"
generate "active_admin:install"


# SETUP DEFAULT VIEWS
run "mkdir app/views/shared"

pull_down_file "app/views/layouts/application.html.haml"
pull_down_file "app/views/shared/_navigation.html.haml"
pull_down_file "app/views/shared/_flash_messages.html.haml"
pull_down_file "spec/support/devise.rb"
pull_down_file "APPREADME.md", "README.md"

gsub_file "README.md", /App_Name/, "#{app_name.humanize.titleize}"

run "touch tmp/.gitkeep"

puts "You did it!"
