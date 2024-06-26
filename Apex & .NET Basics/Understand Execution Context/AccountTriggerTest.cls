@isTest
private class AccountTriggerTest {
    @isTest static void TestCreateNewAccountsInBulk() {
        // Test Setup Data
        // Create 200 New Accounts
        List<Account> accts = new List<Account>();
        for (Integer i = 0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i, BillingState='CA');
            accts.add(acct);
        }
        
        // Perform Test
        Test.startTest();
        insert accts;
        Test.stopTest();
        
        // Verify
        List<Account> verifyAccts = [SELECT Id FROM Account];
        System.assertEquals(200, verifyAccts.size());
    }
}
