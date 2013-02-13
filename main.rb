TEMPLATE_REPO_URL = "https://github.com/onedesign/rails3_template/raw/master"

def pull_down_file(remote_file_path, local_file_path)
  local_file_path = local_file_path || remote_file_path
  run "wget --no-check-certificate '#{TEMPLATE_REPO_URL}/#{file_path}' -O #{local_file_path}"
end

run "rm -Rf .gitignore README public/index.html test app/views/layouts/*"

pull_down_file "Gemfile"
pull_down_file "gitignore", ".gitignore"


run "bundle install"

application  <<-GENERATORS
      g.template_engine :haml
      g.test_framework  :rspec, fixture: true
      g.fixture_replacement :factory_girl
      g.helper false
      g.view_specs false
    end
GENERATORS


# Run Gem installers
generate "rspec:install"
generate "devise:install"
generate "simple_form:install"
generate "cucumber:install"
generate "backbone:install"
generate "active_admin:install"


# SETUP DEFAULT VIEWS
run "mkdir app/views/shared"

pull_down_file "app/views/layouts/application.html.haml"
pull_down_file "app/views/shared/_navigation.html.haml"
pull_down_file "app/views/shared/_messages.html.haml"
pull_down_file "spec/support/devise.rb"

run "touch tmp/.gitkeep"

puts "SUCCESS!"
