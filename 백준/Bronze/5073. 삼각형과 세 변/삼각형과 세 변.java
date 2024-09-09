import java.io.*;
import java.util.Arrays;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st;

        int[] arr= new int[3];
        while(true) {
            st = new StringTokenizer(br.readLine());


            arr[0] = Integer.parseInt(st.nextToken());
            arr[1] = Integer.parseInt(st.nextToken());
            arr[2] = Integer.parseInt(st.nextToken());
            Arrays.sort(arr);

            //0 0 0 입력시 무한루프 종료
            if(arr[0] == 0 && arr[1] == 0 && arr[2] == 0) break;

            else if(arr[2] >= arr[0] + arr[1]) {
                System.out.println("Invalid");
            }else if(arr[0] == arr[1] && arr[1] == arr[2]) {
                System.out.println("Equilateral");
            }else if(arr[0] == arr[1] || arr[1] == arr[2] || arr[0] == arr[2]) {
                System.out.println("Isosceles");
            }else {
                System.out.println("Scalene");
            }


        }
    }

}
