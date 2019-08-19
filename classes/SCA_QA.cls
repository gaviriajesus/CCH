//Do not touch (Or Contact Jesus)
//This Class Contains all PMD Rules Violations 
//PMD Version 6.16.0
//AvoidGlobalModifier 
global class SCA_QA {
    global Integer unchangable(Integer param) {//UndeletableType
        // ...
        return 1;
    }
    
//ClassNamingConventions 
public class FooClass { } // This is in pascal case, so it's ok

public class faaClass { } // This will be reported unless you change the regex

//FieldNamingConventions 
public class Fee {
    Integer instanceField; // This is in camel case, so it's ok

    Integer INSTANCE_FIELD; // This will be reported unless you change the regex
}    
    
    
//ForLoopsMustUseBraces 

    public void foo(){}
    
    public void ForLoopsMustUseBraces(){
        for (integer i = 0; i < 42; i++) // not recommended
            foo();
        
        for (integer i = 0; i < 42; i++) { // preferred approach
            foo();
        }  
    }
    
//FormalParameterNamingConventions 
    public class Fii {
        //public fii(Integer methodParameter) { } // This is in camel case, so it's ok
    
        public fii(Integer METHOD_PARAMETER) { } // This will be reported unless you change the regex
	}
    
//IfElseStmtsMustUseBraces

    public void IfElseStmtsMustUseBraces(){
        Boolean foo;
        Integer x;
        
        // this is OK
        if (foo) x++;
        
        // but this is not
        if (foo)
            x = x+1;
        else
            x = x-1;
        
    }
//IfStmtsMustUseBraces 

    public void IfStmtsMustUseBraces(){
        Boolean foo;
        Integer x;        
        if (foo)    // not recommended
            x++;
        
        if (foo) {  // preferred approach
            x++;
        }        
        
    }
//LocalVariableNamingConventions 
    public class Fuu {
        public Fuu() {
            Integer localVariable; // This is in camel case, so it's ok
    
            Integer LOCAL_VARIABLE; // This will be reported unless you change the regex
        }
    }
//MethodNamingConventions 

public class Baa {
    public void instanceMethod() { } // This is in camel case, so it's ok

    public void INSTANCE_METHOD() { } // This will be reported unless you change the regex
}
    
//OneDeclarationPerLine 

    Public Class Bee{
        
        Integer a, b;   // not recommended
        
        Integer c,
                d;      // ok by default, can be flagged setting the strictMode property
        
        Integer e;      // preferred approach
        Integer f;        
    }    
//PropertyNamingConventions 
public class Bii {
    public Integer instanceProperty { get; set; } // This is in camel case, so it's ok

    public Integer INSTANCE_PROPERTY { get; set; } // This will be reported unless you change the regex
}    
    
//WhileLoopsMustUseBraces 

    Public void WhileLoopsMustUseBraces (){
        Integer x;
        while (true)    // not recommended
            x++;
        
        while (true) {  // preferred approach
            x++;
        }          
    }    
//AvoidDeeplyNestedIfStmts 
public class Boo {
    public void bar(Integer x, Integer y, Integer z) {
        if (x>y) {
            if (y>z) {
                if (z==x) {
                    // !! too deep
                }
            }
        }
    }
}
//CyclomaticComplexity 
  public void example() { // This method has a cyclomatic complexity of 12
    integer x = 0, y = 1, z = 2, t = 2;
    boolean a = false, b = true, c = false, d = true;
    if (a && b || b && d) {
      if (y == z) {
        x = 2;
      } else if (y == t && !d) {
        x = 2;
      } else {
        x = 2;
      }
    } else if (c && d) {
      while (z < y) {
        x = 2;
      }
    } else {
      for (integer n = 0; n < t; n++) {
        x = 2;
      }
    }
  }    
    
//ExcessiveParameterList 
public void addPerson(integer birthYear, integer birthMonth, integer birthDate, integer height, integer weight, integer ssn) {
    // ...
}
// preferred approach 
public void addPersons(Date birthdate, String measurements, integer ssn) {
    // ...
}    
    
//ExcessivePublicCount 
public class Buu {
    public String value;
    public String something;
    public Integer var;
    public Integer var1;
    public Integer var2;
    public Integer var3;
    public Integer var4;
    public Integer var5;
    public Integer var6;
    public Integer var7;
    public Integer var8;
    public Integer var9;
    public Integer var10;
    public Integer var11;
    public Integer var12;
    public Integer var13;
    public Integer var14;
    public Integer var15;
    public Integer var16;
    public Integer var17;
    public Integer var18;
    public Integer var19;
    public Integer var20;
    
    // [... more more public attributes ...]

    public void doWork() {}
    public void doMoreWork() {}
    public void doWorkAgain() {}
    // [... more more public methods ...]
}
    
//NcssConstructorCount     

public class Caa extends Bar {
    //this constructor only has 1 NCSS lines
    public Caa() {
        super();




        super.cii();
}
}
    
//NcssMethodCount     
public class Cee {
    //this method only has 1 NCSS lines
    public Integer methd() {
        Integer a;



        return 1;
    }
}    
    
//NcssTypeCount 
//this class only has 6 NCSS lines
public class Cii extends Bar {
    public Cii() {
        super();





        super.cii();
    }
}    
    public virtual class Bar{
        public void cii(){}
    }    
    
//StdCyclomaticComplexity 
    public void fiddle(){}
   public void StdCyclomaticComplexity() {
       integer a,b,c,d,e,f,a1,b1,a2,b2,h;
       if (a == b || (c == d && e == f)) {
           if (a1 == b1) {
                fiddle();
           } else if (a2 == b2) {
                fiddle();
            }  else {
                fiddle();
            }
       } else if (c == d) {
           while (c == d) {
                fiddle();
            }
       } else if (e == f) {
           for (integer n = 0; n < h; n++) {
                fiddle();
            }
        } else if (e == f) {
           for (integer n = 0; n < h; n++) {
                fiddle();
            }
        } else if (e == f) {
           for (integer n = 0; n < h; n++) {
                fiddle();
            }
        } else if (e == f) {
           for (integer n = 0; n < h; n++) {
                fiddle();
            }
        } else if (e == f) {
           for (integer n = 0; n < h; n++) {
                fiddle();
            }
        } else if (e == f) {
           for (integer n = 0; n < h; n++) {
                fiddle();
            }
        } else if (e == f) {
           for (integer n = 0; n < h; n++) {
                fiddle();
            }
        } else if (e == f) {
           for (integer n = 0; n < h; n++) {
                fiddle();
            }
        } else if (e == f) {
           for (integer n = 0; n < h; n++) {
                fiddle();
            }
        } else if (e == f) {
           for (integer n = 0; n < h; n++) {
                fiddle();
            }
        }
   }
   
    
//TooManyFields 
    // too many separate fields
    integer birthYear;
    integer birthMonth;
    integer birthDate;
    double height;
    double weight;
    double weight2;
    double weight3;
    double weight4;
    double weight5;
    double weight6;
    double weight7;
    double weight8;
    double weight9;
    double weight10;
    double weight11;
    double weight12;
    double weight13;
    double weight14;
    double weight15;
    double weight16;
    
    

//ApexDoc 

/**
 * @description Hello World
 */
public class HelloWorld {
    /**
     * @description Bar
     * @return Bar
     */
    public Object bar() { return null; }
}
    
    
//AvoidHardcodingId 

    void Cii() {
        Account a = new Account();
        //Error - hardcoded the record type id
        if(a.Id == '012500000009WAr'){
            //do some logic here.....
        } else if(a.Id == '0123000000095Km'){
            //do some logic here for a different record type...
        }
    }
    
/*//AvoidNonExistentAnnotations 

@NonExisting public class ClassWithNonexistentAnnotation {
	@NonSexisting public void methodWithNonExistentAnnotation() {
		// ...
	}
} */   
    
    
//EmptyCatchBlock     
public void EmptyCatchBlock() {

  try {
    insert new Account();
  } catch (Exception dmle) {
    // not good
  }
}    
    
//EmptyIfStmt 
public class Coo {
  public void bar(Integer x) {
    if (x == 0) {
      // empty!
    }
  }
}
    
//EmptyStatementBlock 

public class Cuu {

   private integer bar;

   public void setBar(integer bar) {
        // empty
   }

}
    
//EmptyTryOrFinallyBlock 

public class Daa {
    public void bar() {
        try {
          // empty !
        } catch (Exception e) {
            e.getStackTraceString ();
        }
    }
}

public class Dee {
    public void bar() {
        try {
            integer x=2;
        } finally {
            // empty!
        }
    }
}
    
//EmptyWhileStmt

public void Dii(Integer a, Integer b) {
  while (a == b) {
    // empty!
  }
}
    
//MethodWithSameNameAsEnclosingClass 

public class MyClass {
    // this is OK because it is a constructor
    public MyClass() {}
    // this is bad because it is a method
    public void SCA_QA() {}
}    
    
//AvoidDmlStatementsInLoops 

public class Doo {
    public void foo() {  
        for (Integer i = 0; i < 151; i++) {
            Account account;
            // ...
            insert account;
        }
    }
}    
    
//AvoidSoqlInLoops 

public class Duu {
    public void main( ) {
        for (Integer i = 0; i < 10; i++) {
            List<Account> accounts = [SELECT Id FROM Account];
        }
    }
}    
    
//AvoidSoslInLoops 

public class Gaa {
    public void main( ) {
        for (Integer i = 0; i < 10; i++) {
            List<List<SObject>> searchList = [FIND 'map*' IN ALL FIELDS RETURNING Account (Id, Name), Contact, Opportunity, Lead];
        }
    }
}    
    
//ApexBadCrypto 

public without sharing class Gee {
    Blob hardCodedIV = Blob.valueOf('Hardcoded IV 123');
    Blob hardCodedKey = Blob.valueOf('0000000000000000');
    Blob data = Blob.valueOf('Data to be encrypted');
    Blob encrypted = Crypto.encrypt('AES128', hardCodedKey, hardCodedIV, data);
}
    
//ApexCRUDViolation 

public class Gii {
    public Contact foo(String status, String ID) {
        Contact c = [SELECT LastName FROM Contact WHERE Id=:ID];

        // Make sure we can update the database before even trying
        if (!Schema.sObjectType.Contact.fields.Name.isUpdateable()) {
            return null;
        }

        c.LastName = 'status';
        update c;
        return c;
    }
    public Contact faa(String status, String ID) {
        Contact c = [SELECT LastName FROM Contact WHERE Id=:ID];
        c.LastName = 'status';
        update c;
        return c;
    }
}    
    
//ApexCSRF 

public class Haa {
    Account data;
    public Haa() {
        insert data;
    }
}    
    
//ApexDangerousMethods 

public class Hee {
    public Hee() {
        String pwd = 'ThePassword';
		system.debug('the pwd' + pwd);
    }
}    
    
//ApexInsecureEndpoint 
public without sharing class Hii {
    void Hii() {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('http://localhost:com');
    }
}    
    
//ApexOpenRedirect 
public without sharing class Hoo {
    String unsafeLocation = ApexPages.currentPage().getParameters().get('url_param');
    PageReference page() {
       return new PageReference(unsafeLocation);
    }
}    
    
//ApexSharingViolations 

public without sharing class Huu {
    public Huu(){insert new account();}
}    
    
    
//ApexSOQLInjection 

public class Iaa {
    public void test1(String t1) {
        Database.query('SELECT Id FROM Account' + t1);
    }
}    
    
//ApexSuggestUsingNamedCred 

public class Iee {
    public void foo(String username, String password) {
        HttpRequest req;
        Blob headerValue = Blob.valueOf(username + ':' + password);
        String authorizationHeader = 'BASIC ' + EncodingUtil.base64Encode(headerValue);
        req.setHeader('Authorization', authorizationHeader);
    }
}    
    
    
//ApexXSSFromURLParam 

public without sharing class Iii {
    String unescapedstring = ApexPages.currentPage().getParameters().get('url_param');
    String usedLater = unescapedstring;
}    
    
    
//ExcessiveClassLength     
    public void  ExcessiveClassLength(){
        Boolean x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;
        x = true;        
        
    }
    
}