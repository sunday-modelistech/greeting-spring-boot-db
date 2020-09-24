--------------------------------------------------------------
--	  POSTGRESQL Copyright (c) 2017, All rights reserved	--
--															--
--			USERNAME		: postgres						--
--			PASSWORD		: adminpostgres					--
--			HOST			: localhost						--
--			PORT			: 5433							--
--			DATABASE NAME	: greetingdb					--
--															--
--------------------------------------------------------------

DROP DATABASE IF EXISTS greetingdb;
CREATE DATABASE greetingdb

\c greetingdb

-- -----------------------------------------------------------
--	SCHEMA CONTENANT LES OBJETS DE LA BASE DE DONNEES		--
-- -----------------------------------------------------------
DROP SCHEMA IF EXISTS greeting CASCADE;
CREATE SCHEMA greeting AUTHORIZATION postgres;


-- -----------------------------------------------------------
--	STRUCTURE DE LA TABLE : MESSAGE						--
-- -----------------------------------------------------------
CREATE TABLE IF NOT EXISTS greeting.message(
	id_message		SERIAL,
	language		CHARACTER VARYING(2),
	message			CHARACTER VARYING(200),
	
	CONSTRAINT pk_message PRIMARY KEY(id_message)
);

-- -----------------------------------------------------------
--	INSERTION DANS LA TABLE : MESSAGE						--
-- -----------------------------------------------------------
INSERT INTO greeting.message(language, message) VALUES ('fr', 'Bonjour depuis PostgreSQL');
INSERT INTO greeting.message(language, message) VALUES ('en', 'Morning from PostgreSQL');