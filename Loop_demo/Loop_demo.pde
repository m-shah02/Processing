
println("\nWhile loop output:");
//While loop demo
int i = 0;

while( i < 10){
  println("Number: " + i);
  i++; // Can also be written as i = i + 1
}

println("\nFor loop output:");
//for loop demo
for(int j = 0; j < 10; j++){
  println("Number: " + j);
}

println("\nNested for loop output:");
// Nested for loop demo
for(int k = 0; k < 10; k++)
{
  for(int l = 0; l < 10; l++)
  {
    println("Coordinates: (" + k + "," + l + ")");
  }
}
