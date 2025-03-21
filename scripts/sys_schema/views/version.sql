-- Copyright (c) 2014, 2015, Oracle and/or its affiliates. All rights reserved.
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; version 2 of the License.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--
-- View: version
--
-- Shows the sys schema and mysql versions
--
-- mysql> select * from sys.version;
-- +-------------+---------------+
-- | sys_version | mysql_version |
-- +-------------+---------------+
-- | 1.5.0       | 5.7.8-rc      |
-- +-------------+---------------+
-- 

CREATE OR REPLACE
  DEFINER = 'mariadb.sys'@'localhost'
  SQL SECURITY INVOKER 
VIEW version (
  sys_version,
  mysql_version
) AS 
SELECT '1.5.2' AS sys_version, 
        version() AS mysql_version;
