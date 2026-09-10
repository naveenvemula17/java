public class Staticc{
    public static void main(){

        //10 static method 0 instant 
        Outer out =new Outer();
        
        Outer.Inner inner = new Outer.Inner();
        
        System.out.println(inner.iinv);
        inner.iinm();

        System.out.println(Outer.Inner.sstv);
        Outer.Inner.sstm(out);
    }
}

class Outer{
    int inv=1000;
    static int stv;
    void inm(){
        System.out.println("from instant method.");
    }
    static void stm(){
        System.out.println("from static method.");
    }

    static class Inner{
        int iinv=10;
        static int sstv=stv;
        void iinm(){
            stm();
        }
        static void sstm(Outer outer){ 
            outer.inm();
        }
    }
}