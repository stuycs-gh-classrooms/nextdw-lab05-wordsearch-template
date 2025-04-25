class WordGrid {

  char[][] grid;
  int[][] selectedGrid;
  int size;
  int numWords;
  ArrayList<String> words;

  WordGrid(int s, int n, boolean debug) {
    size = s;
    grid = new char[size][size];
    selectedGrid = new int[size][size];
    numWords = n;
    pickWords(numWords);
    if (!debug) {
      fillGrid();
    }
  }//constructor

  void pickWords(int n) {
    String[] allWords = loadStrings(WORDS);
    words = new ArrayList<String>();



    //this will sort words once you have fully
    //populated it. Leave it at the end of the method.
    words.sort(null);
  }//pickWords


  void fillGrid() {
    for (int r=0; r < grid.length; r++) {
      for(int c=0; c < grid[r].length; c++) {

        if (grid[r][c] == 0) {
          char rando = char(int(random(26)) + 'A');
          grid[r][c] = rando;
        }
      }
    }
  }//fillGrid

  void drawGrid() {
    textAlign(CENTER, CENTER);
    textSize(CHAR_SIZE);

    for (int r=0; r < grid.length; r++) {
      for(int c=0; c < grid[r].length; c++) {
        fill(0);
        if (grid[r][c] != 0 ) {
          text(grid[r][c], r * CHAR_SIZE+CHAR_SIZE/2, c * CHAR_SIZE+CHAR_SIZE/2);
        }
      }
    }
  }//drawGrid

}//WordGrid
