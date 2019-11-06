public class Square {    
    public static boolean isSquare(int n) {  
    double square = Math.sqrt(n); 
    if (square - Math.floor(square) == 0) {
    return true;
    } else {
        return false; // fix me!
        }
    }
}
