--------------------------------------------------------
--  Constraints for Table BUYER
--------------------------------------------------------

  ALTER TABLE "C##IRTIZA"."BUYER" MODIFY ("BUYER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##IRTIZA"."BUYER" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##IRTIZA"."BUYER" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##IRTIZA"."BUYER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "C##IRTIZA"."BUYER" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "C##IRTIZA"."BUYER" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "C##IRTIZA"."BUYER" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "C##IRTIZA"."BUYER" ADD PRIMARY KEY ("BUYER_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "C##IRTIZA"."BUYER" ADD UNIQUE ("EMAIL")
  USING INDEX  ENABLE;
