public class Iclass{
    public static void main(){
        Outer outer = new Outer();

        Outer.Inner inner = outer.new Inner();

        inner.fun();
    }
}

class Outer{

    int outInstanaceVar = 100;
    static int outStaticVar = 200;

    void outInstanceMeth(){
        System.out.println("called outer instance method.");
    }

    static void outStaticMeth(){
        System.out.println("called outer static method.");
    }
    class Inner{
        void fun(){
            System.out.println(outInstanaceVar);
        }
    }
}