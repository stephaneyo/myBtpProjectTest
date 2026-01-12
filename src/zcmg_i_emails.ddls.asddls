@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'interface Entity View for Emails'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zcmg_i_emails as select from zcmg_emails
association to parent zcmg_i_customers as _customers on  $projection.CustomeruuID = _customers.Id
{
    key emailid as EmailID,
    key customeruuid    as CustomeruuID,
    @EndUserText.label: 'Ordinal Nr'
    ordinalnumber           as Ordinalnumber,
    @EndUserText.label: 'Default'
    isdefault               as Isdefault,
    @EndUserText.label: 'E-Mail'
//    @Consumption.valueHelpDefinition: [{ entity:{ name: 'zcmg_i_emails' , element: ''  }}]
    emailaddress            as Emailaddress,
    @EndUserText.label: 'Remark'
    remark                  as Remark,
    _customers 
}
