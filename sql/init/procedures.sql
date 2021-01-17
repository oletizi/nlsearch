USE dbs;
DELIMITER $$
DROP PROCEDURE IF EXISTS GetStateByName;
CREATE PROCEDURE GetStateByName(IN name TEXT)
BEGIN
    SELECT g.name,
           g.state,
           g.county,
           g.county_sub,
           g.place,
           g.city
    FROM geo g
    WHERE g.name LIKE CONCAT('%', name, '%')
      and g.state <> 0
      and g.county = 0
      and g.county_sub = 0
      and g.place = 0
      and g.city = 0;
END$$
DELIMITER ;
