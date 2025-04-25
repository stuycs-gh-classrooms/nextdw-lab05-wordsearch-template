/*=====================================
  WordSearch

  Create a working wordsearch program. Below is a
  list of general steps to follow. Each step may
  involve adding methods/fields/constants, do so
  as you see fit. The steps are provided in order
  intentionally.

  0. Add the code necessary for pickWord as we have been
     working on in class.
  1. Add the ability to click on the grid and highlight
     the "selected" character.
  2. Add the ability to detect if a selected character is:
     - The beginning of a new selection.
     - The continuation of a horizontal selction.
     - The continuation of a vertical seleciton.
  3. Modify your display so that highlighted characters
     are only part of the "current" selection.
  4. Add the ablity to save the "word" made by
     the current set of selected characters.
  5. When a character is clicked, add the ablity to
     check if the "word" is one of the words to be found.
  6. Modify the displayed grid so that found words
     are presented differently (i.e. different color)
  7. Display the word bank below the grid.
  8. Present any words that have been found in the
     word bank differently.
=====================================*/

String WORDS = "words_alpha.txt";
int GRID_SIZE = 20;
int CHAR_SIZE = 30;
int NUM_WORDS = 20;
int MIN_LENGTH = 3;

WordGrid board;
boolean debug;


void setup() {
  size(600, 850);

  debug = true;
  board = new WordGrid(GRID_SIZE, NUM_WORDS, debug);
  println(board.words);
  board.drawGrid();
}//setup

void draw() {
  background(255);

  board.drawGrid();
}//draw

void keyPressed() {
  if (key == ' ') {
    board = new WordGrid(GRID_SIZE, NUM_WORDS, debug);
    println(board.words);
  }//new board
  if (key == 'd') {
    debug = !debug;
  }
}//keyPressed
