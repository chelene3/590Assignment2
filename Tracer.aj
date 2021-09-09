public aspect Tracer {

  // pointcuts

  pointcut theMainMethod() : execution(public static void main(String[]));
  pointcut theSidesCall(): call(* *.rollDie());

  // advice

  before(): theMainMethod() {
    System.out.println("before the Main");
  }

  after() : theMainMethod() {
    System.out.println("after the Main");
  }

  before(): theSidesCall() {
    System.out.println("-- before rolling the dice --");
  }

  int around(): call(* *.rollUnfairDie()) {
    proceed();
    System.out.println("-- after rolling the unfair dice, fixed to always roll a 1 --");
    return 1;
  }

  int around(int i): call(* *.rollThisNumber(int)) && args(i) {
    System.out.println("-- Rolling 2 less or 1 more than what is requested --");
    i = i-2; 
    if (i < 0) {
      i = i + 3;
    }
    return i;
  }

  after() returning : call(* *.rollUnfairDie()) {
    System.out.println("\'Oops you rolled the Unfair Dice, here's a one!!\'");
  }
  

}
