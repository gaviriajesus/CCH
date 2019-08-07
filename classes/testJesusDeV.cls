@isTest
private class testJesusDeV {

    static testMethod void myDemoClass_mymethod(){
    myDemoClassB md = new myDemoClassB();
    md.mymethod();
    system.assert(md.a == 'a');
    md.myBmethod();
    }
    static testMethod void myDemoClass_mymethodB(){
    myDemoClass md = new myDemoClass();
    md.mymethod();
    //Test ABC
    //system.assert(md.a == 'b');
    }    
}