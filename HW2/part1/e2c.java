public class e2c {
 
  public static void main(String args[]) {
	  Scan scanner = new Scan();
	  Token t;
	  do {
	    t = scanner.scan();
	    System.out.println(t);
	  } while( t.kind != TK.EOF );	     
  }
}
