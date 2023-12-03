--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "C##IRTIZA"."CART" ADD CONSTRAINT "FK_CART_USER_EMAIL" FOREIGN KEY ("USER_EMAIL")
	  REFERENCES "C##IRTIZA"."BUYER" ("EMAIL") ENABLE;
  ALTER TABLE "C##IRTIZA"."CART" ADD CONSTRAINT "FK_CART_PRODUCT" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "C##IRTIZA"."PRODUCT_CATEGORY" ("PRODUCT_ID") ENABLE;
