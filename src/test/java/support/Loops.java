package support;

public class Loops {
    public static void main(String[] args) {

//        boolean condition = true;
//        while(condition){
//            condition=false;
//        }

//        int x=0;
//        while (x< 100) {
//            System.out.println("the Value of x:" +x);
//            x++;
//        }
//        for (int y=0; y<100; y++) {
//            System.out.println("The value of y:" +y);
//        }

//        String[] strings = new String[5];
//        strings [0] = "1";
//        strings [1] = "2";
//        strings [2] = "3";
//        strings [3] = "4";
//        strings [4] = "5";
//
//        for ( int i = 0; i < strings.length; i++){
//            System.out.println("Array value:" +strings[i]);
//        }

//        String[] string2 = new String[5];
//        string2[0] = "Test";
//        string2[1] = "One";
//        string2[2] = "Portnov";
//        string2[3] = "Tech";
//        string2[4] = "100";
//
//        for (int i = 0; i < string2.length; i++) {
//            if (string2[i] == "Portnov") {
//                System.out.println("MATCH");
//
//            }
//        }
//    }

        int num = 10;
        while (num >= 1) {
            System.out.println(num);
            num--;
        }

        String[] strings = new String[5];
        strings [0] = "1";
        strings [1] = "2";
        strings [2] = "3";
        strings [3] = "4";
        strings [4] = "5";

        for ( int i = 5; i <= strings.length; i--){
            System.out.println("Array value:" +strings[i]);
        }

    }
}





























