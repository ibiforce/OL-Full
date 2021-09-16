/*
 Navicat Premium Data Transfer

 Source Server         : openLoyalty
 Source Server Type    : PostgreSQL
 Source Server Version : 90623
 Source Host           : localhost:5432
 Source Catalog        : openloyalty
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90623
 File Encoding         : 65001

 Date: 14/09/2021 17:25:37
*/


-- ----------------------------
-- Sequence structure for campaign_category_translation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."campaign_category_translation_id_seq";
CREATE SEQUENCE "public"."campaign_category_translation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for campaign_translation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."campaign_translation_id_seq";
CREATE SEQUENCE "public"."campaign_translation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for events_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."events_id_seq";
CREATE SEQUENCE "public"."events_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for level_translation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."level_translation_id_seq";
CREATE SEQUENCE "public"."level_translation_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ol__permission_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ol__permission_id_seq";
CREATE SEQUENCE "public"."ol__permission_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ol__roles_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ol__roles_id_seq";
CREATE SEQUENCE "public"."ol__roles_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ol__settings_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ol__settings_id_seq";
CREATE SEQUENCE "public"."ol__settings_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for refresh_tokens_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."refresh_tokens_id_seq";
CREATE SEQUENCE "public"."refresh_tokens_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for salesmanagodeadletter_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."salesmanagodeadletter_id_seq";
CREATE SEQUENCE "public"."salesmanagodeadletter_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for snapshoting_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."snapshoting_id_seq";
CREATE SEQUENCE "public"."snapshoting_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for campaign_category_translation
-- ----------------------------
DROP TABLE IF EXISTS "public"."campaign_category_translation";
CREATE TABLE "public"."campaign_category_translation" (
  "id" int4 NOT NULL,
  "translatable_id" uuid,
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "locale" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."campaign_category_translation"."translatable_id" IS '(DC2Type:campaign_category_id)';

-- ----------------------------
-- Records of campaign_category_translation
-- ----------------------------
INSERT INTO "public"."campaign_category_translation" VALUES (1, '000096cf-32a3-43bd-9034-4df343e5fd99', 'Cashback', 'en');

-- ----------------------------
-- Table structure for campaign_translation
-- ----------------------------
DROP TABLE IF EXISTS "public"."campaign_translation";
CREATE TABLE "public"."campaign_translation" (
  "id" int4 NOT NULL,
  "translatable_id" uuid,
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "short_description" text COLLATE "pg_catalog"."default",
  "conditions_description" text COLLATE "pg_catalog"."default",
  "usage_instruction" text COLLATE "pg_catalog"."default",
  "brand_description" text COLLATE "pg_catalog"."default",
  "brand_name" text COLLATE "pg_catalog"."default",
  "locale" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."campaign_translation"."translatable_id" IS '(DC2Type:campaign_id)';

-- ----------------------------
-- Records of campaign_translation
-- ----------------------------
INSERT INTO "public"."campaign_translation" VALUES (1, '000096cf-32a3-43bd-9034-4df343e5fd93', 'Test configured campaign', 'Some _Campaign_ short description', 'Some _Campaign_ condition description', 'How to use coupon in this _campaign_', 'Some _Brand_ description', NULL, 'en');
INSERT INTO "public"."campaign_translation" VALUES (2, '000096cf-32a3-43bd-9034-4df343e5fd93', 'Skonfigurowana testowa kampania', 'Opis skonfigurowanej kampanii testowej', NULL, NULL, NULL, NULL, 'pl');

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS "public"."events";
CREATE TABLE "public"."events" (
  "id" int4 NOT NULL DEFAULT nextval('events_id_seq'::regclass),
  "uuid" uuid NOT NULL,
  "playhead" int4 NOT NULL,
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "metadata" text COLLATE "pg_catalog"."default" NOT NULL,
  "recorded_on" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO "public"."events" VALUES (1, '00000000-0000-474c-b092-b0dd880c07e1', 0, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\CustomerWasRegistered","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07e1","customerData":{"firstName":"John","lastName":"Doe","gender":"male","phone":"+48234234000","email":"user@mail.com","birthDate":653011200,"createdAt":1470646394,"company":{"name":"test","nip":"nip"},"loyaltyCardNumber":"000000","address":{"street":"Dmowskiego","address1":"21","city":"Wroc\u0142aw","country":"pl","postal":"50-300","province":"Dolno\u015bl\u0105skie"},"status":{"type":"new"}},"updatedAt":1631614805}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:05.617546+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.CustomerWasRegistered');
INSERT INTO "public"."events" VALUES (2, '5840c021-1b4e-4b7f-9dcc-9bb02df33348', 0, '{"class":"OpenLoyalty\\Component\\Account\\Domain\\Event\\AccountWasCreated","payload":{"accountId":"5840c021-1b4e-4b7f-9dcc-9bb02df33348","customerId":"00000000-0000-474c-b092-b0dd880c07e1"}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:07.066651+00:00', 'OpenLoyalty.Component.Account.Domain.Event.AccountWasCreated');
INSERT INTO "public"."events" VALUES (3, '00000000-0000-474c-b092-b0dd880c07e1', 1, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\AssignedAccountToCustomer","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07e1","accountId":"5840c021-1b4e-4b7f-9dcc-9bb02df33348"}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:08.251492+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.AssignedAccountToCustomer');
INSERT INTO "public"."events" VALUES (4, '00000000-0000-474c-b092-b0dd880c07e1', 2, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\CustomerWasMovedToLevel","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07e1","levelId":"e82c96cf-32a3-43bd-9034-4df343e50000","oldLevelId":null,"updatedAt":1631614808,"manually":false,"removeLevelManually":false}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:08.299020+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.CustomerWasMovedToLevel');
INSERT INTO "public"."events" VALUES (5, '00000000-0000-474c-b092-b0dd880c07e1', 3, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\CustomerLoyaltyCardNumberWasUpdated","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07e1","cardNumber":"47834433524","updatedAt":1631614809}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:09.080877+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.CustomerLoyaltyCardNumberWasUpdated');
INSERT INTO "public"."events" VALUES (6, '00000000-0000-474c-b092-b0dd880c07e1', 4, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\CustomerWasActivated","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07e1","activatedAt":1631614809}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:09.442604+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.CustomerWasActivated');
INSERT INTO "public"."events" VALUES (7, '00000000-0000-474c-b092-b0dd880c07f3', 0, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\CustomerWasRegistered","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07f3","customerData":{"firstName":"TestUser","lastName":"ForTransfersTest","gender":"male","phone":"1231232312312312360","email":"user-transfer-1@oloy.com","birthDate":653011200,"createdAt":1470646394,"company":{"name":"test","nip":"nip"},"loyaltyCardNumber":"000000","address":{"street":"Dmowskiego","address1":"21","city":"Wroc\u0142aw","country":"pl","postal":"50-300","province":"Dolno\u015bl\u0105skie"},"status":{"type":"new"}},"updatedAt":1631614810}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:10.274344+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.CustomerWasRegistered');
INSERT INTO "public"."events" VALUES (8, 'ef0f4738-58b6-49ac-8961-36281d13b5b7', 0, '{"class":"OpenLoyalty\\Component\\Account\\Domain\\Event\\AccountWasCreated","payload":{"accountId":"ef0f4738-58b6-49ac-8961-36281d13b5b7","customerId":"00000000-0000-474c-b092-b0dd880c07f3"}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:10.428578+00:00', 'OpenLoyalty.Component.Account.Domain.Event.AccountWasCreated');
INSERT INTO "public"."events" VALUES (9, '00000000-0000-474c-b092-b0dd880c07f3', 1, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\AssignedAccountToCustomer","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07f3","accountId":"ef0f4738-58b6-49ac-8961-36281d13b5b7"}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:10.634069+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.AssignedAccountToCustomer');
INSERT INTO "public"."events" VALUES (10, '00000000-0000-474c-b092-b0dd880c07f3', 2, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\CustomerWasMovedToLevel","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07f3","levelId":"e82c96cf-32a3-43bd-9034-4df343e50000","oldLevelId":null,"updatedAt":1631614810,"manually":false,"removeLevelManually":false}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:10.635496+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.CustomerWasMovedToLevel');
INSERT INTO "public"."events" VALUES (11, '00000000-0000-474c-b092-b0dd880c07f3', 3, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\CustomerWasActivated","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07f3","activatedAt":1631614810}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:10.970555+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.CustomerWasActivated');
INSERT INTO "public"."events" VALUES (12, '00000000-0000-474c-b092-b0dd880c07aa', 0, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\CustomerWasRegistered","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07aa","customerData":{"firstName":"TestUser","lastName":"ForCouponTest","gender":"male","phone":"12312323123123123760","email":"user-return@oloy.com","birthDate":653011200,"createdAt":1470646394,"company":{"name":"test","nip":"nip"},"loyaltyCardNumber":"000000","address":{"street":"Dmowskiego","address1":"21","city":"Wroc\u0142aw","country":"pl","postal":"50-300","province":"Dolno\u015bl\u0105skie"},"status":{"type":"new"}},"updatedAt":1631614811}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:11.620267+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.CustomerWasRegistered');
INSERT INTO "public"."events" VALUES (13, '83c3e7f6-ad13-4182-800c-84f38bd1eb20', 0, '{"class":"OpenLoyalty\\Component\\Account\\Domain\\Event\\AccountWasCreated","payload":{"accountId":"83c3e7f6-ad13-4182-800c-84f38bd1eb20","customerId":"00000000-0000-474c-b092-b0dd880c07aa"}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:11.818952+00:00', 'OpenLoyalty.Component.Account.Domain.Event.AccountWasCreated');
INSERT INTO "public"."events" VALUES (14, '00000000-0000-474c-b092-b0dd880c07aa', 1, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\AssignedAccountToCustomer","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07aa","accountId":"83c3e7f6-ad13-4182-800c-84f38bd1eb20"}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:11.987807+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.AssignedAccountToCustomer');
INSERT INTO "public"."events" VALUES (15, '00000000-0000-474c-b092-b0dd880c07aa', 2, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\CustomerWasMovedToLevel","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07aa","levelId":"e82c96cf-32a3-43bd-9034-4df343e50000","oldLevelId":null,"updatedAt":1631614811,"manually":false,"removeLevelManually":false}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:11.989277+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.CustomerWasMovedToLevel');
INSERT INTO "public"."events" VALUES (16, '00000000-0000-474c-b092-b0dd880c07aa', 3, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\CustomerWasActivated","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07aa","activatedAt":1631614812}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:12.320949+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.CustomerWasActivated');
INSERT INTO "public"."events" VALUES (17, '00000000-0000-474c-b092-b0dd880c07e4', 0, '{"class":"OpenLoyalty\\Component\\Seller\\Domain\\Event\\SellerWasRegistered","payload":{"sellerId":"00000000-0000-474c-b092-b0dd880c07e4","customerData":{"firstName":"John","lastName":"Doe","email":"john@doe.com","phone":"+48123123123","posId":"00000000-0000-474c-1111-b0dd880c07e2","createdAt":1631614813}}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:13.081509+00:00', 'OpenLoyalty.Component.Seller.Domain.Event.SellerWasRegistered');
INSERT INTO "public"."events" VALUES (18, '00000000-0000-474c-b092-b0dd880c07e4', 1, '{"class":"OpenLoyalty\\Component\\Seller\\Domain\\Event\\SellerWasActivated","payload":{"sellerId":"00000000-0000-474c-b092-b0dd880c07e4"}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"Doctrine\\Bundle\\FixturesBundle\\Command\\LoadDataFixturesDoctrineCommand","arguments":"''doctrine:fixtures:load'' --env=prod -n"}}}', '2021-09-14T10:20:13.512775+00:00', 'OpenLoyalty.Component.Seller.Domain.Event.SellerWasActivated');
INSERT INTO "public"."events" VALUES (19, '00000000-0000-474c-b092-b0dd880c07f3', 4, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\CustomerLevelWasRecalculated","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07f3","date":1631614830}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"OpenLoyalty\\Bundle\\UserBundle\\Command\\RecalculateLevelCommand","arguments":"--env=prod ''oloy:user:level:recalculate''"}}}', '2021-09-14T10:20:31.322762+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.CustomerLevelWasRecalculated');
INSERT INTO "public"."events" VALUES (20, '00000000-0000-474c-b092-b0dd880c07aa', 4, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\CustomerLevelWasRecalculated","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07aa","date":1631614830}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"OpenLoyalty\\Bundle\\UserBundle\\Command\\RecalculateLevelCommand","arguments":"--env=prod ''oloy:user:level:recalculate''"}}}', '2021-09-14T10:20:34.440261+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.CustomerLevelWasRecalculated');
INSERT INTO "public"."events" VALUES (21, '00000000-0000-474c-b092-b0dd880c07e1', 5, '{"class":"OpenLoyalty\\Component\\Customer\\Domain\\Event\\CustomerLevelWasRecalculated","payload":{"customerId":"00000000-0000-474c-b092-b0dd880c07e1","date":1631614830}}', '{"class":"Broadway\\Domain\\Metadata","payload":{"console":{"command":"OpenLoyalty\\Bundle\\UserBundle\\Command\\RecalculateLevelCommand","arguments":"--env=prod ''oloy:user:level:recalculate''"}}}', '2021-09-14T10:20:34.714339+00:00', 'OpenLoyalty.Component.Customer.Domain.Event.CustomerLevelWasRecalculated');

-- ----------------------------
-- Table structure for level_translation
-- ----------------------------
DROP TABLE IF EXISTS "public"."level_translation";
CREATE TABLE "public"."level_translation" (
  "id" int4 NOT NULL,
  "translatable_id" uuid,
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "description" text COLLATE "pg_catalog"."default",
  "locale" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."level_translation"."translatable_id" IS '(DC2Type:level_id)';

-- ----------------------------
-- Records of level_translation
-- ----------------------------
INSERT INTO "public"."level_translation" VALUES (1, 'e82c96cf-32a3-43bd-9034-4df343e50000', 'Bronze', 'bronze level', 'en');
INSERT INTO "public"."level_translation" VALUES (2, 'e82c96cf-32a3-43bd-9034-4df343e51111', 'Silver', 'silver level', 'en');
INSERT INTO "public"."level_translation" VALUES (3, 'e82c96cf-32a3-43bd-9034-4df343e52222', 'Gold', 'gold level', 'en');
INSERT INTO "public"."level_translation" VALUES (4, 'e82c96cf-32a3-43bd-9034-4df343e53333', 'Platinum', 'platinum level', 'en');

-- ----------------------------
-- Table structure for ol__activation_code
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__activation_code";
CREATE TABLE "public"."ol__activation_code" (
  "activation_code_id" uuid NOT NULL,
  "object_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "object_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0) NOT NULL
)
;
COMMENT ON COLUMN "public"."ol__activation_code"."activation_code_id" IS '(DC2Type:activation_code_id)';

-- ----------------------------
-- Records of ol__activation_code
-- ----------------------------

-- ----------------------------
-- Table structure for ol__audit
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__audit";
CREATE TABLE "public"."ol__audit" (
  "audit_log_id" uuid NOT NULL,
  "created_at" timestamp(0) NOT NULL,
  "event_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "entity_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "entity_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "username" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "data" text COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."ol__audit"."audit_log_id" IS '(DC2Type:audit_log_id)';
COMMENT ON COLUMN "public"."ol__audit"."data" IS '(DC2Type:json_array)';

-- ----------------------------
-- Records of ol__audit
-- ----------------------------

-- ----------------------------
-- Table structure for ol__campaign
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__campaign";
CREATE TABLE "public"."ol__campaign" (
  "id" uuid NOT NULL,
  "reward" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "more_information_link" text COLLATE "pg_catalog"."default",
  "push_notification_text" text COLLATE "pg_catalog"."default",
  "active" bool NOT NULL DEFAULT false,
  "point_value" numeric(14,2) DEFAULT NULL::numeric,
  "cost_in_points" numeric(14,2) NOT NULL,
  "levels" text COLLATE "pg_catalog"."default" NOT NULL,
  "segments" text COLLATE "pg_catalog"."default" NOT NULL,
  "unlimited" bool NOT NULL DEFAULT true,
  "single_coupon" bool NOT NULL DEFAULT true,
  "usage_limit" int4,
  "limit_per_user" int4,
  "coupons" text COLLATE "pg_catalog"."default" NOT NULL,
  "reward_value" numeric(14,2) DEFAULT NULL::numeric,
  "tax" int4,
  "tax_price_value" numeric(14,2) DEFAULT NULL::numeric,
  "labels" text COLLATE "pg_catalog"."default",
  "days_inactive" int4,
  "daysvalid" int4,
  "transaction_percentage_value" int4,
  "categories" text COLLATE "pg_catalog"."default",
  "featured" bool NOT NULL DEFAULT true,
  "public" bool NOT NULL DEFAULT false,
  "connect_type" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "earning_rule_id" uuid,
  "fulfillment_tracking" bool NOT NULL DEFAULT false,
  "campaign_activity_all_time_active" bool DEFAULT false,
  "campaign_activity_active_from" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "campaign_activity_active_to" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "campaign_visibility_all_time_visible" bool DEFAULT false,
  "campaign_visibility_visible_from" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "campaign_visibility_visible_to" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "brand_icon_path" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "brand_icon_original_name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "brand_icon_mime" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;
COMMENT ON COLUMN "public"."ol__campaign"."id" IS '(DC2Type:campaign_id)';
COMMENT ON COLUMN "public"."ol__campaign"."levels" IS '(DC2Type:campaign_levels_json_array)';
COMMENT ON COLUMN "public"."ol__campaign"."segments" IS '(DC2Type:campaign_segments_json_array)';
COMMENT ON COLUMN "public"."ol__campaign"."coupons" IS '(DC2Type:campaign_coupons_json_array)';
COMMENT ON COLUMN "public"."ol__campaign"."labels" IS '(DC2Type:labels_json_array)';
COMMENT ON COLUMN "public"."ol__campaign"."categories" IS '(DC2Type:campaign_categories_json_array)';

-- ----------------------------
-- Records of ol__campaign
-- ----------------------------
INSERT INTO "public"."ol__campaign" VALUES ('000096cf-32a3-43bd-9034-4df343e5fd93', 'discount_code', NULL, NULL, 't', NULL, 10.00, '["e82c96cf-32a3-43bd-9034-4df343e52222"]', '["00000000-0000-0000-0000-000000000002"]', 'f', 'f', 10, 2, '["123","1234","12345","123456"]', NULL, NULL, NULL, '[{"key":"type","value":"promotion"}]', 0, 0, NULL, '["000096cf-32a3-43bd-9034-4df343e5fd99"]', 'f', 't', NULL, NULL, 'f', 'f', '2016-01-01 00:00:00', '2037-01-01 00:00:00', 'f', '2016-01-01 00:00:00', '2037-01-01 00:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ol__campaign_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__campaign_categories";
CREATE TABLE "public"."ol__campaign_categories" (
  "id" uuid NOT NULL,
  "active" bool NOT NULL DEFAULT true,
  "sort_order" int4 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "public"."ol__campaign_categories"."id" IS '(DC2Type:campaign_category_id)';

-- ----------------------------
-- Records of ol__campaign_categories
-- ----------------------------
INSERT INTO "public"."ol__campaign_categories" VALUES ('000096cf-32a3-43bd-9034-4df343e5fd99', 't', 0);

-- ----------------------------
-- Table structure for ol__campaign_photo
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__campaign_photo";
CREATE TABLE "public"."ol__campaign_photo" (
  "photo_id" uuid NOT NULL,
  "campaign_id" uuid,
  "path" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "mime_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "original_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."ol__campaign_photo"."photo_id" IS '(DC2Type:photo_id)';
COMMENT ON COLUMN "public"."ol__campaign_photo"."campaign_id" IS '(DC2Type:campaign_id)';

-- ----------------------------
-- Records of ol__campaign_photo
-- ----------------------------

-- ----------------------------
-- Table structure for ol__criterion
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__criterion";
CREATE TABLE "public"."ol__criterion" (
  "criterion_id" uuid NOT NULL,
  "segment_part_id" uuid,
  "dtype" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "days" int4,
  "anniversary_type" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "from_amount" numeric(14,2) DEFAULT NULL::numeric,
  "to_amount" numeric(14,2) DEFAULT NULL::numeric,
  "pos_ids" text COLLATE "pg_catalog"."default",
  "labels" text COLLATE "pg_catalog"."default",
  "makers" text COLLATE "pg_catalog"."default",
  "sku_ids" text COLLATE "pg_catalog"."default",
  "customers" text COLLATE "pg_catalog"."default",
  "from_date" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "to_date" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "min_count" int4,
  "max_count" int4,
  "pos_id" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "percent" numeric(14,2) DEFAULT NULL::numeric
)
;
COMMENT ON COLUMN "public"."ol__criterion"."criterion_id" IS '(DC2Type:criterion_id)';
COMMENT ON COLUMN "public"."ol__criterion"."segment_part_id" IS '(DC2Type:segment_part_id)';
COMMENT ON COLUMN "public"."ol__criterion"."pos_ids" IS '(DC2Type:json_array)';
COMMENT ON COLUMN "public"."ol__criterion"."labels" IS '(DC2Type:json_array)';
COMMENT ON COLUMN "public"."ol__criterion"."makers" IS '(DC2Type:json_array)';
COMMENT ON COLUMN "public"."ol__criterion"."sku_ids" IS '(DC2Type:json_array)';
COMMENT ON COLUMN "public"."ol__criterion"."customers" IS '(DC2Type:json_array)';

-- ----------------------------
-- Records of ol__criterion
-- ----------------------------

-- ----------------------------
-- Table structure for ol__earning_rule
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__earning_rule";
CREATE TABLE "public"."ol__earning_rule" (
  "earning_rule_id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default",
  "active" bool NOT NULL DEFAULT false,
  "levels" text COLLATE "pg_catalog"."default",
  "segments" text COLLATE "pg_catalog"."default",
  "pos" text COLLATE "pg_catalog"."default",
  "all_time_active" bool NOT NULL DEFAULT false,
  "start_at" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "end_at" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "last_executed_rule" bool NOT NULL DEFAULT false,
  "earning_rule_photo_path" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "earning_rule_photo_original_name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "earning_rule_photo_mime" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "dtype" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "event_name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "points_amount" numeric(14,2) DEFAULT NULL::numeric,
  "limit_active" bool,
  "limit_limit" int4,
  "limit_period" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "latitude" numeric(14,5) DEFAULT NULL::numeric,
  "longitude" numeric(14,5) DEFAULT NULL::numeric,
  "radius" float8,
  "code" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "reward_campaign_id" uuid,
  "label_multipliers" text COLLATE "pg_catalog"."default",
  "sku_ids" text COLLATE "pg_catalog"."default",
  "multiplier" numeric(14,2) DEFAULT NULL::numeric,
  "labels" text COLLATE "pg_catalog"."default",
  "point_value" numeric(14,2) DEFAULT NULL::numeric,
  "min_order_value" numeric(14,2) DEFAULT '0'::numeric,
  "exclude_delivery_cost" bool DEFAULT false,
  "excluded_skus" text COLLATE "pg_catalog"."default",
  "labels_inclusion_type" varchar(255) COLLATE "pg_catalog"."default" DEFAULT 'exclude_labels'::character varying,
  "excluded_labels" text COLLATE "pg_catalog"."default",
  "included_labels" text COLLATE "pg_catalog"."default",
  "reward_type" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;
COMMENT ON COLUMN "public"."ol__earning_rule"."earning_rule_id" IS '(DC2Type:earning_rule_id)';
COMMENT ON COLUMN "public"."ol__earning_rule"."levels" IS '(DC2Type:earning_rule_levels_json_array)';
COMMENT ON COLUMN "public"."ol__earning_rule"."segments" IS '(DC2Type:earning_rule_segments_json_array)';
COMMENT ON COLUMN "public"."ol__earning_rule"."pos" IS '(DC2Type:earning_rule_levels_json_array)';
COMMENT ON COLUMN "public"."ol__earning_rule"."reward_campaign_id" IS '(DC2Type:campaign_id)';
COMMENT ON COLUMN "public"."ol__earning_rule"."label_multipliers" IS '(DC2Type:label_multipliers_json_array)';
COMMENT ON COLUMN "public"."ol__earning_rule"."sku_ids" IS '(DC2Type:json_array)';
COMMENT ON COLUMN "public"."ol__earning_rule"."labels" IS '(DC2Type:labels_json_array)';
COMMENT ON COLUMN "public"."ol__earning_rule"."excluded_skus" IS '(DC2Type:skus_json_array)';
COMMENT ON COLUMN "public"."ol__earning_rule"."excluded_labels" IS '(DC2Type:labels_json_array)';
COMMENT ON COLUMN "public"."ol__earning_rule"."included_labels" IS '(DC2Type:labels_json_array)';

-- ----------------------------
-- Records of ol__earning_rule
-- ----------------------------

-- ----------------------------
-- Table structure for ol__earning_rule_usage
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__earning_rule_usage";
CREATE TABLE "public"."ol__earning_rule_usage" (
  "earning_rule_usage_id" uuid NOT NULL,
  "earning_rule_id" uuid,
  "date" timestamp(0) NOT NULL,
  "subject" uuid NOT NULL
)
;
COMMENT ON COLUMN "public"."ol__earning_rule_usage"."earning_rule_usage_id" IS '(DC2Type:earning_rule_usage_id)';
COMMENT ON COLUMN "public"."ol__earning_rule_usage"."earning_rule_id" IS '(DC2Type:earning_rule_id)';
COMMENT ON COLUMN "public"."ol__earning_rule_usage"."subject" IS '(DC2Type:earning_rule_usage_subject)';

-- ----------------------------
-- Records of ol__earning_rule_usage
-- ----------------------------

-- ----------------------------
-- Table structure for ol__email
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__email";
CREATE TABLE "public"."ol__email" (
  "email_id" uuid NOT NULL,
  "key" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "subject" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "sender_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "sender_email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "receiver_email" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "updated_at" timestamp(0) NOT NULL
)
;
COMMENT ON COLUMN "public"."ol__email"."email_id" IS '(DC2Type:email_id)';

-- ----------------------------
-- Records of ol__email
-- ----------------------------
INSERT INTO "public"."ol__email" VALUES ('00a154e5-ecef-45f3-b36f-c3e7f27f592e', 'OpenLoyaltyUserBundle:email:registration.html.twig', 'Account created', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>

    <!-- Web Font / @font-face : BEGIN -->

    <!--[if mso]>
    <style>
        * {
            font-family: sans-serif !important;
        }
    </style>
    <![endif]-->

    <!--[if !mso]><!-->
    <!-- insert web font reference, eg: <link href=''https://fonts.googleapis.com/css?family=Roboto:400,700'' rel=''stylesheet'' type=''text/css''> -->
    <!--<![endif]-->

    <!-- Web Font / @font-face : END -->

    <style type="text/css">


        html,
        body {
            margin: 0 auto !important;
            padding: 0 !important;
            height: 100% !important;
            width: 100% !important;
        }

        * {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
        }

        div[style*="margin: 16px 0"] {
            margin: 0 !important;
        }

        table,
        td {
            mso-table-lspace: 0pt !important;
            mso-table-rspace: 0pt !important;
        }

        table {
            border-spacing: 0 !important;
            border-collapse: collapse !important;
            table-layout: fixed !important;
            Margin: 0 auto !important;
        }

        table table table {
            table-layout: auto;
        }

        img {
            -ms-interpolation-mode: bicubic;
        }

        .mobile-link--footer a,
        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: underline !important;
        }

    </style>

    <style>

        .button-td,
        .button-a {
            transition: all 100ms ease-in;
        }

        .button-td:hover,
        .button-a:hover {
            background: #2e8ab8 !important;
            border-color: #2e8ab8 !important;
        }

        @media screen and (max-width: 100%px) {

            .email-container {
                width: 100% !important;
                margin: auto !important;
            }

            .fluid,
            .fluid-centered {
                max-width: 100% !important;
                height: auto !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .fluid-centered {
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .stack-column,
            .stack-column-center {
                display: block !important;
                width: 100% !important;
                max-width: 100% !important;
                direction: ltr !important;
            }

            .stack-column-center {
                text-align: left !important;
            }

            .center-on-narrow {
                text-align: left !important;
                display: block !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
                float: none !important;
            }

            table.center-on-narrow {
                display: inline-block !important;
            }

        }

    </style>

</head>
<body bgcolor="#f9f9f9" width="100%" style="Margin: 0;">
<div style="width: 100%; background: #f9f9f9;">

    <table cellspacing="0" cellpadding="0" border="0"  align="center"  style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 20px 0; text-align: center; font-family: sans-serif; font-size: 35px; mso-height-rule: exactly; line-height: 80px; font-weight: bold;">
                <b>OpenLoyalty</b>
            </td>
        </tr>
    </table>

    <table border="0" bordercolor="#e4e4e4" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff" width="100%" style="max-width: 600px; margin: auto; border: 1px solid #e4e4e4"
           class="email-container">

        <tr>
            <td style="padding-left: 40px; padding-bottom: 0px; padding-top: 40px;  text-align: left; font-family: sans-serif; font-size: 30px; mso-height-rule: exactly; line-height: 30px; color: #555555;">
                Activate account
            </td>
        </tr>

        <tr>
            <td style="padding-left: 40px; padding-bottom: 20px; padding-top: 40px; padding-right: 40px;  text-align: left; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse fermentum laoreet ornare. Nunc
                sagittis scelerisque tempus. Nunc vitae orci quis metus tincidunt venenatis id et quam&nbsp;erat.
            </td>
        </tr>
        <tr>

            <td style="padding-left: 40px;padding-right: 40px; padding-bottom: 40px; padding-top: 20px; text-align: center; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                <table cellspacing="0" cellpadding="0" border="0" align="left" style="Margin: auto">
                    <tr>
                        <td style="background: #3399cc; text-align: left;" class="button-td">
                            <a href="{{ url }}"
                               style="background: #3399cc; border: 15px solid #3399cc; font-family: sans-serif; font-size: 13px; line-height: 1.1; text-align: center; text-decoration: none; display: block; border-radius: 3px; font-weight: bold;"
                               class="button-a">
                                &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ffffff">ACTIVATE ACCOUNT</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            </a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>


    </table>

    <table cellspacing="0" cellpadding="0" border="0" align="center" width="100%" style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 40px 10px;width: 100%;font-size: 12px; font-family: sans-serif; mso-height-rule: exactly; line-height:18px; text-align: center; color: #888888;">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
                Suspendisse fermentum laoreet ornare.<br><br>

                <a href="{{ conditions_file }}">Terms and conditions</a><br><br>

                Nunc sagittis scelerisque tempus. Nunc vitae orci quis metus<br>
                tincidunt venenatis id et quam.<br>
                <br><br>
            </td>
        </tr>
    </table>

</div>
</body>
</html>
', 'open@oloy.com', 'open@oloy.com', NULL, '2021-09-14 12:20:03');
INSERT INTO "public"."ol__email" VALUES ('da758ac0-2bf5-406b-af14-be55b8daaab9', 'OpenLoyaltyUserBundle:email:registration_with_temporary_password.html.twig', 'Account created', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>

    <!-- Web Font / @font-face : BEGIN -->

    <!--[if mso]>
    <style>
        * {
            font-family: sans-serif !important;
        }
    </style>
    <![endif]-->

    <!--[if !mso]><!-->
    <!-- insert web font reference, eg: <link href=''https://fonts.googleapis.com/css?family=Roboto:400,700'' rel=''stylesheet'' type=''text/css''> -->
    <!--<![endif]-->

    <!-- Web Font / @font-face : END -->

    <style type="text/css">


        html,
        body {
            margin: 0 auto !important;
            padding: 0 !important;
            height: 100% !important;
            width: 100% !important;
        }

        * {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
        }

        div[style*="margin: 16px 0"] {
            margin: 0 !important;
        }

        table,
        td {
            mso-table-lspace: 0pt !important;
            mso-table-rspace: 0pt !important;
        }

        table {
            border-spacing: 0 !important;
            border-collapse: collapse !important;
            table-layout: fixed !important;
            Margin: 0 auto !important;
        }

        table table table {
            table-layout: auto;
        }

        img {
            -ms-interpolation-mode: bicubic;
        }

        .mobile-link--footer a,
        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: underline !important;
        }

    </style>

    <style>

        .button-td,
        .button-a {
            transition: all 100ms ease-in;
        }

        .button-td:hover,
        .button-a:hover {
            background: #2e8ab8 !important;
            border-color: #2e8ab8 !important;
        }

        @media screen and (max-width: 100px) {

            .email-container {
                width: 100% !important;
                margin: auto !important;
            }

            .fluid,
            .fluid-centered {
                max-width: 100% !important;
                height: auto !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .fluid-centered {
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .stack-column,
            .stack-column-center {
                display: block !important;
                width: 100% !important;
                max-width: 100% !important;
                direction: ltr !important;
            }

            .stack-column-center {
                text-align: left !important;
            }

            .center-on-narrow {
                text-align: left !important;
                display: block !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
                float: none !important;
            }

            table.center-on-narrow {
                display: inline-block !important;
            }

        }

    </style>

</head>
<body bgcolor="#f9f9f9" width="100%" style="Margin: 0;">
<div style="width: 100%; background: #f9f9f9;">

    <div style="display:none;font-size:1px;line-height:1px;max-height:0px;max-width:0px;opacity:0;overflow:hidden;mso-hide:all;font-family: sans-serif;">
        Welcome to {{ program_name }}!
    </div>

    <table cellspacing="0" cellpadding="0" border="0"  align="center"  style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 20px 0; text-align: center; font-family: sans-serif; font-size: 35px; mso-height-rule: exactly; line-height: 80px; font-weight: bold;">
                <b>{{ program_name }}</b>
            </td>
        </tr>
    </table>

    <table border="0" bordercolor="#e4e4e4" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff" width="100%" style="max-width: 600px; margin: auto; border: 1px solid #e4e4e4"
           class="email-container">

        <tr>
            <td style="padding-left: 40px; padding-bottom: 0px; padding-top: 40px;  text-align: left; font-family: sans-serif; font-size: 30px; mso-height-rule: exactly; line-height: 30px; color: #555555;">
                Welcome to {{ program_name }}!
            </td>
        </tr>

        <tr>
            <td style="padding-left: 40px; padding-bottom: 20px; padding-top: 40px; padding-right: 40px;  text-align: left; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                You can use your <b>e-mail address</b> ({{ email }}){% if loyalty_card_number %}, <b>loyalty card number</b> ({{ loyalty_card_number }}){% endif %}{% if phone %} or <b>telephone number</b> ({{ phone }}){% endif %} as login.<br><br>
                <b>Your account password is:</b>
            </td>
        </tr>
        <tr>

            <td style="padding-left: 40px;padding-right: 40px; text-align: left; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 16px; color: #555555;">

                &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#999999;  background: #f9f9f9; display: block; padding: 20px; border: 1px solid #e4e4e4">{{ password }}</span>&nbsp;&nbsp;&nbsp;&nbsp;

            </td>
        </tr>
        <tr>

            <td style="padding-left: 40px;padding-right: 40px; padding-bottom: 40px; padding-top: 20px; text-align: center; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                <table cellspacing="0" cellpadding="0" border="0" align="left" style="Margin: auto">
                    <tr>
                        <td style="background: #3399cc; text-align: left;" class="button-td">
                            <a href="{{ customer_panel_url }}"
                               style="background: #3399cc; border: 15px solid #3399cc; font-family: sans-serif; font-size: 13px; line-height: 1.1; text-align: center; text-decoration: none; display: block; border-radius: 3px; font-weight: bold;"
                               class="button-a">
                                &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ffffff">LOG IN TO YOUR ACCOUNT</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            </a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>


    </table>

    <table cellspacing="0" cellpadding="0" border="0" align="center" width="100%" style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 40px 10px;width: 100%;font-size: 12px; font-family: sans-serif; mso-height-rule: exactly; line-height:18px; text-align: center; color: #888888;">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
                Suspendisse fermentum laoreet ornare.<br><br>

                <a href="{{ conditions_file }}">Terms and conditions</a><br><br>

                Nunc sagittis scelerisque tempus. Nunc vitae orci quis metus<br>
                tincidunt venenatis id et quam.<br>
                <br><br>
            </td>
        </tr>
    </table>

</div>
</body>
</html>
', 'open@oloy.com', 'open@oloy.com', NULL, '2021-09-14 12:20:03');
INSERT INTO "public"."ol__email" VALUES ('19cb1b2c-ac0f-40bb-8849-c8f2044ca6f4', 'OpenLoyaltyUserBundle:email:password_reset.html.twig', 'Password reset requested', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>


    <style type="text/css">


        html,
        body {
            margin: 0 auto !important;
            padding: 0 !important;
            height: 100% !important;
            width: 100% !important;
        }

        * {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
        }

        div[style*="margin: 16px 0"] {
            margin: 0 !important;
        }

        table,
        td {
            mso-table-lspace: 0pt !important;
            mso-table-rspace: 0pt !important;
        }

        table {
            border-spacing: 0 !important;
            border-collapse: collapse !important;
            table-layout: fixed !important;
            Margin: 0 auto !important;
        }

        table table table {
            table-layout: auto;
        }

        img {
            -ms-interpolation-mode: bicubic;
        }

        .mobile-link--footer a,
        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: underline !important;
        }

        .button-td,
        .button-a {
            transition: all 100ms ease-in;
        }

        .button-td:hover,
        .button-a:hover {
            background: #2e8ab8 !important;
            border-color: #2e8ab8 !important;
        }

        @media screen and (max-width: 600px) {

            .email-container {
                width: 100% !important;
                margin: auto !important;
            }

            .fluid,
            .fluid-centered {
                max-width: 100% !important;
                height: auto !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .fluid-centered {
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .stack-column,
            .stack-column-center {
                display: block !important;
                width: 100% !important;
                max-width: 100% !important;
                direction: ltr !important;
            }

            .stack-column-center {
                text-align: left !important;
            }

            .center-on-narrow {
                text-align: left !important;
                display: block !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
                float: none !important;
            }

            table.center-on-narrow {
                display: inline-block !important;
            }

        }

    </style>

</head>
<body bgcolor="#f9f9f9" width="100%" style="Margin: 0;">
<div style="width: 100%; background: #f9f9f9;">

    <table cellspacing="0" cellpadding="0" border="0"  align="center"  style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 20px 0; text-align: center; font-family: sans-serif; font-size: 35px; mso-height-rule: exactly; line-height: 80px; font-weight: bold;">
                <b>{{ program_name }}</b>
            </td>
            </t20
    </table>

    <table border="0" bordercolor="#e4e4e4" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff" width="100%" style="max-width: 600px; margin: auto; border: 1px solid #e4e4e4"
           class="email-container">

        <tr>
            <td style="padding-left: 40px; padding-bottom: 0px; padding-top: 40px;  text-align: left; font-family: sans-serif; font-size: 30px; mso-height-rule: exactly; line-height: 30px; color: #555555;">
                Forgot your password?
            </td>
        </tr>

        <tr>
            <td style="padding-left: 40px; padding-bottom: 20px; padding-top: 40px; padding-right: 40px;  text-align: left; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                Click the link below to reset your password:
            </td>
        </tr>
        <tr>

            <td style="padding-left: 40px;padding-right: 40px; padding-bottom: 40px; padding-top: 20px; text-align: center; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                <table cellspacing="0" cellpadding="0" border="0" align="left" style="Margin: auto">
                    <tr>
                        <td style="background: #3399cc; text-align: left;" class="button-td">
                            <a href="{{ url_reset_password }}"
                               style="background: #3399cc; border: 15px solid #3399cc; font-family: sans-serif; font-size: 13px; line-height: 1.1; text-align: center; text-decoration: none; display: block; border-radius: 3px; font-weight: bold;"
                               class="button-a">
                                &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ffffff">RESET PASSWORD</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            </a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>


    </table>

    <table cellspacing="0" cellpadding="0" border="0" align="center" width="100%" style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 40px 10px;width: 100%;font-size: 12px; font-family: sans-serif; mso-height-rule: exactly; line-height:18px; text-align: center; color: #888888;">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
                Suspendisse fermentum laoreet ornare.<br><br>

                Nunc sagittis scelerisque tempus. Nunc vitae orci quis metus<br>
                tincidunt venenatis id et quam.<br>
                <br><br>
            </td>
        </tr>
    </table>

</div>
</body>
</html>
', 'open@oloy.com', 'open@oloy.com', NULL, '2021-09-14 12:20:03');
INSERT INTO "public"."ol__email" VALUES ('6ea252c6-47b7-43dd-8af6-7070e13659a2', 'OpenLoyaltyUserBundle:email:customer_reward_bought.html.twig', '{{ program_name }} - new reward', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>


    <style type="text/css">


        html,
        body {
            margin: 0 auto !important;
            padding: 0 !important;
            height: 100% !important;
            width: 100% !important;
        }

        * {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
        }

        div[style*="margin: 16px 0"] {
            margin: 0 !important;
        }

        table,
        td {
            mso-table-lspace: 0pt !important;
            mso-table-rspace: 0pt !important;
        }

        table {
            border-spacing: 0 !important;
            border-collapse: collapse !important;
            table-layout: fixed !important;
            Margin: 0 auto !important;
        }

        table table table {
            table-layout: auto;
        }

        img {
            -ms-interpolation-mode: bicubic;
        }

        .mobile-link--footer a,
        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: underline !important;
        }

        .button-td,
        .button-a {
            transition: all 100ms ease-in;
        }

        .button-td:hover,
        .button-a:hover {
            background: #2e8ab8 !important;
            border-color: #2e8ab8 !important;
        }

        @media screen and (max-width: 600px) {

            .email-container {
                width: 100% !important;
                margin: auto !important;
            }

            .fluid,
            .fluid-centered {
                max-width: 100% !important;
                height: auto !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .fluid-centered {
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .stack-column,
            .stack-column-center {
                display: block !important;
                width: 100% !important;
                max-width: 100% !important;
                direction: ltr !important;
            }

            .stack-column-center {
                text-align: left !important;
            }

            .center-on-narrow {
                text-align: left !important;
                display: block !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
                float: none !important;
            }

            table.center-on-narrow {
                display: inline-block !important;
            }

        }

    </style>

</head>
<body bgcolor="#f9f9f9" width="100%" style="Margin: 0;">
<div style="width: 100%; background: #f9f9f9;">

    <table cellspacing="0" cellpadding="0" border="0"  align="center"  style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 20px 0; text-align: center; font-family: sans-serif; font-size: 35px; mso-height-rule: exactly; line-height: 80px; font-weight: bold;">
                <b>{{ program_name }}</b>
            </td>
        </tr>
    </table>

    <table border="0" bordercolor="#e4e4e4" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff" width="100%" style="max-width: 600px; margin: auto; border: 1px solid #e4e4e4"
           class="email-container">

        <tr>
            <td style="padding-left: 40px; padding-bottom: 0px; padding-top: 40px;  text-align: left; font-family: sans-serif; font-size: 30px; mso-height-rule: exactly; line-height: 30px; color: #555555;">
                New reward
            </td>
        </tr>

        <tr>
            <td style="padding-left: 40px; padding-bottom: 20px; padding-top: 40px; padding-right: 40px;  text-align: left; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                Congratulations! You have redeemed reward: <b>{{ reward_name }}</b>.<br><br>
                <b>Here is coupon of your reward:</b>
            </td>
        </tr>
        <tr>

            <td style="padding-left: 40px;padding-right: 40px; text-align: left; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 16px; color: #555555;">

                &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#999999;  background: #f9f9f9; display: block; padding: 20px; border: 1px solid #e4e4e4"> {{ reward_code }}</span>&nbsp;&nbsp;&nbsp;&nbsp;

            </td>
        </tr>
        <tr>
            <td style="padding-left: 40px; padding-bottom: 20px; padding-top: 40px; padding-right: 40px;  text-align: left; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                <b>How to use coupons?</b><br><br>
                {{ reward_instructions }}
            </td>
        </tr>
        <tr>

            <td style="padding-left: 40px;padding-right: 40px; padding-bottom: 40px; padding-top: 20px; text-align: center; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                <table cellspacing="0" cellpadding="0" border="0" align="left" style="Margin: auto">
                    <tr>
                        <td style="background: #3399cc; text-align: left;" class="button-td">
                            <a href="{{ ecommerce_address }}"
                               style="background: #3399cc; border: 15px solid #3399cc; font-family: sans-serif; font-size: 13px; line-height: 1.1; text-align: center; text-decoration: none; display: block; border-radius: 3px; font-weight: bold;"
                               class="button-a">
                                &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ffffff">VISIT ON-LINE STORE</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            </a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>


    </table>

    <table cellspacing="0" cellpadding="0" border="0" align="center" width="100%" style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 40px 10px;width: 100%;font-size: 12px; font-family: sans-serif; mso-height-rule: exactly; line-height:18px; text-align: center; color: #888888;">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
                Suspendisse fermentum laoreet ornare.<br><br>

                Nunc sagittis scelerisque tempus. Nunc vitae orci quis metus<br>
                tincidunt venenatis id et quam.<br>
                <br><br>
            </td>
        </tr>
    </table>

</div>
</body>
</html>', 'open@oloy.com', 'open@oloy.com', NULL, '2021-09-14 12:20:03');
INSERT INTO "public"."ol__email" VALUES ('d6971573-4c90-43c9-aa0d-2f67734cacb1', 'OpenLoyaltyUserBundle:email:new_points.html.twig', '{{ program_name }} - new points', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>


    <style type="text/css">


        html,
        body {
            margin: 0 auto !important;
            padding: 0 !important;
            height: 100% !important;
            width: 100% !important;
        }

        * {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
        }

        div[style*="margin: 16px 0"] {
            margin: 0 !important;
        }

        table,
        td {
            mso-table-lspace: 0pt !important;
            mso-table-rspace: 0pt !important;
        }

        table {
            border-spacing: 0 !important;
            border-collapse: collapse !important;
            table-layout: fixed !important;
            Margin: 0 auto !important;
        }

        table table table {
            table-layout: auto;
        }

        img {
            -ms-interpolation-mode: bicubic;
        }

        .mobile-link--footer a,
        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: underline !important;
        }

        .button-td,
        .button-a {
            transition: all 100ms ease-in;
        }

        .button-td:hover,
        .button-a:hover {
            background: #2e8ab8 !important;
            border-color: #2e8ab8 !important;
        }

        @media screen and (max-width: 600px) {

            .email-container {
                width: 100% !important;
                margin: auto !important;
            }

            .fluid,
            .fluid-centered {
                max-width: 100% !important;
                height: auto !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .fluid-centered {
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .stack-column,
            .stack-column-center {
                display: block !important;
                width: 100% !important;
                max-width: 100% !important;
                direction: ltr !important;
            }

            .stack-column-center {
                text-align: left !important;
            }

            .center-on-narrow {
                text-align: left !important;
                display: block !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
                float: none !important;
            }

            table.center-on-narrow {
                display: inline-block !important;
            }

        }

    </style>

</head>
<body bgcolor="#f9f9f9" width="100%" style="Margin: 0;">
<div style="width: 100%; background: #f9f9f9;">

    <table cellspacing="0" cellpadding="0" border="0"  align="center"  style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 20px 0; text-align: center; font-family: sans-serif; font-size: 35px; mso-height-rule: exactly; line-height: 80px; font-weight: bold;">
                <b>{{ program_name }}</b>
            </td>
            </t20
    </table>

    <table border="0" bordercolor="#e4e4e4" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff" width="100%" style="max-width: 600px; margin: auto; border: 1px solid #e4e4e4"
           class="email-container">

        <tr>
            <td style="padding-left: 40px; padding-bottom: 0px; padding-top: 40px;  text-align: left; font-family: sans-serif; font-size: 30px; mso-height-rule: exactly; line-height: 30px; color: #555555;">
                New points
            </td>
        </tr>

        <tr>
            <td style="padding-left: 40px; padding-bottom: 20px; padding-top: 40px; padding-right: 40px;  text-align: left; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                Congratulations! You have earned new points: <b>{{ added_points_amount }}</b>.<br><br>
                Currently you have <b>{{ active_points_amount }}</b> active points.
            </td>
        </tr>
        <tr>

            <td style="padding-left: 40px;padding-right: 40px; padding-bottom: 40px; padding-top: 20px; text-align: center; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                <table cellspacing="0" cellpadding="0" border="0" align="left" style="Margin: auto">
                    <tr>
                        <td style="background: #3399cc; text-align: left;" class="button-td">
                            <a href="{{ ecommerce_address }}"
                               style="background: #3399cc; border: 15px solid #3399cc; font-family: sans-serif; font-size: 13px; line-height: 1.1; text-align: center; text-decoration: none; display: block; border-radius: 3px; font-weight: bold;"
                               class="button-a">
                                &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ffffff">VISIT ON-LINE STORE</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            </a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>


    </table>

    <table cellspacing="0" cellpadding="0" border="0" align="center" width="100%" style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 40px 10px;width: 100%;font-size: 12px; font-family: sans-serif; mso-height-rule: exactly; line-height:18px; text-align: center; color: #888888;">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
                Suspendisse fermentum laoreet ornare.<br><br>

                Nunc sagittis scelerisque tempus. Nunc vitae orci quis metus<br>
                tincidunt venenatis id et quam.<br>
                <br><br>
            </td>
        </tr>
    </table>

</div>
</body>
</html>
', 'open@oloy.com', 'open@oloy.com', NULL, '2021-09-14 12:20:03');
INSERT INTO "public"."ol__email" VALUES ('0cdb207f-6fb3-4e8f-aa55-bd6d0b934238', 'OpenLoyaltyUserBundle:email:new_level.html.twig', '{{ program_name }} - new level', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>


    <style type="text/css">


        html,
        body {
            margin: 0 auto !important;
            padding: 0 !important;
            height: 100% !important;
            width: 100% !important;
        }

        * {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
        }

        div[style*="margin: 16px 0"] {
            margin: 0 !important;
        }

        table,
        td {
            mso-table-lspace: 0pt !important;
            mso-table-rspace: 0pt !important;
        }

        table {
            border-spacing: 0 !important;
            border-collapse: collapse !important;
            table-layout: fixed !important;
            Margin: 0 auto !important;
        }

        table table table {
            table-layout: auto;
        }

        img {
            -ms-interpolation-mode: bicubic;
        }

        .mobile-link--footer a,
        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: underline !important;
        }

        .button-td,
        .button-a {
            transition: all 100ms ease-in;
        }

        .button-td:hover,
        .button-a:hover {
            background: #2e8ab8 !important;
            border-color: #2e8ab8 !important;
        }

        @media screen and (max-width: 600px) {

            .email-container {
                width: 100% !important;
                margin: auto !important;
            }

            .fluid,
            .fluid-centered {
                max-width: 100% !important;
                height: auto !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .fluid-centered {
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .stack-column,
            .stack-column-center {
                display: block !important;
                width: 100% !important;
                max-width: 100% !important;
                direction: ltr !important;
            }

            .stack-column-center {
                text-align: left !important;
            }

            .center-on-narrow {
                text-align: left !important;
                display: block !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
                float: none !important;
            }

            table.center-on-narrow {
                display: inline-block !important;
            }

        }

    </style>

</head>
<body bgcolor="#f9f9f9" width="100%" style="Margin: 0;">
<div style="width: 100%; background: #f9f9f9;">

    <table cellspacing="0" cellpadding="0" border="0"  align="center"  style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 20px 0; text-align: center; font-family: sans-serif; font-size: 35px; mso-height-rule: exactly; line-height: 80px; font-weight: bold;">
                <b>{{ program_name }}</b>
            </td>
            </t20
    </table>

    <table border="0" bordercolor="#e4e4e4" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff" width="100%" style="max-width: 600px; margin: auto; border: 1px solid #e4e4e4"
           class="email-container">

        <tr>
            <td style="padding-left: 40px; padding-bottom: 0px; padding-top: 40px;  text-align: left; font-family: sans-serif; font-size: 30px; mso-height-rule: exactly; line-height: 30px; color: #555555;">
                New level
            </td>
        </tr>

        <tr>
            <td style="padding-left: 40px; padding-bottom: 20px; padding-top: 40px; padding-right: 40px;  text-align: left; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                Your level has changed. Your current level is <b>{{ level_name }}</b>.<br><br>
                Your current discount is <b>{{ level_discount }}%</b>.
            </td>
        </tr>
        <tr>

            <td style="padding-left: 40px;padding-right: 40px; padding-bottom: 40px; padding-top: 20px; text-align: center; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                <table cellspacing="0" cellpadding="0" border="0" align="left" style="Margin: auto">
                    <tr>
                        <td style="background: #3399cc; text-align: left;" class="button-td">
                            <a href="{{ ecommerce_address }}"
                               style="background: #3399cc; border: 15px solid #3399cc; font-family: sans-serif; font-size: 13px; line-height: 1.1; text-align: center; text-decoration: none; display: block; border-radius: 3px; font-weight: bold;"
                               class="button-a">
                                &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ffffff">VISIT ON-LINE STORE</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            </a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>


    </table>

    <table cellspacing="0" cellpadding="0" border="0" align="center" width="100%" style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 40px 10px;width: 100%;font-size: 12px; font-family: sans-serif; mso-height-rule: exactly; line-height:18px; text-align: center; color: #888888;">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
                Suspendisse fermentum laoreet ornare.<br><br>

                Nunc sagittis scelerisque tempus. Nunc vitae orci quis metus<br>
                tincidunt venenatis id et quam.<br>
                <br><br>
            </td>
        </tr>
    </table>

</div>
</body>
</html>
', 'open@oloy.com', 'open@oloy.com', NULL, '2021-09-14 12:20:03');
INSERT INTO "public"."ol__email" VALUES ('a033ef4f-3f2d-436b-ad87-9f512d79d8a0', 'OpenLoyaltyUserBundle:email:invitation.html.twig', 'Invitation', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>

    <!-- Web Font / @font-face : BEGIN -->

    <!--[if mso]>
    <style>
        * {
            font-family: sans-serif !important;
        }
    </style>
    <![endif]-->

    <!--[if !mso]><!-->
    <!-- insert web font reference, eg: <link href=''https://fonts.googleapis.com/css?family=Roboto:400,700'' rel=''stylesheet'' type=''text/css''> -->
    <!--<![endif]-->

    <!-- Web Font / @font-face : END -->

    <style type="text/css">


        html,
        body {
            margin: 0 auto !important;
            padding: 0 !important;
            height: 100% !important;
            width: 100% !important;
        }

        * {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
        }

        div[style*="margin: 16px 0"] {
            margin: 0 !important;
        }

        table,
        td {
            mso-table-lspace: 0pt !important;
            mso-table-rspace: 0pt !important;
        }

        table {
            border-spacing: 0 !important;
            border-collapse: collapse !important;
            table-layout: fixed !important;
            Margin: 0 auto !important;
        }

        table table table {
            table-layout: auto;
        }

        img {
            -ms-interpolation-mode: bicubic;
        }

        .mobile-link--footer a,
        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: underline !important;
        }

    </style>

    <style>

        .button-td,
        .button-a {
            transition: all 100ms ease-in;
        }

        .button-td:hover,
        .button-a:hover {
            background: #2e8ab8 !important;
            border-color: #2e8ab8 !important;
        }

        @media screen and (max-width: 100%px) {

            .email-container {
                width: 100% !important;
                margin: auto !important;
            }

            .fluid,
            .fluid-centered {
                max-width: 100% !important;
                height: auto !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .fluid-centered {
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .stack-column,
            .stack-column-center {
                display: block !important;
                width: 100% !important;
                max-width: 100% !important;
                direction: ltr !important;
            }

            .stack-column-center {
                text-align: left !important;
            }

            .center-on-narrow {
                text-align: left !important;
                display: block !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
                float: none !important;
            }

            table.center-on-narrow {
                display: inline-block !important;
            }

        }

    </style>

</head>
<body bgcolor="#f9f9f9" width="100%" style="Margin: 0;">
<div style="width: 100%; background: #f9f9f9;">

    <table cellspacing="0" cellpadding="0" border="0"  align="center"  style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 20px 0; text-align: center; font-family: sans-serif; font-size: 35px; mso-height-rule: exactly; line-height: 80px; font-weight: bold;">
                <b>OpenLoyalty</b>
            </td>
        </tr>
    </table>

    <table border="0" bordercolor="#e4e4e4" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff" width="100%" style="max-width: 600px; margin: auto; border: 1px solid #e4e4e4"
           class="email-container">

        <tr>
            <td style="padding-left: 40px; padding-bottom: 0px; padding-top: 40px;  text-align: left; font-family: sans-serif; font-size: 30px; mso-height-rule: exactly; line-height: 30px; color: #555555;">
                Invitation
            </td>
        </tr>

        <tr>
            <td style="padding-left: 40px; padding-bottom: 20px; padding-top: 40px; padding-right: 40px;  text-align: left; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                {{ referrerName }} invites you to OpenLoyalty platform
            </td>
        </tr>
        <tr>

            <td style="padding-left: 40px;padding-right: 40px; padding-bottom: 40px; padding-top: 20px; text-align: center; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                <table cellspacing="0" cellpadding="0" border="0" align="left" style="Margin: auto">
                    <tr>
                        <td style="background: #3399cc; text-align: left;" class="button-td">
                            <a href="{{ url }}"
                               style="background: #3399cc; border: 15px solid #3399cc; font-family: sans-serif; font-size: 13px; line-height: 1.1; text-align: center; text-decoration: none; display: block; border-radius: 3px; font-weight: bold;"
                               class="button-a">
                                &nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#ffffff">REGISTER NOW</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            </a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>


    </table>

    <table cellspacing="0" cellpadding="0" border="0" align="center" width="100%" style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 40px 10px;width: 100%;font-size: 12px; font-family: sans-serif; mso-height-rule: exactly; line-height:18px; text-align: center; color: #888888;">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
                Suspendisse fermentum laoreet ornare.<br><br>

                Nunc sagittis scelerisque tempus. Nunc vitae orci quis metus<br>
                tincidunt venenatis id et quam.<br>
                <br><br>
            </td>
        </tr>
    </table>

</div>
</body>
</html>
', 'open@oloy.com', 'open@oloy.com', NULL, '2021-09-14 12:20:03');
INSERT INTO "public"."ol__email" VALUES ('26ffd509-b0be-45c4-b6e0-6c9fceda325d', 'OpenLoyaltyUserBundle:email:reward_redeemed.html.twig', 'Reward Redeemed', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>


    <style type="text/css">


        html,
        body {
            margin: 0 auto !important;
            padding: 0 !important;
            height: 100% !important;
            width: 100% !important;
        }

        * {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
        }

        div[style*="margin: 16px 0"] {
            margin: 0 !important;
        }

        table,
        td {
            mso-table-lspace: 0pt !important;
            mso-table-rspace: 0pt !important;
        }

        table {
            border-spacing: 0 !important;
            border-collapse: collapse !important;
            table-layout: fixed !important;
            Margin: 0 auto !important;
        }

        table table table {
            table-layout: auto;
        }

        img {
            -ms-interpolation-mode: bicubic;
        }

        .mobile-link--footer a,
        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: underline !important;
        }

        .button-td,
        .button-a {
            transition: all 100ms ease-in;
        }

        .button-td:hover,
        .button-a:hover {
            background: #2e8ab8 !important;
            border-color: #2e8ab8 !important;
        }

        @media screen and (max-width: 600px) {

            .email-container {
                width: 100% !important;
                margin: auto !important;
            }

            .fluid,
            .fluid-centered {
                max-width: 100% !important;
                height: auto !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .fluid-centered {
                Margin-left: auto !important;
                Margin-right: auto !important;
            }

            .stack-column,
            .stack-column-center {
                display: block !important;
                width: 100% !important;
                max-width: 100% !important;
                direction: ltr !important;
            }

            .stack-column-center {
                text-align: left !important;
            }

            .center-on-narrow {
                text-align: left !important;
                display: block !important;
                Margin-left: auto !important;
                Margin-right: auto !important;
                float: none !important;
            }

            table.center-on-narrow {
                display: inline-block !important;
            }

        }

    </style>

</head>
<body bgcolor="#f9f9f9" width="100%" style="Margin: 0;">
<div style="width: 100%; background: #f9f9f9;">

    <table cellspacing="0" cellpadding="0" border="0" align="center" style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 20px 0; text-align: center; font-family: sans-serif; font-size: 35px; mso-height-rule: exactly; line-height: 80px; font-weight: bold;">
                <b>Reward Redeemed</b>
            </td>
        </tr>
    </table>

    <table border="0" bordercolor="#e4e4e4" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff"
           width="100%" style="max-width: 600px; margin: auto; border: 1px solid #e4e4e4"
           class="email-container">

        <tr>
            <td style="padding-left: 40px; padding-bottom: 0px; padding-top: 40px;  text-align: left; font-family: sans-serif; font-size: 30px; mso-height-rule: exactly; line-height: 30px; color: #555555;">
                Reward Redeemed
            </td>
        </tr>

        <tr>
            <td style="padding-left: 40px; padding-bottom: 20px; padding-top: 40px; padding-right: 40px;  text-align: left; font-family: sans-serif; font-size: 15px; mso-height-rule: exactly; line-height: 20px; color: #555555;">
                <b>{{ coupon_code }}</b><br/><br/>
                <b>{{ customer_name }} {{ customer_last_name }}</b>!<br/><br/>
                <b>{{ customer_phone_number }}</b><br/><br/>
                <b>{{ customer_email }}</b><br/><br/>
                <b>{{ reward_name }}</b><br/><br/>
                <b>{{ reward_description }}</b><br/><br/>
                {% if customer_street is defined %}
                    <b>{{ customer_street }}</b><br/><br/>
                {% endif %}
                {% if customer_address1 is defined %}
                <b>{{ customer_address1 }}</b><br/><br/>
                {% endif %}
                {% if customer_address2 is defined %}
                <b>{{ customer_address2 }}</b><br/><br/>
                {% endif %}
                {% if customer_city is defined %}
                <b>{{ customer_city }}</b><br/><br/>
                {% endif %}
                {% if customer_postal is defined %}
                <b>{{ customer_postal }}</b><br/><br/>
                {% endif %}
                {% if customer_state is defined %}
                    <b>{{ customer_state }}</b><br/><br/>
                {% endif %}
                {% if customer_country is defined %}
                    <b>{{ customer_country }}</b><br/><br/>
                {% endif %}
            </td>
        </tr>
    </table>

    <table cellspacing="0" cellpadding="0" border="0" align="center" width="100%" style="margin: auto;"
           class="email-container">
        <tr>
            <td style="padding: 40px 10px;width: 100%;font-size: 12px; font-family: sans-serif; mso-height-rule: exactly; line-height:18px; text-align: center; color: #888888;">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
                Suspendisse fermentum laoreet ornare.<br><br>

                Nunc sagittis scelerisque tempus. Nunc vitae orci quis metus<br>
                tincidunt venenatis id et quam.<br>
                <br><br>
            </td>
        </tr>
    </table>

</div>
</body>
</html>
', 'open@oloy.com', 'open@oloy.com', NULL, '2021-09-14 12:20:03');

-- ----------------------------
-- Table structure for ol__language
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__language";
CREATE TABLE "public"."ol__language" (
  "language_id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "translations" text COLLATE "pg_catalog"."default" NOT NULL,
  "position" int4 DEFAULT 0,
  "is_default" bool NOT NULL DEFAULT false,
  "updated_at" timestamp(0) NOT NULL DEFAULT now()
)
;
COMMENT ON COLUMN "public"."ol__language"."language_id" IS '(DC2Type:language_id)';
COMMENT ON COLUMN "public"."ol__language"."translations" IS '(DC2Type:json_array)';

-- ----------------------------
-- Records of ol__language
-- ----------------------------
INSERT INTO "public"."ol__language" VALUES ('5d5b1693-9d60-4d17-941d-3389ed6f55c5', 'English', 'en', '{"admin":{"change_password":{"current":"Current password","do_not_match":"Passwords do not match","new_first":"New password","new_second":"Repeat new password"},"dashboard":{"daily_registrations":"New members","heading":"Dashboard","orders":"Orders","registrations_label":"New members","spending":"Spending","total_customers_registered":"Customers","total_points_spent":"Points spent"},"data":{"basic":"Basic information","change_password":"Change password","nav":"Edit your account"},"email":"E-mail","emails":{"actions":"Actions","content":"Content","edit":"Edit","edit_heading":"Edit email","heading":"Emails","key":"Key","list":"Emails list","preview":"Preview","prompt":"","sender_email":"Sender email","sender_name":"Sender name","receiver_email":"Receiver email","subject":"Subject","updated_at":"Updated at","variables":"Variables"},"first_name":"First name","heading":"Dashboard","last_name":"Last name","logs":{"audit_log_id":"Audit log ID","choose_dates":"Choose date range","created_at":"Created at","entity_id":"Entity ID","entity_type":"Entity type","event_type":"Event type","export_to_csv":"Export to CSV","from":"From","heading":"Logs","list":"Emails list","search_by_date":"Search from time period:","to":"To","username":"Username"},"phone":"Phone","translations":{"actions":"Actions","add":"Create new translations","add_heading":"New translations","content":"Content","content_error":"JSON not valid","edit_heading":"Edit","heading":"Translations","list":"Translations list","name":"Name","name_prompt":"","updated_at":"Updated at","code":"Code (locale)","code_prompt":"","order":"Order","order_prompt":"","default":"Default","default_prompt":"","delete_confirmation":"Do you want to remove this Translation?","delete_confirmation_description":"This translation will be removed permanently"}},"admin_edit":{"heading":"Admin profile"},"Bad credentials":"Bad credentials","campaign":{"choose":"Upload","add_another":"Add another","add_photo":"Add photo","photos":"Photos","export_title":"Export","download_report":"Download report","export_csv":"Export to CSV","actions":"Actions","active":"Active","active_from":"Active from","active_from_prompt":"","active_prompt":"","active_to":"Active to","active_to_prompt":"","activity":"Activity","activity_statuses":{"active":"Active","all":"All","inactive":"Inactive"},"status":"Status","coupon_statuses":{"inactive":"Inactive","active":"Active","expired":"Expired","cancelled":"Cancelled"},"add":"Add reward campaign","add_heading":"Add reward campaign","add_label":"Add label","all_time":"All time","all_time_active":"All time active","all_time_active_prompt":"Reward campaign is not limited by time","all_time_visible":"All time visible","all_time_visible_prompt":"Reward campaign is always visible to customers","basic_info":"Campaign details","buy_campaign_manually_modal":"Buy {{name}} campaign for client","categories":"Categories","categories_prompt":"","category":{"heading":"Campaign categories","edit_heading":"Edit","add_heading":"Add campaign category","list":"Campaign categories list","name":"Name","name_prompt":"","sort_order":"Sort order","sort_order_prompt":"","active":"Active","active_prompt":"","add":"Add campaign category","basic_info":"Basic information","basic_info_details":"Basic information details"},"campaign_type":{"all":"All"},"cashback":"Cashback","connect_type":{"heading":"Connect type","none":"None","qrcode_earning_rule":"QRCode earning rule","geolocation_earning_rule":"Geolocation earning rule"},"connect_type_prompt":"","conditions_description":"Condition description","conditions_description_prompt":"","cost_in_points":"Cost in points","cost_in_points_prompt":"","coupon":"Coupon","coupon_used":"Use of coupons count","coupons":"Coupon codes","coupons_count":"Coupons count ","coupons_info":"Coupons","coupons_prompt":"","coupons_upload":"Upload coupons","coupons_upload_prompt":"","current_points_amount":"Customer active points amount","custom_campaign_code":"Custom campaign","customer_email":"Customer e-mail","customer_email_or_phone":"E-mail or phone","customer_email_or_phone_prompt":"Find customer by e-mail or phone","customer_lastname":"Customer''s surname","customer_name":"Customer''s first name","customer_phone":"Phone","customers":"Customers","days_inactive":"Days inactive","days_inactive_prompt":"Days until code will be active. Set zero for immediately active.","days_valid":"Days valid","days_valid_prompt":"Days until code will expire. Set zero for never expire","date_from":"Date from","date_to":"Date to","delivered":"Unused\/used","delivery_statuses":{"all":"All","ordered":"Ordered","canceled":"Canceled","shipped":"Shipped","delivered":"Delivered"},"delivery_status":"Delivery status","details_heading":"Campaign details","discount_code":"Discount code","earning_rule":"Earning rule","earning_rule_prompt":"","earning_rule_points_amount":"Earning rule points amount","edit":"Edit reward campaign","edit_heading":"Edit reward campaign","event_code":"Invitation for the event","featured":"Featured","featured_prompt":"","public":"Public","public_prompt":"","free_delivery_code":"Free delivery","gift_code":"Gift","heading":"Reward campaigns","inactive":"Inactive","key":"Key","label":"Label","label_key_prompt":"","label_value_prompt":"","labels":"Labels","levels":"Levels","levels_prompt":"","limit":"Limit","limit_info":"Limit","limit_per_user":"Limit per customer","limit_per_user_prompt":"","limit_prompt":"","list":"Reward campaign list","more_information_link":"More information link","more_information_link_prompt":"","name":"Name","name_prompt":"","no_data":"No data to display","percentage_discount_code":"Percentage discount code","photo":"Campaign photo","point_value":"Point value","point_value_prompt":"Each point will be exchanged for provided value (in current currency)","purchase_at":"Purchased at","push_notification_text":"Push notification text","push_notification_text_prompt":"Push message sent to a customer on this campaign becoming available to them","redeemed_heading":"Redeemed rewards","redeemed_list":"Redeemed rewards list","reward":"Campaign type","reward_name":"Reward","reward_redeem_date":"Redeem date and time","usage_date":"Usage date and time","reward_type":"Type","reward_value":"Reward value","reward_value_description":"","reward_value_prompt":"Value of reward","segments":"Segments","segments_prompt":"","short_description":"Short description","short_description_prompt":"","show_customers":"Show customers","singleCoupon":"Single Coupon","singleCoupon_prompt":"","target_type":"Target type","target_type_prompt":"","tax":"Tax","tax_price_value":"Tax value","tax_price_value_prompt":"Value of tax for reward","tax_prompt":"Percentage Value of tax for reward","transaction_document_number":"Transaction document number","transaction_document_number_prompt":"Find transaction by document number","transaction_percentage_value":"Transaction percentage value","transaction_percentage_value_prompt":"Percentage value of transaction in coupons","fulfillment_tracking":"Fulfillment tracking process","fulfillment_tracking_prompt":"","type":"Campaign type","type_info":"Campaign type","type_prompt":"","unlimited":"Use of the coupon code is not limited","unlimited_prompt":"Customers could use coupon codes without limits","usage_instruction":"How to use coupons?","usage_instruction_prompt":"","usage_types.both":"Both","usage_types.false":"Unused","usage_types.true":"Used","used_by_user":"Used by customers","users_in_campaign":"Users in campaign ","without_spending_points":"Without spending points ","without_spending_points_prompt":"Users points will not be used ","quantity":"Quantity","quantity_prompt":"You can buy more coupons at once","value":"Value","value code":"Value code","value_code":"Value code","visibility":"Visibility","visible_from":"Visible From","visible_from_prompt":"","visible_to":"Visible To","visible_to_prompt":"","coupon_active_since":"Coupon active since","coupon_active_to":"Coupon active to","coupon_forever_active":"forever","brand_description":"Brand description","brand_description_prompt":"","brand_icon":"Brand icon","brand_info":"Brand info","brand_name":"Brand name","brand_name_prompt":"","campaign_shipping_address":{"details":"Shipping details","street":"Street name","house_number":"House number","building_number":"Building number","city":"City","postal_code":"Postal code","country":"Country","voivodeship":"Voivodeship"}},"client_cockpit":{"register":{"form":{"login":{"prefix":"or ","link":"sign in","suffix":" to your account"}}},"global":{"errors":{"this_field_is_required":"This field is required","this_checkbox_is_required":"This checkbox is required","invalid_jwt_token":"Error! Invalid token","not_found":"Error! No data was found"}},"login":{"headline":"Sell products, earn points and redeem rewards","subtitle":"Loyalty program for partners and resellers","form":{"label":{"email":"E-mail","password":"Password","button":"Log in","reset_password":"Forgot password?"},"register":{"prefix":"or ","link":"register","suffix":" a new account"},"validation":{"api":{"bad_credentials":"Incorrect e-mail or password.","login_success":"Login success!"},"email":{"not_valid":"Please provide valid e-mail address."},"password":{"not_valid":"Please provide at least 8 characters password."}}}},"logout":{"validation":{"api":{"logged_out":"You were logged out"}}},"reset_password":{"form":{"label":{"button":"Reset password","back_to_login_prefix":"Or back to ","back_to_login_text":"login page","back_to_login_suffix":""},"validation":{"wrong_data":"Wrong e-mail, or user not exists in database","email_with_reset_link_sent":"Password reset link was sent on your email address. Please check your email inbox."}}},"change_password":{"form":{"label":{"button":"Change password"}},"validation":{"invalid_reset_link":"Reset link is not valid. Try again.","password_has_been_changed":"Success! Password has been changed.","password":{"this_value_should_not_be_blank":"Password field cannot be empty.","your_password_must_be_at_least_8_characters_long":"Your password must be at least 8 characters long.","your_password_must_include_both_upper_and_lower_case_letters":"Your password must include both upper and lower case letters.","your_password_must_include_at_least_one_number":"Your password must include at least one number.","your_password_must_contain_at_least_one_special_character":"Your password must contain at least one special character."}}},"homepage":{"terms_popup":{"button_text":"Go to loyalty program","title":"Please accept terms and conditions of the loyalty program","description":"If you want to join our loyalty program you must accept our terms and conditions. Your data will be used only for the purpose of the loyalty program."},"headline":"Sell products, earn points and redeem rewards","subtitle":"Loyalty program for partners and resellers","earning_points_rules":{"headline":"How to earn points?","button_text":"Earn points"},"rewards":{"headline":"Popular rewards","button_text":"Redeem rewards"}},"earning_points_rules":{"list":{"see_more_link_text":"more earning points rules","see_more_link_title":"See more earning points rules","see_more_prefix":"See ","see_more_suffix":" ","points":{"points":{"prefix":"1 ","suffix":" pt"},"event":{"prefix":"","suffix":" points"},"custom_event":{"prefix":"","suffix":" points"},"product_purchase":{"prefix":"","suffix":" points"},"multiply_for_product":{"prefix":"","suffix":" times more points"},"referral":{"prefix":"","suffix":" points"}}},"single":{"page":{"referral":{"send_invite_email":"Send an invitation e-mail","invitation_email_sent":"An invitation e-mail has been sent","invitation_form_contains_errors":"Form contains errors","send_invite":"Send invite","email_address":"E-mail address"},"back_to_earning_points_rules_list":"Back to earning points rules list","how_to_earn_points":"How to earn points?","points":{"points":{"prefix":"1 ","suffix":" pts"},"event":{"prefix":"","suffix":" points"},"custom_event":{"prefix":"","suffix":" points"},"product_purchase":{"prefix":"","suffix":" points"},"multiply_for_product":{"prefix":"","suffix":" times more points"},"referral":{"prefix":"","suffix":" points"}}}}},"rewards":{"page":{"title":"Get rewards","available_rewards":"Available rewards","redeemed_rewards":"Redeemed rewards","show_more_rewards":"Show more rewards"},"list":{"see_more_link_text":"more rewards","see_more_link_title":"See more rewards","see_more_prefix":"See ","see_more_suffix":" "},"single":{"type":{"value_code":"Value code","discount_code":"Discount code","value code":"Value code","free_delivery_code":"Free delivery code","gift_code":"Gift code","event_code":"Event code","cashback":"Cashback"},"page":{"days":"d","hours":"h","minutes":"m","seconds":"s","reward_will_be_available_for":"Reward will be available for: ","back_to_rewards_list":"Back to rewards list","reward_availability_prefix":"Reward available since ","reward_availability_suffix":" points","get_reward_button":"Get reward","reward_description":"Reward description","see_full_reward_description":"See full reward description","reward_type":"Reward type: ","how_to_get_reward":"How to get reward?","reward_confirmation_question_prefix":"Would you like to spend points (","reward_confirmation_question_suffix":") and redeem reward \u201c","reward_confirmation_question_sign":"\u201d?","reward_confirmation_button":"Yes, redeem reward","reward_count":"Reward count: ","reward_limit_prefix":"Limit of this reward is ","reward_limit_suffix":" for one user.","reward_available_from":"Reward available from: ","reward_available_to":"Reward available to: ","popular_rewards":"Popular rewards","points":" points","not_enough_points_prefix":"You need additional ","not_enough_points_suffix":" points to get this reward."}},"redeemed":{"page":{"title":"Get rewards","available_rewards":"Available rewards","redeemed_rewards":"Redeemed rewards","show_more_rewards":"Show more rewards"},"single":{"page":{"reward_bought":"Reward bought","reward_code":"Reward code","reward_redeemed_notification":"Reward was successfully redeemed"}}}},"header":{"get_rewards":"Get Rewards","earn_points":"Earn points","level":"level","points":"points","logo_alt_text":"HP Partner Program","notification_text_prefix":"You can check ","notification_text":"new rewards","notification_text_suffix":" we preapared."},"footer":{"section":{"first":{"headline":"About","link":{"a":"About program","a_route":"http:\/\/pwacc-dev.herokuapp.com\/link-1","b":"How to achieve higher level?","b_route":"http:\/\/pwacc-dev.herokuapp.com\/link-1","c":"Terms of program","c_route":"http:\/\/pwacc-dev.herokuapp.com\/link-1","d":"","d_route":""}},"second":{"headline":"Points","link":{"a":"How to earn points","a_route":"http:\/\/pwacc-dev.herokuapp.com\/link-1","b":"My points","b_route":"http:\/\/pwacc-dev.herokuapp.com\/link-2","c":"","c_route":"","d":"","d_route":""}},"third":{"headline":"Rewards","link":{"a":"How to redeem rewards?","a_route":"http:\/\/pwacc-dev.herokuapp.com\/link-1","b":"How to unlock reward?","b_route":"http:\/\/pwacc-dev.herokuapp.com\/link-2","c":"My rewards","c_route":"http:\/\/pwacc-dev.herokuapp.com\/link-3","d":"","d_route":""}},"fourth":{"headline":"Help","link":{"a":"FAQ","a_route":"http:\/\/pwacc-dev.herokuapp.com\/link-1","b":"Contact us","b_route":"http:\/\/pwacc-dev.herokuapp.com\/link-2","c":"","c_route":"","d":"","d_route":""}}},"link":{"cookie_policy":"<a href=''https:\/\/test.web.cloud.openloyalty.io\/terms-conditions''>Terms and conditions<\/a>"},"copyright_text":"\u00a9 2018 Open Loyalty. All rights reserved."},"customer":{"navigation":{"my_profile":"My profile","my_level":"My level","my_transactions":"My transactions","my_points":"My points","my_rewards":"My rewards","logout":"Logout"},"loyalty":{"active_points":"Active points","used_points":"Used points","expired_points":"Expired points","locked_points":"Locked points","total_points":"Total earned points","total_points_since_last_level_recalculation":"Total points earned since last level recalculation","level_will_expire_in_days":"Level will expire in","level_will_expire_in_days_prompt":" days"},"table":{"date_and_time":"Date and time","transaction_number":"Transaction number","value":"Value","points_number":"Number of points","type":"Type","operation":"operation","sell":"Sell","return":"Return","name":"Name","count":"Count","sku":"Product SKU","category":"Category","brand_name":"Brand name","level":"Level","level_description":"Level description","available_from":"Available from"},"profile":{"general_information":"General information","address_information":"Address information","company_information":"Company details","terms_and_conditions":"Terms and conditions","edit_data":"Edit data","first_name":"First name","last_name":"Last name","male":"Male","female":"Female","not_disclosed":"Not disclosed","email":"E-mail","date_of_birth":"Date of birth","password":"Password","confirm_password":"Confirm password","phone_number":"Phone number","street":"Street name","house_number":"House number","building_number":"Building number","city":"City","postal_code":"Postal code","country":"Country","voivodeship":"Voivodeship","company_name":"Company name","company_tax_id":"Company Tax ID","agreement":{"first":"I accept terms and conditions.","second":"I accept my participation in newsletter service.","third":"I accept all marketing agreements."},"validation":{"api":{"profile_updated":"Your profile was successfully edited"}}},"pts":"pts","my_account":"My account","client_name":"Client: ","phone_number":"Phone number: ","card_number":"Card number: ","email":"E-mail: ","buy_date":"Buy date: ","points_count":"Points count: ","assigned_level":"Current level","delete_confirmation_description":"This customer will be deactivated and there will be no possibility to activate him again","transactions_amount":"Transactions value","transactions_amount_to_next_level":"Transactions value for the next level","transactions_amount_to_next_level_without_delivery_costs":"Transactions value (without delivery cost) for the next level","next_level":"Next level","rewards_page":"Rewards page","transactions_page":"Transactions page","transaction":"Transaction ","no_transaction_placeholder":"You don''t have any transaction yet.","no_points_operation_placeholder":"You don''t have any points yet.","no_rewards_redeemed_placeholder":"You don''t have any rewards redeemed yet.","no_rewards_available_placeholder":"You don''t have any rewards available.","no_earning_points_rules_available_placeholder":"You don''t have any earning points rules available.","my_transactions":"My transactions","profile_page":"My profile","register_new_account":"Register new account","add_company_details":"Add company details","add_your_address":"Add your address","register_button":"Register","points_from_rule":"Points from rule ","points_redeemed_for_reward":"Points redeemed for reward "},"form":{"validation":{"your_password_must_be_at_least_8_characters_long":"Your password must be at least 8 characters long.","your_password_must_include_at_least_one_letter":"Your password must include at least one letter.","your_password_must_include_at_least_one_number":"Your password must include at least one number.","your_password_must_contain_at_least_one_special_character":"Your password must contain at least one special character.","your_password_must_include_both_upper_and_lower_case_letters.":"Your password must include both upper and lower case letters.","customer_with_such_email_already_exists":"Customer with such email already exists","please_fill_form":"Please fill in all the required fields","form_contains_errors":"Form contains errors"}}},"role":{"heading":"Roles","add":"Add role","list":"Roles list","actions":"Actions","edit_heading":"Role edit","basic_info":"Basic Information","name":"Name","name_prompt":"","permissions":"Permissions","access":"Access","access_prompt":"","resource":"Resource","resource_prompt":"","add_permission":"Add permission","add_heading":"Add role","delete_confirmation":"Do you want to delete selected role?","delete_confirmation_description":"This operation can not be undone."},"customer":{"actions":"Actions","activate_confirmation":"Customer activation","activate_confirmation_description":"Do you want to activate customer?","add":"Add customer","add_address":"Address","add_company":"Company","add_heading":"Add customer","add_label":"Add label","add_points_transfer":"Add new points transfer","address":"Address","address_address1_prompt":"","address_address2_prompt":"","address_city_prompt":"","address_country_prompt":"","address_province_prompt":"","address_street_prompt":"","agreement1":"Legal agreement","agreement1_prompt":"This agreement is required","agreement2":"Marketing agreement","agreement2_prompt":"","agreement3":"Data processing agreement","agreement3_prompt":"","agreements":"Agreements","all_campaigns":"All reward campaigns","all_profile_details":"Show all profile details","all_rewards":"All rewards","all_transactions":"All transactions","all_transfers":"All points transfer","assign_level":"Change level","assigned_level":"Current level","assigned_pos":"Assigned POS","assigned_seller":"Assigned Merchant","average_transaction_amount":"AVO","basic_info":"Basic Information","birth_date":"Birth date","birth_date_prompt":"","building_name":"Building name","campaign":{"active_points":"Redeem new rewards, you can use <b>{{points}}<\/b> active points","all_time_Active":"All time active","bought_list":"My redeemed rewards","coupon_used":"This coupon has been used","date_from":"Date from","date_to":"Date to","export_csv":"Export CSV","export_title":"Export CSV report","footer":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","list":"My rewards","no_bought_rewards":"There are no redeemed rewards","no_desc":"Reward description is not set","no_name":"No name of reward campaign","no_rewards":"There are no available rewards","not_enough_points":"Not enough points","points":"Points","redeem":"Redeem reward","reward_code":"CODE OF REWARD","reward_congratulations":"Congratulations!","reward_footer":"Instruction for reward, lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","reward_ready":"Your reward is ready to receive.","see_bought":"See rewards you have already redeemed","singleCoupon":"Single coupon","singleCoupon_prompt":"To redeem customers will be able to use the same coupon","used_confirmation":"Confirm reward usage","used_confirmation_description":"Please confirm reward usage","will_be_active_all_time":"This campaign will be active all time","will_be_active_dates":"This reward campaign will be active from {{from}} to {{to}}","will_be_active_soon":"Not active yet"},"campaigns_heading":"Reward Campaigns","campaigns_list":"All Reward Campaigns that user could use ","change_level":"Change level","change_password":{"current":"Current password","do_not_match":"Passwords do not match","new_first":"New password","new_second":"Repeat new password"},"city":"City","company_data":"Company Data","company_name":"Company name","company_name_prompt":"","company_nip_prompt":"","country":"Country","created_at":"Created at","current_level":"Current level","days_from_last_transaction":"Days from last order","delete_confirmation":"Deactivate this customer?","delete_confirmation_description":"This customer will be deactivated and there will be no possibility to activate him again","edit":"Edit","edit_heading":"Edit customer","email":"E-mail","email_prompt":"","empty_campaigns":"No data to display","empty_rewards":"No data to display","empty_transactions":"No data to display","empty_transfers":"No data to display","female":"Female","not_disclosed":"Not disclosed","first_name_prompt":"","flat_name":"Flat\/Unit name","gender":"Gender","gender_prompt":"","heading":"Customers","import":"Import","import_title":"Import customers","import_xml_field":"XML file","inactive":"Inactive","key":"Key","label":"Label","label_key_prompt":"","label_value_prompt":"","labels":"Labels","last_name_prompt":"","lc_number":"Loyalty card number","list":"List of customers","loyalty":{"active_points":"Active points","expired_points":"Expired points","title":"Loyalty","used_points":"Used points","locked_points":"Locked points","total_points":"Total earned points","total_points_since_last_level_recalculation":"Total points earned since last level recalculation","level_will_expire_in_days":"Level will expire in","level_will_expire_in_days_prompt":" days"},"loyalty_card_number_prompt":"","male":"Male","name":"First name","nip":"Tax Identification Number","no_level":"Customer is not assigned to any level","no_pos":"Customer is not assigned to any POS","no_segments":"Customer not assigned to any segment","password":"Password","phone":"Phone","phone_prompt":"","postal":"Postal code","postal_prompt":"","profile_details":"Profile details","profitability":{"avo":"AVO","clv":"CLV","orders":"Orders","title":"Profitability"},"referred":{"heading":"Referred customers list","list":"Referred customers","recipient_email":"Recipient Email","recipient_phone":"Recipient Phone","recipient_id":"Recipient Id","recipient_name":"Recipient Name","referred_completed":"Number of completed references","referred_registered":"Number of conversions","referred_total":"Number of referrals","referrer_id":"Referrer Id","referrer_name":"Referrer Name","status":"Status","statuses":{"all":"All","invited":"Invited","made_purchase":"Made purchase","registered":"Registered"}},"remove_manually_level_title":"Remove level assigned manually","resend_activation_code":"Resend activation code","rewards_heading":"Redeemed rewards","rewards_list":"Rewards redeemed by customer ","segments":"Segments","show_address_prompt":"","show_company_prompt":"","single_data":"Customer\"s data","state":"State\/Province","street":"Street name","surname":"Last name","tabs":{"campaigns":"Available rewards","rewards":"Redeemed rewards","transactions":"Transactions","transfers":"Points transfers"},"transactions_amount":"CLV","transactions_count":"Orders","transactions_heading":"Transactions","transactions_list":"All Transactions linked with the customer ","transfers_heading":"Points transfers for customer","transfers_list":"List of points transfers","value":"Value"},"customer with such loyalty card number already exists":"Customer with such loyalty card number already exists","customer with such phone already exists":"Customer with such phone already exists","customer_campaign":{"active_points":"Redeem new rewards, you can use <b>{{points}}<\/b> active points","all_time_Active":"All time active","bought_list":"My redeemed rewards","coupon_used":"This coupon has been used","footer":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","list":"My rewards","will_be_active_since":"Coupon became active on  {{ date }}","will_be_active_till":"You can use this coupon until {{ date }}","more_information":{"button":"Click here for more info"},"no_bought_rewards":"There are no redeemed rewards","no_desc":"Reward description is not set","no_name":"No name of reward campaign","no_rewards":"There are no available rewards","not_enough_points":"Not enough points","points":"Points","redeem":"Redeem reward","reward_code":"CODE OF REWARD","reward_congratulations":"Congratulations!","reward_ended":"Probably this campaign ended","reward_footer":"Instruction for reward, lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","reward_not_available":"This reward is not available","reward_ready":"Your reward is ready to receive.","see_bought":"See rewards you have already redeemed","singleCoupon_prompt":"To redeem customers will be able to use the same coupon","used_confirmation":"Confirm reward usage","used_confirmation_description":"Please confirm reward usage","will_be_active_all_time":"This campaign will be active all time","will_be_active_dates":"This reward campaign will be active from {{from}} to {{to}}","will_be_active_soon":"Not active yet"},"customer_dashboard":{"benefits_title":"Benefits","check_transactions":{"button_name":"SEE TRANSACTIONS","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Check your transactions"},"connect_with_online_store":{"button_name":"CONNECT","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Match witch eCommerce"},"current_level":"You current level is <b>{{levelName}}<\/b>, your <br \/> reward <b>-{{level}}<\/b> discount.","customize_profile":{"button_name":"EDIT PROFILE","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Customize profile"},"earn_points":{"button_name":"GET MORE POINTS","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Earn points"},"earning_rules":"Learn <a href=\"#\" ui-sref=\"customer.panel.earning_rules\">how to earn new points<\/a>.","earning_rules_title":"Earn points","faq":{"button_name":"read FAQ","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"FAQ"},"get_rewards":{"button_name":"REDEEME REWARDS","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Get rewards"},"invite":{"button_name":"Invite","input_placeholder":"Email","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Invite friend"},"my_benefits":{"button_name":"Check level","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"My benefits"},"points_to_next_level":"You need <b>{{pointsToNextLevel}}<\/b> points to the next level, <a href=\"#\" ui-sref=\"customer.static({''pageName'':''benefits''})\">see details<\/a>","rewards":"Redeem new rewards, you can use <br \/><b>{{points}}<\/b> active points. <a href=\"#\" ui-sref=\"customer.panel.campaign-list\">Get rewards<\/a> or <a href=\"#\" ui-sref=\"customer.panel.bought-campaign-list\">See rewards<\/a> you have already redeemed.","rewards_title":"Get rewards","see_all_benefits":"<a href=\"#\" ui-sref=\"customer.static({''pageName'':''benefits''})\">See all benefits<\/a> from your level","title":"Welcome ","transaction_amount_to_next_level":"You need <b>{{transactionsAmountToNextLevel}}<\/b> to the next level.","transaction_amount_without_delivery_costs_to_next_level":"You need <b>{{transactionsAmountToNextLevelWithoutDeliveryCosts}}<\/b> to the next level.","visit_offline_stores":{"button_name":"offline stores","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Visit offline stores"}},"customer_earning_rules":{"custom_event":"Custom event","points":"Each {{pointsValue}}{{currency}} = 1 point","product_purchase":"Additional points for purchase of {{sku}}","table":{"description":"Description","end_at":"End at","name":"How?","points":"Points","start_at":"Start at","type":"Type"},"title":"How to earn points?"},"customer_global":{"account":"Account","active":"Active","admin_footer":"2018 Open Loyalty","all_time_active":"Is all time active","and":"AND","cancel":"Cancel","change":"Change","configuration":"Configuration","confirm":"Yes","edit":"Edit","emails":"Transaction emails","false":"False","home":"Home","inactive":"Inactive","level":"Level","loading":"loading","logout":"Logout","menu":"Menu","no":"No","no_rows_to_display":"There is no rows to display","not_set":"Not set","ok":"OK","or":"OR","owner_data":{"text":"Lorem ipsum dolor sit amet"},"save":"Save","search":"Search","segment":"Segment","settings":"Settings","show":"Show","start_typing_an_email":"enter email to search","static_content":{"benefits":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"My benefits"},"connect_online_stores":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Match witch eCommerce"},"contact":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Contact"},"faq":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"FAQ"},"how_to_earn":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"How to earn points?"},"match_with_ecommerce":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Match with eCommerce"},"rules":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Terms and conditions"},"visit_offline":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Visit offline stores"}},"true":"True","unlimited":"Unlimited","users":"Users","yes":"Yes"},"customer_nav":{"copyrights":"","earning_points":"My points","home":"Home","logo1":"Loyalty","logo2":"Program","match_with_ecommerce":"Match with eCommerce","my_profile":"My profile","my_rewards":"My rewards","my_transactions":"My transactions"},"customer_profile":{"activate_confirmation":"Customer activation","activate_confirmation_description":"Do you want to activate customer?","add":"Add customer","add_address":"Address","add_company":"Company","add_heading":"Add customer","address_address1_prompt":"","address_address2_prompt":"","address_city_prompt":"","address_country_prompt":"","address_province_prompt":"","address_street_prompt":"","agreement1":"Legal agreement","agreement1_prompt":"This agreement is required","agreement2":"Marketing agreement","agreement2_prompt":"","agreement3":"Data processing agreement","agreement3_prompt":"","agreements":"Agreements","basic_info":"Basic Information","birth_date":"Birth date","birth_date_prompt":"","building_name":"Building","change_password":{"current":"Current password","do_not_match":"Passwords do not match","new_first":"New password","new_second":"Repeat new password"},"city":"City","company_name":"Company","company_name_prompt":"","company_nip_prompt":"","country":"Country","created_at":"Created at","data":{"basic":"Basic information","change_password":"Change password"},"delete_confirmation":"Deactivate this customer?","delete_confirmation_description":"This customer will be deactivated and there will be no possibility to activate him again","edit":"Edit","edit_heading":"Edit customer","email":"E-mail","email_prompt":"","female":"Female","not_disclosed":"Not disclosed","first_name_prompt":"","flat_name":"Flat","gender":"Gender","gender_prompt":"","heading":"Customers","inactive":"Inactive","last_name_prompt":"","lc_number":"Loyalty Card Number","list":"List of customers","loyalty_card_number_prompt":"","male":"Male","name":"First name","nip":"Tax Identification Number","password":"Password","phone":"Phone","phone_prompt":"","postal":"Postal","postal_prompt":"","profile_details":"Details","show_address_prompt":"","show_company_prompt":"","state":"State","street":"Street","surname":"Last name","transfers_heading":"Points transfers for customer","transfers_list":"List of points transfers"},"customer_security":{"back_to_login":"Back to login page","change_password":"Change password","login":{"copyrights":"2018 Open Loyalty","credentials":"Bad credentials","forgot":"Forgot password?","get_terms_conditions":"Get terms & conditions","heading":"Login to your account","log_in":"Sign in","password":"Password","remember_me":"Keep me logged in","username":"Login"},"new_password":"New password","registration":{"add_address":"Add address data","add_company":"Add company data","address":"Address","agreement1":"Legal agreement","agreement2":"Marketing agreement","agreement3":"Data processing agreement","agreements":"Agreements","basic_info":"Basic Information","birth_date":"Birth date","building_name":"Building name","check":{"first":"Achieve levels!","second":"Earn points!","third":"Redeem rewards!"},"city":"City","company_data":"Company Data","company_name":"Company name","country":"Country","create_account":"Create account","description":"You can create account in loyalty program here.","email":"E-mail","female":"Female","not_disclosed":"Not disclosed","flat_name":"Flat\/Unit name","gender":"Gender","heading":"Create account","lc_number":"Loyalty Card Number","male":"Male","name":"First name","nip":"Tax Identification Number","password":"Password","password_repeat":"Repeat password","phone":"Phone","postal":"Postal code","state":"State\/Province","street":"Street name","surname":"Last name"},"registration_activation":{"activate_or_resend_code":"Activate an account or resend a code","code":"Activation code","phone":"Phone number","resend_code":"Resend code","title":"Account activation"},"request_description":"Enter your login, we will send you recovery password","request_heading":"Forgot password?","reset_description":"Enter your new password","reset_heading":"Password recovery","send_request":"Recover password","username":"Username"},"customer_status":{"active_points":"Active points","current_discount":"Current discount","expired_points":"Expired points","locked_points":"Locked points","total_points":"Total earned points","total_points_since_last_level_recalculation":"Total points earned since last level recalculation","level_will_expire_in_days_prompt":" days","level_will_expire_in_days":"Level will expire in","my_profile":"My profile","my_profile_edit":"Edit profile","next_level_discount":"Next level discount","points_to_next_level":"You need {{ pointsToNextLevel }} more points to get to the next level","points_to_next_level2":"Points to next level","title":"My account","transactions_amount":"Transactions value","transactions_amount_to_next_level":"Transactions value for the next level","transactions_amount_to_next_level_without_delivery_costs":"Transactions value (without delivery cost) for the next level","used_points":"Used points"},"customer_transaction":{"actions":"Actions","amount":"Amount","building_name":"Building name","category":"Category","city":"City","country":"Country","customer_email":"E-mail","customer_email_prompt":"Find customer by e-mail","customer_id":"Customer ID","customer_id_prompt":"Put customer unique ID","customer_loyalty_card_number":"Loyalty card number","customer_name":"Customer name","customer_phone_number":"Phone number","details":"Transaction details","document_number":"Document number","document_type":"Document type","document_types":{"both":"Both","return":"Return","sell":"Sell"},"email":"E-mail","empty_transactions":"There is no transactions to display","gross":"Gross value","heading":"Transactions","id":"Transaction ID","item_details":"Item details","labels":"Labels","link":"Match with customer","link_modal":"Match customer with transaction","list":"Transactions list","loyaltyCardNumber":"Loyalty card number","maker":"Brand","name":"Name","phone":"Phone","points_earned":"Points earned","pos_name":"POS name","postal_code":"Postal code","purchase_date":"Purchase date","purchase_place":"POS","quantity":"Quantity","revised_document":"Revised document","sku":"SKU","state":"State","street":"Street","sum":"SUM","transaction_document_number":"Document number","transaction_document_number_prompt":"Find transaction by document number","transaction_id":"Transaction id","unit_name":"Flat\/Unit name"},"customer_transfer":{"comment":"Comment","created_at":"Created at","empty_transfers":"No data to display","expire_at":"Will expire at","heading":"Earn points","list":"Points transfers list","state":"State","type":"Type","value":"Value","locked_until":"Locked till"},"dashboard":{"heading":"Dashboard"},"earning_rule":{"actions":"Actions","active":"Active","active_prompt":"","add":"Add earning rule","add_earning_rule":"Add earning rule","add_excluded_label":"Add excluded label","add_included_label":"Add label","add_excluded_sku":"Add SKU","add_heading":"Add earning rule","add_label_multiplier":"Add label multiplier","all_time_active":"All time active","all_time_active_prompt":"","basic_info":"Basic Information","code":"Code","code_prompt":"","custom_event_name":"Custom Event name","custom_event_name_prompt":"","custom_event_usage":"Usage","description":"Description","description_prompt":"","details":"Earning rule details","edit":"Edit earning rule","edit_heading":"Edit earning rules","end_at":"End at","end_at_prompt":"","event_name":"Event name","event_name_prompt":"","exclude_delivery_cost":"Exclude delivery cost","excluded_delivery_cost_prompt":"","excluded_labels":"Excluded labels","included_labels":"Has labels","excluded_skus":"Excluded SKUs","excluded_skus_prompt":"","labels_inclusion_type":"Labels inclusion type","labels_inclusion_type_none":"none","labels_inclusion_type_exclude":"exclude","labels_inclusion_type_include":"include","labels_inclusion_type_prompt":"","heading":"Earning rules","key":"Key","key_prompt":"","label_multiplier_prompt":"","label_multipliers":"Label multipliers","label_value_prompt":"","last_executed_rule":"Is last executed rule","last_executed_rule_prompt":"If selected all other earning rules (resolved after transaction) will be skipped","levels":"Levels","levels_prompt":"","limit":{"1 day":"1 Day","1 month":"1 Month","1 week":"1 Week","active":"Usage limit active","active_prompt":"","limit":"Limit","limit_prompt":"","period":"Period","period_prompt":"","3 months":"3 months","6 months":"6 months","1 year":"1 year","forever":"Forever"},"limit_info":"Usage limit","limit_period":{"day":"day","month":"month","week":"week","3 months":"3 months","6 months":"6 months","1 year":"1 year","forever":"Forever"},"list":"Earning rules list","min_order_value":"Min order value","min_order_value_prompt":"Minimal order value required to earn points","multiplier":"Multiplier","multiplier_prompt":"","name":"Name","name_prompt":"","photo":"Earning rule photo","point_value":"Point value","point_value_prompt":"How many points customer can earn from 1 amount of currency","points_amount":"Points","points_amount_prompt":"","pos":"POS","pos_prompt":"","promoted_events":{"oloy.account.created":"Account created","oloy.customer.logged_in":"Customer logged in","oloy.customer.newsletter_subscription":"Newsletter subscription","oloy.customer.referral":"Customer referral","oloy.transaction.customer_first_transaction":"First purchase"},"referral_events":{"every_purchase":"Every purchase","first_purchase":"First purchase","register":"Register"},"referral_types":{"both":"both","referred":"referred","referrer":"referrer"},"reward":"Reward","reward_campaign":"Reward campaign","reward_campaign_prompt":"","reward_prompt":"","reward_type":"Reward","segments":"Segments","segments_prompt":"","select_currency":"Select currency","sku":"SKU","SKU":"SKU","sku_prompt":"","start_at":"Start at","start_at_prompt":"","target_type":"Target type","target_type_prompt":"","type":"Type","type_details":"Type details","type_prompt":"","types":{"custom_event":"Custom event rule","event":"Event rule","instant_reward":"Instant reward","multiply_by_product_labels":"Multiply earned points by product labels","multiply_for_product":"Multiply earned points","points":"General spending rule","product_purchase":"Product purchase","referral":"Customer Referral","geolocation":"Geolocation","qrcode":"QRcode"},"value":"Value","visibility_and_activity":"Activity of rule","latitude":"Latitude","latitude_prompt":"","longitude":"Longitude","longitude_prompt":"","radius":"Radius","radius_prompt":"in kilometers from defined point"},"front_error":{"at_least_one":"Fill at least one field","not_blank":"This value should not be empty","not_blank_or_customerLoyaltyCardNumber":"You have to enter phone or loyalty card number","not_blank_or_customerPhoneNumber":"You have to enter phone or loyalty card number","not_blank_or_documentNumber":"You have to enter document number","not_equal_plainPassword":"Passwords are not equal","not_equal_plainPassword2":"Passwords are not equal"},"global":{"account":"Account","active":"Active","admin_footer":"2018 Open Loyalty","all_time_active":"Is all time active","and":"AND","cancel":"Cancel","change":"Change","roles":"ACL","configuration":"Configuration","confirm":"Yes","edit":"Edit","emails":"Emails","false":"False","home":"Home","import":"Import","inactive":"Inactive","level":"Level","loading":"loading","logout":"Logout","logs":"System logs","menu":"Menu","no":"No","no_rows_to_display":"There is no rows to display","not_set":"Not set","or":"OR","program_name":"Open Loyalty","remove":"Remove","save":"Save","search":"Search","segment":"Segment","settings":"Settings","show":"Show","start_typing_a_number":"enter transaction document number","start_typing_an_email":"enter email to search","start_typing_an_email_or_phone":"enter email or phone to search","translations":"Translations","translations_list":"Translations","true":"True","unlimited":"Unlimited","unlink":"Unlink","upload":"Upload","users":"Users","yes":"Yes"},"level":{"active":"Active","active_prompt":"","add":"Add level","add_heading":"Add level","add_special_reward":"Add special reward","assign_level":"Assign level","assign_pos":"Assign POS","assigned_manually":"Assigned manually","basic_info":"Basic Information","code":"Coupon","condition_value":"Condition value","condition_value_prompt":"","created_at":"Created at","description":"Description","description_prompt":"","edit":"Edit level","edit_heading":"Edit ","end_at":"End at","heading":"Levels","inactive":"Inactive","list":"Levels list","min_order":"Min order value","min_order_prompt":"","name":"Name","name_prompt":"","no_level":"There are no defined levels","photo":"Level photo","reward_code":"Reward code","reward_code_prompt":"","reward_details":"Reward details","reward_name":"Reward name","reward_name_prompt":"","reward_value":"Reward value","reward_value_prompt":"","select_level":"Select level","special_reward_details":"Special reward details","special_rewards":"Special rewards","specialreward_active_prompt":"","specialreward_code_prompt":"","specialreward_endat_prompt":"","specialreward_name_prompt":"","specialreward_startat_prompt":"","specialreward_value_prompt":"","start_at":"Start at","users":"Customers","users_in_level":"Customers in level","value":"Value"},"login":{"copyrights":"2018 Open Loyalty","credentials":"Bad credentials","forgot":"Forgot password?","heading":"Login to your account","log_in":"Sign in","password":"Password","remember_me":"Keep me logged in","username":"Login"},"nav":{"add_campaign":"Add reward campaign","add_customer":"Add customer","add_earning_rule":"Add earning rule","add_level":"Add level","add_pos":"Add POS","add_segment":"Add segment","add_seller":"Add merchant","all_campaigns":"All reward campaigns","all_customers":"All customers","all_earning_rules":"All earning rules","all_levels":"All levels","all_pos":"All POS","all_segments":"All segments","all_sellers":"All merchants","all_transactions":"All transactions","all_transfers":"All points transfers","campaigns":"Reward campaigns","customers":"Customers","dashboard":"Dashboard","earning_rules":"Earning rules","guide":"Guide","home":"Home","levels":"Levels","pos":"POS","redeemed_campaigns":"Redeemed rewards","referred_customer":"Referred customers","retention_matrix":"Retention matrix","segments":"Segments","sellers":"Merchants","support":"Support","transactions":"Transactions","transfers":"Points transfers","all_campaign_categories":"All campaign categories"},"Plik nie m\u00f3g\u0142 zosta\u0107 odnaleziony.":"File could not be found","pos":{"actions":"Actions","add":"Add POS","add_heading":"Add POS","address1_prompt":"","address2_prompt":"","basic_info":"Basic Information","building_name":"Building name","city":"City","city_prompt":"","country":"Country","country_prompt":"","description":"Description","description_prompt":"","edit":"Edit POS","edit_heading":"Edit POS","heading":"POS","identifier":"Identifier","identifier_prompt":"","lat":"Latitude","lat_prompt":"","list":"POS list","localization":"Localization","long":"Longitude","long_prompt":"","name":"Name","name_prompt":"","no_pos":"There are no defined POS","postal_code":"Postal code","postal_prompt":"","province_prompt":"","select_country":"Select country","select_pos":"Select POS","state":"State\/Province","street_name":"Street name","street_prompt":"","transactions_amount":"Transactions value","transactions_count":"Transactions count","unit_name":"Flat\/Unit name"},"registration":{"add_address":"Add address data","add_company":"Add company data","address":"Address","agreement1":"Legal agreement","agreement2":"Marketing agreement","agreement3":"Data processing agreement","agreements":"Agreements","basic_info":"Basic Information","birth_date":"Birth date","building_name":"Building name","check":{"first":"Achieve levels!","second":"Earn points!","third":"Redeem rewards!"},"city":"City","company_data":"Company Data","company_name":"Company name","country":"Country","create_account":"Create account","description":"You can create account in loyalty program here.","email":"E-mail","female":"Female","not_disclosed":"Not disclosed","flat_name":"Flat\/Unit name","gender":"Gender","heading":"Create account","lc_number":"Loyalty Card Number","male":"Male","name":"First name","nip":"Tax Identification Number","password":"Password","password_repeat":"Repeat password","phone":"Phone","postal":"Postal code","state":"State\/Province","street":"Street name","surname":"Last name"},"registration_activation":{"basic_info":"Account activation","code":"Activation code"},"security":{"back_to_login":"Back to login page","change_password":"Change password","new_password":"New password","request_description":"Enter your login, we will send you recovery password","request_heading":"Forgot password?","reset_description":"Enter your new password","reset_heading":"Password recovery","send_request":"RECOVER PASSWORD","username":"Username"},"segment":{"actions":"Actions","active":"Active","active_prompt":"","add":"Add segment","add_criterion":"Add OR condition","add_heading":"Add segment","add_identification_priority":"Add identification factor","add_segment_part":"Add AND condition","anniversary_type_days_prompt":"","anniversary_type_prompt":"","basic_info":"Basic Information","created_at":"Created at","days_prompt":"","delete_confirmation":"Do you want to delete selected segment?","delete_confirmation_description":"This operation can not be undone.","description":"Description","description_prompt":"","details_heading":"Campaign details","edit":"Edit segment","edit_heading":"Edit segment","from_amount_prompt":"","from_date_prompt":"","heading":"Segments","label_key_prompt":"","label_value_prompt":"","list":"Segments list","maker_prompt":"","mas_prompt":"","min_prompt":"","name":"Name","name_prompt":"","no_data":"No data to display","partials":{"add_label":"Add label","anniversary":"Anniversary","average_transaction_amount":"Average transaction value","birthday":"Birthday","bought_in_pos":"Bought in specific POS","bought_labels":"Bought products with labels","bought_makers":"Bought specific brands","bought_skus":"Bought specific SKU","choose_pos":"Choose POS","customers":"Customers","customers_prompt":"Add specific customers","customer_has_labels":"Customers who have such labels","customer_list":"Custom customer list","customer_with_labels_values":"Customers have has such labels values","date_from":"Date from","date_to":"Date to","days":"Days","key":"Key","last_purchase_n_days_before":"Last purchase was n days ago","makers":"Brands","max":"Max","max_amount":"Max value","min":"Min","min_amount":"Min value","percent":"Percent","percent_prompt":"","pos":"POS","pos_id_prompt":"","purchase_period":"Purchase period","registration":"Registration","select_pos":"Select a POS...","select_type":"Select type...","skus":"SKUs","transaction_amount":"Transaction value","transaction_count":"Transaction count","transaction_percent_in_pos":"Transaction percent in POS","type":"Type","value":"Value"},"parts":"Segment parts","percent_prompt":"","pos_id_prompt":"","pos_ids_prompt":"","skus_prompt":"","to_amount_prompt":"","to_date_prompt":"","type_prompt":"","users":"Customers","users_in_segment":"Customers in segment"},"seller":{"actions":"Actions","active":"Active","active_prompt":"","add":"Add merchant","add_heading":"Add merchant","allow_point_transfer":"Allow to add a new transfer points","change_password":"Change password","customer_search":{"city":"City","city_prompt":"City of customer","email":"E-mail address","email_prompt":"E-mail address of customer","find":"Find customer","heading":"Identify customer","loyalty_card_number":"Loyalty card number","name":"First and second name","firstName":"First name","lastName":"Last name","phone":"Phone number","phone_prompt":"Phone number of customer","postcode":"Post code","postcode_prompt":"Post code of customer","result":"Search results"},"dashboard":{"campaigns":"Reward campaigns","earning_points_rules":"Earning Rules","find_customer":"Find customer","find_transaction":"Find transaction","heading":"Dashboard","match_transaction_and_customer":"Match transaction & customer","register_customer":"Register Customer","title":{"campaign_list":"campaign list","customer_campaigns":"customer campaigns","customer_edit":"Edit customer","customer_registration":"customer registration","customer_registration_activation":"customer activation","customer_rewards":"customer rewards","customer_transactions":"customer transactions","customer_transfers":"customer transfers","earning_rules":"earning rules","find_customer":"find customer","find_transaction":"find transaction","transactions":"transactions"}},"delete_confirmation":"Do you want to remove Merchant Account?","delete_confirmation_description":"This action can not be undone.","details":"Merchant details","discount_code":"","edit":"Edit merchant","edit_heading":"Edit merchant","email":"E-mail","email_prompt":"","first_name_prompt":"","heading":"Merchants","last_name_prompt":"","list":"Merchants list","name":"First name","no_seller":"There are no merchants available","pass_prompt":"Enter password","pass_prompt_change":"","password":"Password","phone":"Phone","phone_prompt":"","pos":"POS","pos_prompt":"","posCity":"POS city","posId":"POS ID","posName":"POS name","select_pos":"Select POS","select_seller":"Select merchant","surname":"Last name","transaction":{"customer_loyalty_card_number_prompt":"Put card number or fill phone below","customer_phone_number_prompt":"Put phone or fill card number above","find":{"document_number_prompt":"","heading":"Find transaction"},"heading":"Match customer with transaction","search_results":"Search results","transaction_id_prompt":"Enter document number"}},"settings":{"level_downgrade":{"title":"Level downgrade settings","mode":"Mode","mode_prompt":"","days":"Downgrade every","days_prompt":"days","base":"Downgrade based on","base_prompt":"","active_points":"active points","earned_points":"earned points within last X days","earned_points_since_last_level_change":"earned points since last level change","after_x_days":"every x number of days","none":"none","automatic":"automatic","reset_points":"reset points"},"allow_customers_profile_edits":"Allow users to edit their profiles","allow_customers_profile_edits_prompt":"Allow","point_will_expire_after":"Expire points method","at_the_end_of_the_year":"At the end of the year","after_x_days":"After X days","all_time_active":"All time active","all_time_not_locked_prompt":"","all_time_not_locked":"Points are never locked","at_the_end_of_the_month":"At the end of the month","accent_color":"Accent color","accent_color_prompt":"Hex color (#000000)","account_activation":"Account activation","account_activation_method":"Account activation method","account_activation_method_prompt":"","add_identification_priority":"","big_logo":"Big logo","conditions_file":"Conditions File (PDF)","conditions_url":"Conditions URL","count_points_immediately":"Count points immediately","css_template":"Css template","css_template_prompt":"","currency":"Currency","currency_plural":"Currency plural","currency_prompt":"","currency_singular":"Currency singular","customerStatusesEarning_prompt":"","customerStatusesSpending_prompt":"","defaultTranslations":"Default translation file","defaultTranslations_prompt":"","enable_webhooks":"Enable webhooks","exclude_delivery_costs":"Delivery costs","exclude_delivery_costs_prompt":"Delivery costs will not be generating points.","excluded_level_skus":"SKUs excluded from levels","excluded_skus":"Excluded SKUs of delivery cost","excluded_skus_prompt":"","excludes_level_skus_prompt":"","expire_coupons_notification_days":"Days before expiring coupons to notify user","expire_coupons_notification_days_prompt":"[days]","expire_points_notification_days":"Days before expiring points to notify user","expire_points_notification_days_prompt":"[days]","expire_levels_notification_days":"Days before level recalculation to notify user","expire_levels_notification_days_prompt":"[days]","faq_url":"FAQ URL","field_prompt":"","fields":"Field","heading":"Settings","help_email":"Help e-mail","help_email_address_prompt":"","hero_image":"Hero image","identification_priority":"Matching transaction with customer","lang":"Language","lang_prompt":"","logo":"Logo","marketing":"Marketing Automation Tool","marketing_vendor":"Choose integration","marketing_vendor_prompt":"","points_days_active":"Points will expire after","points_days_locked":"Points will be locked for","points_days_active_prompt":" [days]","points_days_locked_prompt":" [days]","points_plural":"Points plural","points_singular":"Points singular","priority":"Priority","priority_prompt":"","program_conditions_url_prompt":"","program_faq_url_prompt":"","program_logo":"Program logo","program_name":"Program name","program_name_prompt":"","program_points_plural_prompt":"","program_points_singular_prompt":"","program_url":"Program URL","program_url_prompt":"","push_notification":"Push Notification Service","pushy_secret_key":"Pushy API secret key","pushy_secret_key_prompt":"If you want to enable Pushy notifications, paste the key.","returns":"Returns","returns_prompt":"Enable returns","sales_manago":{"api_key":"API key","api_key_prompt":"","api_secret":"API secret","api_secret_prompt":"","api_url":"API URL","api_url_prompt":"","customer_id":"Customer ID","customer_id_prompt":"","email":"Email","email_prompt":""},"select_currency":"Select currency","select_lang":"Select language","select_timezone":"Select timezone","small_logo":"Small logo","smsAccountId":"Account id","smsApiKey":"Api key","smsApiToken":"SmsApi token","statuses":"Customer earning and spending statuses","statuses_earning":"Customer earning statuses","statuses_spending":"Customer spending statuses","template":"Template","tier_assign_type":"Levels will be calculated with","tier_assign_type_prompt":"","timezone":"Timezone","timezone_prompt":"","title":"Settings","uri_webhooks":"URI","uri_webhooks_prompt":"e.g. https:\/\/example.com\/webhook.php","webhook_header_name":"Request header name","webhook_header_name_prompt":"e.g. Content-Acme-Key","webhook_header_value":"Request header value","webhook_header_value_prompt":"","webhooks":"Webhooks"},"Ta warto\u015b\u0107 nie powinna by\u0107 pusta.":"This value should not be empty","Ten plik nie jest obrazem.":"This file is not image","transaction":{"actions":"Actions","amount":"Amount","building_name":"Building name","category":"Category","city":"City","country":"Country","customer_email":"E-mail","customer_email_or_phone":"E-mail or phone","customer_email_or_phone_prompt":"Find customer by e-mail or phone","customer_email_prompt":"Find customer by e-mail","customer_id":"Customer ID","customer_id_prompt":"Put customer unique ID","customer_loyalty_card_number":"Loyalty card number","customer_name":"Customer name","customer_phone_number":"Phone number","details":"Transaction details","document_number":"Document number","document_number_should_be_unique":"Document number should be unique","document_type":"Document type","document_types":{"both":"Both","return":"Return","sell":"Sell"},"edit_labels":"Edit transaction labels","email":"E-mail","gross":"Gross value","heading":"Transactions","id":"Transaction ID","import":"Import","import_title":"Import transactions","import_xml_field":"XML file","item_details":"Item details","labels":"Labels","link":"Match with customer","link_modal":"Match customer with transaction","list":"Transactions list","loyaltyCardNumber":"Loyalty card number","maker":"Brand","name":"Name","phone":"Phone","points_earned":"Points earned","points_revoked":"Points revoked","pos_name":"POS name","postal_code":"Postal code","purchase_date":"Purchase date","purchase_place":"POS","quantity":"Quantity","revised_document":"Revised document","sku":"SKU","state":"State","street":"Street","sum":"SUM","transaction_document_number":"Document number","transaction_document_number_prompt":"Find transaction by document number","transaction_id":"Transaction id","unit_name":"Flat\/Unit name"},"transaction_labels":{"add_label":"Add label","key":"Key","key_prompt":"","title":"Labels","value":"Value","value_prompt":""},"transfer":{"actions":"Actions","add_points":"Add points","add_transfer":"Add transfer","comment":"Comment","created_at":"Created at","customer_loyalty_card_number":"Loyalty card number","delete_confirmation":"Confirmation","delete_confirmation_description":"Do you want to delete transfer?","details":"Details","email":"E-mail","heading":"Points transfers","import":"Import","import_title":"Import points transfers","import_xml_field":"XML file","issuer":{"admin":"admin","api":"API","seller":"merchant","system":"system","title":"Issuer"},"list":"Points transfers list","name":"First name","phone":"Phone","points_to_add":"Points to add\/spend","points_to_spend":"Points to spend","pos_identifier":"POS","revised_transaction":"Revised transaction","revised_transaction_id":"Revised transaction id","locked_until":"Points will be locked until","expires_at":"Expires at","select_customer":"Select customer","spend_points":"Spend points","state":"State","surname":"Last name","transfer_points":"Points transfer","transfer_type":"Transfer type","type":"Type","value":"Value"},"users":{"roles":"Roles","roles_prompt":"","actions":"Actions","active":"Active","active_prompt":"","add":"Add","api_key":"Api key","create":"Create user","create_heading":"Add user","edit":"Editing user","edit_heading":"Edit user","email":"E-mail","external":"External","first_name":"Name","heading":"Users","last_name":"Surname","list":"Users list","name":"Name","password":"Password","phone":"Phone","surname":"Surname"},"xhr":{"pos_coupon_usage":{"error":"An error occurred","success":"Success"},"get_delivery_statuses":{"error":"Error","success":"Success"},"put_change_delivery_status":{"error":"Error","success":"Success"},"customer_buy":{"error":"Error","success":"Success"},"customer_search":{"error":"Error","nothing_found":"No customers found","success":"Success","to_many_results":"There are to many results, please provide some additional data"},"put_campaign_brand_icon":{"error":"Server error","success":"Reward campaign brand icon added","warning":"Campaign edited without brand icon"},"put_campaign_image":{"error":"Server error","success":"Reward campaign photo added","warning":"Campaign edited without photo"},"delete_campaign_brand_icon":{"error":"An error occurred","success":"Image deleted"},"post_campaign_brand_icon":{"error":"Server error","success":"Reward campaign brand icon added","warning":"Campaign added without brand icon"},"post_campaign_image":{"error":"Server error","success":"Reward campaign photo added","warning":"Campaign added without photo"},"delete_campaign_image":{"error":"An error occurred","success":"Image deleted"},"delete_earning_rule_image":{"error":"An error occurred","success":"Image deleted"},"delete_level_image":{"error":"An error occurred","success":"Image deleted"},"delete_segment":{"error":"An error occurred","success":"Segment deleted"},"delete_settings_conditions_file":{"error":"Conditions file has not been deleted","success":"Conditions file has been deleted"},"delete_settings_hero_image":{"error":"Hero image has not been deleted","success":"Hero image has been deleted"},"delete_settings_logo":{"error":"Logo has not been deleted","success":"Logo has been deleted"},"delete_settings_small_logo":{"error":"Small logo has not been deleted","success":"Small logo has been deleted"},"delete_user":{"error":"An error occurred","success":"User deleted"},"get_available_rewards":{"error":"We can\u2019t get available rewards"},"get_buy":{"success":"Success"},"get_campaign":{"error":"An error occurred","no_id":"Reward campaign ID not found"},"get_campaigns":{"error":"Cannot get reward campaigns"},"get_customer":{"cant_edit":"You don\"t have rights to edit that customer","error":"Cannot get customer","no_id":"Customer ID not found"},"get_customers":{"error":"Cannot get customers list"},"get_customers_for_campaign":{"error":"An error occurred","no_id":"Reward campaign ID not found"},"get_earning_rule":{"error":"An error occurred","no_id":"Earning rule ID not found"},"get_earning_rules":{"error":"Cannot get earning rules list"},"get_level":{"error":"Cannot get assigned level"},"get_levels":{"error":"Cannot get available levels"},"get_levels_list":{"error":"Cannot get levels list"},"get_pos":{"error":"An error occurred","no_id":"POS ID not found"},"get_pos_list":{"error":"Cannot get POS list"},"get_redeemed_campaigns":{"error":"An error occurred"},"get_segment":{"error":"An error occurred","no_id":"Segment ID not found"},"get_segments":{"error":"Cannot get segments list"},"get_seller":{"error":"An error occurred","no_id":"Merchant ID not found"},"get_sellers":{"error":"Cannot get merchants list"},"get_settings":{"error":"Cannot get settings data"},"get_single_level":{"error":"Server error","no_id":"Level ID not found"},"get_transfers":{"error":"Cannot get points transfers list"},"get_translation":{"error":"Error","no_id":"There is not translation key specified"},"get_translations":{"error":"Error"},"delete_translations":{"success":"Transaction has been deleted","error":"Transaction hasn''t been deleted"},"import":{"error":"Import process failed","no_data":"There are no records to process","success":"All items has been imported successfully (Processed {{ processed }})","warning":"Items has been imported with some errors (Processed {{ processed }}, Success {{ success }}, Failed  {{ failed }})"},"post_activate_customer":{"error":"Error","success":"Success."},"post_activate_level":{"error":"An error occurred","success":"Level status changed"},"post_activate_rule":{"error":"Server error","success":"Status changed"},"post_activate_segment":{"error":"An error occurred","success":"Segment activated"},"post_activate_seller":{"error":"An error occurred","success":"Merchant activated"},"post_add_transfer":{"error":"Server error","success":"You successfully added points."},"post_campaign":{"error":"Server error","success":"Reward campaign added","warning":"Campaign added without photo"},"post_campaign_buy_manually_assign":{"success":"Campaing has been successfully bought","error_occurred":"Error occurred","error":"Error when buing campaign for customer"},"post_cancel_transfer":{"error":"Server error","success":"Transfer canceled."},"post_customer":{"error":"An error occurred","success":"You successfully added customer."},"post_deactivate_customer":{"error":"An error occurred","success":"You successfully deactivated customer"},"post_deactivate_segment":{"error":"An error occurred","success":"Segment deactivated"},"post_deactivate_seller":{"error":"An error occurred","success":"Merchant deactivated"},"post_delete_seller":{"error":"An error occurred","success":"Merchant deleted"},"post_earning_rule":{"error":"An error occurred","success":"Earning rule added","warning":"Earning rule added without photo"},"post_level":{"error":"An error occurred","success":"You successfully assigned level to customer"},"post_password_change":{"error":"Error","success":"Success"},"post_password_request":{"error":"An error occurred","success":"If user exists in our database, we will send next instruction to connected email address"},"post_password_reset":{"error":"Error occurred","success":"Password has been changed."},"post_pos":{"error":"An error occurred","success":"POS added"},"post_role":{"error":"An error occurred","success":"Role has been added"},"put_role":{"error":"An error occurred","success":"Role has been edited"},"post_registration_customer":{"error":"An error occurred","success":"You successfully registered customer"},"post_delete_role":{"error":"An error occurred","success":"Role deleted"},"post_registration_customer_activate":{"error":"An error occurred","success":"You successfully activated your account"},"post_remove_customer_manually_level":{"error":"An error occurred","success":"Manually level has been removed"},"post_resend_activation_code":{"success":"Code was sent to customer phone"},"post_resend_customer_code":{"error":"Cannot resend activation code. Make sure that phone number is correct or wait for few minutes and try again.","success":"Code was sent to your phone"},"post_segment":{"error":"An error occurred","success":"Segment added"},"post_seller":{"error":"An error occurred","success":"Merchant added"},"post_single_level":{"error":"An error occurred","success":"You successfully added level.","warning":"Level added without photo"},"post_spend_transfer":{"error":"Server error","success":"You successfully spend points."},"post_transaction_assign":{"error":"An error occurred while. Please check form form details.","success":"Transaction has been assigned to Customer account."},"post_transaction_labels":{"error":"An error occurred while. Please check form form details.","success":"Labels have been edited."},"post_translations":{"error":"Error","success":"Success"},"post_user":{"error":"An error occurred","success":"User created"},"put_admin_data":{"error":"Error","success":"Success"},"put_campaign":{"error":"Server error","success":"Reward campaign edited"},"put_customer":{"error":"An error occurred","success":"You successfully edited customer."},"put_earning_rule":{"error":"An error occurred","success":"You successfully edited earning rule.","warning":"Couldn''t uploaded earning rule''s image"},"put_pos":{"error":"An error occurred","success":"You successfully edited POS."},"put_segment":{"error":"An error occurred","success":"You successfully edited segment."},"put_seller":{"error":"An error occurred","success":"You successfully edited merchant."},"put_settings":{"error":"Server error","success":"Settings updated"},"put_single_level":{"error":"An error occurred","success":"You successfully edited level.","warning":"Level edited without photo"},"put_translations":{"error":"Error","success":"Success"},"put_user":{"error":"An error occurred","success":"User edited"},"upload_settings_conditions_file":{"error":"Conditions file hasn''t been saved","success":"Conditions file has been saved"},"upload_settings_hero_image":{"error":"Hero image hasn''t been saved","success":"Hero image has been saved"},"upload_settings_logo":{"error":"Logo hasn''t been saved","success":"Logo has been saved"},"upload_settings_small_logo":{"error":"Small logo hasn''t been saved","success":"Small logo has been saved"},"post_campaign_category":{"error":"Campaign category hasn''t been saved","success":"Campaign category has been saved"},"put_campaign_category":{"error":"Campaign category hasn''t been saved","success":"Campaign category has been saved"},"post_activate_campaign":{"error":"Campaign hasn''t been saved","success":"Campaign has been saved"},"post_activate_campaign_category":{"error":"Campaign category hasn''t been saved","success":"Campaign category has been saved"}},"Your password must be at least 8 characters long.":"Your password must be at least 8 characters long","Your password must contain at least one special character.":"Your password must contain at least one special character","Your password must include at least one letter.":"Your password must include at least one letter","Your password must include at least one number.":"Your password must include at least one number","Your password must include both upper and lower case letters.":"Your password must include both upper and lower case letters"}', 0, 't', '2021-09-14 12:19:59');
INSERT INTO "public"."ol__language" VALUES ('bb6dcbc3-a509-41c4-ad4a-28d7689d83d0', 'Polski', 'pl', '{"admin":{"change_password":{"current":"Aktualne has\u0142o","do_not_match":"Has\u0142a nie pasuj\u0105 do siebie","new_first":"Nowe has\u0142o","new_second":"Powt\u00f3rz nowe has\u0142o"},"dashboard":{"daily_registrations":"Nowi cz\u0142onkowie","heading":"Dashboard","orders":"Liczba zam\u00f3wie\u0144","registrations_label":"Nowi cz\u0142onkowie","spending":"Wydatki","total_customers_registered":"Klienci","total_points_spent":"Wydane punkty"},"data":{"basic":"Podstawowe informacje","change_password":"Zmie\u0144 has\u0142o","nav":"Edytuj swoje konto"},"email":"E-mail","emails":{"actions":"Akcje","content":"Tre\u015b\u0107","edit":"Edytuj","edit_heading":"Edytuj","heading":"E-maile","key":"Klucz","list":"Lista maili","preview":"Podgl\u0105d","prompt":"","sender_email":"E-mail nadawcy","sender_name":"Nadawca","receiver_email":"E-mail odbiorcy","subject":"Temat","updated_at":"Zaktualizowano na","variables":"Atrybuty"},"first_name":"Imi\u0119","heading":"Dashboard","last_name":"Nazwisko","logs":{"audit_log_id":"ID Logu","choose_dates":"Wybierz zakres danych","created_at":"Data utworzenia","entity_id":"ID obiektu","entity_type":"Typ obiektu","event_type":"Rodzaj zdarzenia","export_to_csv":"Wyeksportuj do CSV","from":"Od","heading":"Logi systemowe","list":"Lista Log\u00f3w","Search":"Szukaj","search_by_date":"Wybierz okres czasu","to":"Do","username":"Nazwa u\u017cytkownika"},"phone":"Telefon","translations":{"actions":"Akcje","add":"Dodaj wersj\u0119 j\u0119zykow\u0105","add_heading":"Nowe t\u0142umaczenia","content":"T\u0142umaczenie","content_error":"JSON nie jest prawid\u0142owy","edit_heading":"Edytuj","heading":"Wersje j\u0119zykowe","list":"Dost\u0119pne wersje j\u0119zykowe","name":"Nazwa","name_prompt":"","updated_at":"Zaktualizowano w dniu","order":"Kolejno\u015b\u0107","order_prompt":"","default":"Domy\u015blny","default_prompt":"","code":"Kod (locale)","code_prompt":"","delete_confirmation":"Czy chcesz usun\u0105\u0107 ten j\u0119zyk??","delete_confirmation_description":"Wybrany j\u0119zyk zostanie usuni\u0119ty pernamentnie"}},"admin_edit":{"heading":"Profil administratora"},"Bad credentials":"Niepoprawne dane logowania","campaign":{"choose":"Wgraj plik","add_another":"Dodaj kolejny","add_photo":"Dodaj zdj\u0119cie","photos":"Zdj\u0119cia","export_csv":"Eksportuj do pliku CSV","export_title":"Eksportuj","download_report":"Pobierz raport","actions":"Akcje","active":"Status","active_from":"Obowi\u0105zuje od","active_from_prompt":"","active_prompt":"","active_to":"Obowi\u0105zuje do","active_to_prompt":"","activity":"Dost\u0119pno\u015b\u0107","activity_statuses":{"active":"Aktywny","all":"Wszystkie","inactive":"Nieaktywny"},"status":"Status","coupon_statuses":{"inactive":"Nieaktywny","active":"Aktywny","expired":"Wygas\u0142y","cancelled":"Anulowany"},"add":"Dodaj nagrod\u0119","add_heading":"Dodaj nagrod\u0119","add_label":"Dodaj kategori\u0119","all_time":"Ca\u0142y czas","all_time_active":"Bez ogranicze\u0144","all_time_active_prompt":"Nagroda jest dost\u0119pna bez ogranicze\u0144","all_time_visible":"Ca\u0142y czas widoczne","all_time_visible_prompt":"Nagroda jest dost\u0119pna bez ogranicze\u0144","basic_info":"Szczeg\u00f3\u0142y","buy_campaign_manually_modal":"Kup kampanie {{name}} dla klienta","categories":"Kategorie","categories_prompt":"","category":{"heading":"Kategorie kampanii","edit_heading":"Edycja","add_heading":"Dodaj kategorie kampanii","list":"List kategorii kampanii","name":"Nazwa","name_prompt":"","sort_order":"Kolejno\u015b\u0107","sort_order_prompt":"","active":"Aktywny","active_prompt":"","add":"Dodaj kategorie kampanii","basic_info":"Podstawowe informacje","basic_info_details":"Szczeg\u00f3\u0142y"},"campaign_type":{"all":"Wszystkie"},"cashback":"Cashback","connect_type":{"heading":"Rodzaj relacji","none":"Brak","qrcode_earning_rule":"Regu\u0142a QRCode","geolocation_earning_rule":"Regu\u0142a Geolocation"},"connect_type_prompt":"","conditions_description":"Warunki otrzymania nagrody","coditions_description_prompt":"","cost_in_points":"Koszt w punktach","cost_in_points_prompt":"","coupon":"Kupon","coupon_used":"Wykorzystane przez klient\u00f3w","coupons":"Kupony","coupons_count":"Dost\u0119pne ","coupons_info":"Kupony","coupons_prompt":"","coupons_upload":"Import z pliku","coupons_upload_prompt":"","current_points_amount":"Aktywne punkty klienta","custom_campaign_code":"Niestandardowa regu\u0142a","customer_email":"E-mail klienta","customer_email_or_phone":"E-mail lub telefon","customer_email_or_phone_prompt":"Znajd\u017a klienta za pomoc\u0105 adresu e-mail lub telefonu","customer_lastname":"Nazwisko klienta","customer_name":"Imi\u0119 klienta","customer_phone":"Telefon","customers":"Klienci","days_inactive":"Dni nieaktywno\u015bci:","days_inactive_prompt":"Ilo\u015b\u0107 dni przez kt\u00f3re kod b\u0119dzie nieaktywny. Ustaw zero aby od razu kod by\u0142 aktywny.","days_valid":"Dni wa\u017cno\u015bci","days_valid_prompt":"Ilo\u015b\u0107 dni po kt\u00f3ry kod straci wa\u017cno\u015b\u0107. Ustaw zero aby kod nigdy nie wygas\u0142.","date_from":"Od","date_to":"Do","delivered":"Niewykorzystane\/Wykorzystane","delivery_statuses":{"all":"All","ordered":"Zam\u00f3wiona","canceled":"Anulowana","shipped":"Wys\u0142ana","delivered":"Odebrana"},"delivery_status":"Status odbioru","details_heading":"Szczeg\u00f3\u0142y nagrody","earning_rule":"Regu\u0142y nagradzania","earning_rule_prompt":"","earning_rule_points_amount":"Warto\u015b\u0107 punktowa dla regu\u0142y","discount_code":"Rabat procentowy","edit":"Edytuj nagrod\u0119","edit_heading":"Edytuj nagrod\u0119","event_code":"Zaproszenie na wydarzenie","featured":"Wyr\u00f3\u017cniona","featured_prompt":"","public":"Publiczna","public_prompt":"","free_delivery_code":"Darmowa dostawa","gift_code":"Nagroda rzeczowa","heading":"Katalog nagr\u00f3d","inactive":"Niedost\u0119pna","key":"Klucz","label":"Kategoria","label_key_prompt":"","label_value_prompt":"","labels":"Kategorie","levels":"Poziomy","levels_prompt":"","limit":"Limit","limit_info":"Limit u\u017cy\u0107","limit_per_user":"Limit na osob\u0119","limit_per_user_prompt":"","limit_prompt":"","list":"Lista nagr\u00f3d","more_information_link":"Dowiedz si\u0119 wi\u0119cej (link)","more_information_link_prompt":"","name":"Nazwa","name_prompt":"","no_data":"Brak danych do wy\u015bwietlenia","percentage_discount_code":"Kod ze zni\u017ck\u0105 procentow\u0105","photo":"Zdj\u0119cie","point_value":"Warto\u015b\u0107 punktu","point_value_prompt":"Kwota (w PLN) za ka\u017cdy wymieniony 1 punkt","purchase_at":"Data zakupu","push_notification_text":"Tekst wiadomo\u015bci push","push_notification_text_prompt":"Wiadomo\u015b\u0107 wysy\u0142ana u\u017cytkownikom, dla kt\u00f3rych kampania sta\u0142a si\u0119 dost\u0119pna","redeemed_heading":"Odebrane nagrody","redeemed_list":"Lista odebranych nagr\u00f3d","reward":"Rodzaj nagrody","reward_name":"Nagroda","reward_redeem_date":"Data odebrania","usage_date":"Data u\u017cycia","reward_type":"Rodzaj","reward_value":"Warto\u015b\u0107 nagrody","reward_value_description":"","reward_value_prompt":"Warto\u015b\u0107 otrzymanej nagrody","segments":"Segmenty","segments_prompt":"","short_description":"Opis","short_description_prompt":"","show_customers":"Poka\u017c klient\u00f3w","singleCoupon":"Kupon","singleCoupon_prompt":"Ograniczona liczba mo\u017cliwo\u015bci wykorzystania kuponu","target_type":"Grupa odbiorc\u00f3w","target_type_prompt":"","tax":"VAT","tax_price_value":"Kwota VAT","tax_price_value_prompt":"Warto\u015b\u0107 podatku VAT","tax_prompt":"Stawka podatku VAT","transaction_document_number":"Numer dokumentu","transaction_document_number_prompt":"Znajd\u017a transakcj\u0119 za pomoc\u0105 numeru dokumentu","transaction_percentage_value":"Procentowa warto\u015b\u0107 transakcji","transaction_percentage_value_prompt":"Warto\u015b\u0107 kuponu, ktora bedzie bazowa\u0142a na warto\u015bci transakcji","fulfillment_tracking":"\u015aledzenie procesu realizacji","fulfillment_tracking_prompt":"","type":"Rodzaj","type_info":"Rodzaj nagrody","type_prompt":"","unlimited":"Bez limitu","unlimited_prompt":"Kupon mo\u017cna wykorzysta\u0107 wiele razy","usage_instruction":"Spos\u00f3b u\u017cycia kuponu","usage_instruction_prompt":"","usage_types":{"both":"Wszystkie","false":"Niewykorzystane","true":"Wykorzystane"},"used_by_user":"Wykorzystano","users_in_campaign":"U\u017cytkownicy przypisani do kampanii ","without_spending_points":"Bez wydawania punkt\u00f3w ","without_spending_points_prompt":"Punkty klienta nie b\u0119d\u0105 u\u017cywane ","quantity":"Liczba","quantity_prompt":"Mo\u017cesz kupi\u0107 wi\u0119cej kupon\u00f3w na raz","value":"Warto\u015b\u0107","value_code":"Rabat kwotowy","visibility":"Widoczno\u015b\u0107","visible_from":"Widoczna Od","visible_from_prompt":"","visible_to":"Widoczna Do","visible_to_prompt":"","brand_description":"Opis marki","brand_description_prompt":"","coupon_active_since":"Kupon aktywny od","coupon_active_to":"Kupon aktywny do","coupon_forever_active":"zawsze","brand_icon":"Logo marki","brand_info":"Marka","brand_name":"Nazwa marki","brand_name_prompt":"","campaign_shipping_address":{"details":"Szczeg\u00f3\u0142y dostawy","street":"Ulica","house_number":"Numer budynku","building_number":"Numer mieszkania","city":"Miasto","postal_code":"Kod pocztowy","country":"Kraj","voivodeship":"Wojew\u00f3dztwo"}},"campaign-value-code":"Rabat kwotowy","client_cockpit":{"meta":{"title":"Program motywacyjny"},"register":{"submit_message":"Sprawd\u017a sw\u00f3j email i aktywuj swoje konto","activation":{"message_failed":"Wyst\u0105pi\u0142 problem z aktywacj\u0105 Twojego konta","message_success":"Twoje konto zosta\u0142o aktywowane","failed":"Aktywacja konta nie powiod\u0142a si\u0119","success":"Aktywacja konta zako\u0144czona pomy\u015blnie"},"form":{"login":{"prefix":"lub ","link":"zaloguj si\u0119","suffix":" do istniej\u0105cego konta"}}},"global":{"errors":{"this_field_is_required":"To pole jest wymagane","this_checkbox_is_required":"To pole jest wymagane","invalid_jwt_token":"B\u0142\u0105d! Nieprawid\u0142owy token","not_found":"B\u0142\u0105d! Nie znaleziono informacji na serwerze"}},"login":{"headline":"Sprzedawaj, zarabiaj punkty i odbieraj nagrody!","subtitle":"Program motywacyjny","form":{"label":{"email":"Adres e-mail","password":"Has\u0142o","button":"Zaloguj si\u0119","reset_password":"Zapomnia\u0142e\u015b has\u0142a?"},"register":{"prefix":"","link":"Zarejestruj nowe konto","suffix":" w serwisie"},"validation":{"api":{"bad_credentials":"Nieprawid\u0142owy adres e-mail lub has\u0142o.","login_success":"Zalogowano pomy\u015blnie!"},"email":{"not_valid":"Wprowad\u017a poprawny adres e-mail."},"password":{"not_valid":"Has\u0142o musi zawiera\u0107 co najmniej 8 znak\u00f3w"}}}},"logout":{"validation":{"api":{"logged_out":"Wylogowano pomy\u015blnie"}}},"reset_password":{"form":{"label":{"button":"Zresetuj has\u0142o","back_to_login_prefix":"Lub wr\u00f3\u0107 do ","back_to_login_text":"strony logowania","back_to_login_suffix":"","reset_your_password":"Resetowanie has\u0142a","choose_new_password":"Zmie\u0144 swoje has\u0142o","new_password":"Nowe has\u0142o"},"validation":{"password_too_weak":"Has\u0142o jest zbyt s\u0142\u0105be","password_reset_success":"Twoje has\u0142o zosta\u0142o zmienione pomy\u015blnie.","password_reset_error":"Proces resetowania has\u0142a zosta\u0142 ju\u017c zako\u0144czony","not_found":"Ten adres email jest niepoprawny","field_username_should_not_be_empty":"Podaj sw\u00f3j adres email","resetting_password_already_requested":"Proces resetowania has\u0142a zosta\u0142 ju\u017c rozpoczety. Prosz\u0119 sprawd\u017a swoj\u0105 skrzynk\u0119 email ","wrong_data":"Podany e-mail jest nieprawid\u0142owy lub nie istnieje w bazie danych","email_with_reset_link_sent":"Na podany adres e-mail zosta\u0142 wys\u0142any link do zresetowania has\u0142a. Prosimy sprawdzi\u0107 skrzynk\u0119 mailow\u0105."}}},"change_password":{"form":{"label":{"button":"Zmie\u0144 has\u0142o"}},"validation":{"invalid_reset_link":"Link resetuj\u0105cy has\u0142o jest nieprawid\u0142owy. Spr\u00f3buj ponownie.","password_has_been_changed":"Has\u0142o zosta\u0142o zmienione pomy\u015blnie.","password":{"this_value_should_not_be_blank":"Pole has\u0142a nie mo\u017ce by\u0107 puste.","your_password_must_be_at_least_8_characters_long":"Twoje has\u0142o musi mie\u0107 minimum 8 znak\u00f3w.","your_password_must_include_both_upper_and_lower_case_letters":"Has\u0142o musi zawiera\u0107 ma\u0142e i du\u017ce litery.","your_password_must_include_at_least_one_number":"Has\u0142o musi zawiera\u0107 przynajmniej jedn\u0105 liczb\u0119.","your_password_must_contain_at_least_one_special_character":"Has\u0142o musi zawiera\u0107 przynajmniej jeden znak specjalny."}}},"homepage":{"terms_popup":{"button_text":"Przejd\u017a do programu lojalno\u015bciowego","title":"Potwierd\u017a warunki programu lojalno\u015bciowego","description":"Je\u015bli chcesz do\u0142\u0105czy\u0107 do programu lojalno\u015bciowego musisz zaakceptowa\u0107 jego warunki i regulamin. Twoje dane zostan\u0105 wykorzystane wy\u0142\u0105cznie na potrzeby programu lojalno\u015bciowego."},"headline":"Sprzedawaj, zarabiaj punkty i odbieraj nagrody!","subtitle":"Program motywacyjny","earning_points_rules":{"headline":"Jak zdoby\u0107 punkty?","button_text":"Zarabiaj punkty"},"rewards":{"headline":"Popularne nagrody","button_text":"Odbieraj nagrody"}},"earning_points_rules":{"list":{"see_more_link_text":"inne sposoby zarabiania punkt\u00f3w","see_more_link_title":"Zobacz inne sposoby zarabiania punkt\u00f3w","see_more_prefix":"Zobacz ","see_more_suffix":" ","points":{"points":{"prefix":"1 ","suffix":" pkt"},"event":{"prefix":"","suffix":" punkt\u00f3w"},"custom_event":{"prefix":"","suffix":" punkt\u00f3w"},"product_purchase":{"prefix":"","suffix":" punkt\u00f3w"},"multiply_for_product":{"prefix":"","suffix":" razy wi\u0119cej punkt\u00f3w"},"referral":{"prefix":"","suffix":" punkt\u00f3w"}}},"single":{"page":{"referral":{"send_invite_email":"Wy\u015blij e-mail z zaproszeniem","invitation_email_sent":"E-mail z zaproszeniem zosta\u0142 wys\u0142any","invitation_form_contains_errors":"Formularz zawiera b\u0142\u0119dy","send_invite":"Wy\u015blij zaproszenie","email_address":"Adres e-mail"},"back_to_earning_points_rules_list":"Zobacz inne sposoby zarabiania punkt\u00f3w","how_to_earn_points":"Jak zdoby\u0107 punkty?","points":{"points":{"prefix":"1 ","suffix":" pkt"},"event":{"prefix":"","suffix":" punkt\u00f3w"},"custom_event":{"prefix":"","suffix":" punkt\u00f3w"},"product_purchase":{"prefix":"","suffix":" punkt\u00f3w"},"multiply_for_product":{"prefix":"","suffix":" razy wi\u0119cej punkt\u00f3w"},"referral":{"prefix":"","suffix":" punkt\u00f3w"}}}}},"rewards":{"page":{"title":"Odbieraj nagrody","available_rewards":"Dost\u0119pne nagrody","redeemed_rewards":"Odebrane nagrody","show_more_rewards":"Poka\u017c wi\u0119cej nagr\u00f3d"},"list":{"see_more_link_text":"inne dost\u0119pne nagrody","see_more_link_title":"Zobacz inne dost\u0119pne nagrody","see_more_prefix":"Zobacz ","see_more_suffix":" "},"single":{"type":{"value_code":"rabat kwotowy","discount_code":"kupon zni\u017ckowy","value code":"kupon o warto\u015bci","free_delivery_code":"darmowa dostawa","gift_code":"nagroda rzeczowa","event_code":"zaproszenie na wydarzenie","cashback":"cashback"},"page":{"days":"d","hours":"g","minutes":"m","seconds":"s","reward_will_be_available_for":"Nagroda b\u0119dzie dost\u0119pna za: ","back_to_rewards_list":"Przejd\u017a do listy nagr\u00f3d","reward_availability_prefix":"Nagroda dost\u0119pna od ","reward_availability_suffix":" punkt\u00f3w","get_reward_button":"Odbierz nagrod\u0119","reward_description":"Opis nagrody","see_full_reward_description":"Zobacz pe\u0142ny opis nagrody","reward_type":"Typ nagrody: ","how_to_get_reward":"Jak odebra\u0107 nagrod\u0119?","reward_confirmation_question_prefix":"Czy chcesz wyda\u0107 punkty ","reward_confirmation_question_suffix":" i odebra\u0107 nagrod\u0119 ","reward_confirmation_question_sign":"?","reward_confirmation_button":"Tak, odbieram nagrod\u0119","reward_count":"Ilo\u015b\u0107 nagr\u00f3d: ","reward_limit_prefix":"Limit nagr\u00f3d wynosi ","reward_limit_suffix":" na osob\u0119","reward_available_from":"Nagroda wa\u017cna od: ","reward_available_to":"Nagroda wa\u017cna do: ","popular_rewards":"Popularne nagrody","points":" punkt\u00f3w","not_enough_points_prefix":"Brakuje Ci","not_enough_points_suffix":" punkt\u00f3w, \u017ceby odebra\u0107 nagrod\u0119"}},"redeemed":{"page":{"title":"Odbieraj nagrody","available_rewards":"Dost\u0119pne nagrody","redeemed_rewards":"Odebrane nagrody","show_more_rewards":"Poka\u017c wi\u0119cej nagr\u00f3d"},"single":{"page":{"reward_bought":"Nagroda odebrana","reward_code":"Kod nagrody","reward_redeemed_notification":"Nagroda zosta\u0142a odebrana pomy\u015blnie"}}}},"header":{"get_rewards":"Odbieraj nagrody","earn_points":"Zdobywaj punkty","level":"level","points":"punkt\u00f3w","logo_alt_text":"logo","notification_text_prefix":"Witaj Anna Nowak, sprawd\u017a ","notification_text":"nowe nagrody","notification_text_suffix":", kt\u00f3re dla Ciebie przygotowali\u015bmy!"},"footer":{"section":{"first":{"headline":"O PROGRAMIE","link":{"a_route":"http:\/\/pwacc-dev.herokuapp.com\/link-1","b":"Warunki programu","b_route":"http:\/\/pwacc-dev.herokuapp.com\/link-1","c":"Jak zdoby\u0107 wy\u017cszy level?","c_route":"http:\/\/pwacc-dev.herokuapp.com\/link-1","d":"Regulamin programu","d_route":""}},"second":{"headline":"PUNKTY","link":{"a_route":"http:\/\/pwacc-dev.herokuapp.com\/link-1","b":"Jak zarabia\u0107 punkty?","b_route":"http:\/\/pwacc-dev.herokuapp.com\/link-2","c":"Moje punkty","c_route":"http:\/\/pwacc-dev.herokuapp.com\/link-3","d":"","d_route":""}},"third":{"headline":"NAGRODY","link":{"a_route":"http:\/\/pwacc-dev.herokuapp.com\/link-1","b":"Jak odbiera\u0107 nagrody?","b_route":"http:\/\/pwacc-dev.herokuapp.com\/link-2","c":"Jak odblokowa\u0107 nagrody?","c_route":"http:\/\/pwacc-dev.herokuapp.com\/link-3","d":"Moje nagrody","d_route":""}},"fourth":{"headline":"POMOC","link":{"a_route":"http:\/\/pwacc-dev.herokuapp.com\/link-1","b":"Pytania i odpowiedzi","b_route":"http:\/\/pwacc-dev.herokuapp.com\/link-2","c":"Kontakt","c_route":"http:\/\/pwacc-dev.herokuapp.com\/link-3","d":"","d_route":""}}},"link":{"cookie_policy":"<a href=''https:\/\/test.web.cloud.openloyalty.io\/terms-conditions''>Polityka plik\u00f3w cookie<\/a>"},"copyright_text":"\u008a 2018 Program motywacyjny. Wszystkie prawa zastrze\u017cone."},"customer":{"navigation":{"my_profile":"M\u00f3j profil","my_level":"M\u00f3j level","my_transactions":"Moje transakcje","my_points":"Moje punkty","my_rewards":"Moje nagrody","logout":"Wyloguj si\u0119"},"loyalty":{"active_points":"Aktywne punkty","used_points":"Wykorzystane punkty","expired_points":"Nieaktywne punkty","locked_points":"Zablokowane punkty","total_points":"Suma zgromadzonych punkt\u00f3w","total_points_since_last_level_recalculation":"Suma zgromadzonych punkt\u00f3w od ostatniego przeliczenia poziomu","level_will_expire_in_days":"Poziom wyga\u015bnie za","level_will_expire_in_days_prompt":" dni"},"table":{"date_and_time":"Data i godzina","transaction_number":"Numer transakcji","value":"Warto\u015b\u0107","points_number":"Zdobyte punkty","type":"Typ","operation":"Operacja na punktach","sell":"Sprzeda\u017c","return":"Zwrot","name":"Nazwa","count":"Ilo\u015b\u0107","sku":"SKU","category":"Kategoria","brand_name":"Marka","level":"Level","level_description":"Opis levelu","available_from":"Dost\u0119pny od"},"profile":{"general_information":"Informacje podstawowe","address_information":"Dane adresowe","company_information":"Dane firmy","terms_and_conditions":"Zgody","edit_data":"Edytuj dane","first_name":"Imi\u0119","last_name":"Nazwisko","male":"M\u0119\u017cczyzna","female":"Kobieta","not_disclosed":"Nie ujawniono","email":"Adres e-mail","date_of_birth":"Data urodzenia","password":"Has\u0142o","confirm_password":"Powt\u00f3rz has\u0142o","phone_number":"Numer telefonu","street":"Ulica","house_number":"Numer domu","building_number":"Numer lokalu","city":"Miasto","postal_code":"Kod pocztowy","country":"Kraj","voivodeship":"Wojew\u00f3dztwo","company_name":"Nazwa firmy","company_tax_id":"NIP","agreement":{"first":"Akceptuj\u0119 regulamin programu motywacyjnego","second":"Chc\u0119 otrzymywa\u0107 oferty specjalne, akceptuj\u0119 regulamin newslettera","third":"Wyraz\u0307am zgode\u0328 na wykorzystanie i przetwarzanie moich danych osobowych w ramach programu motywacyjnego (zgodnie z przepisami ustawy o ochronie danych osobowych z dnia 29.08.1997)"},"validation":{"api":{"profile_updated":"Tw\u00f3j profil zosta\u0142 zaktualizowany"}}},"pts":"pkt","my_account":"Moje konto","client_name":"Imi\u0119 i nazwisko: ","phone_number":"Numer telefonu: ","card_number":"Numer karty: ","email":"Adres e-mail: ","buy_date":"Data zakupu: ","points_count":"Zdobyte punkty: ","assigned_level":"Tw\u00f3j aktualny level to","delete_confirmation_description":"Konto zostanie dezaktywowane i nie b\u0119dzie mo\u017cliwo\u015bci aktywowania go ponownie","transactions_amount":"Warto\u015b\u0107 transakcji","transactions_amount_to_next_level":"Warto\u015b\u0107 transakcji dla uzyskania nast\u0119pnego poziomu","transactions_amount_to_next_level_without_delivery_costs":"Warto\u015b\u0107 transakcji (bez koszt\u00f3w dostawy) dla nast\u0119pnego poziomu","next_level":"Kolejny level to","rewards_page":"Moje nagrody","transactions_page":"Moje transakcje","transaction":"Transakcja ","no_transaction_placeholder":"Nie masz jeszcze \u017cadnej zarejestrowanej transakcji.","no_points_operation_placeholder":"Nie masz jeszcze \u017cadnych punkt\u00f3w.","no_rewards_redeemed_placeholder":"Nie masz jeszcze \u017cadnych odebranych nagr\u00f3d.","no_rewards_available_placeholder":"Nie masz jeszcze \u017cadnych dost\u0119pnych nagr\u00f3d.","no_earning_points_rules_available_placeholder":"Nie masz jeszcze \u017cadnych dost\u0119pnych sposob\u00f3w zarabiania punkt\u00f3w.","my_transactions":"Moje transakcje","profile_page":"M\u00f3j profil","register_new_account":"Rejestracja nowego konta","add_company_details":"Dodaj dane Twojej firmy","add_your_address":"Dodaj sw\u00f3j adres zamieszkania","register_button":"Zarejestruj si\u0119","points_from_rule":"Zdoby\u0142e\u015b nowe punkty","points_redeemed_for_reward":"Ilo\u015b\u0107 punkt\u00f3w wydanych na nagrod\u0119"},"form":{"validation":{"your_password_must_be_at_least_8_characters_long":"Twoje has\u0142o musi mie\u0107 co najmniej 8 znak\u00f3w.","your_password_must_include_at_least_one_letter.":"Twoje has\u0142o musi zawiera\u0107 co najmniej jedn\u0105 liter\u0119","your_password_must_include_at_least_one_number":"Twoje has\u0142o musi zawiera\u0107 co najmniej jedn\u0105 cyfr\u0119.","your_password_must_contain_at_least_one_special_character":"Twoje has\u0142o musi zawiera\u0107 co najmniej jeden znak specjalny.","your_password_must_include_both_upper_and_lower_case_letters.":"Twoje has\u0142o musi zawiera\u0107 zar\u00f3wno du\u017ce, jak i ma\u0142e litery","customer_with_such_email_already_exists":"Klient z takim adresem email ju\u017c istnieje","please_fill_form":"Prosz\u0119 uzupe\u0142nij wymagane pola","form_contains_errors":"Formularz zawiera b\u0142\u0119dy"}}},"role":{"heading":"Role","add":"Dodaj rol\u0119","list":"Lista r\u00f3l","actions":"Akcje","edit_heading":"Edytuj rol\u0119","basic_info":"Informacje Podstawowe","name":"Nazwa","name_prompt":"","permissions":"Uprawnienia","access":"Dost\u0119p","access_prompt":"","resource":"Zas\u00f3b","resource_prompt":"","add_permission":"Nadaj uprawnienie","add_heading":"Dodaj rol\u0119","delete_confirmation":"Czy chcesz usun\u0105\u0107 wybran\u0105 rol\u0119?","delete_confirmation_description":"Ta operacja nie mo\u017ce zosta\u0107 cofni\u0119ta."},"customer":{"actions":"Akcje","activate_confirmation":"Aktywacja klienta","activate_confirmation_description":"Czy chcesz aktywowa\u0107 klienta?","add":"Dodaj klienta","add_address":"Adres","add_company":"Firma","add_heading":"Dodaj klienta","add_label":"Dodaj etykiet\u0119","add_profile_id":"dodaj Profile ID","add_points_transfer":"Dodaj nowy transfer punkt\u00f3w","address":"Adres","address_address1_prompt":"","address_address2_prompt":"","address_city_prompt":"","address_country_prompt":"","address_province_prompt":"","address_street_prompt":"","agreement1":"Regulamin","agreement1_prompt":"To pole jest wymagane","agreement2":"Zgoda marketingowa","agreement2_prompt":"","agreement3":"Zgoda na przetwarzanie danych osobowych","agreement3_prompt":"","agreements":"Umowy","all_campaigns":"Katalog nagr\u00f3d","all_profile_details":"Poka\u017c wszystkie szczeg\u00f3\u0142y profilu","all_rewards":"Wszystkie nagrody","all_transactions":"Wszystkie transakcje","all_transfers":"Wszystkie transfery punkt\u00f3w","assign_level":"Zmie\u0144 poziom","assigned_level":"Obecny poziom","assigned_pos":"Przypisany sklep","assigned_seller":"Przypisany Sprzedawca","average_transaction_amount":"\u015arednia warto\u015b\u0107 zam\u00f3wie\u0144","basic_info":"Informacje Podstawowe","birth_date":"Data urodzenia","birth_date_prompt":"","building_name":"Numer domu","campaign":{"active_points":"Zrealizuj nowe nagrody, mo\u017cesz u\u017cy\u0107 <b>{{points}}<\/b> aktywnych punkt\u00f3w","all_time_Active":"Ca\u0142y czas dost\u0119pna","bought_list":"Moje odebrane nagrody","coupon_used":"Ten kupon zosta\u0142 wykorzystany","date_from":"Od","date_to":"Do","export_csv":"Export CSV","export_title":"Export CSV raport","footer":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","list":"Moje nagrody","no_bought_rewards":"Brak zrealizowanych nagr\u00f3d","no_desc":"Opis nagrody nie jest ustawiony","no_name":"Brak nazwy kampanii nagr\u00f3d","no_rewards":"Brak dost\u0119pnych nagr\u00f3d","not_enough_points":"Niewystarczaj\u0105ca ilo\u015b\u0107 punkt\u00f3w","points":"Punkty","redeem":"Zrealizowana nagroda","reward_code":"KOD NAGRODY","reward_congratulations":"Gratulacje!","reward_footer":"Instrukcja dla nagrody, lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","reward_ready":"Twoja nagroda jest gotowa do odbioru.","see_bought":"Zobacz nagrody, kt\u00f3re ju\u017c wykorzysta\u0142e\u015b","singleCoupon":"Pojedynczy kupon","singleCoupon_prompt":"Aby odkupi\u0107 klient\u00f3w, b\u0119dzie mo\u017cna u\u017cy\u0107 tego samego kuponu","used_confirmation":"Potwierd\u017a u\u017cycie nagrody","used_confirmation_description":"Prosz\u0119 potwierd\u017a u\u017cycie nagrody","will_be_active_all_time":"Ta kampania b\u0119dzie dost\u0119pna ca\u0142y czas","will_be_active_dates":"Ta kampania nagr\u00f3d b\u0119dzie dost\u0119pna od {{from}} do {{to}}","will_be_active_soon":"Jeszcze niedost\u0119pna"},"campaigns_heading":"Nagrody","campaigns_list":"Katalog Nagr\u00f3d, kt\u00f3rych mo\u017ce u\u017cy\u0107 u\u017cytkownik ","change_level":"Zmie\u0144 poziom","change_password":{"current":"Obecne has\u0142o","do_not_match":"Has\u0142a nie pasuj\u0105","new_first":"Nowe has\u0142o","new_second":"Powt\u00f3rz nowe has\u0142o"},"city":"Miasto","company_data":"Dane Firmy","company_name":"Nazwa firmy","company_name_prompt":"","company_nip_prompt":"","country":"Pa\u0144stwo","created_at":"Data utworzenia","current_level":"Obecny poziom","days_from_last_transaction":"Dni od ostatniego zam\u00f3wienia","delete_confirmation":"Czy chcesz dezaktywowa\u0107 tego klienta?","delete_confirmation_description":"Ten klient zostanie dezaktywowany i nie b\u0119dzie ju\u017c mo\u017cliwo\u015bci jego aktywacji","edit":"Edytuj","edit_heading":"Edytuj klienta","email":"E-mail","email_prompt":"","empty_campaigns":"Brak danych do wy\u015bwietlenia","empty_rewards":"Brak danych do wy\u015bwietlenia","empty_transactions":"Brak danych do wy\u015bwietlenia","empty_transfers":"Brak danych do wy\u015bwietlenia","female":"Kobieta","not_disclosed":"Nie ujawniono","first_name_prompt":"","flat_name":"Numer mieszkania","gender":"P\u0142e\u0107","gender_prompt":"","heading":"Klienci","import":"Importuj klient\u00f3w","import_title":"Import klient\u00f3w","import_xml_field":"Wybierz plik","inactive":"Nieaktywny","key":"Klucz","label":"Etykieta","label_key_prompt":"","label_value_prompt":"","labels":"Etykiety","last_name_prompt":"","lc_number":"Numer karty lojalno\u015bciowej","list":"Lista klient\u00f3w","loyalty":{"active_points":"Aktywne punkty","expired_points":"Wygas\u0142e punkty","title":"Balans punkt\u00f3w","used_points":"Wykorzystane punkty","locked_points":"Zablokowane punkty","total_points":"Suma zgromadzonych punkt\u00f3w","total_points_since_last_level_recalculation":"Suma zgromadzonych punkt\u00f3w od ostatniego przeliczenia poziomu","level_will_expire_in_days":"Poziom wyga\u015bnie za","level_will_expire_in_days_prompt":" dni"},"loyalty_card_number_prompt":"","male":"M\u0119\u017cczyzna","name":"Imi\u0119","nip":"Numer Identyfikacji Podatkowej","no_level":"Klient nie jest przypisany do \u017cadnego poziomu","no_pos":"Klient nie jest przypisany do \u017cadnego POS","no_segments":"Klient nie zosta\u0142 przypisany do \u017cadnego segmentu","password":"Has\u0142o","phone":"Telefon","phone_prompt":"","postal":"Kod pocztowy","postal_prompt":"","profile_details":"Szczeg\u00f3\u0142y profilu","profile_id":"Profile ID","profile_id_prompt":"Unikalny Profile ID klienta","profile_ids":"Profile_ID","profitability":{"avo":"\u015arednia warto\u015b\u0107 zam\u00f3wie\u0144","clv":"Ca\u0142kowita warto\u015b\u0107 zam\u00f3wie\u0144","orders":"Liczba zam\u00f3wie\u0144","title":"Historia transakcji"},"referred":{"heading":"Lista polecaj\u0105cych i zaproszonych klient\u00f3w","list":"Zaproszeni klienci","recipient_email":"E-mail Odbiorcy","recipient_phone":"Telefon odbiorcy","recipient_id":"Identifikator Odbiorcy","recipient_name":"Imi\u0119 i nazwisko odbiorcy","referred_completed":"Zaproszeni klienci, kt\u00f3rzy si\u0119 zarejestrowali","referred_registered":"Zaproszeni klienci, kt\u00f3rzy dokonali zakupu","referred_total":"Liczba wys\u0142anych zaprosze\u0144","referrer_id":"ID polecaj\u0105cego","referrer_name":"Imi\u0119 i nazwisko polecaj\u0105cego","status":"Status","statuses":{"all":"Wszystkie","invited":"Zaproszony","made_purchase":"Dokonano zakupu","registered":"Zarejestrowany"}},"remove_manually_level_title":"Usu\u0144 poziom przypisany r\u0119cznie","resend_activation_code":"Wy\u015blij ponownie kod aktywacyjny","rewards_heading":"Wykorzystane nagrody","rewards_list":"Odebrane nagrody przez klienta ","segments":"Segmenty","show_address_prompt":"","show_company_prompt":"","single_data":"Dane klienta","state":"Wojew\u00f3dztwo","street":"Ulica","surname":"Nazwisko","tabs":{"campaigns":"Dost\u0119pne nagrody","rewards":"Wykorzystane nagrody","transactions":"Transakcje","transfers":"Transfery punkt\u00f3w"},"transactions_amount":"Ca\u0142kowita warto\u015b\u0107 zam\u00f3wie\u0144","transactions_count":"Liczba zam\u00f3wie\u0144","transactions_heading":"Transakcje","transactions_list":"Wszystkie Transakcje powi\u0105zane z klientem ","transfers_heading":"Transfery punkt\u00f3w dla klienta","transfers_list":"Lista transfer\u00f3w punktowych","value":"Warto\u015b\u0107"},"customer with such loyalty card number already exists":"Klient z takim numerem karty lojalno\u015bciowej ju\u017c istnieje","customer with such phone already exists":"Klient z takim numerem telefonu ju\u017c istnieje","customer_campaign":{"active_points":"Zrealizuj nowe nagrody, mo\u017cesz u\u017cy\u0107 <b>{{points}}<\/b> aktywnych punkt\u00f3w","all_time_Active":"Ca\u0142y czas dost\u0119pna","bought_list":"Moje odebrane nagrody","coupon_used":"Ten kupon zosta\u0142 wykorzystany","footer":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","list":"Moje nagrody","will_be_active_since":"Kupon b\u0119dzie wa\u017cny od  {{ date }}","will_be_active_till":"Kupon b\u0119dzie wa\u017cny do {{ date }}","more_information":{"button":"Kliknij tutaj, aby uzyska\u0107 wi\u0119cej informacji"},"no_bought_rewards":"Brak odebranych nagr\u00f3d","no_desc":"Opis nagrody nie jest ustawiony","no_name":"Brak nazwy kampanii nagr\u00f3d","no_rewards":"Brak dost\u0119pnych nagr\u00f3d","not_enough_points":"Niewystarczaj\u0105ca ilo\u015b\u0107 punkt\u00f3w","points":"Punkty","redeem":"Zrealizuj nagrod\u0119","reward_code":"KOD NAGRODY","reward_congratulations":"Gratulacje!","reward_ended":"Kampania zosta\u0142a zako\u0144czona","reward_footer":"Instrukcja nagrody, lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","reward_not_available":"Ta nagroda nie jest dost\u0119pna","reward_ready":"Twoja nagroda jest gotowa do odbioru.","see_bought":"Zobacz nagrody, kt\u00f3re odebra\u0142e\u015b","singleCoupon_prompt":"Aby odkupi\u0107 klient\u00f3w, b\u0119dzie mo\u017cna u\u017cy\u0107 tego samego kuponu","used_confirmation":"Potwierd\u017a u\u017cycie nagrody","used_confirmation_description":"Prosz\u0119 potwierd\u017a u\u017cycie nagrody","will_be_active_all_time":"Ta kampania b\u0119dzie dost\u0119pna ca\u0142y czas","will_be_active_dates":"Ta kampania nagr\u00f3d b\u0119dzie dost\u0119pna od {{from}} do {{to}}","will_be_active_soon":"Jeszcze nieaktywne"},"customer_dashboard":{"benefits_title":"Korzy\u015bci","check_transactions":{"button_name":"ZOBACZ TRANSAKCJE","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Sprawd\u017a swoje transakcje"},"connect_with_online_store":{"button_name":"PO\u0141\u0104CZ","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Dopasuj do eCommerce"},"current_level":"Tw\u00f3j obecny poziom:  <b>{{levelName}}<\/b>, twoja <br \/> zni\u017cka <b>-{{level}}<\/b> nagrody.","customize_profile":{"button_name":"EDYTUJ PROFIL","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Dostosuj profil"},"earn_points":{"button_name":"ZDOB\u0104D\u0179 WI\u0118CEJ PUNKT\u00d3W","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Zdobywaj punkty"},"earning_rules":"Dowiedz si\u0119 <a href=\"#\" ui-sref=\"customer.panel.earning_rules\">jak zdobywa\u0107 nowe punkty<\/a>.","earning_rules_title":"Zdob\u0105d\u017a punkty","faq":{"button_name":"przeczytaj FAQ","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"FAQ"},"get_rewards":{"button_name":"ZREALIZUJ NAGRODY","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Zdob\u0105d\u017a nagrody"},"invite":{"button_name":"Zapro\u015b","input_placeholder":"E-mail","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Zapro\u015b przyjaciela"},"my_benefits":{"button_name":"Sprawd\u017a poziom","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Moje korzy\u015bci"},"points_to_next_level":"Potrzebujesz <b>{{pointsToNextLevel}}<\/b> punkt\u00f3w do nast\u0119pnego poziomu, <a href=\"#\" ui-sref=\"customer.static({''pageName'':''benefits''})\">zobacz szczeg\u00f3\u0142y<\/a>","rewards":"Zrealizuj nowe nagrody, mo\u017cesz korzysta\u0107 z <br \/><b>{{points}}<\/b> aktywnych punkt\u00f3w. <a href=\"#\" ui-sref=\"customer.panel.campaign-list\">Otrzymasz nagrody<\/a> lub <a href=\"#\" ui-sref=\"customer.panel.bought-campaign-list\">Zobacz nagrody<\/a> jakie wykorzysta\u0142e\u015b","rewards_title":"Zdob\u0105d\u017a nagrody","see_all_benefits":"<a href=\"#\" ui-sref=\"customer.static({''pageName'':''benefits''})\">See all benefits<\/a> from your level","title":"Witamy ","transaction_amount_to_next_level":"Potrzebujesz <b>{{transactionsAmountToNextLevel}}<\/b> do nast\u0119pnego poziomu.","transaction_amount_without_delivery_costs_to_next_level":"Potrzebujesz <b>{{transactionsAmountToNextLevelWithoutDeliveryCosts}}<\/b> do nast\u0119pnego poziomu.","visit_offline_stores":{"button_name":"sklepy offline","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Odwied\u017a sklepy offline"}},"customer_earning_rules":{"custom_event":"Niestandardowe wydarzenie","points":"Ka\u017cdy {{pointsValue}}{{currency}} = 1 punkt","product_purchase":"Dodatkowe punkty do zakupu {{sku}}","table":{"description":"Opis","end_at":"Sko\u0144czy\u0107 na","name":"Jak?","points":"Punkty","start_at":"Zacz\u0105\u0107 od","type":"Rodzaj"},"title":"Jak zdoby\u0107 punkty?"},"customer_global":{"account":"Konto","active":"Aktywny","admin_footer":"2016 Open Loyalty","all_time_active":"Czy ca\u0142y czas jest aktywny","and":"I","cancel":"Anuluj","change":"Zmie\u0144","configuration":"Konfiguracja","confirm":"Tak","edit":"Edytuj","emails":"E-maile dotycz\u0105ce transakcji","false":"Fa\u0142sz","home":"Panel g\u0142\u00f3wny","inactive":"Nieaktywny","level":"Poziom","loading":"\u0142adowanie","logout":"Wyloguj","menu":"Menu","no":"Nie","no_rows_to_display":"Brak wierszy do wy\u015bwietlenia","not_set":"Nieustawione","ok":"OK","or":"LUB","owner_data":{"text":"Lorem ipsum dolor sit amet"},"save":"Zapisz","search":"Szukaj","segment":"Segment","settings":"Ustawienia","show":"Poka\u017c","start_typing_an_email":"wprowad\u017a adres e-mail, aby wyszuka\u0107","static_content":{"benefits":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Moje korzy\u015bci"},"connect_online_stores":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Dopasuj do eCommerce"},"contact":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Kontakt"},"faq":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"FAQ"},"how_to_earn":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Jak zdobywa\u0107 punkty?"},"match_with_ecommerce":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Dopasuj do eCommerce"},"rules":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Zasady i warunki"},"visit_offline":{"content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget tincidunt est. Sed fringilla dapibus venenatis.","title":"Odwied\u017a sklepy offline"}},"true":"Prawda","unlimited":"Nieograniczony","users":"U\u017cytkownicy","yes":"Tak"},"customer_nav":{"copyrights":"","earning_points":"Moje punkty","home":"Panel g\u0142\u00f3wny","logo1":"Loyalty","logo2":"Program","match_with_ecommerce":"Dopasuj do eCommerce","my_level":"M\u00f3j poziom","my_profile":"M\u00f3j profil","my_rewards":"Moje nagrody","my_transactions":"Moje transakcje"},"customer_profile":{"activate_confirmation":"Czy chcesz aktywowa\u0107 konto klienta?","activate_confirmation_description":"Czy chcesz aktywowa\u0107 klienta?","add":"Dodaj klienta","add_address":"Adres","add_company":"Firma","add_heading":"Dodaj klienta","add_profile_id":"dodaj Profile ID","address_address1_prompt":"","address_address2_prompt":"","address_city_prompt":"","address_country_prompt":"","address_province_prompt":"","address_street_prompt":"","agreement1":"Regulamin","agreement1_prompt":"Ta zgoda jest wymagana","agreement2":"Zgoda marketingowa","agreement2_prompt":"","agreement3":"Zgoda na przetwarzanie danych osobowych","agreement3_prompt":"","agreements":"Zgody","basic_info":"Informacje Podstawowe","birth_date":"Data urodzenia","birth_date_prompt":"","building_name":"Budynek","change_password":{"current":"Obecne has\u0142o","do_not_match":"Has\u0142a nie pasuj\u0105 do siebie","new_first":"Nowe has\u0142o","new_second":"Powt\u00f3rz nowe has\u0142o"},"city":"Miasto","company_name":"Firma","company_name_prompt":"","company_nip_prompt":"","country":"Pa\u0144stwo","created_at":"Data utworzenia","data":{"basic":"Informacje podstawowe","change_password":"Zmie\u0144 has\u0142o"},"delete_confirmation":"Czy chcesz dezaktywowa\u0107 tego klienta?","delete_confirmation_description":"Ten klient zostanie dezaktywowany i nie b\u0119dzie ju\u017c mo\u017cliwo\u015bci jego aktywacji","edit":"Edytuj","edit_heading":"Edytuj klienta","email":"E-mail","email_prompt":"","female":"Kobieta","not_disclosed":"Nie ujawniono","first_name_prompt":"","flat_name":"Mieszkanie","gender":"P\u0142e\u0107","gender_prompt":"","heading":"Klienci","import":"Import klient\u00f3w","import_title":"Import klient\u00f3w","import_xml_field":"Wybierz plik","inactive":"Nieaktywny","last_name_prompt":"","lc_number":"Numer Karty Lojalno\u015bciowej","list":"Lista klient\u00f3w","loyalty_card_number_prompt":"","male":"M\u0119\u017cczyzna","name":"Imi\u0119","nip":"Numer Identyfikacji Podatkowej","password":"Has\u0142o","phone":"Telefon","phone_prompt":"","postal":"Kod pocztowy","postal_prompt":"","profile_details":"Szczeg\u00f3\u0142y","profile_id":"Profile ID","profile_id_prompt":"","profile_ids":"Profile IDs","show_address_prompt":"","show_company_prompt":"","state":"Status","street":"Ulica","surname":"Nazwisko","transfers_heading":"Transfery punktowe dla klienta","transfers_list":"Lista transfer\u00f3w punktowych"},"customer_security":{"back_to_login":"Powr\u00f3\u0107 do strony logowania","change_password":"Zmie\u0144 has\u0142o","login":{"copyrights":"2016 Open Loyalty","credentials":"Niepoprawne dane logowania","forgot":"Zapomnia\u0142e\u015b has\u0142a?","get_terms_conditions":"Pobierz regulamin","heading":"Zaloguj si\u0119 na swoje konto","log_in":"Zaloguj","password":"Has\u0142o","remember_me":"Nie wylogowuj mnie","username":"Login"},"new_password":"Nowe has\u0142o","registration":{"add_address":"Dodaj dane adresowe","add_company":"Dodaj dane firmy","address":"Adres","agreement1":"Regulamin","agreement2":"Zgoda marketingowa","agreement3":"Zgoda na przetwarzanie danych osobowych","agreements":"Zgody","basic_info":"Informacje Podstawowe","birth_date":"Data urodzenia","building_name":"Numer domu","check":{"first":"Osi\u0105gnij poziomy!","second":"Zdob\u0105d\u017a punkty!","third":"Zrealizuj nagrody!"},"city":"Miasto","company_data":"Dane Firmy","company_name":"Nazwa firmy","country":"Pa\u0144stwo","create_account":"Stw\u00f3rz konto","description":"Mo\u017cesz utworzy\u0107 tutaj konto w programie lojalno\u015bciowym.","email":"E-mail","female":"Kobieta","not_disclosed":"Nie ujawniono","flat_name":"Numer mieszkania","gender":"P\u0142e\u0107","heading":"Utw\u00f3rz konto","lc_number":"Numer Karty Lojalno\u015bciowej","male":"M\u0119\u017cczyzna","name":"Imi\u0119","nip":"Numer Identyfikacji Podatkowej","password":"Has\u0142o","password_repeat":"Powt\u00f3rz has\u0142o","phone":"Telefon","postal":"Kod pocztowy","state":"Wojew\u00f3dztwo","street":"Ulica","surname":"Nazwisko"},"registration_activation":{"activate_or_resend_code":"Aktywuj konto lub ponownie wy\u015blij kod","code":"Kod aktywacyjny","phone":"Numer telefonu","resend_code":"Wy\u015blij ponownie kod","title":"Aktywacja konta"},"request_description":"Wpisz sw\u00f3j login, a my wy\u015blemy Ci has\u0142o do odzyskiwania","request_heading":"Zapomnia\u0142e\u015b has\u0142a?","reset_description":"Wprowad\u017a nowe has\u0142o","reset_heading":"Odzyskiwanie has\u0142a","send_request":"ODZYSKAJ HAS\u0141O","username":"Nazwa u\u017cytkownika"},"customer_status":{"active_points":"Aktywne punkty","current_discount":"Aktualny rabat","expired_points":"Wygas\u0142e punkty","my_profile":"M\u00f3j profil","my_profile_edit":"Edytuj profil","next_level_discount":"Nast\u0119pny poziom rabatu","points_to_next_level":"Potrzebujesz {{ pointsToNextLevel }} wi\u0119cej punkt\u00f3w, aby przej\u015b\u0107 do nast\u0119pnego poziomu","points_to_next_level2":"Punkty do nast\u0119pnego poziomu","title":"Moje konto","transactions_amount":"Warto\u015b\u0107 transakcji","transactions_amount_to_next_level":"Warto\u015b\u0107 transakcji dla uzyskania nast\u0119pnego poziomu","transactions_amount_to_next_level_without_delivery_costs":"Warto\u015b\u0107 transakcji (bez koszt\u00f3w dostawy) dla nast\u0119pnego poziomu","used_points":"Wykorzystane punkty"},"customer_transaction":{"actions":"Akcje","amount":"Kwota","building_name":"Numer domu","category":"Kategoria","city":"Miasto","country":"Pa\u0144stwo","customer_email":"E-mail","customer_email_prompt":"Znajd\u017a transakcj\u0119 za pomoc\u0105 e-mail","customer_id":"ID Klienta","customer_id_prompt":"Wpisz unikalny ID klienta","customer_loyalty_card_number":"Numer karty lojalno\u015bciowej","customer_name":"Imi\u0119 i nazwisko","customer_phone_number":"Numer telefonu","details":"Szczeg\u00f3\u0142y przedmiotu","document_number":"Numer dokumentu","document_type":"Typ dokumentu","document_types":{"both":"Wszystkie","return":"Zwrot","sell":"Sprzeda\u017c"},"email":"E-mail","empty_transactions":"Brak transakcji do wy\u015bwietlenia","gross":"Warto\u015b\u0107 brutto","heading":"Transakcje","id":"ID Transakcji","item_details":"Szczeg\u00f3\u0142y przedmiotu","labels":"Etykiety","link":"Dopasuj do klienta","link_modal":"Dopasuj klienta do transakcji","list":"Lista transakcji","loyaltyCardNumber":"Numer karty lojalno\u015bciowej","maker":"Marka","name":"Nazwa","phone":"Telefon","points_earned":"Zdobyte punkty","pos_name":"Nazwa sklepu","postal_code":"Kod pocztowy","purchase_date":"Data zakupu","purchase_place":"POS","quantity":"Ilo\u015b\u0107","revised_document":"Poprawiony dokument","sku":"SKU","state":"Pa\u0144stwo","street":"Ulica","sum":"Suma","transaction_document_number":"Numer dokumentu","transaction_document_number_prompt":"Znajd\u017a transakcj\u0119 za pomoc\u0105 numeru dokumentu","transaction_id":"Id transakcji","unit_name":"Numer mieszkania"},"customer_transfer":{"comment":"Komentarz","created_at":"Data utworzenia","empty_transfers":"Brak danych do wy\u015bwietlenia","expire_at":"Wyga\u015bnie w","heading":"Zdob\u0105d\u017a punkty","list":"Lista transfer\u00f3w punktowych","state":"Status","type":"Rodzaj","value":"Warto\u015b\u0107","locked_until":"Zablokowane do"},"dashboard":{"heading":"Dashboard"},"earning_rule":{"actions":"Akcje","active":"Status","active_prompt":"","add":"Dodaj regu\u0142\u0119","add_earning_rule":"Dodaj regu\u0142\u0119","add_excluded_label":"Dodaj wy\u0142\u0105czon\u0105 etykiet\u0119","add_included_label":"Dodaj etykiet\u0119","add_excluded_sku":"Dodaj SKU","add_heading":"Dodaj regu\u0142\u0119","add_label_multiplier":"Dodaj mno\u017cnik","all_time_active":"Ca\u0142y czas dost\u0119pna","all_time_active_prompt":"","basic_info":"Podstawowe Informacje","code":"Code","code_prompt":"","custom_event_name":"Nazwa zdarzenia","custom_event_name_prompt":"","custom_event_usage":"U\u017cycie","description":"Opis","description_prompt":"","details":"Szczeg\u00f3\u0142y regu\u0142y","edit":"Edytuj regu\u0142\u0119 nagradzania","edit_heading":"Edytuj regu\u0142\u0119","end_at":"Obowi\u0105zuje do","end_at_prompt":"","event_name":"Rodzaj zdarzenia","event_name_prompt":"","exclude_delivery_cost":"Nie obejmuje koszt\u00f3w dostawy","excluded_delivery_cost_prompt":"","excluded_labels":"Z wy\u0142\u0105czeniem etykiet:","included_labels":"Zawiera etykiety:","excluded_skus":"Z wy\u0142\u0105czeniem SKU:","excluded_skus_prompt":"","exluded_labels":"Z wy\u0142\u0105czeniem etykiet:","labels_inclusion_type":"Etykiety","labels_inclusion_type_none":"brak","labels_inclusion_type_exclude":"z wy\u0142\u0105czeniem","labels_inclusion_type_include":"tylko wybrane","labels_inclusion_type_prompt":"","heading":"Zasady przyznawania punkt\u00f3w","key":"Klucz","key_prompt":"","label_multiplier_prompt":"","label_multipliers":"Mno\u017cniki","label_value_prompt":"","last_executed_rule":"Jest ostatni\u0105 wykonan\u0105 regu\u0142\u0105","last_executed_rule_prompt":"Je\u015bli zaznaczone, zatrzymane zostanie wykonywanie innych regu\u0142 ktore wykonywane s\u0105 przy transakcji","levels":"Poziomy","levels_prompt":"","limit":{"1 day":"1 Dzie\u0144","1 month":"1 Miesi\u0105c","1 week":"1 Tydzie\u0144","active":"Ograniczenia obowi\u0105zywania","active_prompt":"","limit":"Limit zastosowa\u0144","limit_prompt":"","period":"Ramy czasowe","period_prompt":"","3 months":"3 miesi\u0105ce","6 months":"6 miesi\u0119cy","1 year":"1 rok","forever":"Na zawsze"},"limit_info":"Limit u\u017cycia","limit_period":{"day":"dzie\u0144","month":"miesi\u0105c","week":"tydzie\u0144","3 months":"3 miesi\u0105ce","6 months":"6 miesi\u0119cy","1 year":"1 rok","forever":"Na zawsze"},"list":"Lista regu\u0142 zdobywania punkt\u00f3w","min_order_value":"Minimalna warto\u015b\u0107 zam\u00f3wienia","min_order_value_prompt":"Minimalna warto\u015b\u0107 zam\u00f3wienia wymagana do zdobywania punkt\u00f3w","multiplier":"Mno\u017cnik","multiplier_prompt":"","name":"Nazwa","name_prompt":"","photo":"Zdj\u0119cie","point_value":"Warto\u015b\u0107 punktu","point_value_prompt":"Ilo\u015b\u0107 punkt\u00f3w za ka\u017cdy wydany 1 z\u0142","points_amount":"Punkty","points_amount_prompt":"","pos":"POS","pos_prompt":"","promoted_events":{"oloy.account.created":"Konto utworzone","oloy.customer.logged_in":"Klient zalogowany","oloy.customer.newsletter_subscription":"Subskrypcja newslettera","oloy.customer.referral":"Zaproszenia do programu","oloy.transaction.customer_first_transaction":"Pierwszy zakup"},"referral_events":{"every_purchase":"Ka\u017cdy zakup","first_purchase":"Pierwszy zakup","register":"Zarejestruj"},"referral_types":{"both":"obaj","referred":"zaproszony","referrer":"polecaj\u0105cy"},"reward":"Osoba nagradzana","reward_campaign":"Kampania nagroda","reward_campaign_prompt":"","reward_prompt":"","reward_type":"Nagroda","segments":"Segmenty","segments_prompt":"","select_currency":"Wybierz walut\u0119","sku":"SKU","SKU":"SKU","sku_prompt":"","start_at":"Obowi\u0105zuje od","start_at_prompt":"","target_type":"Grupa odbiorc\u00f3w","target_type_prompt":"Poziom lub segment klient\u00f3w, do kt\u00f3rego przypisano regu\u0142\u0119","type":"Rodzaj","type_details":"Szczeg\u00f3\u0142y regu\u0142y","type_prompt":"","types":{"custom_event":"Zdarzenie niestandardowe","event":"Zdarzenie systemowe","instant_reward":"Nagroda natychmiastowa","multiply_by_product_labels":"Mno\u017cenie punkt\u00f3w przez podany mno\u017cnik w etykiecie","multiply_for_product":"Pomn\u00f3\u017c zdobyte punkty","points":"Punkty za ka\u017cd\u0105 wydan\u0105 z\u0142ot\u00f3wk\u0119","product_purchase":"Zakup produktu","referral":"Zaproszenia do programu","geolocation":"Geolokalizacja","qrcode":"QRcode"},"value":"Warto\u015b\u0107","visibility_and_activity":"Dost\u0119pno\u015b\u0107 regu\u0142y","latitude":"Szeroko\u015b\u0107","latitude_prompt":"","longitude":"D\u0142ugo\u015b\u0107","longitude_prompt":"","radius":"Promie\u0144","radius_prompt":"w kilometrach od podanego punktu","points":"Punkty","points_prompt":""},"front_error":{"at_least_one":"Wype\u0142nij przynajmniej jedno pole","not_blank":"To pole nie powinno by\u0107 puste","not_blank_or_customerLoyaltyCardNumber":"Musisz poda\u0107 numer telefonu lub karty lojalno\u015bciowej","not_blank_or_customerPhoneNumber":"Musisz poda\u0107 numer telefonu lub karty lojalno\u015bciowej","not_blank_or_documentNumber":"Musisz poda\u0107 numer dokumentu","not_equal_plainPassword":"Has\u0142a nie s\u0105 r\u00f3wne","not_equal_plainPassword2":"Has\u0142a nie s\u0105 r\u00f3wne"},"global":{"account":"Konto","active":"Aktywny","admin_footer":"2018 Open Loyalty","all_time_active":"Bez ogranicze\u0144","and":"I","cancel":"Anuluj","change":"Zmie\u0144","configuration":"Konfiguracja","roles":"Uprawnienia","confirm":"Tak","edit":"Edytuj","emails":"E-maile","false":"Fa\u0142sz","home":"Panel g\u0142\u00f3wny","import":"Importuj","inactive":"Nieaktywny","level":"Poziom","loading":"\u0142adowanie","logout":"Wyloguj","logs":"Logi systemowe","menu":"Menu","no":"Nie","no_rows_to_display":"Nie ma \u017cadnych wierszy do wy\u015bwietlenia","not_set":"Nieustawione","or":"LUB","program_name":"Open Loyalty","remove":"Usu\u0144","save":"Zapisz","search":"Wyszukaj","segment":"Segment","settings":"Ustawienia","show":"Poka\u017c","start_typing_a_number":"Wprowad\u017a numer dokumentu transakcji","start_typing_an_email":"Wprowad\u017a nazw\u0119 do wyszukania","start_typing_an_email_or_phone":"Wprowad\u017a e-mail lub telefon do wyszukania","translations":"T\u0142umaczenia","translations_list":"T\u0142umaczenia","true":"Prawda","unlimited":"Nieograniczone","unlink":"Od\u0142\u0105cz","upload":"Za\u0142aduj","users":"U\u017cytkownicy","yes":"Tak"},"level":{"active":"Status","active_prompt":"","add":"Dodaj poziom","add_heading":"Dodaj poziom","add_special_reward":"Dodaj specjaln\u0105 nagrod\u0119","assign_level":"Przypisz poziom","assign_pos":"Przypisz POS","assigned_manually":"Poziom przypisany r\u0119cznie","basic_info":"Informacje Podstawowe","code":"Kupon","condition_value":"Warunek osi\u0105gni\u0119cia poziomu","condition_value_prompt":"","created_at":"Data utworzenia","description":"Opis","description_prompt":"","edit":"Edytuj poziom","edit_heading":"Edytuj ","end_at":"Obowi\u0105zuje do","heading":"Poziomy","inactive":"Nieaktywny","list":"Lista poziom\u00f3w","min_order":"Minimalna warto\u015b\u0107 zam\u00f3wienia","min_order_prompt":"","name":"Nazwa","name_prompt":"","no_level":"Nie ma zdefiniowanych poziom\u00f3w","photo":"Zdj\u0119cie","reward_code":"Kod nagrody","reward_code_prompt":"","reward_details":"Szczeg\u00f3\u0142y nagrody","reward_name":"Nazwa nagrody","reward_name_prompt":"","reward_value":"Warto\u015b\u0107 nagrody","reward_value_prompt":"","select_level":"Przypisz poziom","special_reward_details":"Szczeg\u00f3\u0142y specjalnej nagrody","special_rewards":"Specjalne nagrody","specialreward_active_prompt":"","specialreward_code_prompt":"","specialreward_endat_prompt":"","specialreward_name_prompt":"","specialreward_startat_prompt":"","specialreward_value_prompt":"","start_at":"Obowi\u0105zuje od","users":"Klienci","users_in_level":"Klienci przypisani do poziomu","value":"Warto\u015b\u0107"},"login":{"copyrights":"2016 Open Loyalty","credentials":"Niepoprawne dane logowania","forgot":"Zapomnia\u0142e\u015b has\u0142a?","heading":"Zaloguj si\u0119 na swoje konto","log_in":"Zaloguj","password":"Has\u0142o","remember_me":"Nie wylogowuj mnie","username":"Login"},"nav":{"add_campaign":"Dodaj nagrod\u0119","add_customer":"Dodaj klienta","add_earning_rule":"Dodaj regu\u0142\u0119","add_level":"Dodaj poziom","add_pos":"Dodaj sklep","add_segment":"Dodaj segment","add_seller":"Dodaj sprzedawc\u0119","all_campaigns":"Katalog nagr\u00f3d","all_customers":"Wszyscy klienci","all_earning_rules":"Wszystkie regu\u0142y","all_levels":"Wszystkie poziomy","all_pos":"Wszystkie sklepy","all_segments":"Wszystkie segmenty","all_sellers":"Wszyscy sprzedawcy","all_transactions":"Wszystkie transakcje","all_transfers":"Wszystkie transfery punkt\u00f3w","campaigns":"Nagrody","customers":"Klienci","dashboard":"Dashboard","earning_rules":"Regu\u0142y nagradzania","guide":"Poradnik","home":"Panel g\u0142\u00f3wny","levels":"Poziomy","pos":"POS","redeemed_campaigns":"Odebrane nagrody","referred_customer":"Zaproszeni klienci","retention_matrix":"Macierz retencji","segments":"Segmenty","sellers":"Sprzedawcy","support":"Wsparcie","transactions":"Transakcje","transfers":"Transfery punkt\u00f3w","all_campaign_categories":"Wszystkie kategorie kampanii"},"Plik nie m\u00f3g\u0142 zosta\u0107 odnaleziony.":"Nie mo\u017cna znale\u017a\u0107 pliku","pos":{"actions":"Akcje","add":"Dodaj sklep","add_heading":"Dodaj sklep","address1_prompt":"","address2_prompt":"","basic_info":"Informacje Podstawowe","building_name":"Numer domu","city":"Miasto","city_prompt":"","country":"Pa\u0144stwo","country_prompt":"","description":"Opis","description_prompt":"","edit":"Edytuj sklep","edit_heading":"Edytuj sklep","heading":"POS","identifier":"POS ID","identifier_prompt":"","lat":"Szeroko\u015b\u0107 geograficzna","lat_prompt":"","list":"Lista sklep\u00f3w","localization":"Adres","long":"D\u0142ugo\u015b\u0107 geograficzna","long_prompt":"","name":"Nazwa","name_prompt":"","no_pos":"Brak zdefiniowanych sklep\u00f3w","postal_code":"Kod pocztowy","postal_prompt":"","province_prompt":"","select_country":"Wybierz pa\u0144stwo","select_pos":"Przypisz POS","state":"Wojew\u00f3dztwo","street_name":"Ulica","street_prompt":"","transactions_amount":"Warto\u015b\u0107 transakcji","transactions_count":"Liczba transakcji","unit_name":"Numer mieszkania"},"registration":{"add_address":"Dodaj dane adresowe","add_company":"Dodaj dane firmy","address":"Adres","agreement1":"Regulamin","agreement2":"Zgoda marketingowa","agreement3":"Zgoda na przetwarzanie danych osobowych","agreements":"Umowy","basic_info":"Informacje Podstawowe","birth_date":"Data urodzenia","building_name":"Numer domu","check":{"first":"Osi\u0105gnij poziom!","second":"Zdob\u0105d\u017a punkty!","third":"Zrealizuj nagrody!"},"city":"Miasto","company_data":"Dane Firmy","company_name":"Nazwa firmy","country":"Pa\u0144stwo","create_account":"Utw\u00f3rz konto","description":"Mo\u017cesz utworzy\u0107 konto lojalno\u015bciowe tutaj.","email":"E-mail","female":"Kobieta","not_disclosed":"Nie ujawniono","flat_name":"Numer mieszkania","gender":"P\u0142e\u0107","heading":"Stw\u00f3rz konto","lc_number":"Numer Karty Lojalno\u015bciowej","male":"M\u0119\u017cczyzna","name":"Imi\u0119","nip":"Numer Identyfikacji Podatkowej","password":"Has\u0142o","password_repeat":"Powt\u00f3rz has\u0142o","phone":"Telefon","postal":"Kod pocztowy","state":"Wojew\u00f3dztwo","street":"Ulica","surname":"Nazwisko"},"registration_activation":{"basic_info":"Aktywacja konta","code":"Kod aktywacyjny"},"security":{"back_to_login":"Wr\u00f3\u0107 do strony logowania","change_password":"Zmie\u0144 has\u0142o","new_password":"Nowe has\u0142o","request_description":"Wprowad\u017a login, wy\u015blemy ci tymczasowe has\u0142o","request_heading":"Zapomnia\u0142e\u015b has\u0142a?","reset_description":"Wprowad\u017a nowe has\u0142o","reset_heading":"Odzyskiwanie has\u0142a","send_request":"ODZYSKIWANIE HAS\u0141A","username":"Nazwa u\u017cytkownika"},"segment":{"actions":"Akcje","active":"Status","active_prompt":"","add":"Dodaj segment","add_criterion":"Dodaj warunek OR","add_heading":"Dodaj segment","add_identification_priority":"Dodaj kryterium","add_segment_part":"Dodaj warunek AND","anniversary_type_days_prompt":"","anniversary_type_prompt":"","basic_info":"Informacje podstawowe","created_at":"Data utworzenia","days_prompt":"","delete_confirmation":"Czy chcesz usun\u0105\u0107 wybrany segment?","delete_confirmation_description":"Ta operacja nie mo\u017ce zosta\u0107 cofni\u0119ta.","description":"Opis","description_prompt":"","details_heading":"Szczeg\u00f3\u0142y nagrody","edit":"Edytuj segment","edit_heading":"Edytuj segment","from_amount_prompt":"","from_date_prompt":"","heading":"Segmenty","label_key_prompt":"","label_value_prompt":"","list":"Lista segment\u00f3w","maker_prompt":"","mas_prompt":"","min_prompt":"","name":"Nazwa","name_prompt":"","no_data":"Brak danych do wy\u015bwietlenia","partials":{"add_label":"Dodaj etykiet\u0119","anniversary":"Wydarzenie","average_transaction_amount":"\u015arednia warto\u015b\u0107 transakcji","birthday":"Urodziny","bought_in_pos":"Sklep, w kt\u00f3rym dokonano zakupu","bought_labels":"Produkty o danych etykietach","bought_makers":"Zakupione produkty (marka)","bought_skus":"Zakupione produkty (SKU)","choose_pos":"Wybierz POS","customers":"Klienci","customers_prompt":"Dodaj dowolnych klient\u00f3w","customer_has_labels":"Klienci oznaczeni etykietami","customer_list":"Dowolna lista klient\u00f3w","customer_with_labels_values":"Klienci oznaczeni etykietami o warto\u015bci","date_from":"Data od","date_to":"Data do","days":"Ilo\u015b\u0107 dni","key":"Klucz","last_purchase_n_days_before":"Ostatni zakup n dni temu","makers":"Marki","max":"Max","max_amount":"Max","min":"Min","min_amount":"Min","percent":"Procent","percent_prompt":"","pos":"POS","pos_id_prompt":"","purchase_period":"Czas zakupu","registration":"Rejestracja","select_pos":"Wybierz POS...","select_type":"Wybierz rodzaj...","skus":"SKU","transaction_amount":"Warto\u015b\u0107 transakcji","transaction_count":"Cz\u0119stotliwo\u015b\u0107 zakup\u00f3w","transaction_percent_in_pos":"Procent zakup\u00f3w w sklepie","type":"Typ","value":"Warto\u015b\u0107"},"parts":"Kryteria","percent_prompt":"","pos_id_prompt":"","pos_ids_prompt":"","skus_prompt":"","to_amount_prompt":"","to_date_prompt":"","type_prompt":"","users":"Klienci","users_in_segment":"Klienci przypisani do segmentu"},"seller":{"actions":"Akcje","active":"Status","active_prompt":"","add":"Dodaj sprzedawc\u0119","add_heading":"Dodaj sprzedawc\u0119","allow_point_transfer":"Zezw\u00f3l sprzedawcy dodawa\u0107 nowy transfer punkt\u00f3w","change_passowrd":"Zmie\u0144 has\u0142o","customer_search":{"city":"Miasto","city_prompt":"Miasto klienta","email":"Adres e-mail","email_prompt":"Adres e-mail klienta","find":"Szukaj klienta","heading":"Zidentyfikuj klienta","loyalty_card_number":"Numer karty lojalno\u015bciowej","name":"Imi\u0119 i nazwisko","firstName":"Imi\u0119","lastName":"Nazwisko","phone":"Numer telefonu","phone_prompt":"Numer telefonu klienta","postcode":"Kod pocztowy","postcode_prompt":"Kod pocztowy klienta","result":"Wyniki wyszukiwania"},"dashboard":{"campaigns":"Kampanie nagr\u00f3d","earning_points_rules":"Zasady przyznawania punkt\u00f3w","find_customer":"Szukaj klienta","find_transaction":"Znajd\u017a transakcj\u0119","heading":"Dashboard","match_transaction_and_customer":"Dopasuj transakcj\u0119 i klienta","register_customer":"Zarejestruj klienta","title":{"campaign_list":"Katalog nagr\u00f3d","customer_campaigns":"kampanie klienta","customer_edit":"Edytuj klienta","customer_registration":"Rejestracja klienta","customer_registration_activation":"rejestracja klienta","customer_rewards":"nagrody klienta","customer_transactions":"transakcje klienta","customer_transfers":"transfery klienta","earning_rules":"Regu\u0142y nagradzania","find_customer":"Znajd\u017a klienta","find_transaction":"Znajd\u017a transakcj\u0119","transactions":"Transakcje"}},"delete_confirmation":"Czy chcesz usun\u0105\u0107 konto sprzedawcy?","delete_confirmation_description":"Tej akcji nie mo\u017cna cofn\u0105\u0107.","details":"Informacje podstawowe","discount_code":"","edit":"Edytuj sprzedawc\u0119","edit_heading":"Edytuj sprzedawc\u0119","email":"E-mail","email_prompt":"","first_name_prompt":"","heading":"Sprzedawcy","last_name_prompt":"","list":"Lista sprzedawc\u00f3w","name":"Imi\u0119","no_seller":"Brak dost\u0119pnych sprzedawc\u00f3w","pass_prompt":"Wprowad\u017a has\u0142o","pass_prompt_change":"","password":"Has\u0142o","phone":"Telefon","phone_prompt":"","pos":"POS","pos_prompt":"","posCity":"Miasto","posId":"POS ID","posName":"Nazwa","select_pos":"Przypisz POS","select_seller":"Przypisz sprzedawc\u0119","surname":"Nazwisko","transaction":{"customer_loyalty_card_number_prompt":"Wprowad\u017a numer karty lub wype\u0142nij telefon poni\u017cej","customer_phone_number_prompt":"Wprowad\u017a numer karty lub wype\u0142nij telefon powy\u017cej","find":{"document_number_prompt":"","heading":"Znajd\u017a transakcj\u0119"},"heading":"Dopasuj klienta do transakcji","search_results":"Wyniki wyszukiwania","transaction_id_prompt":"Wprowad\u017a numer dokumentu"}},"settings":{"level_downgrade":{"title":"Ustawienia zwi\u0105zane ze zmian\u0105 poziomu na ni\u017cszy","mode":"Tryb","mode_prompt":"","days":"Sprawd\u017a co","days_prompt":"dni","base":"W oparciu o","base_prompt":"","active_points":"atkywne punkty","earned_points":"punkty zgromadzone przez ostatnie X dni","earned_points_since_last_level_change":"punkty zgromadzone od ostatniej zmiany levelu","after_x_days":"co X dni","none":"brak spadku","automatic":"automatycznie","reset_points":"resetuj punkty"},"allow_customers_profile_edits":"Pozwalaj u\u017cytkownikom na edycj\u0119 swojego profilu","allow_customers_profile_edits_prompt":"Pozwalaj","point_will_expire_after":"Metoda wyga\u015bni\u0119cia punkt\u00f3w","at_the_end_of_the_year":"Punkty wygasn\u0105\u00a0na koniec roku","after_x_days":"Punkty wygasn\u0105 po X dniach","all_time_active":"Punkty nigdy nie wygasaj\u0105","all_time_not_locked":"Punkty nie s\u0105 blokowane","all_time_not_locked_prompt":"","at_the_end_of_the_month":"Punkty wygasn\u0105 na koniec miesi\u0105ca","accent_color":"Zdefiniuj kolor","conditions_file":"Warunki i Zasady U\u017cytkowania","accent_color_prompt":"Kolor w HEX (#000000)","account_activation":"Aktywacja konta","account_activation_method":"Metoda aktywacji konta","account_activation_method_prompt":"","add_identification_priority":"","big_logo":"Du\u017ce logo","coditions_url":"Adres URL polityki prywatno\u015bci","conditions_url":"Adres URL polityki prywatno\u015bci","count_points_immediately":"Nalicz punkty natychmiast","css_template":"Szablon CSS","css_template_prompt":"","currency":"Waluta","currency_plural":"Liczba mnoga waluty","currency_prompt":"","currency_singular":"Liczba pojedyncza waluty","customerStatusesEarning_prompt":"","customerStatusesSpending_prompt":"","defaultTranslations":"Domy\u015blny plik t\u0142umacze\u0144","defaultTranslations_prompt":"","enable_webhooks":"aktywuj Webhook","exclude_delivery_costs":"Koszty dostawy","exclude_delivery_costs_prompt":"Koszt dostawy produkt\u00f3w o danym SKU nie b\u0119dzie generowa\u0107 punkt\u00f3w","excluded_level_skus":"SKU wy\u0142\u0105czone z obliczania poziomu","excluded_skus":"Dotyczy SKU","excluded_skus_prompt":"","excludes_level_skus_prompt":"","expire_coupons_notification_days":"Ilo\u015b\u0107 dni przed wyga\u015bni\u0119ciem kuponu do poinformowania u\u017cytkownika","expire_coupons_notification_days_prompt":"[dni]","expire_points_notification_days":"Ilo\u015b\u0107 dni przed wyga\u015bni\u0119ciem punkt\u00f3w do poinformowania u\u017cytkownika","expire_points_notification_days_prompt":"[dni]","expire_levels_notification_days":"Ilo\u015b\u0107 dni do rekalkulacji levelu","expire_levels_notification_days_prompt":"[dni]","faq_url":"Adres URL FAQ","field_prompt":"","fields":"Kryterium","heading":"Konfiguracja","help_email":"Email do kontaktu z dzia\u0142em pomocy","help_email_address_prompt":"","hero_image":"Baner","identification_priority":"Kryteria dopasowania klienta do transakcji","lang":"J\u0119zyk","lang_prompt":"","logo":"Logo","marketing":"Marketing Automation Tool","marketing_vendor":"Wybierz integracj\u0119","marketing_vendor_prompt":"","points_days_active":"Punkty wygasn\u0105 po up\u0142ywie","points_days_locked":"Punkty b\u0119d\u0105 zablokowane przez","points_days_active_prompt":"[dni]","points_days_locked_prompt":" [dni]","points_plural":"Liczba mnoga punkt\u00f3w","points_singular":"Liczba pojedyncza punkt\u00f3w","posints_days_active_prompt":" [dni]","priority":"Priorytet","priority_prompt":"","program_conditions_url_prompt":"","program_faq_url_prompt":"","program_logo":"Logo programu","program_name":"Nazwa programu","program_name_prompt":"","program_points_plural_prompt":"","program_points_singular_prompt":"","program_url":"Adres URL programu","program_url_prompt":"","push_notification":"Powiadomienia Push","pushy_secret_key":"Klucz API Pushy","pushy_secret_key_prompt":"Aby u\u017cy\u0107 powiadomie\u0144 Pushy, wklej tutaj klucz API.","returns":"Zwroty","returns_prompt":"Aktywuj zwroty","sales_manago":{"api_key":"Klucz API","api_key_prompt":"","api_secret":"API secret","api_secret_prompt":"","api_url":"API URL","api_url_prompt":"","customer_id":"ID Klienta","customer_id_prompt":"","email":"Email","email_prompt":""},"select_currency":"Wybierz walut\u0119","select_lang":"Wybierz j\u0119zyk","select_timezone":"Wybierz stref\u0119 czasow\u0105","small_logo":"Ma\u0142e logo","smsAccountId":"ID konta","smsApiKey":"Klucz Api","smsApiToken":"SmsApi token","statuses":"Statusy umo\u017cliwiaj\u0105ce zdobywanie i wydawanie punkt\u00f3w","statuses_earning":"Statusy umo\u017cliwiaj\u0105ce zdobywanie punkt\u00f3w","statuses_spending":"Statusy umo\u017cliwiaj\u0105ce wydawanie punkt\u00f3w","template":"Szablon","tier_assign_type":"Poziomy b\u0119d\u0105 obliczane za pomoc\u0105","tier_assign_type_prompt":"","timezone":"Strefa czasowa","timezone_prompt":"","title":"Konfiguracja","uri_webhooks":"Adres URL","uri_webhooks_prompt":"adres URL us\u0142ugi, gdzie przesy\u0142ane s\u0105 zdarzenia","webhook_header_name":"Nazwa nag\u0142\u00f3wka","webhook_header_name_prompt":"np. Content-Acme-Key","webhook_header_value":"Warto\u015b\u0107 nag\u0142\u00f3wka","webhook_header_value_prompt":"","webhooks":"Webhook"},"Ta warto\u015b\u0107 nie powinna by\u0107 pusta.":"Ta warto\u015b\u0107 nie powinna by\u0107 pusta","Ten plik nie jest obrazem.":"Ten plik nie jest obrazem","transaction":{"actions":"Akcje","amount":"Kwota","building_name":"Numer domu","category":"Kategoria","city":"Miasto","country":"Pa\u0144stwo","customer_email":"E-mail","customer_email_or_phone":"E-mail lub telefon","customer_email_or_phone_prompt":"Znajd\u017a klienta za pomoc\u0105 adresu e-mail lub telefonu","customer_email_prompt":"Znajd\u017a klienta za pomoc\u0105 adresu e-mail","customer_id":"ID Klienta","customer_id_prompt":"Wpisz unikalne ID klienta","customer_loyalty_card_number":"Numer karty lojalno\u015bciowej","customer_name":"Imi\u0119 i nazwisko","customer_phone_number":"Numer telefonu","details":"Szczeg\u00f3\u0142y przedmiotu","document_number":"Numer dokumentu","document_number_should_be_unique":"Numer dokumentu musi by\u0107 unikalny","document_type":"Rodzaj dokumentu","document_types":{"both":"Wszystkie","return":"Zwrot","sell":"Sprzeda\u017c"},"edit_labels":"Edytuj etykiety transakcji","email":"E-mail","gross":"Warto\u015b\u0107 brutto","heading":"Transakcje","id":"ID Transakcji","import":"Importuj transakcj\u0119","import_title":"Import transakcji","import_xml_field":"Wybierz plik","item_details":"Szczeg\u00f3\u0142y przedmiotu","labels":"Etykiety","link":"Dopasuj do klienta","link_modal":"Dopasuj klienta do transakcji","list":"Lista transakcji","loyaltyCardNumber":"Numer karty lojalno\u015bciowej","maker":"Marka","name":"Nazwa","phone":"Telefon","points_earned":"Zdobyte punkty","points_revoked":"Punkty odwo\u0142ane","pos_name":"Nazwa POS","postal_code":"Kod pocztowy","purchase_date":"Data zakupu","purchase_place":"POS","quantity":"Ilo\u015b\u0107","revised_document":"Poprawiony dokument","sku":"SKU","state":"Pa\u0144stwo","street":"Ulica","sum":"SUMA","transaction_document_number":"Numer dokumentu","transaction_document_number_prompt":"Znajd\u017a transakcj\u0119 za pomoc\u0105 numeru dokumentu","transaction_id":"ID transakcji","unit_name":"Numer mieszkania"},"transaction_labels":{"add_label":"Dodaj etykiet\u0119","key":"Klucz","key_prompt":"","title":"Etykiety","value":"Warto\u015b\u0107","value_prompt":""},"transfer":{"actions":"Akcje","add_points":"Dodaj punkty","add_transfer":"Dodaj transfer","comment":"Komentarz","created_at":"Data utworzenia","customer_loyalty_card_number":"Numer karty lojalno\u015bciowej","delete_confirmation":"Potwierdzenie","delete_confirmation_description":"Czy chcesz usun\u0105\u0107 transfer?","details":"Szczeg\u00f3\u0142y","email":"E-mail","heading":"Transfery punkt\u00f3w","import":"Importuj punkty","import_title":"Import punkt\u00f3w","import_xml_field":"Wybierz plik","issuer":{"admin":"admin","api":"API","seller":"sprzedawca","system":"system","title":"Spos\u00f3b przyznania punkt\u00f3w"},"list":"Lista transfer\u00f3w punktowych","name":"Imi\u0119","phone":"Telefon","points_to_add":"Punkty to dodania\/wydania","points_to_spend":"Punkty do wydania","pos_identifier":"POS","revised_transaction":"Zwr\u00f3cona transakcja","revised_transaction_id":"Numer zwr\u00f3conej transakcji","locked_until":"Punkty b\u0119d\u0105 zablokowane do","expires_at":"Punkty wygasn\u0105 w dniu","select_customer":"Wybierz klienta","spend_points":"Wydaj punkty","state":"Status","surname":"Nazwisko","transfer_points":"Transfer punkt\u00f3w","transfer_type":"Typ transferu","type":"Rodzaj","value":"Warto\u015b\u0107"},"users":{"roles":"Role","roles_prompt":"","actions":"Akcje","active":"Aktywny","active_prompt":"","add":"Dodaj","api_key":"Klucz Api","create":"Stw\u00f3rz u\u017cytkownika","create_heading":"Dodaj u\u017cytkownika","edit":"Edycja u\u017cytkownika","edit_heading":"Edytuj u\u017cytkownika","email":"E-mail","external":"Utworzony przez API","first_name":"Imi\u0119","heading":"U\u017cytkownicy","last_name":"Nazwisko","list":"Lista u\u017cytkownik\u00f3w","name":"Imi\u0119","password":"Has\u0142o","phone":"Telefon","surname":"Nazwisko"},"xhr":{"pos_coupon_usage":{"error":"An error occurred","success":"Success"},"get_delivery_statuses":{"error":"B\u0142\u0105d","success":"Sukces"},"put_change_delivery_status":{"error":"B\u0142\u0105d","success":"Sukces"},"customer_buy":{"error":"B\u0142\u0105d","success":"Sukces"},"customer_search":{"error":"B\u0142\u0105d","nothing_found":"Nie znaleziono klient\u00f3w","success":"Sukces","to_many_results":"Istnieje wiele wynik\u00f3w, prosz\u0119 poda\u0107 dodatkowe dane"},"delete_campaign_image":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Obraz usuni\u0119ty"},"delete_earning_rule_image":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Obraz usuni\u0119ty"},"delete_level_image":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Obraz usuni\u0119ty"},"delete_segment":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Segment usuni\u0119ty"},"delete_settings_conditions_file":{"error":"Regulamin nie zosta\u0142 usuni\u0119ty","success":"Regulamin zosta\u0142 usuni\u0119ty"},"delete_settings_hero_image":{"error":"Baner nie zosta\u0142 usuni\u0119ty","success":"Baner zosta\u0142 usuni\u0119ty"},"delete_settings_logo":{"error":"Logo nie zosta\u0142o usuni\u0119te","success":"Logo zosta\u0142o usuni\u0119te"},"delete_settings_small_logo":{"error":"Ma\u0142e logo nie zosta\u0142o usuni\u0119te","success":"Ma\u0142e logo zosta\u0142o usuni\u0119te"},"delete_user":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"U\u017cytkownik usuni\u0119ty"},"get_available_rewards":{"error":"Nie mo\u017cemy uzyska\u0107 dost\u0119pnych nagr\u00f3d"},"get_buy":{"success":"Sukces"},"get_campaign":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","no_id":"Nie odnaleziono nagr\u00f3d"},"get_campaigns":{"error":"Nie mo\u017cna uzyska\u0107 listy nagr\u00f3d"},"post_role":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Dodano rol\u0119"},"put_role":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Rola zosta\u0142a zmieniona"},"post_delete_role":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Role zosta\u0142a usuni\u0119ta"},"get_customer":{"cant_edit":"Nie masz praw do edycji tego klienta","error":"Nie mo\u017cna uzyska\u0107 listy klient\u00f3w","no_id":"ID klienta nie znaleziono"},"get_customers":{"error":"Nie mo\u017cna uzyska\u0107 listy klient\u00f3w"},"get_customers_for_campaign":{"error":"Wystapi\u0142 b\u0142\u0105d","no_id":"Nagroda nie zosta\u0142a odnaleziona"},"get_earning_rule":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","no_id":"ID regu\u0142y nagradzania nie odnaleziono"},"get_earning_rules":{"error":"Nie mo\u017cna uzyska\u0107 listy regu\u0142 zdobywania punkt\u00f3w"},"get_level":{"error":"Nie mo\u017cna uzyska\u0107 przypisanego poziomu"},"get_levels":{"error":"Nie mo\u017cna uzyska\u0107 listy dost\u0119pnych poziom\u00f3w"},"get_levels_list":{"error":"Nie mo\u017cna uzyska\u0107 listy poziom\u00f3w"},"get_pos":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","no_id":"POS ID nie znaleziono"},"get_pos_list":{"error":"Nie mo\u017cna uzyska\u0107 listy POS"},"get_redeemed_campaigns":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d"},"get_segment":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","no_id":"ID segmentu nie znaleziono"},"get_segments":{"error":"Nie mo\u017cna pobra\u0107 listy segment\u00f3w"},"get_seller":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","no_id":"Nie znaleziono ID sprzedawcy"},"get_sellers":{"error":"Nie mo\u017cna uzyska\u0107 listy sprzedawc\u00f3w"},"get_settings":{"error":"Nie mo\u017cna pobra\u0107 danych ustawie\u0144"},"get_single_level":{"error":"B\u0142\u0105d serwera","no_id":"Nie znaleziono ID poziomu"},"get_transations":{"error":"Nie mo\u017cna uzyska\u0107 listy transakcji"},"get_transfers":{"error":"Nie mo\u017cna uzyska\u0107 listy transfer\u00f3w punktowych"},"get_translation":{"error":"B\u0142\u0105d","no_id":"Nie okre\u015blono klucza t\u0142umacze\u0144"},"get_translations":{"error":"B\u0142\u0105d"},"get_ustomers_for_campaign":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","no_id":"Nie odnaleziono ID nagrody"},"import":{"error":"Import nie zosta\u0142 zrealizowany","no_data":"Brak pozycji do importu","success":"Import zosta\u0142 uko\u0144czony (Przetworzonych {{ processed }})","warning":"Import zosta\u0142 uko\u0144czony, pojawi\u0142y si\u0119 b\u0142\u0119dy: (Przetworzonych {{ processed }}, uko\u0144czono z sukcesem{{ success }}, b\u0142\u0119dy pojawi\u0142y si\u0119 {{ failed }})"},"post_activate_customer":{"error":"B\u0142\u0105d","success":"Sukces."},"post_activate_level":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Zmieniono status poziomu"},"post_activate_rule":{"error":"B\u0142\u0105d serwera","success":"Status zmieniony"},"post_activate_segment":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Aktywowano segment"},"post_activate_seller":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Aktywowano sprzedawc\u0119"},"post_add_transfer":{"error":"B\u0142\u0105d serwera","success":"Punkty zosta\u0142y dodane"},"post_campaign":{"error":"B\u0142\u0105d serwera","success":"Dodano nagrod\u0119","warning":"Dodano nagrod\u0119 bez zdj\u0119cia"},"post_campaign_buy_manually_assign":{"error":"B\u0142\u0105d podczas kupowania kampanii dla klienta","error_occurred":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Kupiono kampanie dla klienta"},"post_cancel_transfer":{"error":"B\u0142\u0105d serwera","success":"Transfer anulowany."},"post_customer":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Pomy\u015blnie dodano klienta"},"post_deactivate_customer":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Klient zosta\u0142 dezaktywowany"},"post_deactivate_segment":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Segment nieaktywny"},"post_deactivate_seller":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Sprzedawca zosta\u0142 dezaktywowany"},"post_delete_seller":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Usuni\u0119to sprzedawc\u0119"},"post_earning_rule":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Dodano regu\u0142\u0119 zdobywania punkt\u00f3w","warning":"Dodano regu\u0142\u0119 zdobywania punkt\u00f3w bez zdj\u0119cia"},"post_level":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Poziom klienta zosta\u0142 przypisany"},"post_password_change":{"error":"B\u0142\u0105d","success":"Sukces"},"post_password_request":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Je\u015bli u\u017cytkownik istnieje w naszej bazie danych, wy\u015blemy nast\u0119pn\u0105 instrukcj\u0119 na podany adres e-mail"},"post_password_reset":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Has\u0142o zosta\u0142o zmienione."},"post_pos":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Dodano sklep"},"post_registration_customer":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Klient zosta\u0142 zarejestrowany"},"post_registration_customer_activate":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Konto zosta\u0142o aktywowane"},"post_remove_customer_manually_level":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Zadanie zosta\u0142o uko\u0144czone"},"post_resend_activation_code":{"success":"Kod zosta\u0142 wys\u0142any na telefon klienta"},"post_resend_customer_code":{"error":"Nie mo\u017cna ponownie wys\u0142a\u0107 kodu aktywacyjnego. Upewnij si\u0119,\u017ce numer telefonu jest prawid\u0142owy lub odczekaj kilka minut i spr\u00f3buj ponownie.","success":"Kod zosta\u0142 wys\u0142any na tw\u00f3j telefon"},"post_segment":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Dodano segment"},"post_seller":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Dodano sprzedawc\u0119"},"post_single_level":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Poziom zosta\u0142 edytowany.","warning":"Poziom zosta\u0142 dodany bez zdj\u0119cia"},"post_spend_transfer":{"error":"B\u0142\u0105d serwera","success":"Punkty zosta\u0142y wydane"},"post_transaction_assign":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d. Sprawd\u017a szczeg\u00f3\u0142y formularza","success":"Transakcja zosta\u0142a przypisana do konta Klienta"},"post_transaction_labels":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d. Sprawd\u017a szczeg\u00f3\u0142y.","success":"Etykiety zosta\u0142y zmodyfikowane."},"post_translations":{"error":"B\u0142\u0105d","success":"Sukces"},"post_user":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"U\u017cytkownik utworzony"},"put_admin_data":{"error":"B\u0142\u0105d","success":"Sukces"},"put_campaign":{"error":"B\u0142\u0105d serwera","success":"Reward campaign edited"},"put_customer":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Klient zosta\u0142 edytowany"},"put_earning_rule":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Regu\u0142a zdobywania punkt\u00f3w zosta\u0142a zmieniona.","warning":"Nie mo\u017cna przes\u0142a\u0107 obrazu regu\u0142y zdobywania punkt\u00f3w"},"put_pos":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Sprzedawca zosta\u0142 edytowany"},"put_segment":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Segment zosta\u0142 edytowany"},"put_seller":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Sprzedawca zosta\u0142 edytowany."},"put_settings":{"error":"B\u0142\u0105d serwera","success":"Ustawienia zaktualizowane"},"put_single_level":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Poziom zosta\u0142 edytowany","warning":"Poziom edytowany bez zdj\u0119cia"},"put_translations":{"error":"B\u0142\u0105d","success":"Sukces"},"put_user":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"U\u017cytkownik edytowany"},"upload_settings_conditions_file":{"error":"Regulamin nie zosta\u0142 zapisany","success":"Regulamin zosta\u0142 zapisany"},"upload_settings_hero_image":{"error":"Baner nie zosta\u0142 zapisany","success":"Baner zosta\u0142 zapisany"},"upload_settings_logo":{"error":"Logo nie zosta\u0142o zapisane","success":"Logo zosta\u0142o zapisane"},"upload_settings_small_logo":{"error":"Ma\u0142e logo nie zosta\u0142o zapisane","success":"Ma\u0142e logo zosta\u0142o zapisane"},"put_campaign_brand_icon":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Logo marki zosta\u0142o dodane","warning":"Kampania zosta\u0142a zapisana bez loga marki"},"delete_campaign_brand_icon":{"error":"Wyst\u0105pi\u0142 b\u0142\u0105d","success":"Logo marki zosta\u0142o wysyni\u0119te"},"post_campaign_brand_icon":{"error":"Server error","success":"Logo marki zosta\u0142o dodane","warning":"Kampania zosta\u0142a zapisana bez loga marki"},"post_campaign_category":{"error":"Kategoria kampanii nie zosta\u0142a zapisana","success":"Kategoria kampani zosta\u0142a zapisana"},"put_campaign_category":{"error":"Kategoria kampanii nie zosta\u0142a zapisana","success":"Kategoria kampani zosta\u0142a zapisana"},"post_activate_campaign":{"error":"Kampania nie zosta\u0142a zapisana","success":"Kampania zosta\u0142a zapisana"},"post_activate_campaign_category":{"error":"Kategoria kampanii nie zosta\u0142a zapisana","success":"Kategoria kampani zosta\u0142a zapisana"}},"Your password must be at least 8 characters long.":"Twoje has\u0142o musi mie\u0107 co najmniej 8 znak\u00f3w","Your password must contain at least one special character.":"Twoje has\u0142o musi zawiera\u0107 co najmniej jeden znak specjalny","Your password must include at least one letter.":"Twoje has\u0142o musi zawiera\u0107 co najmniej jedn\u0105 liter\u0119","Your password must include at least one number.":"Twoje has\u0142o musi zawiera\u0107 co najmniej jedn\u0105 liczb\u0119","Your password must include both upper and lower case letters.":"Twoje has\u0142o musi zawiera\u0107 zar\u00f3wno du\u017ce, jak i ma\u0142e litery"}', 1, 'f', '2021-09-14 12:20:00');

-- ----------------------------
-- Table structure for ol__level
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__level";
CREATE TABLE "public"."ol__level" (
  "id" uuid NOT NULL,
  "condition_value" numeric(14,2) NOT NULL,
  "active" bool NOT NULL DEFAULT false,
  "customers_count" int4,
  "min_order" numeric(14,2) DEFAULT NULL::numeric,
  "reward_name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "reward_value" numeric(14,2) DEFAULT NULL::numeric,
  "reward_code" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "photo_path" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "photo_original_name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "photo_mime" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;
COMMENT ON COLUMN "public"."ol__level"."id" IS '(DC2Type:level_id)';

-- ----------------------------
-- Records of ol__level
-- ----------------------------
INSERT INTO "public"."ol__level" VALUES ('e82c96cf-32a3-43bd-9034-4df343e51111', 100.00, 't', 0, NULL, 'DISKON 10%', 10.00, 'DISKON10', NULL, NULL, NULL);
INSERT INTO "public"."ol__level" VALUES ('e82c96cf-32a3-43bd-9034-4df343e52222', 500.00, 't', 0, NULL, 'DISKON 20%', 20.00, 'DISKON20', NULL, NULL, NULL);
INSERT INTO "public"."ol__level" VALUES ('e82c96cf-32a3-43bd-9034-4df343e53333', 1000.00, 't', 0, NULL, 'DISKON 30%', 30.00, 'DISKON30', NULL, NULL, NULL);
INSERT INTO "public"."ol__level" VALUES ('e82c96cf-32a3-43bd-9034-4df343e50000', 0.00, 't', 3, NULL, 'DISKON 5%', 5.00, 'DISKON5', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ol__level_special_rewards
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__level_special_rewards";
CREATE TABLE "public"."ol__level_special_rewards" (
  "special_reward_id" uuid NOT NULL,
  "level_id" uuid,
  "name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "value" numeric(14,2) DEFAULT NULL::numeric,
  "code" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "active" bool NOT NULL DEFAULT false,
  "created_at" timestamp(0) NOT NULL,
  "start_at" timestamp(0) NOT NULL,
  "end_at" timestamp(0) NOT NULL
)
;
COMMENT ON COLUMN "public"."ol__level_special_rewards"."special_reward_id" IS '(DC2Type:special_reward_id)';
COMMENT ON COLUMN "public"."ol__level_special_rewards"."level_id" IS '(DC2Type:level_id)';

-- ----------------------------
-- Records of ol__level_special_rewards
-- ----------------------------
INSERT INTO "public"."ol__level_special_rewards" VALUES ('e82c96cf-32a3-43bd-9034-4df343e5fd00', 'e82c96cf-32a3-43bd-9034-4df343e52222', 'special reward', 0.22, 'spec', 't', '2021-09-14 12:20:02', '2016-10-10 00:00:00', '2016-11-10 00:00:00');
INSERT INTO "public"."ol__level_special_rewards" VALUES ('e82c96cf-32a3-43bd-9034-4df343e50094', 'e82c96cf-32a3-43bd-9034-4df343e52222', 'special reward 2', 0.11, 'spec2', 'f', '2021-09-14 12:20:02', '2016-09-10 00:00:00', '2016-11-10 00:00:00');

-- ----------------------------
-- Table structure for ol__permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__permission";
CREATE TABLE "public"."ol__permission" (
  "id" int4 NOT NULL,
  "role_id" int4,
  "resource" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "access" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of ol__permission
-- ----------------------------
INSERT INTO "public"."ol__permission" VALUES (1, 5, 'SEGMENT_EXPORT', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (2, 5, 'EARNING_RULE', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (3, 5, 'LEVEL', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (4, 5, 'TRANSACTION', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (5, 5, 'SELLER', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (6, 5, 'ADMIN', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (7, 5, 'ACL', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (8, 5, 'ANALYTICS', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (9, 5, 'POS', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (10, 5, 'POINT_TRANSFER', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (11, 5, 'SEGMENT', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (12, 5, 'SETTINGS', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (13, 5, 'CUSTOMER', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (14, 5, 'REWARD_CAMPAIGN', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (15, 5, 'AUDIT', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (16, 6, 'SEGMENT_EXPORT', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (17, 6, 'SEGMENT_EXPORT', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (18, 6, 'EARNING_RULE', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (19, 6, 'EARNING_RULE', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (20, 6, 'LEVEL', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (21, 6, 'LEVEL', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (22, 6, 'TRANSACTION', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (23, 6, 'TRANSACTION', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (24, 6, 'SELLER', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (25, 6, 'SELLER', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (26, 6, 'ADMIN', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (27, 6, 'ADMIN', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (28, 6, 'ACL', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (29, 6, 'ACL', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (30, 6, 'ANALYTICS', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (31, 6, 'ANALYTICS', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (32, 6, 'POS', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (33, 6, 'POS', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (34, 6, 'POINT_TRANSFER', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (35, 6, 'POINT_TRANSFER', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (36, 6, 'SEGMENT', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (37, 6, 'SEGMENT', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (38, 6, 'SETTINGS', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (39, 6, 'SETTINGS', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (40, 6, 'CUSTOMER', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (41, 6, 'CUSTOMER', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (42, 6, 'REWARD_CAMPAIGN', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (43, 6, 'REWARD_CAMPAIGN', 'MODIFY');
INSERT INTO "public"."ol__permission" VALUES (44, 6, 'AUDIT', 'VIEW');
INSERT INTO "public"."ol__permission" VALUES (45, 6, 'AUDIT', 'MODIFY');

-- ----------------------------
-- Table structure for ol__pos
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__pos";
CREATE TABLE "public"."ol__pos" (
  "pos_id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default",
  "identifier" text COLLATE "pg_catalog"."default" NOT NULL,
  "transactions_count" int4,
  "transactions_amount" numeric(14,2) DEFAULT NULL::numeric,
  "location_street" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "location_address1" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "location_address2" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "location_postal" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "location_country" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "location_province" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "location_city" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "location_geo_point" text COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."ol__pos"."pos_id" IS '(DC2Type:pos_id)';
COMMENT ON COLUMN "public"."ol__pos"."location_geo_point" IS '(DC2Type:ol_geo_point)';

-- ----------------------------
-- Records of ol__pos
-- ----------------------------
INSERT INTO "public"."ol__pos" VALUES ('00000000-0000-474c-1111-b0dd880c07e2', 'Hello POS', 'POS from PT. Hello World!', 'hello_pos', 0, 0.00, 'Sudirman', '21', NULL, '10220', 'ID', 'DKI Jakarta', 'Jakarta', '{"lat":"-6.227777","long":"106.810544"}');

-- ----------------------------
-- Table structure for ol__roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__roles";
CREATE TABLE "public"."ol__roles" (
  "id" int4 NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "role" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "is_master" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Records of ol__roles
-- ----------------------------
INSERT INTO "public"."ol__roles" VALUES (1, 'ROLE_USER', 'ROLE_USER', 'f');
INSERT INTO "public"."ol__roles" VALUES (2, 'ROLE_PARTICIPANT', 'ROLE_PARTICIPANT', 'f');
INSERT INTO "public"."ol__roles" VALUES (3, 'ROLE_SELLER', 'ROLE_SELLER', 'f');
INSERT INTO "public"."ol__roles" VALUES (4, 'Super admin', 'ROLE_ADMIN', 't');
INSERT INTO "public"."ol__roles" VALUES (5, 'Reporter admin', 'ROLE_ADMIN', 'f');
INSERT INTO "public"."ol__roles" VALUES (6, 'Full admin', 'ROLE_ADMIN', 'f');

-- ----------------------------
-- Table structure for ol__segment
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__segment";
CREATE TABLE "public"."ol__segment" (
  "segment_id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default",
  "active" bool NOT NULL DEFAULT false,
  "customers_count" int4 NOT NULL DEFAULT 0,
  "created_at" timestamp(0) DEFAULT NULL::timestamp without time zone
)
;
COMMENT ON COLUMN "public"."ol__segment"."segment_id" IS '(DC2Type:segment_id)';

-- ----------------------------
-- Records of ol__segment
-- ----------------------------

-- ----------------------------
-- Table structure for ol__segment_part
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__segment_part";
CREATE TABLE "public"."ol__segment_part" (
  "segment_part_id" uuid NOT NULL,
  "segment_id" uuid
)
;
COMMENT ON COLUMN "public"."ol__segment_part"."segment_part_id" IS '(DC2Type:segment_part_id)';
COMMENT ON COLUMN "public"."ol__segment_part"."segment_id" IS '(DC2Type:segment_id)';

-- ----------------------------
-- Records of ol__segment_part
-- ----------------------------

-- ----------------------------
-- Table structure for ol__settings
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__settings";
CREATE TABLE "public"."ol__settings" (
  "id" int4 NOT NULL,
  "setting_key" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "dtype" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "boolean_value" bool,
  "json_value" text COLLATE "pg_catalog"."default",
  "integer_value" int4,
  "string_value" varchar(10240) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;
COMMENT ON COLUMN "public"."ol__settings"."json_value" IS '(DC2Type:json_array)';

-- ----------------------------
-- Records of ol__settings
-- ----------------------------
INSERT INTO "public"."ol__settings" VALUES (20, 'logo', 'filesettingentry', NULL, '{"__class":"OpenLoyalty\\Bundle\\SettingsBundle\\Model\\Logo","path":"logo\/logo.png","originalName":null,"mime":"image\/png","sizes":[]}', NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (21, 'small-logo', 'filesettingentry', NULL, '{"__class":"OpenLoyalty\\Bundle\\SettingsBundle\\Model\\Logo","path":"logo\/small-logo.png","originalName":null,"mime":"image\/png","sizes":[]}', NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (22, 'hero-image', 'filesettingentry', NULL, '{"__class":"OpenLoyalty\\Bundle\\SettingsBundle\\Model\\Logo","path":"logo\/hero-image.png","originalName":null,"mime":"image\/png","sizes":[]}', NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (23, 'admin-cockpit-logo', 'filesettingentry', NULL, '{"__class":"OpenLoyalty\\Bundle\\SettingsBundle\\Model\\Logo","path":"logo\/admin-cockpit-logo.png","originalName":null,"mime":"image\/png","sizes":[]}', NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (24, 'client-cockpit-logo-big', 'filesettingentry', NULL, '{"__class":"OpenLoyalty\\Bundle\\SettingsBundle\\Model\\Logo","path":"logo\/client-cockpit-logo-big.png","originalName":null,"mime":"image\/png","sizes":[]}', NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (25, 'client-cockpit-logo-small', 'filesettingentry', NULL, '{"__class":"OpenLoyalty\\Bundle\\SettingsBundle\\Model\\Logo","path":"logo\/client-cockpit-logo-small.png","originalName":null,"mime":"image\/png","sizes":[]}', NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (26, 'client-cockpit-hero-image', 'filesettingentry', NULL, '{"__class":"OpenLoyalty\\Bundle\\SettingsBundle\\Model\\Logo","path":"logo\/client-cockpit-hero-image.png","originalName":null,"mime":"image\/png","sizes":[]}', NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (14, 'excludedLevelCategories', 'jsonsettingentry', NULL, '["category_excluded_from_level"]', NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (27, 'customerStatusesEarning', 'jsonsettingentry', NULL, '["active"]', NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (28, 'customerStatusesSpending', 'jsonsettingentry', NULL, '["active"]', NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (29, 'customersIdentificationPriority', 'jsonsettingentry', NULL, '[{"priority":3,"field":"phone"},{"priority":2,"field":"loyaltyCardNumber"},{"priority":1,"field":"email"}]', NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (11, 'returns', 'booleansettingentry', 't', NULL, NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (12, 'allowCustomersProfileEdits', 'booleansettingentry', 't', NULL, NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (13, 'allTimeNotLocked', 'booleansettingentry', 't', NULL, NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (19, 'levelResetPointsOnDowngrade', 'booleansettingentry', 'f', NULL, NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (7, 'pointsDaysActiveCount', 'integersettingentry', NULL, NULL, 30, NULL);
INSERT INTO "public"."ol__settings" VALUES (8, 'expirePointsNotificationDays', 'integersettingentry', NULL, NULL, 10, NULL);
INSERT INTO "public"."ol__settings" VALUES (9, 'expireCouponsNotificationDays', 'integersettingentry', NULL, NULL, 10, NULL);
INSERT INTO "public"."ol__settings" VALUES (10, 'expireLevelsNotificationDays', 'integersettingentry', NULL, NULL, 10, NULL);
INSERT INTO "public"."ol__settings" VALUES (17, 'levelDowngradeDays', 'integersettingentry', NULL, NULL, NULL, NULL);
INSERT INTO "public"."ol__settings" VALUES (1, 'currency', 'stringsettingentry', NULL, NULL, NULL, 'IDR');
INSERT INTO "public"."ol__settings" VALUES (2, 'timezone', 'stringsettingentry', NULL, NULL, NULL, 'Asia/Jakarta');
INSERT INTO "public"."ol__settings" VALUES (3, 'programName', 'stringsettingentry', NULL, NULL, NULL, 'Yokke Loyalty');
INSERT INTO "public"."ol__settings" VALUES (4, 'programPointsSingular', 'stringsettingentry', NULL, NULL, NULL, 'Point');
INSERT INTO "public"."ol__settings" VALUES (5, 'programPointsPlural', 'stringsettingentry', NULL, NULL, NULL, 'Points');
INSERT INTO "public"."ol__settings" VALUES (6, 'pointsDaysExpiryAfter', 'stringsettingentry', NULL, NULL, NULL, 'after_x_days');
INSERT INTO "public"."ol__settings" VALUES (15, 'tierAssignType', 'stringsettingentry', NULL, NULL, NULL, 'transactions');
INSERT INTO "public"."ol__settings" VALUES (16, 'levelDowngradeMode', 'stringsettingentry', NULL, NULL, NULL, 'none');
INSERT INTO "public"."ol__settings" VALUES (18, 'levelDowngradeBase', 'stringsettingentry', NULL, NULL, NULL, 'none');
INSERT INTO "public"."ol__settings" VALUES (30, 'accountActivationMethod', 'stringsettingentry', NULL, NULL, NULL, 'email');
INSERT INTO "public"."ol__settings" VALUES (31, 'marketingVendorsValue', 'stringsettingentry', NULL, NULL, NULL, 'none');
INSERT INTO "public"."ol__settings" VALUES (32, 'pushySecretKey', 'stringsettingentry', NULL, NULL, NULL, '');

-- ----------------------------
-- Table structure for ol__user
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__user";
CREATE TABLE "public"."ol__user" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "username" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "salt" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool NOT NULL,
  "create_at" timestamp(0) NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "password_requested_at" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "confirmation_token" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "deleted_at" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "last_login_at" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "dtype" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "first_name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "last_name" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "phone" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "external" bool DEFAULT false,
  "api_key" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "temporary_password_set_at" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "action_token" varchar(20) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "referral_customer_email" varchar(128) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "newsletter_used_flag" bool,
  "status_type" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "status_state" varchar(255) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "allow_point_transfer" bool DEFAULT false
)
;

-- ----------------------------
-- Records of ol__user
-- ----------------------------
INSERT INTO "public"."ol__user" VALUES ('e21682f9-9ffc-4227-b4d6-ae7b41519f02', 'reporter', '$2y$13$ZlrAo19ikA41whXvBgELu.qTQ2ZX5wqabdCdRKQRDIoB2WTMj46Wa', '27p6aninywe88wg08ww0oko0s4swsw0', 't', '2021-09-14 12:20:03', 'admin_reporter@oloy.com', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ol__user" VALUES ('e21682f9-9ffc-4227-b4d6-ae7b41519f03', 'supervisor', '$2y$13$OXMMatuwXaT8LIJDYlLw4.ywBGlvTj3wEm4OL7WvvzmxerV.r5iLa', 'pcgqx295nxck4wkk8g4gws8o0gcco4g', 't', '2021-09-14 12:20:04', 'supervisor@oloy.com', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ol__user" VALUES ('00000000-0000-474c-b092-b0dd880c07e1', '00000000-0000-474c-b092-b0dd880c07e1', '$2y$13$tWZkw/PZGsUN55/x0/QQ4.DUwzjhcKK4tsuk3p583zpLh6J4Og5Am', 'ps4kteqmjs0g484wcgkskc0css0wgkg', 't', '2021-09-14 12:20:09', 'user@mail.com', NULL, NULL, NULL, NULL, 'customer', NULL, NULL, '+48234234000', 'f', NULL, NULL, NULL, NULL, NULL, 'active', 'no-card', 'f');
INSERT INTO "public"."ol__user" VALUES ('00000000-0000-474c-b092-b0dd880c07f3', '00000000-0000-474c-b092-b0dd880c07f3', '$2y$13$MTnpSy1JcKoA/tEIRqQhTOxKI06fgV3EjigUIxdYFPmgqSgzNimSe', 'j3lg7jagko0gwko8o4ogkks8gswssw8', 't', '2021-09-14 12:20:11', 'user-transfer-1@oloy.com', NULL, NULL, NULL, NULL, 'customer', NULL, NULL, '1231232312312312360', 'f', NULL, NULL, NULL, NULL, NULL, 'active', 'no-card', 'f');
INSERT INTO "public"."ol__user" VALUES ('00000000-0000-474c-b092-b0dd880c07e4', '00000000-0000-474c-b092-b0dd880c07e4', '$2y$13$WNr1h7pJlAMwxCX.6cgsW.gghbaOisloBJKqI7gi7efSWxXYyoyLm', 'c6ikhhw4c0g8kowockws8c04g0wwgog', 't', '2021-09-14 12:20:13', 'john@doe.com', NULL, NULL, NULL, NULL, 'seller', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't');
INSERT INTO "public"."ol__user" VALUES ('00000000-0000-474c-b092-b0dd880c07aa', '00000000-0000-474c-b092-b0dd880c07aa', '$2y$13$syP9L9xjFkrymHKrBzjuLe2Y/C/SaCTGe3X.22b7OKFT4jkbSdqaS', 'a8mqeoa55tkw40cw4sk08k0o8sk84s', 't', '2021-09-14 12:20:12', 'user-return@oloy.com', NULL, NULL, NULL, NULL, 'customer', NULL, NULL, '12312323123123123760', 'f', NULL, NULL, NULL, NULL, NULL, 'active', 'no-card', 'f');
INSERT INTO "public"."ol__user" VALUES ('22200000-0000-474c-b092-b0dd880c07e2', 'admin', '$2y$13$Mr0kc.Z.jxCgYT24vYeEo.V0DeTGEtJHUXNPg5d2lMwxaeA7l74aq', '75w10jy6k9s0skgsws8ww8osokwgg8g', 't', '2021-09-14 12:20:03', 'admin@oloy.com', NULL, NULL, NULL, '2021-09-14 12:23:30', 'admin', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f');

-- ----------------------------
-- Table structure for ol__user_settings
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__user_settings";
CREATE TABLE "public"."ol__user_settings" (
  "user_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "key" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0) NOT NULL,
  "deleted_at" timestamp(0) DEFAULT NULL::timestamp without time zone,
  "dtype" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of ol__user_settings
-- ----------------------------

-- ----------------------------
-- Table structure for ol__users_roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."ol__users_roles";
CREATE TABLE "public"."ol__users_roles" (
  "user_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "role_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of ol__users_roles
-- ----------------------------
INSERT INTO "public"."ol__users_roles" VALUES ('22200000-0000-474c-b092-b0dd880c07e2', 4);
INSERT INTO "public"."ol__users_roles" VALUES ('e21682f9-9ffc-4227-b4d6-ae7b41519f02', 5);
INSERT INTO "public"."ol__users_roles" VALUES ('e21682f9-9ffc-4227-b4d6-ae7b41519f03', 6);
INSERT INTO "public"."ol__users_roles" VALUES ('00000000-0000-474c-b092-b0dd880c07e1', 2);
INSERT INTO "public"."ol__users_roles" VALUES ('00000000-0000-474c-b092-b0dd880c07f3', 2);
INSERT INTO "public"."ol__users_roles" VALUES ('00000000-0000-474c-b092-b0dd880c07aa', 2);
INSERT INTO "public"."ol__users_roles" VALUES ('00000000-0000-474c-b092-b0dd880c07e4', 3);

-- ----------------------------
-- Table structure for refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."refresh_tokens";
CREATE TABLE "public"."refresh_tokens" (
  "id" int4 NOT NULL,
  "refresh_token" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "username" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "valid" timestamp(0) NOT NULL
)
;

-- ----------------------------
-- Records of refresh_tokens
-- ----------------------------
INSERT INTO "public"."refresh_tokens" VALUES (1, '8c1785620638053961bb803cee36db526b443a61dbae85c0fd2dcaf1ca2cb59201b4ae1d536b3c56027b45fe030565683055d9da0d71a982c3156dc1e82a73f1', 'admin', '2021-10-14 12:23:28');

-- ----------------------------
-- Table structure for salesmanagodeadletter
-- ----------------------------
DROP TABLE IF EXISTS "public"."salesmanagodeadletter";
CREATE TABLE "public"."salesmanagodeadletter" (
  "id" int4 NOT NULL,
  "message" text COLLATE "pg_catalog"."default" NOT NULL,
  "contact_email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "owner_email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "retries" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."salesmanagodeadletter"."message" IS '(DC2Type:json_array)';

-- ----------------------------
-- Records of salesmanagodeadletter
-- ----------------------------

-- ----------------------------
-- Table structure for snapshoting
-- ----------------------------
DROP TABLE IF EXISTS "public"."snapshoting";
CREATE TABLE "public"."snapshoting" (
  "id" int4 NOT NULL DEFAULT nextval('snapshoting_id_seq'::regclass),
  "uuid" uuid NOT NULL,
  "playhead" int4 NOT NULL,
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "recorded_on" varchar(32) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of snapshoting
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."campaign_category_translation_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."campaign_translation_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."events_id_seq"
OWNED BY "public"."events"."id";
SELECT setval('"public"."events_id_seq"', 22, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."level_translation_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."ol__permission_id_seq"', 46, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."ol__roles_id_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."ol__settings_id_seq"', 33, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."refresh_tokens_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."salesmanagodeadletter_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."snapshoting_id_seq"
OWNED BY "public"."snapshoting"."id";
SELECT setval('"public"."snapshoting_id_seq"', 2, false);

-- ----------------------------
-- Indexes structure for table campaign_category_translation
-- ----------------------------
CREATE UNIQUE INDEX "campaign_category_translation_unique_translation" ON "public"."campaign_category_translation" USING btree (
  "translatable_id" "pg_catalog"."uuid_ops" ASC NULLS LAST,
  "locale" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_444856b52c2ac5d3" ON "public"."campaign_category_translation" USING btree (
  "translatable_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table campaign_category_translation
-- ----------------------------
ALTER TABLE "public"."campaign_category_translation" ADD CONSTRAINT "campaign_category_translation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table campaign_translation
-- ----------------------------
CREATE UNIQUE INDEX "campaign_translation_unique_translation" ON "public"."campaign_translation" USING btree (
  "translatable_id" "pg_catalog"."uuid_ops" ASC NULLS LAST,
  "locale" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_6ca379952c2ac5d3" ON "public"."campaign_translation" USING btree (
  "translatable_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table campaign_translation
-- ----------------------------
ALTER TABLE "public"."campaign_translation" ADD CONSTRAINT "campaign_translation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table events
-- ----------------------------
CREATE UNIQUE INDEX "uniq_5387574ad17f50a634b91fa9" ON "public"."events" USING btree (
  "uuid" "pg_catalog"."uuid_ops" ASC NULLS LAST,
  "playhead" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table events
-- ----------------------------
ALTER TABLE "public"."events" ADD CONSTRAINT "events_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table level_translation
-- ----------------------------
CREATE INDEX "idx_459a23322c2ac5d3" ON "public"."level_translation" USING btree (
  "translatable_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "level_translation_unique_translation" ON "public"."level_translation" USING btree (
  "translatable_id" "pg_catalog"."uuid_ops" ASC NULLS LAST,
  "locale" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table level_translation
-- ----------------------------
ALTER TABLE "public"."level_translation" ADD CONSTRAINT "level_translation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table ol__activation_code
-- ----------------------------
CREATE UNIQUE INDEX "ol__activation_code_code_idx" ON "public"."ol__activation_code" USING btree (
  "code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ol__activation_code
-- ----------------------------
ALTER TABLE "public"."ol__activation_code" ADD CONSTRAINT "ol__activation_code_pkey" PRIMARY KEY ("activation_code_id");

-- ----------------------------
-- Primary Key structure for table ol__audit
-- ----------------------------
ALTER TABLE "public"."ol__audit" ADD CONSTRAINT "ol__audit_pkey" PRIMARY KEY ("audit_log_id");

-- ----------------------------
-- Primary Key structure for table ol__campaign
-- ----------------------------
ALTER TABLE "public"."ol__campaign" ADD CONSTRAINT "ol__campaign_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table ol__campaign_categories
-- ----------------------------
ALTER TABLE "public"."ol__campaign_categories" ADD CONSTRAINT "ol__campaign_categories_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table ol__campaign_photo
-- ----------------------------
CREATE INDEX "idx_87f98d6bf639f774" ON "public"."ol__campaign_photo" USING btree (
  "campaign_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ol__campaign_photo
-- ----------------------------
ALTER TABLE "public"."ol__campaign_photo" ADD CONSTRAINT "ol__campaign_photo_pkey" PRIMARY KEY ("photo_id");

-- ----------------------------
-- Indexes structure for table ol__criterion
-- ----------------------------
CREATE INDEX "idx_327daa98139a0a0e" ON "public"."ol__criterion" USING btree (
  "segment_part_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ol__criterion
-- ----------------------------
ALTER TABLE "public"."ol__criterion" ADD CONSTRAINT "ol__criterion_pkey" PRIMARY KEY ("criterion_id");

-- ----------------------------
-- Primary Key structure for table ol__earning_rule
-- ----------------------------
ALTER TABLE "public"."ol__earning_rule" ADD CONSTRAINT "ol__earning_rule_pkey" PRIMARY KEY ("earning_rule_id");

-- ----------------------------
-- Indexes structure for table ol__earning_rule_usage
-- ----------------------------
CREATE INDEX "idx_4a8ca58c15e2ad5f" ON "public"."ol__earning_rule_usage" USING btree (
  "earning_rule_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ol__earning_rule_usage
-- ----------------------------
ALTER TABLE "public"."ol__earning_rule_usage" ADD CONSTRAINT "ol__earning_rule_usage_pkey" PRIMARY KEY ("earning_rule_usage_id");

-- ----------------------------
-- Indexes structure for table ol__email
-- ----------------------------
CREATE UNIQUE INDEX "uniq_eb62473af48571eb" ON "public"."ol__email" USING btree (
  "key" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ol__email
-- ----------------------------
ALTER TABLE "public"."ol__email" ADD CONSTRAINT "ol__email_pkey" PRIMARY KEY ("email_id");

-- ----------------------------
-- Primary Key structure for table ol__language
-- ----------------------------
ALTER TABLE "public"."ol__language" ADD CONSTRAINT "ol__language_pkey" PRIMARY KEY ("language_id");

-- ----------------------------
-- Primary Key structure for table ol__level
-- ----------------------------
ALTER TABLE "public"."ol__level" ADD CONSTRAINT "ol__level_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table ol__level_special_rewards
-- ----------------------------
CREATE INDEX "idx_5e31b0995fb14ba7" ON "public"."ol__level_special_rewards" USING btree (
  "level_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ol__level_special_rewards
-- ----------------------------
ALTER TABLE "public"."ol__level_special_rewards" ADD CONSTRAINT "ol__level_special_rewards_pkey" PRIMARY KEY ("special_reward_id");

-- ----------------------------
-- Indexes structure for table ol__permission
-- ----------------------------
CREATE INDEX "idx_39d137fed60322ac" ON "public"."ol__permission" USING btree (
  "role_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ol__permission
-- ----------------------------
ALTER TABLE "public"."ol__permission" ADD CONSTRAINT "ol__permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table ol__pos
-- ----------------------------
ALTER TABLE "public"."ol__pos" ADD CONSTRAINT "ol__pos_pkey" PRIMARY KEY ("pos_id");

-- ----------------------------
-- Primary Key structure for table ol__roles
-- ----------------------------
ALTER TABLE "public"."ol__roles" ADD CONSTRAINT "ol__roles_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table ol__segment
-- ----------------------------
CREATE UNIQUE INDEX "uniq_c770723a5e237e06" ON "public"."ol__segment" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ol__segment
-- ----------------------------
ALTER TABLE "public"."ol__segment" ADD CONSTRAINT "ol__segment_pkey" PRIMARY KEY ("segment_id");

-- ----------------------------
-- Indexes structure for table ol__segment_part
-- ----------------------------
CREATE INDEX "idx_eec7e134db296aad" ON "public"."ol__segment_part" USING btree (
  "segment_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ol__segment_part
-- ----------------------------
ALTER TABLE "public"."ol__segment_part" ADD CONSTRAINT "ol__segment_part_pkey" PRIMARY KEY ("segment_part_id");

-- ----------------------------
-- Indexes structure for table ol__settings
-- ----------------------------
CREATE UNIQUE INDEX "uniq_1e4e1d275fa1e697" ON "public"."ol__settings" USING btree (
  "setting_key" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ol__settings
-- ----------------------------
ALTER TABLE "public"."ol__settings" ADD CONSTRAINT "ol__settings_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table ol__user
-- ----------------------------
CREATE UNIQUE INDEX "uniq_cbb3a082f85e0677" ON "public"."ol__user" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ol__user
-- ----------------------------
ALTER TABLE "public"."ol__user" ADD CONSTRAINT "ol__user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table ol__user_settings
-- ----------------------------
CREATE INDEX "idx_43d991aaa76ed395" ON "public"."ol__user_settings" USING btree (
  "user_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ol__user_settings
-- ----------------------------
ALTER TABLE "public"."ol__user_settings" ADD CONSTRAINT "ol__user_settings_pkey" PRIMARY KEY ("user_id", "key");

-- ----------------------------
-- Indexes structure for table ol__users_roles
-- ----------------------------
CREATE INDEX "idx_3d9687c6a76ed395" ON "public"."ol__users_roles" USING btree (
  "user_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_3d9687c6d60322ac" ON "public"."ol__users_roles" USING btree (
  "role_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ol__users_roles
-- ----------------------------
ALTER TABLE "public"."ol__users_roles" ADD CONSTRAINT "ol__users_roles_pkey" PRIMARY KEY ("user_id", "role_id");

-- ----------------------------
-- Indexes structure for table refresh_tokens
-- ----------------------------
CREATE UNIQUE INDEX "uniq_9bace7e1c74f2195" ON "public"."refresh_tokens" USING btree (
  "refresh_token" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table refresh_tokens
-- ----------------------------
ALTER TABLE "public"."refresh_tokens" ADD CONSTRAINT "refresh_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table salesmanagodeadletter
-- ----------------------------
ALTER TABLE "public"."salesmanagodeadletter" ADD CONSTRAINT "salesmanagodeadletter_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table snapshoting
-- ----------------------------
CREATE UNIQUE INDEX "uniq_8d976701d17f50a634b91fa9" ON "public"."snapshoting" USING btree (
  "uuid" "pg_catalog"."uuid_ops" ASC NULLS LAST,
  "playhead" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table snapshoting
-- ----------------------------
ALTER TABLE "public"."snapshoting" ADD CONSTRAINT "snapshoting_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table campaign_category_translation
-- ----------------------------
ALTER TABLE "public"."campaign_category_translation" ADD CONSTRAINT "fk_444856b52c2ac5d3" FOREIGN KEY ("translatable_id") REFERENCES "public"."ol__campaign_categories" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table campaign_translation
-- ----------------------------
ALTER TABLE "public"."campaign_translation" ADD CONSTRAINT "fk_6ca379952c2ac5d3" FOREIGN KEY ("translatable_id") REFERENCES "public"."ol__campaign" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table level_translation
-- ----------------------------
ALTER TABLE "public"."level_translation" ADD CONSTRAINT "fk_459a23322c2ac5d3" FOREIGN KEY ("translatable_id") REFERENCES "public"."ol__level" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ol__campaign_photo
-- ----------------------------
ALTER TABLE "public"."ol__campaign_photo" ADD CONSTRAINT "fk_87f98d6bf639f774" FOREIGN KEY ("campaign_id") REFERENCES "public"."ol__campaign" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ol__criterion
-- ----------------------------
ALTER TABLE "public"."ol__criterion" ADD CONSTRAINT "fk_327daa98139a0a0e" FOREIGN KEY ("segment_part_id") REFERENCES "public"."ol__segment_part" ("segment_part_id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ol__earning_rule_usage
-- ----------------------------
ALTER TABLE "public"."ol__earning_rule_usage" ADD CONSTRAINT "fk_4a8ca58c15e2ad5f" FOREIGN KEY ("earning_rule_id") REFERENCES "public"."ol__earning_rule" ("earning_rule_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ol__level_special_rewards
-- ----------------------------
ALTER TABLE "public"."ol__level_special_rewards" ADD CONSTRAINT "fk_5e31b0995fb14ba7" FOREIGN KEY ("level_id") REFERENCES "public"."ol__level" ("id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ol__permission
-- ----------------------------
ALTER TABLE "public"."ol__permission" ADD CONSTRAINT "fk_39d137fed60322ac" FOREIGN KEY ("role_id") REFERENCES "public"."ol__roles" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ol__segment_part
-- ----------------------------
ALTER TABLE "public"."ol__segment_part" ADD CONSTRAINT "fk_eec7e134db296aad" FOREIGN KEY ("segment_id") REFERENCES "public"."ol__segment" ("segment_id") ON DELETE SET NULL ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ol__user_settings
-- ----------------------------
ALTER TABLE "public"."ol__user_settings" ADD CONSTRAINT "fk_43d991aaa76ed395" FOREIGN KEY ("user_id") REFERENCES "public"."ol__user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ol__users_roles
-- ----------------------------
ALTER TABLE "public"."ol__users_roles" ADD CONSTRAINT "fk_3d9687c6a76ed395" FOREIGN KEY ("user_id") REFERENCES "public"."ol__user" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."ol__users_roles" ADD CONSTRAINT "fk_3d9687c6d60322ac" FOREIGN KEY ("role_id") REFERENCES "public"."ol__roles" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
