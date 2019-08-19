//Do not touch (Or Contact Jesus)
//This Class Contains all PMD Rules Violations 
//PMD Version 6.16.0
//AvoidLogicInTrigger  
trigger SCA_QA_Trigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    for(Account acc : Trigger.new) {
        if(Trigger.isInsert) {
            // ...
        }

        // ...

        if(Trigger.isDelete) {
            // ...
        }
    }
    
//AvoidDirectAccessTriggerMap     
       Account a = Trigger.new[0]; //Bad: Accessing the trigger array directly is not recommended.
   
   For ( Account a : Trigger.new ){   
        //Good: Iterate through the trigger.new array instead.
   }
    
    
//ApexXSSFromEscapeFalse 

        Trigger.new[0].addError('vulnerableHTMLGoesHere', false);
    
}