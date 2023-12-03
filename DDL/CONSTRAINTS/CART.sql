--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "C##IRTIZA"."CART" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "C##IRTIZA"."CART" ADD PRIMARY KEY ("USER_EMAIL")
  USING INDEX  ENABLE;
