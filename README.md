# Mastermind (Ruby CLI Game)

## Overview
Mastermind is a classic code-breaking game where a player attempts to guess a secret code within a limited number of attempts. This is a **command-line implementation** of the game, built using **Ruby** and **Object-Oriented Programming (OOP)** principles.

## Features
✅ Generates a random secret code (4 digits, each between 1-6).  
✅ Accepts user input for guessing the code.  
✅ Validates user input (ensures only 4-digit numbers between 1-6 are entered).  
✅ Provides feedback on **exact** and **partial** matches.  
✅ Detects when the player wins and displays a success message.  
✅ Fully Rubocop-compliant code.  
✅ Version tracking via Bundler and Git.  

## How to Play
### **1. Clone the Repository**
```sh
git clone https://github.com/YOUR_GITHUB_USERNAME/mastermind.git
```

### **2. Navigate to the Project Directory**
```sh
cd mastermind
```

### **3. Install Dependencies (if using Bundler)**
```sh
bundle install
```

### **4. Run the Game**
```sh
ruby main.rb
```

### **5. Gameplay Instructions**
- The game will generate a **random 4-digit code** (each digit between **1-6**).
- You will be prompted to enter your **4-digit guess**.
- After each guess, the game provides feedback:
  - **Exact Matches**: Correct number in the correct position.
  - **Partial Matches**: Correct number in the wrong position.
- Keep guessing until you **crack the code**!

## Project Structure
```
mastermind/
│── lib/              # Contains all class files
│   ├── board.rb      # Placeholder for game state management
│   ├── code_breaker.rb # Handles user input for guessing
│   ├── code_maker.rb # Generates the secret code and evaluates guesses
│   ├── game.rb       # Controls the game flow
│── main.rb           # Entry point for the game
│── README.md         # Project documentation
│── .rubocop.yml      # Rubocop configuration file
│── .gitattributes    # Ensures correct line endings (LF)
│── .gitignore        # Specifies files to ignore in Git
│── Gemfile           # Bundler dependencies
│── Gemfile.lock      # Tracks installed gem versions
│── LICENSE           # Project license file
```

## Future Improvements
🔹 **Limit Number of Attempts** (e.g., max 12 guesses).  
🔹 **Improve Formatting** (add colors, UI improvements).  
🔹 **Implement AI CodeBreaker** (so the computer can also guess).  
🔹 **Add a Game Menu** (Play, View Rules, Exit options).  
🔹 **Save Game Logs** (store previous games in a file).  

## Contributions
Contributions are welcome! If you'd like to enhance the game, feel free to fork the repository, create a new branch, and submit a pull request.

## License
This project is licensed under the **MIT License**.
