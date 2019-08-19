//Do not touch (Or Contact Jesus)
//This Class Contains all PMD Rules Violations for Unit Tests
//PMD Version 6.16.0
//
//ApexUnitTestShouldNotUseSeeAllDataTrue
@isTest(seeAllData = true)
public class SCA_QA_UnitTest {

    
//ApexAssertionsShouldIncludeMessage     
    @isTest
    static void ApexAssertionsShouldIncludeMessage() {
        Opportunity o = new Opportunity();
        System.assertNotEquals('123', o.StageName); // not good
        System.assertEquals('123', o.StageName, 'Opportunity stageName is wrong.'); // good
        System.assert(o.isClosed); // not good
        System.assert(o.isClosed, 'Opportunity is not closed.'); // good
    }  
//ApexUnitTestClassShouldHaveAsserts 
	public static testMethod void ApexUnitTestClassShouldHaveAsserts() {
		Account a = null;
   // This is better than having a NullPointerException
   // System.assertNotEquals(a, null, 'account not found');
	//a.toString();
	}
    
//ApexUnitTestMethodShouldHaveIsTestAnnotation 
    @isTest
    static void ApexUnitTestMethodShouldHaveIsTestAnnotationA() {
    }
    static void ApexUnitTestMethodShouldHaveIsTestAnnotationB() {
    }
    @isTest static void ApexUnitTestMethodShouldHaveIsTestAnnotationC() {
        System.assert(1==2);
    }
    @isTest static void ApexUnitTestMethodShouldHaveIsTestAnnotationD() {
        System.debug('I am a debug statement');
    }
    private void fetchData() {
    }
    
    
    
    
    
}