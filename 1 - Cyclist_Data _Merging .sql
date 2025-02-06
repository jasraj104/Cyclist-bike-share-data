# Merging all data


CREATE TABLE `Cyclist.data` AS (
  SELECT * FROM `sapient-depot-446719-u7.Cyclist.jan`
  UNION ALL
  SELECT * FROM `sapient-depot-446719-u7.Cyclist.feb`
  UNION ALL
  SELECT * FROM `sapient-depot-446719-u7.Cyclist.march`
  UNION ALL
  SELECT * FROM `sapient-depot-446719-u7.Cyclist.april`
  UNION ALL
  SELECT * FROM `sapient-depot-446719-u7.Cyclist.may`
  UNION ALL
  SELECT * FROM `sapient-depot-446719-u7.Cyclist.june`
  UNION ALL
  SELECT * FROM `sapient-depot-446719-u7.Cyclist.july`
  UNION ALL
  SELECT * FROM `sapient-depot-446719-u7.Cyclist.august`
  UNION ALL
  SELECT * FROM `sapient-depot-446719-u7.Cyclist.september`
  UNION ALL
  SELECT * FROM `sapient-depot-446719-u7.Cyclist.october`
  UNION ALL
  SELECT * FROM `sapient-depot-446719-u7.Cyclist.november`
  UNION ALL
  SELECT * FROM `sapient-depot-446719-u7.Cyclist.december`
);

select * from `Cyclist.data`;

