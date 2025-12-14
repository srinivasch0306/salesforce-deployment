public class StdObjectDummy {
    public static Account createTestAccount() {
        Account acc = new Account(Name = 'CI/CD Dummy Account');
        insert acc;
        return acc;
    }
}
