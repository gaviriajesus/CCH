public class myDemoClassB{
    public string a;
    public void mymethod(){
        system.debug('A1');    
        a = 'a';
    }
    public void myBmethod(){
        system.debug('A1');    
        a = 'aConflict1';
        if(true)
        system.debug('test');
    }

    //TEST ANGEL
}