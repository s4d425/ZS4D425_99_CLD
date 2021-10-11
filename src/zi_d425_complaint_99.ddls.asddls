@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forComplaint'
define root view entity ZI_D425_COMPLAINT_99
  as select from Z425_COMPLAINT99
{
  key UUID as UUID,
  COMPLAINT_ID as ComplaintID,
  INVOICE_ID as InvoiceID,
  CUSTOMER_ID as CustomerID,
  CUSTOMER_NAME as CustomerName,
  REASON as Reason,
  ACTION as Action,
  CLOSED as Closed,
  @Semantics.user.createdBy: true
  CREATED_BY as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  CREATED_AT as CreatedAt,
  @Semantics.user.lastChangedBy: true
  LAST_CHANGED_BY as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  LAST_CHANGED_AT as LastChangedAt
  
}
