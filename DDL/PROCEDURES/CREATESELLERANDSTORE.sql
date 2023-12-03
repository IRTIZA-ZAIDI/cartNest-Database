--------------------------------------------------------
--  DDL for Procedure CREATESELLERANDSTORE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##IRTIZA"."CREATESELLERANDSTORE" (
  p_first_name VARCHAR2,
  p_last_name VARCHAR2,
  p_email VARCHAR2,
  p_password VARCHAR2,
  p_phone NUMBER,
  p_address VARCHAR2,
  p_store_name VARCHAR2,
  p_description VARCHAR2
) AS
  l_seller_id NUMBER;
BEGIN
  -- Insert into Seller table
  INSERT INTO Seller (first_name, last_name, email, password, phone, address)
  VALUES (p_first_name, p_last_name, p_email, p_password, p_phone, p_address)
  RETURNING seller_id INTO l_seller_id;

  -- Print the assigned seller_id
  DBMS_OUTPUT.PUT_LINE('Assigned Seller ID: ' || l_seller_id);

  -- Insert into Store table without specifying STORE_ID
  INSERT INTO Store (store_name, store_owner, contact_info, description, creation_date)
  VALUES (p_store_name, l_seller_id, p_phone, p_description, SYSDATE);

  COMMIT;
END;

/
