# Static Site for Heroku
## What's inside
* Rack server
* jQuery 1.11.1
* CSS: Normalize.css, & bootstrap 3.1.1 (only the grid and
  responsive stuff)
* A clean index based on boilerplate
## Usage
* `clone` this repo (`git clone [this-repo-git-url] your-project-name`)
* `cd your-project-name` 
* `bundle`
* To run locally `rackup`, and open `http://localhost:9292/`

### To deploy to Heroku
* In the root of your project `heroku create`
* `git add -A`
* `git commit -m "First commit"`
* `git push heroku master`
* Smile

### Notes
Of course, you can versioning your project and add Heroku as a remote
repo. In that way, you keep 2 remotes repos, one for the development of
your site, and the other the deployed project in Heroku.
If you are versioning this project, and then want to attach a Heroku
app:

* `git remote add heroku git@heroku.com:{heroku-app-name}.git`
* `git push heroku master`
* `heroku open`

Reference: https://devcenter.heroku.com/articles/git#creating-a-heroku-remote
