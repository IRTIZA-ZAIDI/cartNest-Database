--------------------------------------------------------
--  Ref Constraints for Table STORE
--------------------------------------------------------

  ALTER TABLE "C##IRTIZA"."STORE" ADD FOREIGN KEY ("STORE_OWNER")
	  REFERENCES "C##IRTIZA"."SELLER" ("SELLER_ID") ENABLE;
