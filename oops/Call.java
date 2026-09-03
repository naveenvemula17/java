public class Call{
    public static void main(String[] args){
        Dono obj=new Dono(5,7);
        update(obj);

        System.out.println(obj.x +" "+ obj.y);
        

    }
    static void update(Dono d){
        d.x=d.x+10;
        d.y=d.y+10;
    }
}

class Dono{
    int x;
    int y;
    Dono(int x,int y){
        this.x=x;
        this.y=y;
    }
}