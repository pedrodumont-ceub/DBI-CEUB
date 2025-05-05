-- Gerado por Oracle SQL Developer Data Modeler 21.1.0.092.1221
--   em:        2025-04-28 21:45:46 BRT
--   site:      Oracle Database 21c
--   tipo:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE historicoimcpessoa (
    datamedidaimc    DATE NOT NULL,
    cpfpessoa        CHAR(11) NOT NULL,
    pesopessoa       NUMBER(2) NOT NULL,
    alturapessoa     NUMBER(2) NOT NULL,
    vlrimcpessoa     NUMBER(2) NOT NULL,
    analiseimcpessa  VARCHAR2(20) NOT NULL,
    pes_cpfpessoa    CHAR(11)
);

ALTER TABLE historicoimcpessoa ADD CONSTRAINT hip_pk PRIMARY KEY ( cpfpessoa,
                                                                   datamedidaimc );

CREATE TABLE logseguranca (
    cpf       unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    data      unknown 
--  ERROR: Datatype UNKNOWN is not allowed 
    ,
    operacao  unknown 
--  ERROR: Datatype UNKNOWN is not allowed 

);

CREATE TABLE pessoa (
    cpfpessoa   CHAR(11) NOT NULL,
    nomepessoa  VARCHAR2(60) NOT NULL,
    sexopessoa  CHAR(1) NOT NULL
);

ALTER TABLE pessoa ADD CONSTRAINT pes_pk PRIMARY KEY ( cpfpessoa );

ALTER TABLE historicoimcpessoa
    ADD CONSTRAINT hip_pes_fk FOREIGN KEY ( pes_cpfpessoa )
        REFERENCES pessoa ( cpfpessoa );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              3
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
-- ERRORS                                   3
-- WARNINGS                                 0
