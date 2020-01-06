import java.math.BigDecimal;
import java.math.RoundingMode;

public class FloatRepresent {
    public static String mantExp(BigDecimal number, int nDigits) {
        BigDecimal n = number.setScale(nDigits + number.scale() - number.precision(), RoundingMode.DOWN);
//         return "P" + n;        
return n.unscaledValue() + "P" + -n.scale();

    }
}
