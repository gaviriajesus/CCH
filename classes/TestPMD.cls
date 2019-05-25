Public without sharing class TestPMD{

    public TestPMD(){
    }
    
    public list<Account> testApexSOQLInjectionRule(string accName){
        String oName = 'Account';
        Map<String, String> d = getAllFieldsWithoutSharing(oName);    
        String qfield = String.IsNotBlank(d.get('Fields')) ? d.get('Fields') : 'Id';
        String qOjb = String.IsNotBlank(d.get('Object')) ? d.get('Object') : 'Id';
        String soqlString = 'SELECT ' + qfield + ' FROM ' + qOjb;
        soqlString = String.escapeSingleQuotes(soqlString);
        system.debug(soqlString);
        
        return Database.query(soqlString);
    }
    
    public static Map<String, String> getAllFieldsWithoutSharing(String sObjectName) {
        Map<String, String> result = new Map<String, String>();
        if (!Schema.getGlobalDescribe().containsKey(sObjectName)) {
            System.debug('INVALID OBJECT ' + sObjectName);
            return null;
        }
        Map<String, Schema.SObjectField> fields = Schema.getGlobalDescribe().get(sObjectName).getDescribe().SObjectType.getDescribe().fields.getMap();

        List<String> accessiblefields = new List<String>();

        for (Schema.SObjectField field : fields.values()) {
            accessiblefields.add(field.getDescribe().getName());
        }

        String allfields = '';

        for (String fieldname : accessiblefields)
            allfields += fieldname + ',';

        allfields = allfields.subString(0, allfields.length() - 1);

        result.put('Object', sObjectName);
        result.put('Fields', allfields);
        return result;
    } 
    
}