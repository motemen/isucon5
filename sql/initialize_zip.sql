CREATE TABLE zip (
    zipcode character varying(7),
    ken1 text,
    ken2 text,
    ken3 text
);

COPY zip FROM '/home/isucon/deploy/data/zip_clean.csv' CSV;
