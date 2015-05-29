/* 'name's are already unique, so it would allow 1 NULL value. */

ALTER TABLE secrets ALTER COLUMN name SET NOT NULL;
ALTER TABLE secrets ALTER COLUMN secret SET NOT NULL;
ALTER TABLE secrets ALTER COLUMN version SET NOT NULL;
ALTER TABLE secrets ALTER COLUMN metadata SET NOT NULL;
ALTER TABLE secrets ALTER COLUMN createdAt SET NOT NULL;
ALTER TABLE secrets ALTER COLUMN updatedAt SET NOT NULL;
ALTER TABLE secrets ALTER COLUMN createdAt SET DEFAULT NOW();
ALTER TABLE secrets ALTER COLUMN updatedAt SET DEFAULT NOW();

ALTER TABLE groups ALTER COLUMN name SET NOT NULL;
ALTER TABLE groups ALTER COLUMN createdAt SET NOT NULL;
ALTER TABLE groups ALTER COLUMN updatedAt SET NOT NULL;
ALTER TABLE groups ALTER COLUMN createdAt SET DEFAULT NOW();
ALTER TABLE groups ALTER COLUMN updatedAt SET DEFAULT NOW();

ALTER TABLE clients ALTER COLUMN name SET NOT NULL;
ALTER TABLE clients ALTER COLUMN createdAt SET NOT NULL;
ALTER TABLE clients ALTER COLUMN updatedAt SET NOT NULL;
ALTER TABLE clients ALTER COLUMN createdAt SET DEFAULT NOW();
ALTER TABLE clients ALTER COLUMN updatedAt SET DEFAULT NOW();

ALTER TABLE accessGrants ALTER COLUMN createdAt SET NOT NULL;
ALTER TABLE accessGrants ALTER COLUMN updatedAt SET NOT NULL;
ALTER TABLE accessGrants ALTER COLUMN createdAt SET DEFAULT NOW();
ALTER TABLE accessGrants ALTER COLUMN updatedAt SET DEFAULT NOW();

ALTER TABLE memberships ALTER COLUMN createdAt SET NOT NULL;
ALTER TABLE memberships ALTER COLUMN updatedAt SET NOT NULL;
ALTER TABLE memberships ALTER COLUMN createdAt SET DEFAULT NOW();
ALTER TABLE memberships ALTER COLUMN updatedAt SET DEFAULT NOW();