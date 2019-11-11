import java.util.*;

public class LineNumbering {
    public static List<String> number(List<String> lines) {
        // TODO
        List<String> numberList = new ArrayList<String>();
        int counter = 0;
        Iterator itr = lines.iterator();

        while (itr.hasNext()) {
         String x = (String)itr.next();
         counter++;
          numberList.add(Integer.toString(counter) + ": " + x);
        };
        return numberList;
    }
}
