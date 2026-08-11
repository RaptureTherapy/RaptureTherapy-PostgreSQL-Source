--------------------------------------------------------------------------------
-- Copyright © 2021+ Eamonn Anthony Duffy. All Rights Reserved.
--------------------------------------------------------------------------------
--
-- Version: V1.0.0.
--
-- Created: Eamonn A. Duffy, 2-May-2021.
--
-- Updated: Eamonn A. Duffy, 11-August-2026.
--
-- Purpose: Roll Back Script for the Main Sql for the Rapture Therapy Database.
--
-- Target: PostgreSQL.
--
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Drop Table and Schema.
--------------------------------------------------------------------------------

BEGIN TRANSACTION;

DELETE FROM "Dad"."RaptureTherapyDatabaseVersions"
WHERE "Major" = 1
  AND "Minor" = 0
  AND "Patch" = 0
  AND "Build" = '0';

DROP TABLE IF EXISTS "Dad"."RaptureTherapyDatabaseVersions";

DROP SCHEMA IF EXISTS "Dad";

COMMIT TRANSACTION;

--------------------------------------------------------------------------------
-- End Of File.
--------------------------------------------------------------------------------

/*

ROLLBACK TRANSACTION;

*/
