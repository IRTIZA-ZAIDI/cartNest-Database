--------------------------------------------------------
--  Constraints for Table PRODUCT_STORE
--------------------------------------------------------

  ALTER TABLE "C##IRTIZA"."PRODUCT_STORE" MODIFY ("PRODUCT_STORE_ID" NOT NULL ENABLE);
  ALTER TABLE "C##IRTIZA"."PRODUCT_STORE" ADD PRIMARY KEY ("PRODUCT_STORE_ID")
  USING INDEX  ENABLE;
