public class DirReduction {

    public static String[] reduce(String[] input) {
        int count =0;
        for (int i =0; i< input.length; i +=1) {
          if (i == input.length - 1) {
          } else if ((input[i] == "NORTH" && input[i+1] == "SOUTH") || (input[i] == "SOUTH" && input[i+1] =="NORTH") || (input[i] == "EAST" && input[i+1] =="WEST") || (input[i] == "WEST" && input[i+1] =="EAST")) {
            i += 1;
            count += 2;
          }
        }
        
        String[] result = new String[input.length - count];
        int j =0;
        for (int i =0; i< input.length; i +=1) {
          if (i == input.length - 1) {
            result[j] = input[i];
            
          } else if ((input[i] == "NORTH" && input[i+1] == "SOUTH") || (input[i] == "SOUTH" && input[i+1] =="NORTH") || (input[i] == "EAST" && input[i+1] =="WEST") || (input[i] == "WEST" && input[i+1] =="EAST")) {
            i += 1;             
          } else {
            result[j] = input[i];
            j += 1;
          }          
        }
        return result;
    }
    
    public static String[] dirReduc(String[] arr) {
        // Your code here.
        String[] input = arr;
        String[] result = reduce(input);

        for (int i = 0; i>= 0; i+=1) {
          if(result.length == reduce(result).length) {
            i = -2;
          } else {
             result = reduce(result);
          }          
        }
        
        return result;       

    }
}
