@isTest
public class StdObjectDummyTest {

    @isTest
    static void testAccountCreation() {
        // Call the method in main class
        Account acc = StdObjectDummy.createTestAccount();

        // Validate insert succeeded
        System.assertNotEquals(null, acc.Id, 'Account ID should not be null');
    }

    @isTest
    static void testContactInsert() {
        // Create Account first uyg
        Account a = new Account(Name = 'Parent');
        insert a;

        // Insert Contact (standard object)
        Contact c = new Contact(
            FirstName = 'Test',
            LastName  = 'User',
            AccountId = a.Id
        );
        insert c;

        System.assertNotEquals(null, c.Id, 'Contact should have been inserted');
    }
}
