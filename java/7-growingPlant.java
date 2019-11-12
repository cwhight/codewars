public class SimpleFun {
  public static int growingPlant(int upSpeed, int downSpeed, int desiredHeight) {
      int days = (int) Math.ceil((double)(desiredHeight - downSpeed) / (upSpeed - downSpeed));
      return days > 0 ? days : 1;
  }
}
