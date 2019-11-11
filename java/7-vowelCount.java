import java.util.*;

public class Vowels {

  public static int getCount(String str) {
    int vowelsCount = 0;
    List<Character> vowels = Arrays.asList('a','e','i','o','u');
    for (int i = 0; i < str.length(); i++) {

      if (vowels.contains(str.charAt(i))) {
        vowelsCount++;
      }
    }
    return vowelsCount;
  }
}
