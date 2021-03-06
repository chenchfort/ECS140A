public class MyInteger extends Element {
  private int i;
  
  public MyInteger() {
    i = 0;
  }
  
  public MyInteger(int i) {
    this.i = i;
  }
    
  public int Get() { 
    return i;
  }
  
  public void Set(int val) {
    i = val;
  }

  @Override
  public void Print() {
    System.out.print(i);
  }
}
