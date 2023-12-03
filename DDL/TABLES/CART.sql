--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "C##IRTIZA"."CART" 
   (	"USER_EMAIL" VARCHAR2(255 BYTE), 
	"PRODUCT_ID" NUMBER, 
	"COUNT" NUMBER DEFAULT 0, 
	"IS_DELETED" NUMBER(1,0) DEFAULT 0
   ) ;
