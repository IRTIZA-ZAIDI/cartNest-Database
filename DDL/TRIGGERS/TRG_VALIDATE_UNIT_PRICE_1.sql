--------------------------------------------------------
--  DDL for Trigger TRG_VALIDATE_UNIT_PRICE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##IRTIZA"."TRG_VALIDATE_UNIT_PRICE" 
BEFORE INSERT OR UPDATE ON order_item
FOR EACH ROW
DECLARE
  v_product_price NUMBER;
BEGIN
  -- Get the price of the corresponding product
  SELECT price INTO v_product_price
  FROM product_category
  WHERE product_id = :NEW.product_id;

  -- Check if the unit_price matches the product price
  IF :NEW.unit_price <> v_product_price THEN
    RAISE_APPLICATION_ERROR(-20001, 'Unit price does not match the actual price of the product.');
  END IF;
END;

/
ALTER TRIGGER "C##IRTIZA"."TRG_VALIDATE_UNIT_PRICE" ENABLE;
