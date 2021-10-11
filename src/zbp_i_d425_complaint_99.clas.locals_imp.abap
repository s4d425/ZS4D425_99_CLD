CLASS lhc_complaint DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      calculatecomplaintid FOR DETERMINE ON SAVE
        IMPORTING
          keys FOR  Complaint~CalculateComplaintID .
ENDCLASS.

CLASS lhc_complaint IMPLEMENTATION.
  METHOD calculatecomplaintid.

    "Ensure idempotence
    READ ENTITIES OF zi_d425_complaint_99 IN LOCAL MODE
      ENTITY Complaint
        FIELDS ( ComplaintID )
        WITH CORRESPONDING #( keys )
      RESULT DATA(complaints).

    DELETE complaints WHERE ComplaintID IS NOT INITIAL.
    CHECK complaints IS NOT INITIAL.

    "Get max complaintID
    SELECT SINGLE FROM z425_complaint99 FIELDS MAX( complaint_id ) INTO @DATA(max_complaint).

    "update involved instances
    MODIFY ENTITIES OF zi_d425_complaint_99 IN LOCAL MODE
      ENTITY Complaint
        UPDATE FIELDS ( ComplaintID )
        WITH VALUE #( FOR complaint IN complaints INDEX INTO i (
                           %tky      = complaint-%tky
                           ComplaintID  = max_complaint + i ) )
    REPORTED DATA(lt_reported).

    "fill reported
    reported = CORRESPONDING #( DEEP lt_reported ).

  ENDMETHOD.
ENDCLASS.
