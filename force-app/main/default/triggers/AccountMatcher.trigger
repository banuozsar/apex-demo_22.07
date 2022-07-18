trigger AccountMatcher on Contact (before insert) {
    for(Contact con : Trigger.new) {
        List<Account> accs = [SELECT Id,
        Website 
   FROM Account
  WHERE Id = :con.AccountId];
        }
    }