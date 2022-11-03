CREATE TABLE "Users" (
  "id" bigserial PRIMARY KEY,
  "name" varchar NOT NULL,
  "nickname" varchar NOT NULL
);

CREATE TABLE "Books" (
  "id" bigserial PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL,
  "author" varchar NOT NULL,
  "category" varchar NOT NULL,
  "user_id" int
);

CREATE INDEX ON "Users" ("name");

CREATE INDEX ON "Users" ("nickname");

CREATE INDEX ON "Books" ("name");

ALTER TABLE "Books" ADD FOREIGN KEY ("user_id") REFERENCES "Users" ("id");
