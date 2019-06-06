trigger SCA_ALL_Trigger on Opportunity (after insert, after update) {

  //allowed - trigger context handler logic
  if(Trigger.isAfter && Trigger.isInsert) {
   // OpportunityTriggerHandler.handleAfterInsert(Trigger.new);
  } else if(Trigger.isAfter && Trigger.isUpdate) {
   // OpportunityTriggerHandler.handleAfterInsert(Trigger.new, Trigger.old);
  }

  for(Opportunity a : Trigger.new){           	//Bad: this is not recommended.
		system.debug('bad practice');//...
   }
}