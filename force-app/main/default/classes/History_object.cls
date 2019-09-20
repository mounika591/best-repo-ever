public class History_object {
private final School__c customObject;

      public History_object() {
            customObject = [select Total_Money__c from School__c where id =
                       :ApexPages.currentPage().getParameters().get('id')];
         // players p=new players();
         List<School__c> lststd=[SELECT Total_Money__c FROM School__c];
                        
      
      }

      public School__c getcustomObject() {
            return customObject;
      }

      public PageReference save() {
            update customObject;
            return null;
      }
}