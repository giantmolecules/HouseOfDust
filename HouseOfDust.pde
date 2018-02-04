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
  //size(1280,960);
  textMode(SHAPE);
  textSize(textSize);
  background(255);
  fill(0);
  //font = createFont("SourceCodePro-Regular-16.vlw", 16);
  //font = createFont("AvenirNext-UltraLightItalic", 36);
  //font = createFont("Monospaced", 36);
  font = createFont("Simplex", 36);
  textFont(font);
  //frameRate(1);
  //noLoop();
  
  //print(PFont.list());
}

void draw() {
  //beginRecord(PDF, "Poem.pdf");
  for (int i = 0; i < 1; i++) {
    //Begin
    print("A house of ");
    //text("A house of ", originX+spacingX, originY+spacingY);
    
    // Pick a random material
    randomFloat = random(materials.length);
    randomInt = int(randomFloat);
    println(materials[randomInt]);
    //text(materials[randomInt], 100, 50);
    text("A house of "+materials[randomInt], originX, originY);
    
    // Pick a random place
    randomFloat = random(locations.length);
    randomInt = int(randomFloat);
    print("       ");
    println(locations[randomInt]);
    //text(locations[randomInt], 50, 75);
    text(locations[randomInt], originX+spacingX, originY+spacingY);
    
    // Pick a random light
    randomFloat = random(lighting.length);
    randomInt = int(randomFloat);
    print("       ");
    print("       ");
    println(lighting[randomInt]);
    //text(lighting[randomInt], 70, 100);
    text(lighting[randomInt], originX+spacingX*2, originY+spacingY*2);
    
    // Pick a random inhabitant
    randomFloat = random(inhabitants.length);
    randomInt = int(randomFloat);
    print("       ");
    print("       ");
    print("       ");
    println(inhabitants[randomInt]);
    //text(inhabitants[randomInt], 90, 125);
    text(inhabitants[randomInt], originX+spacingX*3, originY+spacingY*3);
    
    // Print a separator
    println("");
    println("");
  }
  //endRecord();
  exit();
}