--------------------------------------------------------
--  DDL for Trigger TRG_CALCULATE_TOTAL_PRICE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##IRTIZA"."TRG_CALCULATE_TOTAL_PRICE" 
BEFORE INSERT OR UPDATE ON order_item
FOR EACH ROW
BEGIN
  :NEW.total_price := :NEW.unit_price * :NEW.quantity;
END;

/
ALTER TRIGGER "C##IRTIZA"."TRG_CALCULATE_TOTAL_PRICE" ENABLE;
