/********** GENERATED on 09/28/2021 at 11:15:00 by CB9980000001**************/
 @OData.entitySet.name: 'ZZ1_CUSTOMERINVOICE99' 
 @OData.entityType.name: 'ZZ1_CUSTOMERINVOICE99Type' 
 define root abstract entity ZD425_99_ZZ1_CUSTOMERINVOICE99 { 
 key SAP_UUID : sysuuid_x16 ; 
 @Odata.property.valueControl: 'Applycustomerdiscount_ac_vc' 
 Applycustomerdiscount_ac : abap_boolean ; 
 Applycustomerdiscount_ac_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ID_vc' 
 ID : abap.numc( 10 ) ; 
 ID_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerID_vc' 
 CustomerID : abap.numc( 8 ) ; 
 CustomerID_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CustomerName_vc' 
 CustomerName : abap.char( 25 ) ; 
 CustomerName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Amount_V_vc' 
 @Semantics.amount.currencyCode: 'Amount_C' 
 Amount_V : abap.curr( 16, 3 ) ; 
 Amount_V_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Amount_C_vc' 
 @Semantics.currencyCode: true 
 Amount_C : abap.cuky ; 
 Amount_C_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Amount_C_Text_vc' 
 Amount_C_Text : abap.char( 40 ) ; 
 Amount_C_Text_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Discount_vc' 
 Discount : abap.dec( 6, 2 ) ; 
 Discount_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DiscountAmount_V_vc' 
 @Semantics.amount.currencyCode: 'DiscountAmount_C' 
 DiscountAmount_V : abap.curr( 16, 3 ) ; 
 DiscountAmount_V_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DiscountAmount_C_vc' 
 @Semantics.currencyCode: true 
 DiscountAmount_C : abap.cuky ; 
 DiscountAmount_C_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'DiscountAmount_C_Text_vc' 
 DiscountAmount_C_Text : abap.char( 40 ) ; 
 DiscountAmount_C_Text_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'isPaid_vc' 
 isPaid : abap_boolean ; 
 isPaid_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SAP_CreatedDateTime_vc' 
 SAP_CreatedDateTime : tzntstmpl ; 
 SAP_CreatedDateTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SAP_CreatedByUser_vc' 
 SAP_CreatedByUser : abap.char( 12 ) ; 
 SAP_CreatedByUser_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SAP_CreatedByUser_Text_vc' 
 SAP_CreatedByUser_Text : abap.char( 80 ) ; 
 SAP_CreatedByUser_Text_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SAP_LastChangedDateTime_vc' 
 SAP_LastChangedDateTime : tzntstmpl ; 
 SAP_LastChangedDateTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SAP_LastChangedByUser_vc' 
 SAP_LastChangedByUser : abap.char( 12 ) ; 
 SAP_LastChangedByUser_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SAP_LastChangedByUser_Text_vc' 
 SAP_LastChangedByUser_Text : abap.char( 80 ) ; 
 SAP_LastChangedByUser_Text_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PaymentMethod_vc' 
 PaymentMethod : abap.char( 2 ) ; 
 PaymentMethod_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PaymentMethod_Text_vc' 
 PaymentMethod_Text : abap.char( 60 ) ; 
 PaymentMethod_Text_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
