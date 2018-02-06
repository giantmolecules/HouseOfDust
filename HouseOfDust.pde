import processing.pdf.*;

/*
The House of Dust
 Brett Balogh
 Embodying Code
 Spring 2018
*/
 
 PFont font;

//text("word", 10, 50);

String[] materials =
  {
  "sand",
  "glass",
  "stone",
  "weeds",
  "leaves",
  "tin",
  "wood",
  "straw",
  "plastic",
  "dust"
};

String[] locations =
  {
  "by the sea",
  "in a place with both heavy rain and bright sun",
  "underwater",
  "in a desert",
  "in a cold, windy climate",
  "in an overpopulated area",
  "among small hills",
  "by an abandoned lake",
  "in michigan"
};

String[] lighting =
  {
  "using natural light",
  "using all available lighting",
  "using electricity",
  "using candles"
};

String[] inhabitants =
  {
  "inhabited by horses and birds",
  "inhabited by various birds and fish",
  "inhabited by american indians",
  "inhabited by lovers",
  "inhabited by people who eat a great deal",
  "inhabited by french and german speaking people",
  "inhabited by collectors of all types",
  "inhabited by people who sleep almost all the time",
  "inhabited by friends and enemies"
};

float randomFloat = 0.0;
int randomInt = 0;
int textSize = 30;
int originX = 20;
int originY = 50;
int spacingX = textSize+100;
int spacingY = textSize+10;

void setup() {
  size(1280, 960, PDF, "HouseOfDust.pdf");
  textMode(SHAPE);
  textSize(textSize);
  background(255);
  fill(0);
  font = createFont("Simplex", 36);
  textFont(font);
}

void draw() {
  
  for (int i = 0; i < 1; i++) {
    
    // Pick a random material
    
    randomFloat = random(materials.length);
    randomInt = int(randomFloat);
    
    text("A house of "+materials[randomInt], originX, originY);
    
    // Pick a random place
    
    randomFloat = random(locations.length);
    randomInt = int(randomFloat);

    text(locations[randomInt], originX+spacingX, originY+spacingY);
    
    // Pick a random light
    
    randomFloat = random(lighting.length);
    randomInt = int(randomFloat);

    text(lighting[randomInt], originX+spacingX*2, originY+spacingY*2);
    
    // Pick a random inhabitant
    
    randomFloat = random(inhabitants.length);
    randomInt = int(randomFloat);

    text(inhabitants[randomInt], originX+spacingX*3, originY+spacingY*3);
    
  }
  exit();
}