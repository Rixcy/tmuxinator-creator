# Tmuxinator Config

Bash script for quickly setting up opinionated tmux sessions. Uses [Gum](https://github.com/charmbracelet/gum) for terminal styling.

## Features

- Checks if you're on a mac (currently only supporting mac due to brew dependency but this might change later)
- Checks if you have tmuxinator installed, if not it'll try install it with homebrew
- Checks if you have homebrew installed to install tmuxinator, if not it'll try install it
- Checks if a `.tmuxinator.yml` file exists and prompts you to delete/cancel
- Uses the current folder name as a config name, but allows you to override it
- Asks you for a dev command to run when starting a session

## Screenshots

### Checking if the .tmuxinator.yml file already exists
<img width="570" alt="CleanShot 2022-08-30 at 21 25 24@2x" src="https://user-images.githubusercontent.com/11819124/187537397-01483f52-8e8b-4ad5-8769-5be38aa4186e.png">

### Asks you for an initial dev command to boot up a server
<img width="571" alt="CleanShot 2022-08-30 at 21 25 37@2x" src="https://user-images.githubusercontent.com/11819124/187537401-148b93e3-d87a-434d-8fd5-cb2422e8160b.png">

### Lets you know once the file has been created along with the command to start it
<img width="568" alt="CleanShot 2022-08-30 at 21 25 50@2x" src="https://user-images.githubusercontent.com/11819124/187537405-bee8796d-860d-41f6-80d3-f47b7465c830.png">

### Example output using smart folder name
<img width="384" alt="CleanShot 2022-08-30 at 21 26 27@2x" src="https://user-images.githubusercontent.com/11819124/187537408-a049c8df-0306-47c6-81fc-48a391eefad9.png">
