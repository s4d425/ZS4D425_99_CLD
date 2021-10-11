@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View forComplaint'
@ObjectModel.semanticKey: [ 'ComplaintID' ]
@Search.searchable: true
define root view entity ZC_D425_COMPLAINT_99
  as projection on ZI_D425_COMPLAINT_99
{
  key UUID,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.90
      ComplaintID,
      @Consumption.valueHelpDefinition: [{
                entity              : { name: 'ZCE_D425_INVOICES_99', element: 'ID' },
                additionalBinding   : [{ localElement: 'CustomerID',   element: 'CustomerID' },
                                       { localElement: 'CustomerName', element: 'CustomerName' }]
                                             }]
      InvoiceID,
      CustomerID,
      CustomerName,
      Reason,
      Action,
      Closed,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
