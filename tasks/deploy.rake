
namespace :demo do
  desc "Deploy to the staging server"
  task :deploy do
    sh "rm -Rf _site"
    sh "jekyll --url http://avh4.github.com/doesitwrong.com"
    sh "rsync -va --delete _site/ ssh.example.com:staging/htdocs/"
  end
end

namespace :prod do
  desc "Deploy to the production server"
  task :deploy do
    sh "rm -Rf _site"
    sh "jekyll --url http://doesitwrong.com"
    sh "rsync -va --delete _site/ ssh.example.com:htdocs/"
  end
end
