trigger MatchAccountOwner on Contact (before insert) {
    for (Contact myCon : Trigger.new) {
        if (myCon.AccountId != null) {
            myCon.OwnerId = myCon.Account.OwnerId;
        }
    }
}