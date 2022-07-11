//Created on 2022.07.01
@isTest
public class DedupeReminderTest {

    @isTest static void createAccount() {
        Account acc = new Account();
        acc.Name    = 'Banu';
        insert acc;
    }
}