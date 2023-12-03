--------------------------------------------------------
--  Constraints for Table STORE
--------------------------------------------------------

  ALTER TABLE "C##IRTIZA"."STORE" MODIFY ("STORE_ID" NOT NULL ENABLE);
  ALTER TABLE "C##IRTIZA"."STORE" ADD PRIMARY KEY ("STORE_ID")
  USING INDEX  ENABLE;
