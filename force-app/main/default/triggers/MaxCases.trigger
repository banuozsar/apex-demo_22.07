//Created on 2022.07.14

trigger MaxCases on Case (before insert) {
    for (Case myCase: Trigger.new) {
        //Count the number of cases created for our contact today
        List <Case> casesToday = [SELECT Id,
                                         ContactId
                                   WHERE ContactId   = :myCase.ContactId
                                     AND CreatedDate = Date.today()];
        if (casesToday.size() > 2) {
            
        }
    }
}