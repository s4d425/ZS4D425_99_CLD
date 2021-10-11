@EndUserText.label: 'Custom entity for invoices from S4D'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_CE_D425_INVOICES_99'
define custom entity ZCE_D425_INVOICES_99
{
  key SAP_UUID     : sysuuid_x16;
      ID           : abap.numc( 10 );
      CustomerID   : abap.numc( 8 );
      CustomerName : abap.char( 25 );
      @Semantics.amount.currencyCode: 'Amount_C'
      Amount_V     : abap.curr( 16, 2 );
      @Semantics.currencyCode: true
      Amount_C     : abap.cuky;
}
