--------------------------------------------------------
--  DDL for Table WISHLIST
--------------------------------------------------------

  CREATE TABLE "C##IRTIZA"."WISHLIST" 
   (	"BUYER_ID" NUMBER, 
	"USER_EMAIL" VARCHAR2(255 BYTE), 
	"PRODUCT_ID" NUMBER, 
	"IS_DELETED" NUMBER(1,0) DEFAULT 0
   ) ;
