public class Kata {
  public static String highAndLow(String numbers) {
    // Code here or
    String[] arr = numbers.split(" ");
    int min = Integer.parseInt(arr[0]);;
    int max = min;
    for (int i=0; i< arr.length; i +=1) {
      int num = Integer.parseInt(arr[i]); 
      if (num > max) {
        max = num;
      } else if (num < min) {
        min = num;
      }
    }
    
    return String.valueOf(max) + " " + String.valueOf(min);
  }
}
