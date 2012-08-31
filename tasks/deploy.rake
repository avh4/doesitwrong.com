
namespace :demo do
  task :deploy do
    sh "rm -Rf _site"
    sh "jekyll --url http://avh4.github.com/doesitwrong.com"
    sh "rsync -va --delete _site/ ssh.example.com:staging/htdocs/"
  end
end

namespace :prod do
  task :deploy do
    sh "rm -Rf _site"
    sh "jekyll --url http://doesitwrong.com"
    sh "rsync -va --delete _site/ ssh.example.com:htdocs/"
  end
end
