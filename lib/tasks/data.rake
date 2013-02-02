namespace :data do

  desc 'Generate new backup of production database'
  task :backup do
    sh 'heroku pgbackups:capture --expire --app team-interval'
  end

  namespace :sync do

    desc 'Syncronize production and staging databases'
    task :staging do
      sh 'heroku pgbackups:restore --app team-interval-staging  DATABASE `heroku pgbackups:url --app team-interval`'
    end

    desc 'Syncronize production and local databases'
    task :local do
      sh 'curl -o latest.dump `heroku pgbackups:url --app team-interval`'
      sh 'pg_restore -O -d team_interval_development latest.dump'
      sh 'rm latest.dump'
    end
  end
end
