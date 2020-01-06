public class Chocolate{
  public static int breakChocolate(int n, int m) {
    if (n == 0 || m == 0) {
      return 0;
    }
    int splits = (n - 1)*m + m - 1;   
    return splits;
  }
}
