--------------------------------------------------------
--  Ref Constraints for Table ORDER_ITEM
--------------------------------------------------------

  ALTER TABLE "C##IRTIZA"."ORDER_ITEM" ADD CONSTRAINT "FK_ORDER_ITEM_ORDER" FOREIGN KEY ("ORDER_ID")
	  REFERENCES "C##IRTIZA"."ORDERS" ("ORDER_ID") ENABLE;
  ALTER TABLE "C##IRTIZA"."ORDER_ITEM" ADD CONSTRAINT "FK_ORDER_ITEM_PRODUCT" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "C##IRTIZA"."PRODUCT_CATEGORY" ("PRODUCT_ID") ENABLE;
