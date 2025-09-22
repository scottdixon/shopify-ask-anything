/*
  Warnings:

  - You are about to drop the `CodeVerifier` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `CustomerAccountUrl` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `CustomerToken` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "CodeVerifier";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "CustomerAccountUrl";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "CustomerToken";
PRAGMA foreign_keys=on;
