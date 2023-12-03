--------------------------------------------------------
--  DDL for Trigger TRG_BEFORE_STOCK_UPDATE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##IRTIZA"."TRG_BEFORE_STOCK_UPDATE" 
BEFORE UPDATE ON product_category
FOR EACH ROW
BEGIN
  IF :NEW.stock < 0 THEN
    :NEW.stock := 0; -- Prevent negative stock values
  END IF;

  -- Update stock_quantity in Product_Store
  UPDATE product_store
  SET stock_quantity = :NEW.stock
  WHERE product_id = :NEW.product_id;
END;

/
ALTER TRIGGER "C##IRTIZA"."TRG_BEFORE_STOCK_UPDATE" ENABLE;
