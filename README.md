# 590Assignment2

Compile with -->  ajc Dice.java Tracer.aj UnfairDice.java

Run with --> java Dice

Output is -->  
<img width="492" alt="Screen Shot 2021-09-07 at 3 18 20 PM" src="https://user-images.githubusercontent.com/46546040/132401181-275f6304-e1e8-4d40-885b-482682ac4ee0.png">

### Requirements
- Logging: For before and after main, and before and after rolling the dice, we printed meaningful results
- Intercepted the Parameter: when the user requested a specific number be rolled, we gave them back either 2 less than that number (or one more if that would result in a negative number) 
- Self Exploration: we added around advice for the unfair die. No matter what came up on the roll, we made advice that would fix it to always roll a one, hence its an unfair die. 
- Self Exploration: We added advice for after a function returns, in our case alerting the user they made a bad choice before the consequences of that choice are displayed to them
