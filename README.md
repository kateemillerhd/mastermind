# Mastermind (Command Line Game)

Mastermind is a code-breaing game where one player sets a secret code and the other player attempts
to guess it within a set number of turns. This project is a command-line Ruby implementation of that
game, supporting both human and computer players.

---

## Features

- Play as either the **code breaker** or the **code maker**
- Computer randomly generates or guesses the code
- Color feedback after each guess:
    - **Exact match**: Correct color in correct position
    - **Color-only match**: Correct color in wrong position
- 12 turns to win the game
- Object oriented Ruby design

---

## Getting Started

### Requirements

- Ruby (version 2.7+ recommended)
- Terminal access

### Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/kateemillerhd/mastermind.git
   cd mastermind
   ```
2. Run the game
   ```bash
   ruby game.rb
   ```

---

## Rules and How to Play
- The secret code consists of **4 pegs**, each a color chosen from:
```mathematica
R (Red), G (Green), B (Blue), Y (Yellow), O (Orange), P (Purple)
```
- Duplicates are allowed (e.g., RRGG is valid)
- On each turn, you enter a 4-letter guess (e.g., RGBY) and receive feedback:
    - X exact: right color, right posiition
    - Y color-only: right color, wrong position
- You have **12 tries** to guess the secret code.
- If you choose to be the code maker, the computer will attempt to guess your code.

---

## Acknowledgments

Inspired by the classic **Mastermind** board game, and part of [The Odin Project](https://www.theodinproject.com/) curriculum.
