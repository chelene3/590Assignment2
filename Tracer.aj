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
    System.out.println("-- after rolling the dice --");
    return 1;
  }

  int around(): call(* *.rollThisNumber(*)) {
    return 5; 
  }
  

}
