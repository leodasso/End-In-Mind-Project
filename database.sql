CREATE TABLE "events" (
  "id" SERIAL PRIMARY KEY,
  "event_name" varchar,
  "event_type" VARCHAR,
  "expected_attendees" int,
  "start_time" timestamp default now(),
  "end_time" timestamp default now(),
  "location" varchar,
  "description" varchar,
  "contact_name" varchar,
  "contact_email" varchar,
  "contact_phone" varchar,
  "created_at" timestamp default now(),
  "community_id" int,
  "author_user_id" int,
  "follow_up_complete" boolean,
  "follow_up_comments" varchar,
  "archived" boolean
);

CREATE TABLE "files" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "upload_date" date,
  "author_user_id" int,
  "community_id" int,
  "event_id" int,
  "is_global" boolean,
  "url" varchar
 
);

CREATE TABLE "attendees_events" (
  "id" SERIAL PRIMARY KEY,
  "event_id" int,
  "attendee_id" int
);

CREATE TABLE "communities" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "description" varchar,
  "created_at" varchar,
  "archived" boolean
);

CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar,
  "username" varchar UNIQUE not null,
  "email" varchar UNIQUE,
  "created_at" varchar,
  "is_super_admin" boolean,
  "is_community_admin" boolean,
  "archived" boolean,
  "phone_number" VARCHAR,
  "files_id" INT
);

CREATE TABLE "attendees" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "dob" date,
  "sex" varchar,
  "race" varchar,
  "household_income" int,
  "email" varchar,
  "archived" boolean
);