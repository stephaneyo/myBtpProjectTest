@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'interface Entity View for Customer'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zcmg_i_customers as select from zcmg_customers
composition[0..*] of zcmg_i_emails as _emails
{
    @EndUserText.label: 'Customer ID'
    key customer_uuid           as Id,
    @EndUserText.label: 'Address ID'
    address_id              as AddressId,
    @EndUserText.label: 'Accountname'
    accountname             as Accountname,
//    @EndUserText.label: 'Default E-Mail'
//    defaultemail as DefaultEmail,
    @EndUserText.label: 'Created by'
    local_created_by        as LocalCreatedBy,
    @EndUserText.label: 'Created at'
    local_created_at        as LocalCreatedAt,
    @EndUserText.label: 'Last changed by'
    local_last_changed_by   as LocalLastChangedBy,
    @EndUserText.label: 'Last changed at'
    local_last_changed_at   as LocalLastChangedAt,
    last_changed_at         as LastChangedAt,
    @EndUserText.label: '_emails'
    
    _emails
}
