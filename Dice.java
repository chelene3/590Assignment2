// import UnfairDice;
import java.util.*;

public class Dice {

	private int sides;
	
	public Dice(int sides)  {
		this.sides = sides;
	}

	public static void main (String[] args) {
	    Dice d = new Dice(6);
	    UnfairDice ud = new UnfairDice(4);
	    System.out.println("Number of sides on fair dice: " + d.getSides());
		System.out.println("Number of sides on unfair dice: " + ud.getSides());
		int fairRoll = d.rollDie();
		System.out.println("Roll of fair dice: " + fairRoll);
		int unfairRoll = ud.rollUnfairDie();
		System.out.println("Roll of unfair dice: " + unfairRoll);
		System.out.println("Roll a six please: " + ud.rollThisNumber(6));
  	}
	
	public int getSides() {
		return sides;
	}

	public int rollDie() {
		Random r = new Random();
		int roll = r.nextInt(getSides())+1;
		return roll;
	}

}
