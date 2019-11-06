import java.util.Arrays;

public class ZywOo {

  public static String warnTheSheep(String[] array) {
    //Your code)))
    int index = Arrays.asList(array).indexOf("wolf");
    int arrayLength = array.length;
    if (index == arrayLength - 1) {
     String reply = "Pls go away and stop eating my sheep"; 
     return reply; } else {
     int sheepNumber = arrayLength - index - 1;
     String reply = "Oi! Sheep number " + Integer.toString(sheepNumber) +"! You are about to be eaten by a wolf!";
     return reply;
     }
  }

}
