--------------------------------------------------------
--  Constraints for Table WISHLIST
--------------------------------------------------------

  ALTER TABLE "C##IRTIZA"."WISHLIST" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "C##IRTIZA"."WISHLIST" ADD PRIMARY KEY ("BUYER_ID")
  USING INDEX  ENABLE;
