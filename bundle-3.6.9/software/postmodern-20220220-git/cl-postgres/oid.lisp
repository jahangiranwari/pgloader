;;;; -*- Mode: LISP; Syntax: Ansi-Common-Lisp; Base: 10; Package: CL-POSTGRES-OID; -*-

(in-package :cl-postgres-oid)

(defconstant +bool+ 16)
(defconstant +bytea+ 17)
(defconstant +char+ 18)
(defconstant +name+ 19)
(defconstant +int8+ 20)
(defconstant +int2+ 21)
(defconstant +int2vector+ 22)
(defconstant +int4+ 23)
(defconstant +regproc+ 24)
(defconstant +text+ 25)
(defconstant +oid+ 26)
(defconstant +tid+ 27)
(defconstant +xid+ 28)
(defconstant +cid+ 29)
(defconstant +oid-vector+ 30)
(defconstant +json+ 114)
(defconstant +xml+ 142)
(defconstant +pgnodetree+ 194)
(defconstant +pgddlcommand+ 32)
(defconstant +point+ 600)
(defconstant +lseg+ 601)
(defconstant +path+ 602)
(defconstant +box+ 603)
(defconstant +polygon+ 604)
(defconstant +line+ 628)
(defconstant +float4+ 700)
(defconstant +float8+ 701)
(defconstant +abstime+ 702)
(defconstant +reltime+ 703)
(defconstant +tinterval+ 704)
(defconstant +unknown+ 705)
(defconstant +circle+ 718)
(defconstant +cash+ 790)
(defconstant +macaddr+ 829)
(defconstant +inet+ 869)
(defconstant +cidr+ 650)
(defconstant +bool-array+ 1000)
(defconstant +bytea-array+ 1001)
(defconstant +char-array+ 1002)
(defconstant +name-array+ 1003)
(defconstant +int2-array+ 1005)
(defconstant +int4-array+ 1007)
(defconstant +text-array+ 1009)
(defconstant +bpchar-array+ 1014)
(defconstant +varchar-array+ 1015)
(defconstant +int8-array+ 1016)
(defconstant +point-array+ 1017)
(defconstant +lseg-array+ 1018)
(defconstant +box-array+ 1020)
(defconstant +float4-array+ 1021)
(defconstant +float8-array+ 1022)
(defconstant +oid-array+ 1028)
(defconstant +aclitem+ 1033)
(defconstant +cstring-array+ 1263)
(defconstant +bpchar+ 1042)
(defconstant +varchar+ 1043)
(defconstant +date+ 1082)
(defconstant +time+ 1083)
(defconstant +timestamp+ 1114)
(defconstant +timestamp-array+ 1115)
(defconstant +date-array+ 1182)
(defconstant +time-array+ 1183)
(defconstant +timestamptz+ 1184)
(defconstant +timestamptz-array+ 1185)
(defconstant +interval+ 1186)
(defconstant +interval-array+ 1187)
(defconstant +timetz+ 1266)
(defconstant +bit+ 1560)
(defconstant +bit-array+ 1561)
(defconstant +varbit+ 1562)
(defconstant +varbit-array+ 1563)
(defconstant +numeric+ 1700)
(defconstant +numeric-array+ 1231)
(defconstant +refcursor+ 1790)
(defconstant +regprocedure+ 2202)
(defconstant +regoper+ 2203)
(defconstant +regoperator+ 2204)
(defconstant +regclass+ 2205)
(defconstant +regtype+ 2206)
(defconstant +regrole+ 4096)
(defconstant +regnamespace+ 4089)
(defconstant +regtype-array+ 2211)
(defconstant +uuid+ 2950)
(defconstant +lsn+ 3220)
(defconstant +tsvector+ 3614)
(defconstant +gtsvector+ 3642)
(defconstant +tsquery+ 3615)
(defconstant +regconfig+ 3734)
(defconstant +regdictionary+ 3769)
(defconstant +jsonb+ 3802)
(defconstant +int4range+ 3904)
(defconstant +record+ 2249)
(defconstant +record-array+ 2287)
(defconstant +cstring+ 2275)
(defconstant +any+ 2276)
(defconstant +any-array+ 2277)
(defconstant +v-oid+ 2278)
(defconstant +trigger+ 2279)
(defconstant +evttrigger+ 3838)
(defconstant +language-handler+ 2280)
(defconstant +internal+ 2281)
(defconstant +opaque+ 2282)
(defconstant +anyelement+ 2283)
(defconstant +anynon-array+ 2776)
(defconstant +anyenum+ 3500)
(defconstant +fdw-handler+ 3115)
(defconstant +index-am-handler+ 325)
(defconstant +tsm-handler+ 3310)
(defconstant +anyrange+ 3831)