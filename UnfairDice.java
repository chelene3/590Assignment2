import java.util.*;

public class UnfairDice {

        private int sides;

        public UnfairDice(int sides)  {
                this.sides = sides;
        }

        public int getSides() {
                return sides;
        }

        public int rollUnfairDie() {
		Random r = new Random();
		int roll = r.nextInt(getSides())+1;
		return roll;
	}

}

