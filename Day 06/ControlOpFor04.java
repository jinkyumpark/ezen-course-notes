package days06;
import java.util.Scanner;

public class ControlOpFor04 {
	public static void main(String[] args) {
//		int k, i;
//		k = 5;
//		i = 2;
//		System.out.printf("%d x %d = %d\n", k, i, k*i);
		
		Scanner sc = new Scanner(System.in);
		int dan;
		System.out.printf("출력할 단을 입력하세요: ");
		dan = sc.nextInt();
		// 입력한 숫자의 구구단을 출력하세요
		for(int i = 1; i <= 9; i++) {
			System.out.printf("%d x %d = %d\n", dan, i, dan * i);
		}
	}
}
