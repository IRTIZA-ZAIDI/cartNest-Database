--------------------------------------------------------
--  DDL for Trigger TRG_INSERT_PRODUCT_STORE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##IRTIZA"."TRG_INSERT_PRODUCT_STORE" 
AFTER INSERT ON Product_Category
FOR EACH ROW
DECLARE
  l_product_store_id NUMBER;
BEGIN
  -- Insert into Product_Store table
  SELECT store_id INTO l_product_store_id FROM STORE WHERE STORE_OWNER = :NEW.owner;

  INSERT INTO Product_Store (product_id, store_id, stock_quantity, discount)
  VALUES (:NEW.product_id, l_product_store_id, :NEW.stock, 0);

  -- Optionally, you can perform additional actions or logging here
END;

/
ALTER TRIGGER "C##IRTIZA"."TRG_INSERT_PRODUCT_STORE" ENABLE;
