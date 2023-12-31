--------------------------------------------------------
--  Ref Constraints for Table WISHLIST
--------------------------------------------------------

  ALTER TABLE "C##IRTIZA"."WISHLIST" ADD CONSTRAINT "FK_WISHLIST_USER_ID" FOREIGN KEY ("BUYER_ID")
	  REFERENCES "C##IRTIZA"."BUYER" ("BUYER_ID") ENABLE;
  ALTER TABLE "C##IRTIZA"."WISHLIST" ADD CONSTRAINT "FK_WISHLIST_USER_EMAIL" FOREIGN KEY ("USER_EMAIL")
	  REFERENCES "C##IRTIZA"."BUYER" ("EMAIL") ENABLE;
  ALTER TABLE "C##IRTIZA"."WISHLIST" ADD CONSTRAINT "FK_WISHLIST_PRODUCT" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "C##IRTIZA"."PRODUCT_CATEGORY" ("PRODUCT_ID") ENABLE;
