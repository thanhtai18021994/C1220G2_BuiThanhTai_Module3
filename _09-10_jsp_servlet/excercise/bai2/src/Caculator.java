public class Caculator {
    private int a;
    private int b;

    public Caculator(int a, int b) {
        this.a = a;
        this.b = b;
    }

    public int getA() {
        return a;
    }

    public void setA(int a) {
        this.a = a;
    }

    public int getB() {
        return b;
    }

    public void setB(int b) {
        this.b = b;
    }
    public String sum(){
        return ""+(a+b);
    }
    public String device(){
        try {
            int result =a/b;
            String kp=""+result;
            return kp;
        }catch (ArithmeticException e){
            return "Khong hop le" ;
        }
    }
    public String subtract(){
        return ""+(a*b);
    }
    public String tru(){
        return ""+(a-b);
    }
}
