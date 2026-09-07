public class Super{
    public static void main(String[] args){
        A obj=new A();
        System.out.println(obj.x);

        B ab=new B();
        System.out.println(ab.y);
        System.out.println(ab.x);
    }
}
class A{
    int x=4;
}

class B extends A{
    int y=super.x;
    int x=10;
}