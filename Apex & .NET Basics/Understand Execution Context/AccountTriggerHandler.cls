public with sharing class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> accts) {
        List<Account> verifyAccts = new List<Account>();
        for (Account acct : accts) {
            acct.ShippingState = acct.BillingState;
        }
    }
}
