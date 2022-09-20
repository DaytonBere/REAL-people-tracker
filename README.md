# REAL People Tracker README

## Versions
- Ruby: 3.0.2
- Rails: 6.1.7

## First Time Setup
1. Navigate to the appropriate local directory and clone the repository using `git clone git@github.com:DaytonBere/REAL-people-tracker.git`
2. Ensure that Docker Desktop is open and that `port: 3000` is not in use
3. Run the following based on your device:
- MacOS (Apple Silicon) `docker run --rm -it --volume "$(pwd):/csce431" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 --platform linux/amd64 dmartinez05/ruby_rails_postgresql:latest`
- MacOS (Intel) `docker run --rm -it --volume "$(pwd):/csce431" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest`
- Windows `docker run --rm -it --volume "${PWD}:/csce431" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest`
4. Run `cd REAL-people-tracker` inside of the Docker container
5. If you are not on a MacOS (Apple Silicon) device, run `vim config/environments/development.rb` and uncomment line 72 `config.file_watcher = ActiveSupport::EventedFileUpdateChecker`
6. Run `bundle install`
7. If you are using an Apple Silicon Mac run `rails webpacker:install`
8. Run `rails db:create`
9. Run `rails db:mirgate`
10. Run `rails server --binding=0.0.0.0`
11. After that has run, verify you can view the project on your browser at `http://localhost:3000/`
12. To close the project press `Ctrl+C` on the original CLI
13. To safely close the Docker container run `exit`

## Running the Project
1. Navigate to the appropriate local directory
2. Ensure that Docker Desktop is open and that `port: 3000` is not in use
3. Run the following based on your device:
- MacOS (Apple Silicon) `docker run --rm -it --volume "$(pwd):/csce431" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 --platform linux/amd64 dmartinez05/ruby_rails_postgresql:latest`
- MacOS (Intel) `docker run --rm -it --volume "$(pwd):/csce431" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest`
- Windows `docker run --rm -it --volume "${PWD}:/csce431" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest`
4. Run `cd REAL-people-tracker` inside of the Docker container
(Steps 5-8 can be run all at once by running `sh setup.sh`)
5. Run `bundle install`
6. Run `rails db:create`
7. Run `rails db:mirgate`
8. Run `rails server --binding=0.0.0.0`
9. Verify you can view the project on your browser at `http://localhost:3000/`
10. To close the project press `Ctrl+C` 
11. To safely close the Docker container run `exit`
