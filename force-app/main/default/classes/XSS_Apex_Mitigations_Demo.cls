public class XSS_Apex_Mitigations_Demo {

    public string title {
        get
        {
            return '<b>' + ESAPI.encoder().SFDC_HTMLENCODE(title) +'</b>';
        }
        set;
    }
    public string name {
        get
        {
            return '<b>' + ESAPI.encoder().SFDC_HTMLENCODE(name) +'</b>';
        }
        set;
    }
    public string color {
        get
        {
            return '<b>' + ESAPI.encoder().SFDC_HTMLENCODE(color) +'</b>';
        }
        set;
    }
    public string animal {
        get
        {
            return '<b>' + ESAPI.encoder().SFDC_HTMLENCODE(animal) +'</b>';
        }
        set;
    }
    
    public Personnel__c person;

    public XSS_Apex_Mitigations_Demo(){
        person = [SELECT Favorite_Animal__c,Favorite_Color__c,Id,Name,Title__c FROM Personnel__c where Favorite_Animal__c!=null and Favorite_Color__c!=null limit 1];   
        title = person.Title__c;
        name = person.name;
        color = person.favorite_color__c;
        animal = person.favorite_animal__c;
    }

    public pageReference APEXXSS(){
        title = 'XSS!!!!<img src="https://developer.salesforce.com/resource/images/astro.png" />';
        return null;
    }

    public pageReference REMOVEXSS(){
        title = person.title__c;
        return null;
    }   


}