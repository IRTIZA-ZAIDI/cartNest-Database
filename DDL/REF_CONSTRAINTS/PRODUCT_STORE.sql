--------------------------------------------------------
--  Ref Constraints for Table PRODUCT_STORE
--------------------------------------------------------

  ALTER TABLE "C##IRTIZA"."PRODUCT_STORE" ADD CONSTRAINT "FK_PRODUCT" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "C##IRTIZA"."PRODUCT_CATEGORY" ("PRODUCT_ID") ENABLE;
  ALTER TABLE "C##IRTIZA"."PRODUCT_STORE" ADD CONSTRAINT "FK_STORE" FOREIGN KEY ("STORE_ID")
	  REFERENCES "C##IRTIZA"."STORE" ("STORE_ID") ENABLE;
