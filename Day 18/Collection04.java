package days18;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;

public class Collection04 {
	public static void main(String[] args) {
		Vector<Integer> v = new Vector<>();
		v.add(1); v.add(2); v.add(2);
		System.out.println(v.size());
		
		ArrayList<Integer> a = new ArrayList<>();
		a.add(1); a.add(2); a.add(2);
		System.out.println(a.size());
		
		LinkedList<Integer> l = new LinkedList<>();
		l.add(1); l.add(2); l.add(2);
		System.out.println(l.size());
		
		HashSet<Integer> h = new HashSet<>();
		h.add(1); h.add(2); h.add(2);
		System.out.println(h.size());
		
		HashSet<Integer> lotto = new HashSet<>();
		while(lotto.size() < 6) {
			lotto.add((int)(Math.random() * 45) + 1);
		}
		for(Integer i : lotto)
			System.out.printf("%d ", i);
		
		System.out.println();
		
		List list = new LinkedList(lotto);
		Collections.sort(list);
		System.out.println(list);
	}
}
