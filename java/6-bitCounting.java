public class BitCounting {

  public static int countBits(int n){
    // Show me the code!
    String binary = Integer.toBinaryString(n);
    return (int)binary.codePoints().filter(ch -> ch == '1').count();
  }

}
