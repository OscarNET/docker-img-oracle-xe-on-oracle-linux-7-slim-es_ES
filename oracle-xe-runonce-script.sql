-- This script run once. Modify it as you wish. Good luck!
CREATE USER testing IDENTIFIED BY testing;
GRANT ALL PRIVILEGES TO testing;

CONNECT testing/testing;

CREATE TABLE "TEST" (
  "ID"         RAW(16)  NOT NULL,
  "BIRTHDAY"   TIMESTAMP(4),
  "MESSAGE"    NVARCHAR2(100),
  CONSTRAINT "PK_TEST" PRIMARY KEY ("ID")
);

INSERT INTO "TEST" ("ID", "BIRTHDAY", "MESSAGE")
  SELECT SYS_GUID(), SYSDATE, 'ÁÉÍÓÚáéíóú-Ññ-ÀÈÌÒÙàèìòù-ÂÊÎÔÛâêîôû-ÄËÏÖÜäëïöü' FROM DUAL;

COMMIT;
DISCONNECT;

exit
