-- Generado por Oracle SQL Developer Data Modeler 21.1.0.092.1221
--   en:        2021-06-28 11:58:45 COT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE pasajeros (
    id                INTEGER NOT NULL,
    nombre            VARCHAR2(50) NOT NULL,
    primer_apellido   VARCHAR2(30) NOT NULL,
    segundo_apellido  VARCHAR2(30),
    email             VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL,
    telefono          VARCHAR2(20) NOT NULL
);

ALTER TABLE pasajeros ADD CONSTRAINT pasajeros_pk PRIMARY KEY ( id );

CREATE TABLE vuelos (
    id              INTEGER NOT NULL,
    numero_vuelo    INTEGER NOT NULL,
    ciudad_origen   VARCHAR2(85) NOT NULL,
    ciudad_destino  VARCHAR2(85) NOT NULL,
    hora_salida     DATE NOT NULL,
    hora_llegada    DATE NOT NULL,
    fecha_salida    DATE NOT NULL,
    fecha_llegada   DATE NOT NULL,
    numero_puestos  INTEGER NOT NULL
);

ALTER TABLE vuelos ADD CONSTRAINT vuelo_pk PRIMARY KEY ( id );

CREATE TABLE vuelos_pasajeros (
    vuelo_id      INTEGER NOT NULL,
    pasajeros_id  INTEGER NOT NULL
);

ALTER TABLE vuelos_pasajeros ADD CONSTRAINT relation_2_pk PRIMARY KEY ( vuelo_id,
                                                                        pasajeros_id );

ALTER TABLE vuelos_pasajeros
    ADD CONSTRAINT relation_2_pasajeros_fk FOREIGN KEY ( pasajeros_id )
        REFERENCES pasajeros ( id );

ALTER TABLE vuelos_pasajeros
    ADD CONSTRAINT relation_2_vuelo_fk FOREIGN KEY ( vuelo_id )
        REFERENCES vuelos ( id );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              5
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   1
-- WARNINGS                                 0
