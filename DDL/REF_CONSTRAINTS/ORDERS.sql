--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "C##IRTIZA"."ORDERS" ADD CONSTRAINT "FK_BUYER" FOREIGN KEY ("BUYER_ID")
	  REFERENCES "C##IRTIZA"."BUYER" ("BUYER_ID") ENABLE;
