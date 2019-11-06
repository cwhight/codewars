import java.math.BigInteger;

public class Funcij {
	
	public static BigInteger sumin(int n) {
		// your code
    BigInteger sum = BigInteger.valueOf(0);
    for (int i = 1; i <= n; i += 1) {
      int times = (n - i)*2 + 1;
      sum = sum.add(BigInteger.valueOf(i * times));
    }
    return sum;
	}
	public static BigInteger  sumax(int n) {
		// your code
    BigInteger sum = BigInteger.valueOf(0);
    for (int i = 1; i <= n; i += 1) {
      int times = i*2 - 1;
      sum = sum.add(BigInteger.valueOf(i * times));
    }
    return sum;
	}
	public static BigInteger  sumsum(int n) {
		// your code
    BigInteger sum = sumax(n).add(sumin(n));
    return sum;
	}
}
