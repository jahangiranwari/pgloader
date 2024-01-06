-- params: dbname
--         including
--         filter-list-to-where-clause including
--         excluding
--         filter-list-to-where-clause excluding
   SELECT
           REPLACE(KCU1.CONSTRAINT_NAME, '.', '_') AS 'CONSTRAINT_NAME'
         , KCU1.TABLE_SCHEMA AS 'TABLE_SCHEMA'
         , KCU1.TABLE_NAME AS 'TABLE_NAME'
         , KCU1.COLUMN_NAME AS 'COLUMN_NAME'
         , KCU2.TABLE_SCHEMA AS 'UNIQUE_TABLE_SCHEMA'
         , KCU2.TABLE_NAME AS 'UNIQUE_TABLE_NAME'
         , KCU2.COLUMN_NAME AS 'UNIQUE_COLUMN_NAME'
         , RC.UPDATE_RULE AS 'UPDATE_RULE'
         , RC.DELETE_RULE AS 'DELETE_RULE'

    FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS RC
         JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE KCU1
              ON KCU1.CONSTRAINT_CATALOG = RC.CONSTRAINT_CATALOG
                 AND KCU1.CONSTRAINT_SCHEMA = RC.CONSTRAINT_SCHEMA
                 AND KCU1.CONSTRAINT_NAME = RC.CONSTRAINT_NAME
         JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE KCU2
              ON KCU2.CONSTRAINT_CATALOG = RC.UNIQUE_CONSTRAINT_CATALOG
                 AND KCU2.CONSTRAINT_SCHEMA = RC.UNIQUE_CONSTRAINT_SCHEMA
                 AND KCU2.CONSTRAINT_NAME = RC.UNIQUE_CONSTRAINT_NAME

   WHERE KCU1.ORDINAL_POSITION = KCU2.ORDINAL_POSITION
         AND KCU1.TABLE_CATALOG = '~a'
         AND KCU1.CONSTRAINT_CATALOG = '~a'
         AND KCU1.CONSTRAINT_SCHEMA NOT IN ('dto', 'sys')
         AND KCU1.TABLE_SCHEMA NOT IN ('dto', 'sys')
         AND KCU2.TABLE_SCHEMA NOT IN ('dto', 'sys')

         ~:[~*~;and (~{~a~^ or ~})~]
         ~:[~*~;and (~{~a~^ and ~})~]

ORDER BY KCU1.CONSTRAINT_NAME, KCU1.ORDINAL_POSITION;
