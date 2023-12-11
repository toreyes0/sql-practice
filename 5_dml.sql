-- create
INSERT INTO Artist(Name)
VALUES ('Bob Marley');
-- update
UPDATE Artist
SET Name = 'Damien Marley'
WHERE ArtistId = 276;
-- delete
DELETE FROM Artist
WHERE ArtistId = 276;
