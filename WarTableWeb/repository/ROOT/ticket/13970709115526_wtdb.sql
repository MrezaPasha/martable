PGDMP         7            	    v            wtdb    10.4    10.4 �    �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �	           1262    16384    wtdb    DATABASE     �   CREATE DATABASE wtdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Persian_Iran.1256' LC_CTYPE = 'Persian_Iran.1256';
    DROP DATABASE wtdb;
             sa_wt    false                        2615    56249    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                        3079    12278    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    56251    Service.Admin.Account    TABLE        CREATE TABLE public."Service.Admin.Account" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "accountGroup_id" bigint,
    "accountModel_id" bigint
);
 +   DROP TABLE public."Service.Admin.Account";
       public         postgres    false    3            �            1259    56256    Service.Admin.Account.Group    TABLE     �   CREATE TABLE public."Service.Admin.Account.Group" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30)
);
 1   DROP TABLE public."Service.Admin.Account.Group";
       public         postgres    false    3            �            1259    56261    Service.Admin.Account.Model    TABLE     �   CREATE TABLE public."Service.Admin.Account.Model" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30)
);
 1   DROP TABLE public."Service.Admin.Account.Model";
       public         postgres    false    3            �            1259    56266    Service.Admin.Notification    TABLE     �   CREATE TABLE public."Service.Admin.Notification" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30)
);
 0   DROP TABLE public."Service.Admin.Notification";
       public         postgres    false    3            �            1259    56271 "   Service.Admin.Notification_Account    TABLE       CREATE TABLE public."Service.Admin.Notification_Account" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    account_id bigint,
    notification_id bigint
);
 8   DROP TABLE public."Service.Admin.Notification_Account";
       public         postgres    false    3            �            1259    56276    Service.Layer    TABLE     �   CREATE TABLE public."Service.Layer" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30)
);
 #   DROP TABLE public."Service.Layer";
       public         postgres    false    3            �            1259    56281    Service.Layer_Map    TABLE     �   CREATE TABLE public."Service.Layer_Map" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    layer_id bigint,
    map_id bigint
);
 '   DROP TABLE public."Service.Layer_Map";
       public         postgres    false    3            �            1259    56286    Service.Map    TABLE     �   CREATE TABLE public."Service.Map" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "mapRegion_id" bigint
);
 !   DROP TABLE public."Service.Map";
       public         postgres    false    3            �            1259    56291    Service.Map.Region    TABLE     �   CREATE TABLE public."Service.Map.Region" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30)
);
 (   DROP TABLE public."Service.Map.Region";
       public         postgres    false    3            �            1259    56296    Service.Map_Room    TABLE     �   CREATE TABLE public."Service.Map_Room" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    map_id bigint,
    room_id bigint
);
 &   DROP TABLE public."Service.Map_Room";
       public         postgres    false    3            �            1259    56301    Service.Material    TABLE     �   CREATE TABLE public."Service.Material" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30)
);
 &   DROP TABLE public."Service.Material";
       public         postgres    false    3            �            1259    56306    Service.Material.Area    TABLE     �   CREATE TABLE public."Service.Material.Area" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    material_id bigint
);
 +   DROP TABLE public."Service.Material.Area";
       public         postgres    false    3            �            1259    56311    Service.Material.Group    TABLE     �   CREATE TABLE public."Service.Material.Group" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30)
);
 ,   DROP TABLE public."Service.Material.Group";
       public         postgres    false    3            �            1259    56316    Service.Material.Material_Group    TABLE     y   CREATE TABLE public."Service.Material.Material_Group" (
    group_id bigint NOT NULL,
    material_id bigint NOT NULL
);
 5   DROP TABLE public."Service.Material.Material_Group";
       public         postgres    false    3            �            1259    56321    Service.Material_Map    TABLE     �   CREATE TABLE public."Service.Material_Map" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    map_id bigint,
    material_id bigint
);
 *   DROP TABLE public."Service.Material_Map";
       public         postgres    false    3            �            1259    56326    Service.Meeting    TABLE     �   CREATE TABLE public."Service.Meeting" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    map_id bigint,
    room_id bigint
);
 %   DROP TABLE public."Service.Meeting";
       public         postgres    false    3            �            1259    56331    Service.Meeting_Account    TABLE     �   CREATE TABLE public."Service.Meeting_Account" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    account_id bigint,
    meeting_id bigint
);
 -   DROP TABLE public."Service.Meeting_Account";
       public         postgres    false    3            �            1259    56336    Service.Room    TABLE     �   CREATE TABLE public."Service.Room" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "activeMeeting_id" bigint,
    "adminAccount_id" bigint
);
 "   DROP TABLE public."Service.Room";
       public         postgres    false    3            �            1259    56341    Service.Room_Account    TABLE     �   CREATE TABLE public."Service.Room_Account" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    account_id bigint,
    room_id bigint
);
 *   DROP TABLE public."Service.Room_Account";
       public         postgres    false    3            �            1259    56346    Web.Admin.User    TABLE       CREATE TABLE public."Web.Admin.User" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "accessLimitDailyEnd" integer NOT NULL,
    "accessLimitDailyStart" integer NOT NULL,
    "accessLimitMonthlyEnd" integer NOT NULL,
    "accessLimitMonthlyStart" integer NOT NULL,
    "accessLimitTimelyEnd" character varying(15),
    "accessLimitTimelyStart" character varying(15),
    "accessLimitYearlyEnd" character varying(30),
    "accessLimitYearlyStart" character varying(30),
    comment character varying(255),
    "firstName" character varying(50),
    gender integer,
    "ipAddress" character varying(50),
    "ipAddressEnd" character varying(50),
    "ipAddressFirstSignin" character varying(50),
    "ipAddressStart" character varying(50),
    "ipRangeType" integer,
    "isBlocked" boolean,
    "isLogManager" boolean,
    "isNeedToChangePassword" boolean,
    "isSuperAdmin" boolean,
    "lastName" character varying(50),
    "lastSigninDateTime" character varying(30),
    level integer,
    password character varying(255) NOT NULL,
    "passwordDateTime" character varying(30),
    "passwordHistory" text,
    "porterUuid" character varying(1000),
    status integer NOT NULL,
    "superAdminCode" character varying(100),
    "superAdminLogingId" integer NOT NULL,
    "superAdminLogingIn" boolean,
    "userCode" character varying(255),
    username character varying(255) NOT NULL,
    logo_id bigint,
    CONSTRAINT "Web.Admin.User_accessLimitDailyEnd_check" CHECK ((("accessLimitDailyEnd" >= 0) AND ("accessLimitDailyEnd" <= 31))),
    CONSTRAINT "Web.Admin.User_accessLimitDailyStart_check" CHECK ((("accessLimitDailyStart" >= 0) AND ("accessLimitDailyStart" <= 31))),
    CONSTRAINT "Web.Admin.User_accessLimitMonthlyEnd_check" CHECK ((("accessLimitMonthlyEnd" >= 0) AND ("accessLimitMonthlyEnd" <= 12))),
    CONSTRAINT "Web.Admin.User_accessLimitMonthlyStart_check" CHECK ((("accessLimitMonthlyStart" >= 0) AND ("accessLimitMonthlyStart" <= 12)))
);
 $   DROP TABLE public."Web.Admin.User";
       public         postgres    false    3            �            1259    56358    Web.Admin.User.Group    TABLE     j  CREATE TABLE public."Web.Admin.User.Group" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    code character varying(255),
    "memberCount" integer NOT NULL,
    "subCount" integer NOT NULL,
    title character varying(150) NOT NULL,
    parent_id bigint
);
 *   DROP TABLE public."Web.Admin.User.Group";
       public         postgres    false    3            �            1259    56363    Web.Admin.User.Porter    TABLE     �  CREATE TABLE public."Web.Admin.User.Porter" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "agentSignature" character varying(255),
    "computerSignature" character varying(255),
    "confirmCode" integer NOT NULL,
    "confirmCodeDateTimeG" bigint NOT NULL,
    count integer NOT NULL,
    "expireDateTimeG" bigint NOT NULL,
    "isActiveTwoStepConfirm" boolean,
    "isConfirmed" boolean,
    "signoutStatus" integer,
    "singinDateTimeG" bigint NOT NULL,
    "singoutDateTimeG" bigint NOT NULL,
    uuid character varying(255),
    user_id bigint,
    CONSTRAINT "Web.Admin.User.Porter_count_check" CHECK ((count >= 0))
);
 +   DROP TABLE public."Web.Admin.User.Porter";
       public         postgres    false    3            �            1259    56372    Web.Admin.User.User_UserGroup    TABLE     y   CREATE TABLE public."Web.Admin.User.User_UserGroup" (
    "userGroup_id" bigint NOT NULL,
    user_id bigint NOT NULL
);
 3   DROP TABLE public."Web.Admin.User.User_UserGroup";
       public         postgres    false    3            �            1259    56377    Web.Admin.User.Uuid    TABLE     �  CREATE TABLE public."Web.Admin.User.Uuid" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "agentSignature" character varying(250),
    "computerSignature" character varying(250),
    "expireDateTimeG" bigint NOT NULL,
    "singinDateTimeG" bigint NOT NULL,
    uuid character varying(100),
    user_id bigint
);
 )   DROP TABLE public."Web.Admin.User.Uuid";
       public         postgres    false    3            �            1259    56385    Web.Admin.UserConfirm    TABLE     �  CREATE TABLE public."Web.Admin.UserConfirm" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "callCount" integer NOT NULL,
    "confirmDateTime" character varying(30),
    "confirmDateTimeG" bigint NOT NULL,
    "taskSignature" character varying(250),
    task_id bigint,
    user_id bigint
);
 +   DROP TABLE public."Web.Admin.UserConfirm";
       public         postgres    false    3            �            1259    56390    Web.Archive.Directory    TABLE     �  CREATE TABLE public."Web.Archive.Directory" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "className" character varying(255),
    comment character varying(255),
    "containedDirectoryCount" integer NOT NULL,
    "containedFileCount" integer NOT NULL,
    "directoryOrigin" integer,
    icon character varying(255),
    "isPermanent" boolean,
    level integer NOT NULL,
    name character varying(255) NOT NULL,
    path character varying(255),
    "repoDirectory" integer,
    url character varying(255),
    owner_id bigint,
    parent_id bigint
);
 +   DROP TABLE public."Web.Archive.Directory";
       public         postgres    false    3            �            1259    56398    Web.Archive.File    TABLE     �  CREATE TABLE public."Web.Archive.File" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "accessLevel" integer,
    "accessRule" character varying(250),
    "contentType" character varying(250),
    "directoryAbsolutePath" character varying(255),
    "directoryRelativePath" character varying(255),
    "downloadCount" integer NOT NULL,
    "downloadCountGuest" integer NOT NULL,
    "fetchManner" integer,
    "isContainOrginal" boolean,
    "isTemporary" boolean,
    "lastUploadDateTime" character varying(30),
    "orginalName" character varying(100),
    size bigint NOT NULL,
    thumbnails character varying(512),
    title character varying(100),
    "tryToDownloadCount" integer NOT NULL,
    "tryToDownloadCountGuest" integer NOT NULL,
    "uploadLink" character varying(255),
    "uploadLinkComment" character varying(255),
    "uploadStatus" integer,
    directory_id bigint,
    owner_id bigint
);
 &   DROP TABLE public."Web.Archive.File";
       public         postgres    false    3            �            1259    56406    Web.Archive.File.Download    TABLE       CREATE TABLE public."Web.Archive.File.Download" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    status integer,
    file_id bigint,
    user_id bigint
);
 /   DROP TABLE public."Web.Archive.File.Download";
       public         postgres    false    3            �            1259    56729    Web.Note    TABLE     w  CREATE TABLE public."Web.Note" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "dateTime" character varying(30),
    "dateTimeG" bigint NOT NULL,
    importance integer,
    "isVisited" boolean,
    message text,
    title character varying(250),
    user_id bigint
);
    DROP TABLE public."Web.Note";
       public         postgres    false    3            �            1259    56742    Web.System.Backup    TABLE        CREATE TABLE public."Web.System.Backup" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "backupDateTime" character varying(30),
    file_id bigint
);
 '   DROP TABLE public."Web.System.Backup";
       public         postgres    false    3            �            1259    56411    Web.System.Field    TABLE       CREATE TABLE public."Web.System.Field" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "dbConstraint" character varying(255),
    "dbDefaultValue" character varying(255),
    "dbExtra" character varying(255),
    "dbIndex" character varying(255),
    "dbKey" character varying(255),
    "dbRefColumn" character varying(255),
    "dbRefTable" character varying(255),
    "dbSize" integer NOT NULL,
    "dbTitle" character varying(255),
    "dbType" character varying(255),
    "isBidirectional" boolean,
    "isDbFK" boolean,
    "isDbNullable" boolean,
    "isDbPrimary" boolean,
    "isDbRefreshed" boolean,
    "isEncrypted" boolean,
    "isMoNullable" boolean,
    "isMoRefreshed" boolean,
    "moAnnotations" character varying(255),
    "moDataRelation" integer,
    "moDataRelationDes" character varying(255),
    "moDefaultValue" character varying(255),
    "moExtra" character varying(255),
    "moKey" character varying(255),
    "moMaxSize" integer NOT NULL,
    "moMinSize" integer NOT NULL,
    "moModifier" integer NOT NULL,
    "moPreviousTitle" character varying(255),
    "moTitle" character varying(255),
    "moType" character varying(255),
    status integer,
    model_id bigint
);
 &   DROP TABLE public."Web.System.Field";
       public         postgres    false    3            �            1259    56419    Web.System.Irror    TABLE     �  CREATE TABLE public."Web.System.Irror" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "agentSignature" character varying(255),
    cause character varying(255),
    "computerSignature" character varying(255),
    "httpErrorCode" integer,
    "isVisited" boolean,
    level integer,
    message text,
    place integer,
    "porterUuid" character varying(255),
    "sessionId" character varying(255),
    status integer,
    "taskName" character varying(255),
    "visitCount" integer NOT NULL,
    user_id bigint,
    CONSTRAINT "Web.System.Irror_visitCount_check" CHECK (("visitCount" >= 0))
);
 &   DROP TABLE public."Web.System.Irror";
       public         postgres    false    3            �            1259    56428    Web.System.Log    TABLE     �  CREATE TABLE public."Web.System.Log" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "agentSignature" character varying(255),
    "computerSignature" character varying(255),
    "dateTimeG" bigint NOT NULL,
    "httpCode" character varying(100),
    "importanceLevel" integer,
    "isTaskTwoLevelConfirm" boolean,
    message character varying(2048),
    "onlineLoggingStrategy" integer,
    "portNumber" integer NOT NULL,
    "porterUuid" character varying(255),
    "requestMethod" character varying(255),
    "sendDateTimeG" bigint NOT NULL,
    "sendStatus" integer,
    sensitivity integer,
    "serverId" character varying(250),
    "sessionId" character varying(255),
    "taskName" character varying(255),
    "taskTitle" character varying(255),
    url character varying(512),
    "userGroupId" bigint NOT NULL,
    "userId" bigint NOT NULL,
    "userLevel" integer,
    "actionType" integer
);
 $   DROP TABLE public."Web.System.Log";
       public         postgres    false    3            �            1259    56436    Web.System.Log.DailyLog    TABLE     Z  CREATE TABLE public."Web.System.Log.DailyLog" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    chrome integer NOT NULL,
    "dayDate" character varying(255),
    desktop integer NOT NULL,
    firefox integer NOT NULL,
    "guestVisitCount" integer NOT NULL,
    "internetExplorer" integer NOT NULL,
    mobile integer NOT NULL,
    netscape integer NOT NULL,
    opera integer NOT NULL,
    "pageCount" integer NOT NULL,
    "userVisitCount" integer NOT NULL,
    "visitCount" integer NOT NULL
);
 -   DROP TABLE public."Web.System.Log.DailyLog";
       public         postgres    false    3            �            1259    56441    Web.System.Log.SigninLog    TABLE       CREATE TABLE public."Web.System.Log.SigninLog" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "agentSignature" character varying(250),
    "computerSignature" character varying(250),
    "domainName" character varying(150),
    "ipAddress" character varying(50),
    "lastDateTime" character varying(30),
    "lastDateTimeG" bigint NOT NULL,
    status integer,
    uuid character varying(150),
    user_id bigint
);
 .   DROP TABLE public."Web.System.Log.SigninLog";
       public         postgres    false    3            �            1259    56449    Web.System.Log.User    TABLE     1  CREATE TABLE public."Web.System.Log.User" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "agentSignature" character varying(250),
    "attemptType" integer,
    "computerSignature" character varying(250),
    count integer NOT NULL,
    "dateTimeG" bigint NOT NULL,
    "isSuccess" boolean,
    "lastDateTimeG" bigint NOT NULL,
    uuid character varying(150),
    user_id bigint,
    CONSTRAINT "Web.System.Log.User_count_check" CHECK ((count >= 0))
);
 )   DROP TABLE public."Web.System.Log.User";
       public         postgres    false    3            �            1259    56458    Web.System.Model    TABLE     �  CREATE TABLE public."Web.System.Model" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "className" character varying(255),
    "isRefreshed" boolean,
    "messageCode" character varying(255),
    "packageName" character varying(255),
    status integer,
    "tableName" character varying(255)
);
 &   DROP TABLE public."Web.System.Model";
       public         postgres    false    3            �            1259    56466    Web.System.Module    TABLE     �  CREATE TABLE public."Web.System.Module" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "className" character varying(255),
    "isProtected" boolean,
    "isRefreshed" boolean,
    "menuMessageCode" character varying(255),
    "messageCode" character varying(255),
    "packageName" character varying(255),
    url character varying(255)
);
 '   DROP TABLE public."Web.System.Module";
       public         postgres    false    3            �            1259    56474    Web.System.Registery    TABLE     w  CREATE TABLE public."Web.System.Registery" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    key character varying(255),
    title character varying(255),
    type character varying(255),
    value character varying(255),
    "valueJson" text,
    "valueType" integer
);
 *   DROP TABLE public."Web.System.Registery";
       public         postgres    false    3            �            1259    56482    Web.System.Task    TABLE     �  CREATE TABLE public."Web.System.Task" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "accessLevel" integer,
    "importanceLevel" integer,
    "isActive" boolean,
    "isActiveLogging" boolean,
    "isAjax" boolean,
    "isLogManager" boolean,
    "isOnlineLogging" boolean,
    "isPanelTask" boolean,
    "isRefreshed" boolean,
    "isSuperAdmin" boolean,
    "isTwoLevelConfirm" boolean,
    "menuIdentity" character varying(255),
    "menuMessageCode" character varying(255),
    "messageCode" character varying(255),
    method integer,
    "onlineLoggingDelay" integer NOT NULL,
    "onlineLoggingStrategy" integer,
    "onlineSchedulingTime" character varying(15),
    sensitivity integer,
    signature character varying(255),
    url character varying(255),
    module_id bigint,
    "actionType" integer
);
 %   DROP TABLE public."Web.System.Task";
       public         postgres    false    3            �            1259    56490    Web.System.Task_User    TABLE     i   CREATE TABLE public."Web.System.Task_User" (
    user_id bigint NOT NULL,
    task_id bigint NOT NULL
);
 *   DROP TABLE public."Web.System.Task_User";
       public         postgres    false    3            �            1259    56495    Web.System.Task_UserGroup    TABLE     u   CREATE TABLE public."Web.System.Task_UserGroup" (
    "userGroup_id" bigint NOT NULL,
    task_id bigint NOT NULL
);
 /   DROP TABLE public."Web.System.Task_UserGroup";
       public         postgres    false    3            �            1259    56500    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public       postgres    false    3            �	          0    56251    Service.Admin.Account 
   TABLE DATA               �   COPY public."Service.Admin.Account" (id, "createDateTime", "entityState", "modifyDateTime", "accountGroup_id", "accountModel_id") FROM stdin;
    public       postgres    false    196   �4      �	          0    56256    Service.Admin.Account.Group 
   TABLE DATA               n   COPY public."Service.Admin.Account.Group" (id, "createDateTime", "entityState", "modifyDateTime") FROM stdin;
    public       postgres    false    197   �4      �	          0    56261    Service.Admin.Account.Model 
   TABLE DATA               n   COPY public."Service.Admin.Account.Model" (id, "createDateTime", "entityState", "modifyDateTime") FROM stdin;
    public       postgres    false    198   5      �	          0    56266    Service.Admin.Notification 
   TABLE DATA               m   COPY public."Service.Admin.Notification" (id, "createDateTime", "entityState", "modifyDateTime") FROM stdin;
    public       postgres    false    199   /5      �	          0    56271 "   Service.Admin.Notification_Account 
   TABLE DATA               �   COPY public."Service.Admin.Notification_Account" (id, "createDateTime", "entityState", "modifyDateTime", account_id, notification_id) FROM stdin;
    public       postgres    false    200   L5      �	          0    56276    Service.Layer 
   TABLE DATA               `   COPY public."Service.Layer" (id, "createDateTime", "entityState", "modifyDateTime") FROM stdin;
    public       postgres    false    201   i5      �	          0    56281    Service.Layer_Map 
   TABLE DATA               v   COPY public."Service.Layer_Map" (id, "createDateTime", "entityState", "modifyDateTime", layer_id, map_id) FROM stdin;
    public       postgres    false    202   �5      �	          0    56286    Service.Map 
   TABLE DATA               n   COPY public."Service.Map" (id, "createDateTime", "entityState", "modifyDateTime", "mapRegion_id") FROM stdin;
    public       postgres    false    203   �5      �	          0    56291    Service.Map.Region 
   TABLE DATA               e   COPY public."Service.Map.Region" (id, "createDateTime", "entityState", "modifyDateTime") FROM stdin;
    public       postgres    false    204   �5      �	          0    56296    Service.Map_Room 
   TABLE DATA               t   COPY public."Service.Map_Room" (id, "createDateTime", "entityState", "modifyDateTime", map_id, room_id) FROM stdin;
    public       postgres    false    205   �5      �	          0    56301    Service.Material 
   TABLE DATA               c   COPY public."Service.Material" (id, "createDateTime", "entityState", "modifyDateTime") FROM stdin;
    public       postgres    false    206   �5      �	          0    56306    Service.Material.Area 
   TABLE DATA               u   COPY public."Service.Material.Area" (id, "createDateTime", "entityState", "modifyDateTime", material_id) FROM stdin;
    public       postgres    false    207   6      �	          0    56311    Service.Material.Group 
   TABLE DATA               i   COPY public."Service.Material.Group" (id, "createDateTime", "entityState", "modifyDateTime") FROM stdin;
    public       postgres    false    208   46      �	          0    56316    Service.Material.Material_Group 
   TABLE DATA               R   COPY public."Service.Material.Material_Group" (group_id, material_id) FROM stdin;
    public       postgres    false    209   Q6      �	          0    56321    Service.Material_Map 
   TABLE DATA               |   COPY public."Service.Material_Map" (id, "createDateTime", "entityState", "modifyDateTime", map_id, material_id) FROM stdin;
    public       postgres    false    210   n6      �	          0    56326    Service.Meeting 
   TABLE DATA               s   COPY public."Service.Meeting" (id, "createDateTime", "entityState", "modifyDateTime", map_id, room_id) FROM stdin;
    public       postgres    false    211   �6      �	          0    56331    Service.Meeting_Account 
   TABLE DATA               �   COPY public."Service.Meeting_Account" (id, "createDateTime", "entityState", "modifyDateTime", account_id, meeting_id) FROM stdin;
    public       postgres    false    212   �6      �	          0    56336    Service.Room 
   TABLE DATA               �   COPY public."Service.Room" (id, "createDateTime", "entityState", "modifyDateTime", "activeMeeting_id", "adminAccount_id") FROM stdin;
    public       postgres    false    213   �6      �	          0    56341    Service.Room_Account 
   TABLE DATA               |   COPY public."Service.Room_Account" (id, "createDateTime", "entityState", "modifyDateTime", account_id, room_id) FROM stdin;
    public       postgres    false    214   �6      �	          0    56346    Web.Admin.User 
   TABLE DATA               �  COPY public."Web.Admin.User" (id, "createDateTime", "entityState", "modifyDateTime", "accessLimitDailyEnd", "accessLimitDailyStart", "accessLimitMonthlyEnd", "accessLimitMonthlyStart", "accessLimitTimelyEnd", "accessLimitTimelyStart", "accessLimitYearlyEnd", "accessLimitYearlyStart", comment, "firstName", gender, "ipAddress", "ipAddressEnd", "ipAddressFirstSignin", "ipAddressStart", "ipRangeType", "isBlocked", "isLogManager", "isNeedToChangePassword", "isSuperAdmin", "lastName", "lastSigninDateTime", level, password, "passwordDateTime", "passwordHistory", "porterUuid", status, "superAdminCode", "superAdminLogingId", "superAdminLogingIn", "userCode", username, logo_id) FROM stdin;
    public       postgres    false    215   �6      �	          0    56358    Web.Admin.User.Group 
   TABLE DATA               �   COPY public."Web.Admin.User.Group" (id, "createDateTime", "entityState", "modifyDateTime", code, "memberCount", "subCount", title, parent_id) FROM stdin;
    public       postgres    false    216   8      �	          0    56363    Web.Admin.User.Porter 
   TABLE DATA               @  COPY public."Web.Admin.User.Porter" (id, "createDateTime", "entityState", "modifyDateTime", "agentSignature", "computerSignature", "confirmCode", "confirmCodeDateTimeG", count, "expireDateTimeG", "isActiveTwoStepConfirm", "isConfirmed", "signoutStatus", "singinDateTimeG", "singoutDateTimeG", uuid, user_id) FROM stdin;
    public       postgres    false    217   /8      �	          0    56372    Web.Admin.User.User_UserGroup 
   TABLE DATA               R   COPY public."Web.Admin.User.User_UserGroup" ("userGroup_id", user_id) FROM stdin;
    public       postgres    false    218   L8      �	          0    56377    Web.Admin.User.Uuid 
   TABLE DATA               �   COPY public."Web.Admin.User.Uuid" (id, "createDateTime", "entityState", "modifyDateTime", "agentSignature", "computerSignature", "expireDateTimeG", "singinDateTimeG", uuid, user_id) FROM stdin;
    public       postgres    false    219   i8      �	          0    56385    Web.Admin.UserConfirm 
   TABLE DATA               �   COPY public."Web.Admin.UserConfirm" (id, "createDateTime", "entityState", "modifyDateTime", "callCount", "confirmDateTime", "confirmDateTimeG", "taskSignature", task_id, user_id) FROM stdin;
    public       postgres    false    220   �8      �	          0    56390    Web.Archive.Directory 
   TABLE DATA                 COPY public."Web.Archive.Directory" (id, "createDateTime", "entityState", "modifyDateTime", "className", comment, "containedDirectoryCount", "containedFileCount", "directoryOrigin", icon, "isPermanent", level, name, path, "repoDirectory", url, owner_id, parent_id) FROM stdin;
    public       postgres    false    221   �8      �	          0    56398    Web.Archive.File 
   TABLE DATA               �  COPY public."Web.Archive.File" (id, "createDateTime", "entityState", "modifyDateTime", "accessLevel", "accessRule", "contentType", "directoryAbsolutePath", "directoryRelativePath", "downloadCount", "downloadCountGuest", "fetchManner", "isContainOrginal", "isTemporary", "lastUploadDateTime", "orginalName", size, thumbnails, title, "tryToDownloadCount", "tryToDownloadCountGuest", "uploadLink", "uploadLinkComment", "uploadStatus", directory_id, owner_id) FROM stdin;
    public       postgres    false    222   g:      �	          0    56406    Web.Archive.File.Download 
   TABLE DATA               �   COPY public."Web.Archive.File.Download" (id, "createDateTime", "entityState", "modifyDateTime", status, file_id, user_id) FROM stdin;
    public       postgres    false    223   v;      �	          0    56729    Web.Note 
   TABLE DATA               �   COPY public."Web.Note" (id, "createDateTime", "entityState", "modifyDateTime", "dateTime", "dateTimeG", importance, "isVisited", message, title, user_id) FROM stdin;
    public       postgres    false    237   �;      �	          0    56742    Web.System.Backup 
   TABLE DATA                  COPY public."Web.System.Backup" (id, "createDateTime", "entityState", "modifyDateTime", "backupDateTime", file_id) FROM stdin;
    public       postgres    false    238   �<      �	          0    56411    Web.System.Field 
   TABLE DATA                 COPY public."Web.System.Field" (id, "createDateTime", "entityState", "modifyDateTime", "dbConstraint", "dbDefaultValue", "dbExtra", "dbIndex", "dbKey", "dbRefColumn", "dbRefTable", "dbSize", "dbTitle", "dbType", "isBidirectional", "isDbFK", "isDbNullable", "isDbPrimary", "isDbRefreshed", "isEncrypted", "isMoNullable", "isMoRefreshed", "moAnnotations", "moDataRelation", "moDataRelationDes", "moDefaultValue", "moExtra", "moKey", "moMaxSize", "moMinSize", "moModifier", "moPreviousTitle", "moTitle", "moType", status, model_id) FROM stdin;
    public       postgres    false    224   R=      �	          0    56419    Web.System.Irror 
   TABLE DATA                 COPY public."Web.System.Irror" (id, "createDateTime", "entityState", "modifyDateTime", "agentSignature", cause, "computerSignature", "httpErrorCode", "isVisited", level, message, place, "porterUuid", "sessionId", status, "taskName", "visitCount", user_id) FROM stdin;
    public       postgres    false    225   o=      �	          0    56428    Web.System.Log 
   TABLE DATA               �  COPY public."Web.System.Log" (id, "createDateTime", "entityState", "modifyDateTime", "agentSignature", "computerSignature", "dateTimeG", "httpCode", "importanceLevel", "isTaskTwoLevelConfirm", message, "onlineLoggingStrategy", "portNumber", "porterUuid", "requestMethod", "sendDateTimeG", "sendStatus", sensitivity, "serverId", "sessionId", "taskName", "taskTitle", url, "userGroupId", "userId", "userLevel", "actionType") FROM stdin;
    public       postgres    false    226   �D      �	          0    56436    Web.System.Log.DailyLog 
   TABLE DATA               �   COPY public."Web.System.Log.DailyLog" (id, "createDateTime", "entityState", "modifyDateTime", chrome, "dayDate", desktop, firefox, "guestVisitCount", "internetExplorer", mobile, netscape, opera, "pageCount", "userVisitCount", "visitCount") FROM stdin;
    public       postgres    false    227   :n      �	          0    56441    Web.System.Log.SigninLog 
   TABLE DATA               �   COPY public."Web.System.Log.SigninLog" (id, "createDateTime", "entityState", "modifyDateTime", "agentSignature", "computerSignature", "domainName", "ipAddress", "lastDateTime", "lastDateTimeG", status, uuid, user_id) FROM stdin;
    public       postgres    false    228   Wn      �	          0    56449    Web.System.Log.User 
   TABLE DATA               �   COPY public."Web.System.Log.User" (id, "createDateTime", "entityState", "modifyDateTime", "agentSignature", "attemptType", "computerSignature", count, "dateTimeG", "isSuccess", "lastDateTimeG", uuid, user_id) FROM stdin;
    public       postgres    false    229   �q      �	          0    56458    Web.System.Model 
   TABLE DATA               �   COPY public."Web.System.Model" (id, "createDateTime", "entityState", "modifyDateTime", "className", "isRefreshed", "messageCode", "packageName", status, "tableName") FROM stdin;
    public       postgres    false    230   �q      �	          0    56466    Web.System.Module 
   TABLE DATA               �   COPY public."Web.System.Module" (id, "createDateTime", "entityState", "modifyDateTime", "className", "isProtected", "isRefreshed", "menuMessageCode", "messageCode", "packageName", url) FROM stdin;
    public       postgres    false    231   �q      �	          0    56474    Web.System.Registery 
   TABLE DATA               �   COPY public."Web.System.Registery" (id, "createDateTime", "entityState", "modifyDateTime", key, title, type, value, "valueJson", "valueType") FROM stdin;
    public       postgres    false    232   �u      �	          0    56482    Web.System.Task 
   TABLE DATA               �  COPY public."Web.System.Task" (id, "createDateTime", "entityState", "modifyDateTime", "accessLevel", "importanceLevel", "isActive", "isActiveLogging", "isAjax", "isLogManager", "isOnlineLogging", "isPanelTask", "isRefreshed", "isSuperAdmin", "isTwoLevelConfirm", "menuIdentity", "menuMessageCode", "messageCode", method, "onlineLoggingDelay", "onlineLoggingStrategy", "onlineSchedulingTime", sensitivity, signature, url, module_id, "actionType") FROM stdin;
    public       postgres    false    233   Ux      �	          0    56490    Web.System.Task_User 
   TABLE DATA               B   COPY public."Web.System.Task_User" (user_id, task_id) FROM stdin;
    public       postgres    false    234   I�      �	          0    56495    Web.System.Task_UserGroup 
   TABLE DATA               N   COPY public."Web.System.Task_UserGroup" ("userGroup_id", task_id) FROM stdin;
    public       postgres    false    235   f�      �	           0    0    hibernate_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hibernate_sequence', 571, true);
            public       postgres    false    236            �           2606    56260 <   Service.Admin.Account.Group Service.Admin.Account.Group_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."Service.Admin.Account.Group"
    ADD CONSTRAINT "Service.Admin.Account.Group_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."Service.Admin.Account.Group" DROP CONSTRAINT "Service.Admin.Account.Group_pkey";
       public         postgres    false    197            �           2606    56265 <   Service.Admin.Account.Model Service.Admin.Account.Model_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."Service.Admin.Account.Model"
    ADD CONSTRAINT "Service.Admin.Account.Model_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."Service.Admin.Account.Model" DROP CONSTRAINT "Service.Admin.Account.Model_pkey";
       public         postgres    false    198            �           2606    56255 0   Service.Admin.Account Service.Admin.Account_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Service.Admin.Account"
    ADD CONSTRAINT "Service.Admin.Account_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."Service.Admin.Account" DROP CONSTRAINT "Service.Admin.Account_pkey";
       public         postgres    false    196            �           2606    56275 J   Service.Admin.Notification_Account Service.Admin.Notification_Account_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Service.Admin.Notification_Account"
    ADD CONSTRAINT "Service.Admin.Notification_Account_pkey" PRIMARY KEY (id);
 x   ALTER TABLE ONLY public."Service.Admin.Notification_Account" DROP CONSTRAINT "Service.Admin.Notification_Account_pkey";
       public         postgres    false    200            �           2606    56270 :   Service.Admin.Notification Service.Admin.Notification_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."Service.Admin.Notification"
    ADD CONSTRAINT "Service.Admin.Notification_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."Service.Admin.Notification" DROP CONSTRAINT "Service.Admin.Notification_pkey";
       public         postgres    false    199            �           2606    56285 (   Service.Layer_Map Service.Layer_Map_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Service.Layer_Map"
    ADD CONSTRAINT "Service.Layer_Map_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."Service.Layer_Map" DROP CONSTRAINT "Service.Layer_Map_pkey";
       public         postgres    false    202            �           2606    56280     Service.Layer Service.Layer_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Service.Layer"
    ADD CONSTRAINT "Service.Layer_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Service.Layer" DROP CONSTRAINT "Service.Layer_pkey";
       public         postgres    false    201            �           2606    56295 *   Service.Map.Region Service.Map.Region_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."Service.Map.Region"
    ADD CONSTRAINT "Service.Map.Region_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."Service.Map.Region" DROP CONSTRAINT "Service.Map.Region_pkey";
       public         postgres    false    204            �           2606    56300 &   Service.Map_Room Service.Map_Room_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Service.Map_Room"
    ADD CONSTRAINT "Service.Map_Room_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Service.Map_Room" DROP CONSTRAINT "Service.Map_Room_pkey";
       public         postgres    false    205            �           2606    56290    Service.Map Service.Map_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Service.Map"
    ADD CONSTRAINT "Service.Map_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Service.Map" DROP CONSTRAINT "Service.Map_pkey";
       public         postgres    false    203            �           2606    56310 0   Service.Material.Area Service.Material.Area_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Service.Material.Area"
    ADD CONSTRAINT "Service.Material.Area_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."Service.Material.Area" DROP CONSTRAINT "Service.Material.Area_pkey";
       public         postgres    false    207            �           2606    56315 2   Service.Material.Group Service.Material.Group_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."Service.Material.Group"
    ADD CONSTRAINT "Service.Material.Group_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."Service.Material.Group" DROP CONSTRAINT "Service.Material.Group_pkey";
       public         postgres    false    208            �           2606    56320 D   Service.Material.Material_Group Service.Material.Material_Group_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Service.Material.Material_Group"
    ADD CONSTRAINT "Service.Material.Material_Group_pkey" PRIMARY KEY (material_id, group_id);
 r   ALTER TABLE ONLY public."Service.Material.Material_Group" DROP CONSTRAINT "Service.Material.Material_Group_pkey";
       public         postgres    false    209    209            �           2606    56325 .   Service.Material_Map Service.Material_Map_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."Service.Material_Map"
    ADD CONSTRAINT "Service.Material_Map_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."Service.Material_Map" DROP CONSTRAINT "Service.Material_Map_pkey";
       public         postgres    false    210            �           2606    56305 &   Service.Material Service.Material_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Service.Material"
    ADD CONSTRAINT "Service.Material_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Service.Material" DROP CONSTRAINT "Service.Material_pkey";
       public         postgres    false    206            �           2606    56335 4   Service.Meeting_Account Service.Meeting_Account_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."Service.Meeting_Account"
    ADD CONSTRAINT "Service.Meeting_Account_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."Service.Meeting_Account" DROP CONSTRAINT "Service.Meeting_Account_pkey";
       public         postgres    false    212            �           2606    56330 $   Service.Meeting Service.Meeting_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Service.Meeting"
    ADD CONSTRAINT "Service.Meeting_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Service.Meeting" DROP CONSTRAINT "Service.Meeting_pkey";
       public         postgres    false    211            �           2606    56345 .   Service.Room_Account Service.Room_Account_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."Service.Room_Account"
    ADD CONSTRAINT "Service.Room_Account_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."Service.Room_Account" DROP CONSTRAINT "Service.Room_Account_pkey";
       public         postgres    false    214            �           2606    56340    Service.Room Service.Room_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Service.Room"
    ADD CONSTRAINT "Service.Room_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Service.Room" DROP CONSTRAINT "Service.Room_pkey";
       public         postgres    false    213            �           2606    56362 .   Web.Admin.User.Group Web.Admin.User.Group_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."Web.Admin.User.Group"
    ADD CONSTRAINT "Web.Admin.User.Group_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."Web.Admin.User.Group" DROP CONSTRAINT "Web.Admin.User.Group_pkey";
       public         postgres    false    216            �           2606    56371 0   Web.Admin.User.Porter Web.Admin.User.Porter_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Web.Admin.User.Porter"
    ADD CONSTRAINT "Web.Admin.User.Porter_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."Web.Admin.User.Porter" DROP CONSTRAINT "Web.Admin.User.Porter_pkey";
       public         postgres    false    217            �           2606    56376 @   Web.Admin.User.User_UserGroup Web.Admin.User.User_UserGroup_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Web.Admin.User.User_UserGroup"
    ADD CONSTRAINT "Web.Admin.User.User_UserGroup_pkey" PRIMARY KEY (user_id, "userGroup_id");
 n   ALTER TABLE ONLY public."Web.Admin.User.User_UserGroup" DROP CONSTRAINT "Web.Admin.User.User_UserGroup_pkey";
       public         postgres    false    218    218            �           2606    56384 ,   Web.Admin.User.Uuid Web.Admin.User.Uuid_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Web.Admin.User.Uuid"
    ADD CONSTRAINT "Web.Admin.User.Uuid_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."Web.Admin.User.Uuid" DROP CONSTRAINT "Web.Admin.User.Uuid_pkey";
       public         postgres    false    219            �           2606    56389 0   Web.Admin.UserConfirm Web.Admin.UserConfirm_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Web.Admin.UserConfirm"
    ADD CONSTRAINT "Web.Admin.UserConfirm_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."Web.Admin.UserConfirm" DROP CONSTRAINT "Web.Admin.UserConfirm_pkey";
       public         postgres    false    220            �           2606    56357 "   Web.Admin.User Web.Admin.User_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Web.Admin.User"
    ADD CONSTRAINT "Web.Admin.User_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Web.Admin.User" DROP CONSTRAINT "Web.Admin.User_pkey";
       public         postgres    false    215            �           2606    56397 0   Web.Archive.Directory Web.Archive.Directory_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Web.Archive.Directory"
    ADD CONSTRAINT "Web.Archive.Directory_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."Web.Archive.Directory" DROP CONSTRAINT "Web.Archive.Directory_pkey";
       public         postgres    false    221            �           2606    56410 8   Web.Archive.File.Download Web.Archive.File.Download_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."Web.Archive.File.Download"
    ADD CONSTRAINT "Web.Archive.File.Download_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."Web.Archive.File.Download" DROP CONSTRAINT "Web.Archive.File.Download_pkey";
       public         postgres    false    223            �           2606    56405 &   Web.Archive.File Web.Archive.File_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Web.Archive.File"
    ADD CONSTRAINT "Web.Archive.File_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Web.Archive.File" DROP CONSTRAINT "Web.Archive.File_pkey";
       public         postgres    false    222            �           2606    56736    Web.Note Web.Note_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Web.Note"
    ADD CONSTRAINT "Web.Note_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Web.Note" DROP CONSTRAINT "Web.Note_pkey";
       public         postgres    false    237            �           2606    56746 (   Web.System.Backup Web.System.Backup_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Web.System.Backup"
    ADD CONSTRAINT "Web.System.Backup_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."Web.System.Backup" DROP CONSTRAINT "Web.System.Backup_pkey";
       public         postgres    false    238            �           2606    56418 &   Web.System.Field Web.System.Field_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Web.System.Field"
    ADD CONSTRAINT "Web.System.Field_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Web.System.Field" DROP CONSTRAINT "Web.System.Field_pkey";
       public         postgres    false    224            �           2606    56427 &   Web.System.Irror Web.System.Irror_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Web.System.Irror"
    ADD CONSTRAINT "Web.System.Irror_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Web.System.Irror" DROP CONSTRAINT "Web.System.Irror_pkey";
       public         postgres    false    225            �           2606    56440 4   Web.System.Log.DailyLog Web.System.Log.DailyLog_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."Web.System.Log.DailyLog"
    ADD CONSTRAINT "Web.System.Log.DailyLog_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."Web.System.Log.DailyLog" DROP CONSTRAINT "Web.System.Log.DailyLog_pkey";
       public         postgres    false    227            �           2606    56448 6   Web.System.Log.SigninLog Web.System.Log.SigninLog_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."Web.System.Log.SigninLog"
    ADD CONSTRAINT "Web.System.Log.SigninLog_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."Web.System.Log.SigninLog" DROP CONSTRAINT "Web.System.Log.SigninLog_pkey";
       public         postgres    false    228            �           2606    56457 ,   Web.System.Log.User Web.System.Log.User_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Web.System.Log.User"
    ADD CONSTRAINT "Web.System.Log.User_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."Web.System.Log.User" DROP CONSTRAINT "Web.System.Log.User_pkey";
       public         postgres    false    229            �           2606    56435 "   Web.System.Log Web.System.Log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Web.System.Log"
    ADD CONSTRAINT "Web.System.Log_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Web.System.Log" DROP CONSTRAINT "Web.System.Log_pkey";
       public         postgres    false    226            �           2606    56465 &   Web.System.Model Web.System.Model_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Web.System.Model"
    ADD CONSTRAINT "Web.System.Model_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Web.System.Model" DROP CONSTRAINT "Web.System.Model_pkey";
       public         postgres    false    230            �           2606    56473 (   Web.System.Module Web.System.Module_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Web.System.Module"
    ADD CONSTRAINT "Web.System.Module_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."Web.System.Module" DROP CONSTRAINT "Web.System.Module_pkey";
       public         postgres    false    231            �           2606    56481 .   Web.System.Registery Web.System.Registery_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."Web.System.Registery"
    ADD CONSTRAINT "Web.System.Registery_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."Web.System.Registery" DROP CONSTRAINT "Web.System.Registery_pkey";
       public         postgres    false    232            �           2606    56499 8   Web.System.Task_UserGroup Web.System.Task_UserGroup_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Web.System.Task_UserGroup"
    ADD CONSTRAINT "Web.System.Task_UserGroup_pkey" PRIMARY KEY (task_id, "userGroup_id");
 f   ALTER TABLE ONLY public."Web.System.Task_UserGroup" DROP CONSTRAINT "Web.System.Task_UserGroup_pkey";
       public         postgres    false    235    235            �           2606    56494 .   Web.System.Task_User Web.System.Task_User_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."Web.System.Task_User"
    ADD CONSTRAINT "Web.System.Task_User_pkey" PRIMARY KEY (task_id, user_id);
 \   ALTER TABLE ONLY public."Web.System.Task_User" DROP CONSTRAINT "Web.System.Task_User_pkey";
       public         postgres    false    234    234            �           2606    56489 $   Web.System.Task Web.System.Task_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Web.System.Task"
    ADD CONSTRAINT "Web.System.Task_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."Web.System.Task" DROP CONSTRAINT "Web.System.Task_pkey";
       public         postgres    false    233            �           2606    56527 -   Service.Layer_Map FK13nj6p1jqt0xubl2bm7evx7ob    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Layer_Map"
    ADD CONSTRAINT "FK13nj6p1jqt0xubl2bm7evx7ob" FOREIGN KEY (map_id) REFERENCES public."Service.Map"(id);
 [   ALTER TABLE ONLY public."Service.Layer_Map" DROP CONSTRAINT "FK13nj6p1jqt0xubl2bm7evx7ob";
       public       postgres    false    2225    202    203            	           2606    56687 +   Web.System.Irror FK179yr80p4adleu0bn1y54bkm    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.System.Irror"
    ADD CONSTRAINT "FK179yr80p4adleu0bn1y54bkm" FOREIGN KEY (user_id) REFERENCES public."Web.Admin.User"(id);
 Y   ALTER TABLE ONLY public."Web.System.Irror" DROP CONSTRAINT "FK179yr80p4adleu0bn1y54bkm";
       public       postgres    false    225    2249    215            	           2606    56682 ,   Web.System.Field FK1es95ggvfg9vombcaiqtlv5j5    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.System.Field"
    ADD CONSTRAINT "FK1es95ggvfg9vombcaiqtlv5j5" FOREIGN KEY (model_id) REFERENCES public."Web.System.Model"(id);
 Z   ALTER TABLE ONLY public."Web.System.Field" DROP CONSTRAINT "FK1es95ggvfg9vombcaiqtlv5j5";
       public       postgres    false    2279    230    224            	           2606    56612 *   Web.Admin.User FK1uwd6vtspmpndkcaw6f7c02jh    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Admin.User"
    ADD CONSTRAINT "FK1uwd6vtspmpndkcaw6f7c02jh" FOREIGN KEY (logo_id) REFERENCES public."Web.Archive.File"(id);
 X   ALTER TABLE ONLY public."Web.Admin.User" DROP CONSTRAINT "FK1uwd6vtspmpndkcaw6f7c02jh";
       public       postgres    false    215    222    2263            	           2606    56582 3   Service.Meeting_Account FK1xfplj8yodpqrd6lymh91clcv    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Meeting_Account"
    ADD CONSTRAINT "FK1xfplj8yodpqrd6lymh91clcv" FOREIGN KEY (account_id) REFERENCES public."Service.Admin.Account"(id);
 a   ALTER TABLE ONLY public."Service.Meeting_Account" DROP CONSTRAINT "FK1xfplj8yodpqrd6lymh91clcv";
       public       postgres    false    212    2211    196            	           2606    56632 9   Web.Admin.User.User_UserGroup FK3u8c5qf627qwin8qwvm2jocfy    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Admin.User.User_UserGroup"
    ADD CONSTRAINT "FK3u8c5qf627qwin8qwvm2jocfy" FOREIGN KEY ("userGroup_id") REFERENCES public."Web.Admin.User.Group"(id);
 g   ALTER TABLE ONLY public."Web.Admin.User.User_UserGroup" DROP CONSTRAINT "FK3u8c5qf627qwin8qwvm2jocfy";
       public       postgres    false    218    216    2251            $	           2606    56747 -   Web.System.Backup FK4ch0kue8bh5lpvsyjqnl3qo7r    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.System.Backup"
    ADD CONSTRAINT "FK4ch0kue8bh5lpvsyjqnl3qo7r" FOREIGN KEY (file_id) REFERENCES public."Web.Archive.File"(id);
 [   ALTER TABLE ONLY public."Web.System.Backup" DROP CONSTRAINT "FK4ch0kue8bh5lpvsyjqnl3qo7r";
       public       postgres    false    222    238    2263            	           2606    56672 5   Web.Archive.File.Download FK4kwt8ccqa8s3pm6wyhhhxhbor    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Archive.File.Download"
    ADD CONSTRAINT "FK4kwt8ccqa8s3pm6wyhhhxhbor" FOREIGN KEY (file_id) REFERENCES public."Web.Archive.File"(id);
 c   ALTER TABLE ONLY public."Web.Archive.File.Download" DROP CONSTRAINT "FK4kwt8ccqa8s3pm6wyhhhxhbor";
       public       postgres    false    223    2263    222            	           2606    56572 +   Service.Meeting FK5vxbkwhno5m5f6io9ewpfvfrt    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Meeting"
    ADD CONSTRAINT "FK5vxbkwhno5m5f6io9ewpfvfrt" FOREIGN KEY (map_id) REFERENCES public."Service.Map"(id);
 Y   ALTER TABLE ONLY public."Service.Meeting" DROP CONSTRAINT "FK5vxbkwhno5m5f6io9ewpfvfrt";
       public       postgres    false    203    2225    211             	           2606    56552 ;   Service.Material.Material_Group FK6lqodoftkhranmm8ll9qddtig    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Material.Material_Group"
    ADD CONSTRAINT "FK6lqodoftkhranmm8ll9qddtig" FOREIGN KEY (material_id) REFERENCES public."Service.Material"(id);
 i   ALTER TABLE ONLY public."Service.Material.Material_Group" DROP CONSTRAINT "FK6lqodoftkhranmm8ll9qddtig";
       public       postgres    false    2231    206    209            		           2606    56597 (   Service.Room FK7y95kfit57u0f9xku0criwo18    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Room"
    ADD CONSTRAINT "FK7y95kfit57u0f9xku0criwo18" FOREIGN KEY ("adminAccount_id") REFERENCES public."Service.Admin.Account"(id);
 V   ALTER TABLE ONLY public."Service.Room" DROP CONSTRAINT "FK7y95kfit57u0f9xku0criwo18";
       public       postgres    false    213    2211    196            	           2606    56657 1   Web.Archive.Directory FK86fcckds9fmo9vn6gnirngn7u    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Archive.Directory"
    ADD CONSTRAINT "FK86fcckds9fmo9vn6gnirngn7u" FOREIGN KEY (parent_id) REFERENCES public."Web.Archive.Directory"(id);
 _   ALTER TABLE ONLY public."Web.Archive.Directory" DROP CONSTRAINT "FK86fcckds9fmo9vn6gnirngn7u";
       public       postgres    false    221    221    2261            	           2606    56697 /   Web.System.Log.User FK8ld9m40vmrs5efepdj72eojlv    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.System.Log.User"
    ADD CONSTRAINT "FK8ld9m40vmrs5efepdj72eojlv" FOREIGN KEY (user_id) REFERENCES public."Web.Admin.User"(id);
 ]   ALTER TABLE ONLY public."Web.System.Log.User" DROP CONSTRAINT "FK8ld9m40vmrs5efepdj72eojlv";
       public       postgres    false    229    2249    215            	           2606    56587 3   Service.Meeting_Account FK8nm941j0t4gv3bumcwsyg9s3n    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Meeting_Account"
    ADD CONSTRAINT "FK8nm941j0t4gv3bumcwsyg9s3n" FOREIGN KEY (meeting_id) REFERENCES public."Service.Meeting"(id);
 a   ALTER TABLE ONLY public."Service.Meeting_Account" DROP CONSTRAINT "FK8nm941j0t4gv3bumcwsyg9s3n";
       public       postgres    false    2241    212    211            	           2606    56557 ;   Service.Material.Material_Group FK9bdp8ucdge8uyvc90q92do2f8    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Material.Material_Group"
    ADD CONSTRAINT "FK9bdp8ucdge8uyvc90q92do2f8" FOREIGN KEY (group_id) REFERENCES public."Service.Material.Group"(id);
 i   ALTER TABLE ONLY public."Service.Material.Material_Group" DROP CONSTRAINT "FK9bdp8ucdge8uyvc90q92do2f8";
       public       postgres    false    208    209    2235            	           2606    56667 ,   Web.Archive.File FKagip4f17ss7vj9s2wwrkcvm5r    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Archive.File"
    ADD CONSTRAINT "FKagip4f17ss7vj9s2wwrkcvm5r" FOREIGN KEY (owner_id) REFERENCES public."Web.Admin.User"(id);
 Z   ALTER TABLE ONLY public."Web.Archive.File" DROP CONSTRAINT "FKagip4f17ss7vj9s2wwrkcvm5r";
       public       postgres    false    215    222    2249            �           2606    56537 ,   Service.Map_Room FKb3laq886tx4mhxma1549o6xby    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Map_Room"
    ADD CONSTRAINT "FKb3laq886tx4mhxma1549o6xby" FOREIGN KEY (map_id) REFERENCES public."Service.Map"(id);
 Z   ALTER TABLE ONLY public."Service.Map_Room" DROP CONSTRAINT "FKb3laq886tx4mhxma1549o6xby";
       public       postgres    false    2225    203    205            �           2606    56517 >   Service.Admin.Notification_Account FKbopt2hxcvrh141iy9cjjya4s2    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Admin.Notification_Account"
    ADD CONSTRAINT "FKbopt2hxcvrh141iy9cjjya4s2" FOREIGN KEY (notification_id) REFERENCES public."Service.Admin.Notification"(id);
 l   ALTER TABLE ONLY public."Service.Admin.Notification_Account" DROP CONSTRAINT "FKbopt2hxcvrh141iy9cjjya4s2";
       public       postgres    false    200    2217    199            �           2606    56502 1   Service.Admin.Account FKbs6slesa63l45yy54d0uvdglm    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Admin.Account"
    ADD CONSTRAINT "FKbs6slesa63l45yy54d0uvdglm" FOREIGN KEY ("accountGroup_id") REFERENCES public."Service.Admin.Account.Group"(id);
 _   ALTER TABLE ONLY public."Service.Admin.Account" DROP CONSTRAINT "FKbs6slesa63l45yy54d0uvdglm";
       public       postgres    false    196    2213    197            	           2606    56607 /   Service.Room_Account FKclhapld1q4n01ygcv0oif1i1    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Room_Account"
    ADD CONSTRAINT "FKclhapld1q4n01ygcv0oif1i1" FOREIGN KEY (room_id) REFERENCES public."Service.Room"(id);
 ]   ALTER TABLE ONLY public."Service.Room_Account" DROP CONSTRAINT "FKclhapld1q4n01ygcv0oif1i1";
       public       postgres    false    214    213    2245            �           2606    56542 ,   Service.Map_Room FKddf8seuxcgwn0ux9xh8nafo5r    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Map_Room"
    ADD CONSTRAINT "FKddf8seuxcgwn0ux9xh8nafo5r" FOREIGN KEY (room_id) REFERENCES public."Service.Room"(id);
 Z   ALTER TABLE ONLY public."Service.Map_Room" DROP CONSTRAINT "FKddf8seuxcgwn0ux9xh8nafo5r";
       public       postgres    false    213    205    2245            	           2606    56617 0   Web.Admin.User.Group FKdhnm45lgors90in2fw2h2sdtq    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Admin.User.Group"
    ADD CONSTRAINT "FKdhnm45lgors90in2fw2h2sdtq" FOREIGN KEY (parent_id) REFERENCES public."Web.Admin.User.Group"(id);
 ^   ALTER TABLE ONLY public."Web.Admin.User.Group" DROP CONSTRAINT "FKdhnm45lgors90in2fw2h2sdtq";
       public       postgres    false    216    216    2251            	           2606    56592 (   Service.Room FKe5eb6d3mlm3t7xekphhyndvt9    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Room"
    ADD CONSTRAINT "FKe5eb6d3mlm3t7xekphhyndvt9" FOREIGN KEY ("activeMeeting_id") REFERENCES public."Service.Meeting"(id);
 V   ALTER TABLE ONLY public."Service.Room" DROP CONSTRAINT "FKe5eb6d3mlm3t7xekphhyndvt9";
       public       postgres    false    213    2241    211            	           2606    56662 +   Web.Archive.File FKev7boejuglytck8yuglcq1rd    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Archive.File"
    ADD CONSTRAINT "FKev7boejuglytck8yuglcq1rd" FOREIGN KEY (directory_id) REFERENCES public."Web.Archive.Directory"(id);
 Y   ALTER TABLE ONLY public."Web.Archive.File" DROP CONSTRAINT "FKev7boejuglytck8yuglcq1rd";
       public       postgres    false    222    221    2261            
	           2606    56602 0   Service.Room_Account FKevw25cji9v1xvgt74eb675iyy    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Room_Account"
    ADD CONSTRAINT "FKevw25cji9v1xvgt74eb675iyy" FOREIGN KEY (account_id) REFERENCES public."Service.Admin.Account"(id);
 ^   ALTER TABLE ONLY public."Service.Room_Account" DROP CONSTRAINT "FKevw25cji9v1xvgt74eb675iyy";
       public       postgres    false    214    196    2211            !	           2606    56717 5   Web.System.Task_UserGroup FKflr8ben4uy9x748n06ounuldq    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.System.Task_UserGroup"
    ADD CONSTRAINT "FKflr8ben4uy9x748n06ounuldq" FOREIGN KEY (task_id) REFERENCES public."Web.System.Task"(id);
 c   ALTER TABLE ONLY public."Web.System.Task_UserGroup" DROP CONSTRAINT "FKflr8ben4uy9x748n06ounuldq";
       public       postgres    false    2285    233    235            "	           2606    56722 5   Web.System.Task_UserGroup FKfmar5n0tdatsry2ttfu0ombrp    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.System.Task_UserGroup"
    ADD CONSTRAINT "FKfmar5n0tdatsry2ttfu0ombrp" FOREIGN KEY ("userGroup_id") REFERENCES public."Web.Admin.User.Group"(id);
 c   ALTER TABLE ONLY public."Web.System.Task_UserGroup" DROP CONSTRAINT "FKfmar5n0tdatsry2ttfu0ombrp";
       public       postgres    false    2251    216    235            	           2606    56627 9   Web.Admin.User.User_UserGroup FKg72228uwjmtumk7o0khpnpaqb    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Admin.User.User_UserGroup"
    ADD CONSTRAINT "FKg72228uwjmtumk7o0khpnpaqb" FOREIGN KEY (user_id) REFERENCES public."Web.Admin.User"(id);
 g   ALTER TABLE ONLY public."Web.Admin.User.User_UserGroup" DROP CONSTRAINT "FKg72228uwjmtumk7o0khpnpaqb";
       public       postgres    false    218    215    2249            	           2606    56562 0   Service.Material_Map FKhc2x83k2jlmn29kq68o5a45um    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Material_Map"
    ADD CONSTRAINT "FKhc2x83k2jlmn29kq68o5a45um" FOREIGN KEY (map_id) REFERENCES public."Service.Map"(id);
 ^   ALTER TABLE ONLY public."Service.Material_Map" DROP CONSTRAINT "FKhc2x83k2jlmn29kq68o5a45um";
       public       postgres    false    210    2225    203            	           2606    56642 1   Web.Admin.UserConfirm FKi4t2i0kg245d8fb6yj5xign2q    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Admin.UserConfirm"
    ADD CONSTRAINT "FKi4t2i0kg245d8fb6yj5xign2q" FOREIGN KEY (task_id) REFERENCES public."Web.System.Task"(id);
 _   ALTER TABLE ONLY public."Web.Admin.UserConfirm" DROP CONSTRAINT "FKi4t2i0kg245d8fb6yj5xign2q";
       public       postgres    false    220    233    2285            	           2606    56567 0   Service.Material_Map FKj200gs4cgur5xq51a5kf82pel    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Material_Map"
    ADD CONSTRAINT "FKj200gs4cgur5xq51a5kf82pel" FOREIGN KEY (material_id) REFERENCES public."Service.Material"(id);
 ^   ALTER TABLE ONLY public."Service.Material_Map" DROP CONSTRAINT "FKj200gs4cgur5xq51a5kf82pel";
       public       postgres    false    210    206    2231            	           2606    56647 1   Web.Admin.UserConfirm FKk5lovfvt0apu4ni7wkpqg5147    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Admin.UserConfirm"
    ADD CONSTRAINT "FKk5lovfvt0apu4ni7wkpqg5147" FOREIGN KEY (user_id) REFERENCES public."Web.Admin.User"(id);
 _   ALTER TABLE ONLY public."Web.Admin.UserConfirm" DROP CONSTRAINT "FKk5lovfvt0apu4ni7wkpqg5147";
       public       postgres    false    220    215    2249            	           2606    56622 1   Web.Admin.User.Porter FKkaat5quhoarvfx70f5m98q7j4    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Admin.User.Porter"
    ADD CONSTRAINT "FKkaat5quhoarvfx70f5m98q7j4" FOREIGN KEY (user_id) REFERENCES public."Web.Admin.User"(id);
 _   ALTER TABLE ONLY public."Web.Admin.User.Porter" DROP CONSTRAINT "FKkaat5quhoarvfx70f5m98q7j4";
       public       postgres    false    217    215    2249             	           2606    56712 0   Web.System.Task_User FKkx74jgadegi5o45ijchxvuw2m    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.System.Task_User"
    ADD CONSTRAINT "FKkx74jgadegi5o45ijchxvuw2m" FOREIGN KEY (user_id) REFERENCES public."Web.Admin.User"(id);
 ^   ALTER TABLE ONLY public."Web.System.Task_User" DROP CONSTRAINT "FKkx74jgadegi5o45ijchxvuw2m";
       public       postgres    false    2249    215    234            	           2606    56677 5   Web.Archive.File.Download FKlmvo3wehmatw4p69t2498jrdr    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Archive.File.Download"
    ADD CONSTRAINT "FKlmvo3wehmatw4p69t2498jrdr" FOREIGN KEY (user_id) REFERENCES public."Web.Admin.User"(id);
 c   ALTER TABLE ONLY public."Web.Archive.File.Download" DROP CONSTRAINT "FKlmvo3wehmatw4p69t2498jrdr";
       public       postgres    false    215    223    2249            	           2606    56692 4   Web.System.Log.SigninLog FKly85hqgbrmb5scmawg6kyrtn6    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.System.Log.SigninLog"
    ADD CONSTRAINT "FKly85hqgbrmb5scmawg6kyrtn6" FOREIGN KEY (user_id) REFERENCES public."Web.Admin.User"(id);
 b   ALTER TABLE ONLY public."Web.System.Log.SigninLog" DROP CONSTRAINT "FKly85hqgbrmb5scmawg6kyrtn6";
       public       postgres    false    2249    215    228            	           2606    56652 0   Web.Archive.Directory FKmwjxdube2yqdoh7qkoeag216    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Archive.Directory"
    ADD CONSTRAINT "FKmwjxdube2yqdoh7qkoeag216" FOREIGN KEY (owner_id) REFERENCES public."Web.Admin.User"(id);
 ^   ALTER TABLE ONLY public."Web.Archive.Directory" DROP CONSTRAINT "FKmwjxdube2yqdoh7qkoeag216";
       public       postgres    false    221    215    2249            	           2606    56702 +   Web.System.Task FKn1h41i6mfajsxx8vh8jdtu2u5    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.System.Task"
    ADD CONSTRAINT "FKn1h41i6mfajsxx8vh8jdtu2u5" FOREIGN KEY (module_id) REFERENCES public."Web.System.Module"(id);
 Y   ALTER TABLE ONLY public."Web.System.Task" DROP CONSTRAINT "FKn1h41i6mfajsxx8vh8jdtu2u5";
       public       postgres    false    2281    231    233            	           2606    56637 /   Web.Admin.User.Uuid FKo27exmbsc9qlt8si712r12qci    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Admin.User.Uuid"
    ADD CONSTRAINT "FKo27exmbsc9qlt8si712r12qci" FOREIGN KEY (user_id) REFERENCES public."Web.Admin.User"(id);
 ]   ALTER TABLE ONLY public."Web.Admin.User.Uuid" DROP CONSTRAINT "FKo27exmbsc9qlt8si712r12qci";
       public       postgres    false    219    215    2249            #	           2606    56737 $   Web.Note FKpxrohtf9r2xso6tqgw5gr1ji0    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.Note"
    ADD CONSTRAINT "FKpxrohtf9r2xso6tqgw5gr1ji0" FOREIGN KEY (user_id) REFERENCES public."Web.Admin.User"(id);
 R   ALTER TABLE ONLY public."Web.Note" DROP CONSTRAINT "FKpxrohtf9r2xso6tqgw5gr1ji0";
       public       postgres    false    2249    237    215            �           2606    56547 1   Service.Material.Area FKqk9o4fe4k64pg1030jec07ybj    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Material.Area"
    ADD CONSTRAINT "FKqk9o4fe4k64pg1030jec07ybj" FOREIGN KEY (material_id) REFERENCES public."Service.Material"(id);
 _   ALTER TABLE ONLY public."Service.Material.Area" DROP CONSTRAINT "FKqk9o4fe4k64pg1030jec07ybj";
       public       postgres    false    2231    206    207            	           2606    56707 0   Web.System.Task_User FKrbwfcbgu9tplt9huxukqoxwts    FK CONSTRAINT     �   ALTER TABLE ONLY public."Web.System.Task_User"
    ADD CONSTRAINT "FKrbwfcbgu9tplt9huxukqoxwts" FOREIGN KEY (task_id) REFERENCES public."Web.System.Task"(id);
 ^   ALTER TABLE ONLY public."Web.System.Task_User" DROP CONSTRAINT "FKrbwfcbgu9tplt9huxukqoxwts";
       public       postgres    false    2285    233    234            �           2606    56532 '   Service.Map FKsaplo8iwt8crpoej8foemvr3g    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Map"
    ADD CONSTRAINT "FKsaplo8iwt8crpoej8foemvr3g" FOREIGN KEY ("mapRegion_id") REFERENCES public."Service.Map.Region"(id);
 U   ALTER TABLE ONLY public."Service.Map" DROP CONSTRAINT "FKsaplo8iwt8crpoej8foemvr3g";
       public       postgres    false    203    204    2227            �           2606    56507 1   Service.Admin.Account FKtag9wsxdn3huwoyu9xnct3i4o    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Admin.Account"
    ADD CONSTRAINT "FKtag9wsxdn3huwoyu9xnct3i4o" FOREIGN KEY ("accountModel_id") REFERENCES public."Service.Admin.Account.Model"(id);
 _   ALTER TABLE ONLY public."Service.Admin.Account" DROP CONSTRAINT "FKtag9wsxdn3huwoyu9xnct3i4o";
       public       postgres    false    2215    196    198            �           2606    56522 -   Service.Layer_Map FKtaw5vu9h5m0aw28ik1x5xxjmv    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Layer_Map"
    ADD CONSTRAINT "FKtaw5vu9h5m0aw28ik1x5xxjmv" FOREIGN KEY (layer_id) REFERENCES public."Service.Layer"(id);
 [   ALTER TABLE ONLY public."Service.Layer_Map" DROP CONSTRAINT "FKtaw5vu9h5m0aw28ik1x5xxjmv";
       public       postgres    false    2221    202    201            	           2606    56577 +   Service.Meeting FKtfx79xn6n2cjyfut6qjsom86f    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Meeting"
    ADD CONSTRAINT "FKtfx79xn6n2cjyfut6qjsom86f" FOREIGN KEY (room_id) REFERENCES public."Service.Room"(id);
 Y   ALTER TABLE ONLY public."Service.Meeting" DROP CONSTRAINT "FKtfx79xn6n2cjyfut6qjsom86f";
       public       postgres    false    213    2245    211            �           2606    56512 >   Service.Admin.Notification_Account FKthcd9eh23nwo3yreqgldl4bnl    FK CONSTRAINT     �   ALTER TABLE ONLY public."Service.Admin.Notification_Account"
    ADD CONSTRAINT "FKthcd9eh23nwo3yreqgldl4bnl" FOREIGN KEY (account_id) REFERENCES public."Service.Admin.Account"(id);
 l   ALTER TABLE ONLY public."Service.Admin.Notification_Account" DROP CONSTRAINT "FKthcd9eh23nwo3yreqgldl4bnl";
       public       postgres    false    2211    196    200            �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	     x�34��44�4�7 "#c++#N�����������	�������7��S&���ol���j�Ͷ��XM6�,3J.,�H�4�t�,I���t�2�uq)w��t��1g>5 ���d�8Vy��$Wy9��89���-0�0�
�d�B獍7;�*��X~c�Ͷ[ z#V9M˂=*|�L#�]�
}�R��S��,|�C1B���������p������(��3�4u,)�
0��F� �#��      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	   �  x���An� E��=A18�$�Jm�MN��6J���b�&�z���7InSlw�	1X<!O���-$MÚ?�l9K�<%)٬�u��]n_��ۅ�z��:��x�NX��poީnG�_e9�!}U�u��_��߃|Q����ܪ�&t�g'q�ʔ�D�Xr�〻C��c��k�6a:1H )�Uu�ݙ����n&��, iQ]�=��ΠF�QWWexHca�"���u�<��3&UH�ޕٿ*�?U�l�I }�nۿױ0��@*�5�t]��K �R��U�0�TL`S��)S�bb�2��,�$aP/��+�V���z�N�~I�_��6�v,&���򨝯�~ZS��4�4M�Z����5����7���jz`��ʡeiY��n�	FL�C�$�5펪�b��2��L7mm�:nJx�yL���n�G      �	   �   x���Kj�0�|�� ��f�Ǻ�J �����ڂ���&Y���R0H ~$>F������{A�DQ�8�	�K�W/��4^�fnϓ<�ӡ���������y��+������WD��X���A|��z(p�D��O8w���*�����m�L�T1rBa
+�Ha!H+�Bٲ
e�)��q �P�U�WuQ+�&H*�����(2��r�������#U �XQ;��
�U��E�(&�Q��:H)N���� C{\      �	      x������ � �      �	   (  x�}�An� E��>A3`��	�K�T�����^� �AZWm�z�]�1ė)��qH������ �@��L΅��J���ZZD�`Ԅ��`B%�=0j����7s���ޏ&��/j\E[_��.S��"�\�I�T�G�/�ОZj���;P����r�%�ƫ��v��U]}xs��?��A�,��=b����c��>쭨�&���� nH�=-n�*��*n�N:f,�O:V�JTӎ����5m݆	m24Wl�J�sTa���2,}���y9���������~���W���Ȁ��eY�
<��      �	   w   x�u��1�ᳩ"$`���T�����9��ۧ_XCX������� Zo׷B��ͧhdČ���z��%T=����ب�y�=�������D��(�=��u�����@�r�E�u�E�      �	      x������ � �      �	   B  x��Z�n�8}v�B(TZ�e)N� ��M���$�y1P�ms#�Z�Υ_�I�_b�N�iR�C�9�Ñ��r��Ԃ�#��,�9����:�s��1,U�cٷ�D�[7�p>X���>X���Ϊ'I�nQ�+�j% ߲�~�9?{o��Y�PxG�Y��CT�k�� �q�k؃��
���0�%��!(P�9��q�^�Z8ⲯƐ�o{�q�c����!��~k?�(��C�		��b#b%��ZoZ���%����g�N�w�N�a�^�F��1@��T��\2"�-�e�ﭛ��hh��'-e	��ñ�%(�=��;*������t<C�}*`��qG@a�Đ�k�p!��L���އ���{���9���� �������AC�פD0�'������.|�x�h��O�	ä��tv�(î�Q� &���G}D�L��(M]Rz{�9�ew �Ǹ��<>�s$4�T�i�I��x�BB���]3%P���(�;z*�0umC��$��yF�
��ny]�^�B����$�N�+�h����1�p���� ����Z�2�̘�:}ǃ�N�=�Ai�IX��%S_� �!&�\�bQ-�?�F�Y_.���N�Y�#�vp'�P�F��0��;��`���b/���7�m���n�_������*y�'�D�B띍OFs���!�r�w�`0�7�ԣ{fX�h�[,���I�����)c�گි��[�FG$�!d/���k�������*2�"�fg���cB9� �NɌ�VuQ�j�V�ϱT��^����0u��Y���E��_�z7y)Sk�$!b���C���8��0S�����6�TZ%%	e�uԍ�gH"�P1�������_L�v�H[䄲+��q���[�5˘q��c$3��0c���:�\k�J�u�f{uo��}1Zl�ژ�&�|Ұ�G0�a̐��f�|@g��O[��[�	�נTv��P�r�#��W�Y�0��^˧E(�0^(�w�f����t	-��^��k���N��$k�@]���ɜ\�a��p%��~B˰�\�����1�@�|�2��X{�Mo���)+��/��+�m:���]��	�>	d�	cL P�����u�y�c�^��4K�&���n�����f�U�D�pp���9zJ?�0&�M��6k��_m:�Z�H�+�c�5h�A*N���$�i�M㍩�7�e�]v�o�r����!{���s���)9:�:�9�4�3�R���?��q�.���� F��OS����z`X �'�����y���`��'d�BnP�E�L������B��@���J�����B���ҷO�P "R�R��b|׀|R5�����.��g�}"�V�r���q�Sm�ӗ�W(-=� ϵ�lu�����K᪂tF�3�K������1�l��1A�>-����^L
SWk�'*Pv����VZ�6�1�L�\W�\׼Чl�0�n{c+k�l
�z�p0>t�K���Πi\lj������h���T�t�19�H��b\`�&�zW^�VY����{�GV���p���U�bsQ�����*0���1 �̀!]�SQ�����%�̆�6�@h*�||M䢆Uc^�����ik�����4RQm��4 '��O�b,��7+���e���u��8���Oo�����>Z�?a��_ ��	�s��_�,�z�	��t�����0��g����z+��|�5�B�#  �_��r������,G�h?�բ}����x���-W�2D>�������_�r���^۩���[A�~��[R٦_u�Gݠ��{{{���      �	      x��}�n$Ǳ���Sfq����y��Z����e�3^I(��C�æ���A?��c�Op�l��0�?�M��ld7�dW��bV1j�����&Y�_Dd~_FDr+�qpf���vC�P��T�ؽ�߹����lo����w�wǟL7���g��������?�H��F�>���ٖ3 ��/���_���76�3���h�7�nd�'�'�-�l ҙgl���������cË��{\��B*���)��ѽ�7o��&����x�x<����$��vf�ol>���Ӎ����77�����l��hwc6��G���h2��߱7�?��ɯ�����?w<�ǟ�:�>l��l}�W�<��x�ߏG�����}z�?��5����t�p���lg�����O����o��:��}�X��_�����͖_�/^���������w���{�x���`6>�ׁ��OƓ��766g�������)~��hz�9<<>8��/�8Y�ؽ�h[��7w��}S
m��#�T;\(-�Gz�|����~V�qg���
�$��"-p��D%�)R�-~��{���`��;|2�h�d{�p���?.�}���l|8����Q�6��9�����/���������O�?l�8�j��{�g������xg���x:����o�wO�]��[�Y={V D�g�D�Ɲ�pki���r���/^��B�$/!qy)��+d��Tj-�Z��Z�&g�i�D�h��=}��x{�[5�F�p!L<D��&�&|wW�{Z%W��I.S�m�&3a�Rc)]�]d������Y~v��6�������?�|;�a���`qWE\Aĝ���g���xop�?�� /l�$��;���,nvot8�l��]��+#8�������0�-~�m���o��^�x�0�+���ܐ3��;���0xh��
B	PVG7���l{� \��:�����9z�x�ɹ�|�K�ghߘ�i����Ϫ&�����ϟ^j8Fc�~F��@�~ $w��g4�L^b5wFsa0�m&`-z��R��Ϊ�ɨ��H���=�0�
sK���D:�+�n?�b?�3 j�㘐Ұh���������<�r�g�c���nT�י������UB���d_X�i�?�>������h|8��۷��N�Cr_���l�}8=؞�{����h�h:�?�x��m�n����C�s�?:�݇|o��}��o���-|�7&o�19x����f�uz�'��d���`m{>��f����!?7��{���O�٘�e���Oˡ]7����ܐsrF�K$Im�k��`4��p�͐��6����m�&��RE�2�T!uY2#��2��l"!��΢i���MZ��ۈ+�bt\%��"����W��F6�9�j,���-A���w�,�%�K�Fk�%�,���-AU-��ҳ��4��Wdٹ��A&G-dV��̸s�w75�@�����p����Mt�q��������j�d��¼��U�׏���耚N�F��n�jq��UQ��%hv~^��ë2�7:z:�����$톟@;EKp-�i׳ԡ�YB���PRۓEK��H�,��o�h�j�Nу����`�m<ȋd���b�̄�`��
)`�,a�=�f��#���_�����o�X��-!K8G�)�|�L�"U:�n�/��=8�}z�|�}v��ɗ/�3�%�f�?�h��it�]�G��`,�/\0��!=��ܲ<ѥH�ԙ�E)��qY�9�dy�ʭG�����ߋD�孝�	l���!w�XU3���L9p���q�
	En�� �\f���o,3t35���)��Xu�ʹ��U�R+�rQh-�\%�%"�,��67�@_�V"�S��Zk��A��q��T��!Ӽ(xa���oI���Zq�4��xv����O/��a�@ʡ��R��0w=pϣ����h���Y����fI�3'r�,�F
iڋ�"PeȂ�b9핣mS�m g[AY�� �(?(/��q��S�8�d!6��l�٦7Ǒ�MEQz�M�b������ )��YU*Ȥ�yf��)��2K:YZ] ��;xYK|m���i6 :�ڪ���{&K�oM�5J�-_�-��·���( Ʌ��]��	A5��&�1��͵�ͧ��kgR ̐ы�}���S��v_�om�-ĭ�QY�RNC�R ze	U�D���K��\�eV���nH���7�^�b-����EL��BJ���J��p�2-�D7�� �!��ؠ��k���4�F���&SU��*z��N1eY���=�s����z7N�U�,��q-��B�`	/��Ƭ�|��uQ�#�C���~
0NC�;1a2�Y��F�4�ʁ��L�m&d�o)8`�m�Hk4A�~2�.O2P%d89X]j^�ai�')p�¨�5{�d^Vc���������OY�S'��B���;����9�"�h��wr3�57:�`2��vZ�1�H3œ���[3Sx��ҙ0=pn�EC|����Y!AV �2/'�pE��\!%�3���-�Tr� ղh������ �֜VW�uCF.��T���Ѿ*%�Mo �� 27Ǒ���5��MC�����*��G����n��_Vٳ`CԌN
��g�b\QUJ�Kr:�h��b��)Ƈc;��~ ��k[�k] �|�˴�7��]U5 ��b�JZ�Sg�� ���!�2� m�t	s�HL�$o����B]�;��o\-NL��ķUUD�j�#�Z��-�m2��z���N�B|���_+|�z�Ǘ�^�Ck������JW��C����=7�nc󞪞�!&��� ;g^���Q���uz�
���+Wߘ� ��]�oۼJ��B:O�t���ku�ip\3�S%����[H�@�+��h:����ۼ��JҌ3W��t"7<7�i#%�����]A��Q�����V;`��d�O]�u�2�M�m&]��������4 �G3�d��LS_���Z��$I���Tq��.�4 ҂�i��z���E�\��i+A'ʹ�!�Vj��
gD�ʲ���g����T�7��5�س x�
�V�׬�cϔ �3Y�#�~n�=�<Gf�:`�b!V�!�9��WUC ��)}���Wq�ZAlM��B쐽�q��Rě�����k�m����xGm�^�1A��U�rw]@c�P��ȕ�)�j!yc�*<g98��lK���u	��T�sU��=|�Н����wFbs���;��w�?;��Og^�8��M��oll�����o��-�������M�Cv7q�/�����=�QB�&X6#5�J�E�	�zp d ��&`�q���We�rzYv��:v/��m�'`UCqS@��5w9�6&`Kq��F0`4
zX�@�h�<�_����~ցx.U ��o��|�}p��ٗ{�{����a�\�<[����'��E���;|�wϟ��n�7����'�l~��0d\�ѳ�g�i�d$�@*�ꆁ��|{��O���<�\jŜ����J��@_!�]8�	�P����H������b�"� ��\�0ܮ��ء��oढ़v�-�[;)���4���#�8K�P&M�)t��<Ɋ�����V�Ѵ��~��TR�U�:���H�K�+]h�m�	ȎUV�u3��H?��z[fz�}��Jee�p��嶔Yb��%�l�ųQ�6�&ֆ��԰L�"�6wI�k�
�i�L�2��إ��,�9p�.ݠi����U�K^$�e���L1>Z�X��\��Mo���*�����I�ׇ�5�U5�R[�z|q�+�vr�0!�uo �6��|����q�g*Jj�c~	+O��(���A&8_��Y\SeP@Γ��N]�J�<���1���Λ�D魣��h4��'[8ܭ�l:��R>��k/�z�`����p�������Wk�����8���|;�~��?�h)��|����?b�������/9�hm .�`UN�梨���\�e?�60�V�x`UvO&�k�l�y)�WT�ü2`U��F�4�]�z�;��� 0�Ԁ���[n{�K��,�5&#     wY����2�i/�fmO�U�� C��m��j�� �8�%���AT���%�mČ�C�k{jZ�XG��V�R����������UUN�dB`�@�
6g�IM��Kqn�0�� ��Zʜ�d��W#_��{�@h��.���*�n�X��[/Q�U1��F��mW �9��B�b����B�8ka��A1�]!n��Ԁc-�j4`��^���6v�/uk���ޓ��\��º�	y��d*���0yӌՆ��2P�V&��l�1��s9��j60��P	+������B�2s��:�^����9�iD�9�<(���k�9���ޜ9�R@l�"��^Ke��El��Z�h;�/A�S-�)ֲ�N	�@�!��]��:�禌C2�;��0!Do��c�e�� j�$＋ B���&�@�A��O�C�X���]tc5�	�:��\CH�y����Wo�q�OP�������o�<��'��5��V�]��	�(���Rz<���v�B�X�n�c8�lO/z��ruOkhB��@M���%>��H���B����A{��Z�n����R��sbb!W��	�� )�BIe�5�z�@���M0�*��u�f��}�񗒊�gO��SZ��~�T7�)բ����]���NZ����&����ؼ�T�d���v� �$�f���h����? ��P�����9v7�ˎ�c����u�4oѷ$�s�S�9GSl�#����Zߩ�d M1qYr�X�2��zLd��ɂ�Mť���AE��֍"H;A��v��7
%���SeU�Q8V�ڄOp����S�W%X�Hr�,(��Le���YaXj}��m��ɪ���yV�u���E+��A�aO1�TJ�vf\�A0]���D�d�9�*��+���[5S}n�\8�l�Kȭɲ<c\'Ζ ,ˠM3�2��i;���i����HӴ`*ѹ�dH���+����̴�+/,�9�g�������Eӏ��h[� O�)e��$�EV���Eo��N�����K7��-�UAu�Kn#���·��ؔ �5�B�3� ��<G�tU�~z�����!vb�����K�nJ?U����+;���׉��P�p2In���t�PJ�-�	f%�	�l��+���t_%[�}����Ʋ��']���K�r v��B��?��wϬ���	.[�^h���H�C]�!���qx,��w˰3Ԫ)����6.4S"�2�������b?pk��4� ˎ��UЁ��@KX�"��y���2Y�u�2���聰")*�R��s��8z�j@`uu�����pz��Ԑ�۝T�l���ѯ��2G`q�to���M��[�4?��up�@:��p� �:�{�=�v�U�6P����m�e�V���Q�����}���y)3�䲄�T�H�[& č+Z�Ϯz����(L��2��%��VyR(�4/�N{���a�,�p��I.;t����rQ|��X�E*r�:P7ʟ$��T�f,+�j�[VIT�8��s�ٚ�9�/�,)c��#ߖ[ݗJp.�i�Dgy�2�K �e3h��Zݟ��E���.˅�e��A�α�r����
��rbn�((��%��l��\�֏ڋ��Re*1"�Ͳ"O�e��2��$K��5��&���!(��8G
ʶ�L����T��M����$=��X��X�)vQD	��(���h�*���8rU���3$���uL��)ťh7U�m�J��PǤ��q��b!W��e�57d�↵e���9�W��u�BL0ׁ4�Rv�橾���-��v�%R���ޱ�~��q[c��N�!��8��r��jP�7�Z����Z'ն���)�r<Ď�k��-W*^���̪��]m�&��/`j���fV�Z(�u����غQ@�Q�����0�"E�T'C�=�
�E�q��ӊ�g�ruO�h�ޠٵ^t�ӊ>���ӝ�C,0��]#f �zv�]����/�kH*��V��-�M���5ܕ&� b��.]2�6�̆Td>{ҋF!��`��lĦo<���,Y��AH{�m��ב��?���V_}��@+!ٺ�jv�����b�1Q#���ʮ�PPF-3�0��'�C��@� �G�rg�[m��<�i�
V���h�NW;z��w��t򥟜��m�������?�g'_��
VϷf�{
��S߽r��eBz>	�慎9�Ei�ay��yZ�ܕe�D����y�d�wM��^��^{����`w4�M��-�o���j�[����u��r��s��
�v���?�z�Rc����!�t������0���`��b��E�K"C�Sŭ}��:�ML?���w���h�G��'�i,߲p����{n�<�~g�'g���ŧj�(Ǔ_2~{�����y�r���ُ��C'�̟=�1�����o̿?�v������?}�AՌ˚Q�@�����c�&��d6^�����^�+�pg<]��_�}�V�p��C�s�v���O������������I'_Ͽ��h�`�\�j��C ��9�eo
��v
g|�Ҕ'��:��h�4Go쎑���%_�\�¥.j�(A\U��Bl��۬Mk n��i�We;�C��a�왐�z�.3�3MY��-�2N%��H��s��^�/ɫ*M��T��e�`ER��͜I���V&���V�.#QU��{��bq`��g�i��ϟ��I	�����H3�a2�sY�h�Uɠ�hF�����\fJŹ�E��J�g����y�fZ��~`�i1��I�ɆX�/��%��y�ڴHҢ�)g��N��h�j�Zz��M��p�崢����%����j�\�.�!����rW5d�:0(�wϣDq4�h{�7�G��%�kS�O�Ji�['!u.e�D�6�]%�`��X��jt]T�Ғ�%�7�N#QQ�$<:YJ?B��࢑v4/E��lA������Rr��']�<ϝui�K�dV'y�ˌ��]�� pUנ��C�m�Vm� ��T5��v�F�o�ʃ�Jr9��K�.V��/Tu	�/A�T�x+%��{�t!����js�O��yT�'�X�˛������=�"ޜ�@U��r�	ΰ�I��ի�]�7H�UFR:kY��`��E�ݎ�e�")��`�W^8���'@wjz����sot8�l��]�=j�����g����Oa}�U�=��$ZD P�E�K6D�P,Z2ڹI�f���Z�8���Ns;˧KM�����'�6�Og�	��?��:�/��Y�D��������㯇�@�PϹD�1F�-��;�a	�Eq1�8�w N����7���PM���B/+Dq�6ތ�
�x�����d�����h����n���?�".�5��2P���*�^وy�w��a�����N�����.No��q�K5�tC4*z��;�<�GX��}[��@�TCApE"����g�B�R �:�i�ƀ1Vy%PY@�H>���6*�U�J�N��e�Vs��٫�]U5����4��J���Nz�X?����&[�A���p4��`4[���/��|�~� � �/0�峭�n���`?~%-�&~�{+�.w� �4���BR�K�&α
����R�|�e� ����zv�\e�6�9Rv�b�5Züֳ[r�&�q��_�~�,����9 i��$)�2�f�@���	�e��Q�W�>��F4�9VP�P��VX����m��,��
�E|JIǵ����<[I�456wZ�O�+�&R'Y�C�D�N���`�q�p��&���[���XM���#�q�`��8b��6�Hn�#ב�@Đ�(}��NJkge�S���Yژ�9�0�K�J��:.K����A3-꺡F��t���ܔ6,^��:d!I�<�Iə��,��R[Q�,K��NcmE"�v٠��0�������� �����y�8�cu�)Q�2�ڔ��Y,3Hr�є���f��Z+��S&$O}c7�f6W)���ˆA: ��`m��-z$Nd�X��'�:��Ȳ��/���r�&B�Hdt�Nɂ�;��� _	  t!� �֜6 �r�ȥ�*�X�"�mKu��Rֺ7�݃����L�>α�r�>�5Zrt��p;n�((��b��2�B�|�%B��,S�X�t)�q8��.���S,�E��^��}�WI��ڧI���e#���� �v��U)+bGO����L�o�*1r����)�`׏�ӦJ7���2&�0��]������P��f����&T$�N0hd�,Y0,e��ɓ2�]�b����K����6ڦv�Y�[+<���3=��Hn�*��g�R�o�m�D"~��F9��V�=��J$�*rD�j'@��_~U2I?��؏�1�W�,�q�f��'�J!��T�n�i�U�I`ۇ�k�gd�:����P��*֛�����Ѫ�JS�*r�"k���9���U�����KS	�4U�!#�;Y+��}�}/C�&�d�NS��s9�}��Tk������j������J!+y�q�K���i��\��|q���n&=��bFty�W0�F�
hS]ZW�ah�\���%9�Bd"y�)�NFM����tR�RK��c��F�4-K�d�,�.sG�z���	��g=�N��N�v�0֤N��<I-7Y�Re�ՠ�O�s�7��ޜp� �֜���K-w��X�*W	A�zq4Ͳ����㸹���*�|Ȩ	 ��N����K�2[��8y�/ĎZC�8�6?-׍�^�uU��PR�R�LZ#��%�.~�&X=��9�\�y�=����2}]>ϵ�BvYr�#̞����2MiA��%&K�K�d���A���%X��T��@qi�e�3a�H%p���'�sŅ�n�X�H����$�k���\=�D��Tr�$Y�@���\9�JQ�$c�(�i�LM�h^�U�M�X�֒70S�,3�1P�)��3�,�Lt�fZ�.,����]�Zv��sμ��C9�[0�+�!�%7%X�i�U{��bU�,�B�&���m9-�RH�69��5ި������8%�kּ47�[�'g��p^�|!w����0��4�V�U��#w�	⧭2w���W�|�9o��,7B˻�Y�_0��!P�C�@��z�x����0)���W��	�ĭvY���0'u��<q�ά�H��_:it]��H�NTe�ƣi	�u<ϡ�g�.�p���,�4+�:\b��M������n�L��?5S���A�K
��2���i�f8�-�iUVj>��M��3S��й.y�����1�e��<wy^7���iU�Q��,������:�z�	���t	�̕Ya�g�T%��2�͠UzAT%;���	�ׇ�-���^��%���*mQ�ri�(�e�+.�x�;���L؄�,w����o�˪�jJ]|m����<�p����]P�sbKn�((��R �	!��B���˄�qY&
��q���7Ǒ3����Krʠ`RvV
�+e�Rě+�����ˤE쌓Ѱ{�>v'}<,k4zYCr����ͫ]x���g�;#�9|���|�;�쇗�9��쌦��766gx����S���ps�ǘ�[@�|��l�����_|@�<BW�n�(>�ô��%Ϳ��,�ɢ�z���m^pr�a��1��e�1 X�K���BhmT��3=X���C���,�XLj��t�d�{|0Z��,����I���-�A��Y��v���l�����t�z��wX�'��d��������(�ɗϟ��6�n�����e���o�Ϟ?ݘ�?���|��o����ϟ�Ԙj�eͨT����:Ш��[�_�(P���,�}\��-
$�-
.^&�(P�։���ߓ<��g�[ce�5si&S%x.+�ҙHufR���� �(d6}(0�wy�7� �H{c*��dA���XK~�d�D_�ը�/���N>���.1�1�o���Ɵn��/D�j��=�,Լ9l�����&[���`�k�H�7��#��T��i�G�M` �\i�O��U��</%�DJ��Ժ�2erD��D�u4OW����x2x�?^�k��h���hV���|����������^ ���֠�a�]B�p&��2��^����J1��])�����Z,��N�Պqc�欈u�ը�0�f�Q�H���qY^E�l��G]#7(r%yB8ۣwBKP]#(r=_'U��/!���(a\���t�l�F&�����ǃ��h��h��� _��>���M����nO��{���7�/{��9�H����F��_1����l<��"�jH���B��+�ey�Wk�I0	4�����_L�&�������h2���g���m���@�����.�,,,�ߊ�)%��$ӱ�����(A+Y�;n)_�R�o��E��/��ׁY�:?��)GgE�Hn��2K��HT�y�u�2�e3Bpzuռ��q��	�]Ket@|����FƲ      �	      x������ � �      �	   ;  x�՘�j�@���Sh�@m���eU
m!M�h!�BP|!&n�І>}G7W����(�1X��>͜ˠ�9�ķeĹ@.:�ɷ�����v�+:���j�c����]~��p����e�NN���������|��P�sv���ǯ��d���:��^��O�w����s��?G��K�)���&�w_8����v��tt�_�Q٘�D�,��MA+Z͖!�fB��
�2�%�:*֮���9��S4�b� ��v�!y?�A��ǪHI�[���0|_�sr	¨l70�#�MBeh��`Զk(�=peT0�_ՐA��ϑ��ѱ���O�a�UQs����mW0�����aǪ�V5��naH�&#`��P�*�V�ѱ]�`�0b�hEaKFm���6
Û.rG0(���n`0�_�ay�j9i�̩�hmW0\��-��SeH���خ`x �t1��sFk���d�i8:R�S\��F�Pj�!����S�0j�5���3؎TCz�Q�n`x�q�Rν�PlN����k������_Z#|�vC�����S�8�u�ӱ��"��������>�sj���vCU�pxg}���A�0*����QM��a�K�دc���՜�mb}�rM-gl�0�b���a�B5�Q8���
�����KU��K���:E��}���T��3�k�lD5Q����^��U	��glx�pZ� �"`�~�������!Vf�ɂ�-�����Ya��������:�k������ʓ��u���`����3AT}�`�?����"�s~��6�~�O��?�ԥ|      �	      x������ � �      �	      x������ � �      �	   �  x����n� ƯO�bO��:�{W��4���n��d1���lagU�~�1�	`K-܏�_p8�&�I�/����՗��f���$���G� -�ygHMˆ�q��x�	^UL(M5�#5k$�Ր��l)_]�Y��h;V�~���|�cl!;*�������/��`����E
�rپ�Jm���*@�O�L���/`�(e >ȳ�|LV�D� �|�z_)�j}\Z(��L��zo4�e{h���l|4JZy�e�p.�q
�{��]E!(-��⻼Xȷ��7�I�!BT��qy5���Xd�y-Em^��C���8گ�I7NB�R��	Z�^����s7M�$w(�����Wm *�5`���i�%IV9�e��'?u�k�lD�&�ZH(X�;&s����F!B��=�0�W���{&:�R�L��r&㛘�2��u��"{+�1�ZV}���0����)��i�d�c�����4�\�� �gt�¼f-dN�0�`�|� ��{����>�A�cj]�F�w�I�4����l���������#hLN<鄕��g���DQ�:�Ib
�I�k����)ut�����uu����|-3ڕ|2xt>~w�|�'����f����!�s�����=��|��<��hǯ��ڃ�j�W% �s�4�6��i~Z�=Ҥ;�=�����d��bnw�tE�~<ʾ>�Л @L��U���.�u A��C��S�&�S�y���g��L��Ү�4��T��Q�;�v}�gC�Y��&��8�Y��Z�[9�aT:p!V�
rά>���V���hbJ�vfٱ)V��H����@�t2��ԌueS�~��%`��@#�̚`<l���b�[=��d����C� ݄���+�t�N�1�T��v�K��	G������Y�V�S�}�      �	   �  x��U͎�0>�Oai���g�J> {Y	�]�K%�&Ӭ�cG��ܑ8�< {�a��e�m��N����L曟�O�^�ϞGxH����Q����䲧MA-���)-�P�C����
�ӆ^��.�{�z��:z��3Z����6�	��7������g�;�@3QG�Z�1T$�Z;�x7�&I���Z-�C+n�69�ܺ�*���t
Ԃ��AΒM�uܸ��V
�D�Ȁ�>|��"�_������w��J�i����7lƥ��sPVn��/K�i����d�V�� 3�����S���ע�[Pu9�C kQY�0����L��;�jŜ�a�����dw�肥��ݰ�=M.(\v$pӷt�wK_�O'�!Pɥ\���N<s��s�2��k4
����Tl�P"�KF�P���͔����c����F\2�xp����Q��ڰ&���Ӗ�k]��e擇���w/3�`�8ET䠜p����A{��i�nb�YʹR����j�i�NG�n���d��nĉ��qrF#�n����Z!�lu�j���Z�$BS4JϞ��R�W���F�7�y�9ŭ�[]�q�H���mk|�<�S��S�ր��q~����H�GR�LMX^N>pQ���;`ܙ��l麒����$�P	ݝ�.a�IGo��M�kH?����� ��LE      �	   �  x���mo�8�?;�b�ֲ�8��k���m���=`C�hG��e�r�"��~��E$ERŠ�[��<"9��h�O���U2�������*]Lf�?���G3ٲ?��!ۣr�dǿ�Oh�>�Mv||��:�l�M7�*��z7=fy=���OY����W���M]�%�;W'������n��(&o�y֠�xB���,ߡ�˿`�7n�"f�ri"�V/������j���G#Y���,d6K�aK&R[`o:>2�OU~*Ѻ,��zS��E�$��X~[�_�W�3*߲�*2f,z��?�z�25�y,Y��1���bs�m��;��܁�r���g*��<�vb�:�4�3�m#I6⫟�p��![�40�I�����<�ߓt#O�{���p*��<n#�|���a�n�Ñ�f*�������#�t��	-�W`�u��Y������|��V-�"�hR��)�h���D5z8e.3�QQ�J����t)d�$��{1[���(�2�	(.EÕ(���e��lT�
�-��}ӡpЖ�E�	d�=���e�(4!d��1Μh��:g.��b�����Y�����<~��9V�߳��&5�a���0�L5�@[=w�ʀ4iN���KEx�����Q�b-L�,K�$XOd�(
���u����`�o��GEyaF}G
̨PTvP�qt(3޾����/x��0��nf�ܮQ-���~.Q󮮫���>�L
�$��B��*ޓO9�5)LP��l�S�{���c�Km��D�.(c�(�B�kH#s�����x��p�Qa��o54����X}��ڸ'B�Q�hT��jD��Ʃ�`!�b7S����<��A��,ag��%�݅{��~�-�|��d��#��?�S��!;*a���l�C��E�q����'�2�1�tK�?�O�>���̠�!��Ik�B�EȺ��ÂJl��*EQP�2�00y9����@ 6f���gF����萤f��V�75�e1z�z�9�hl���df��K"�0zDDFb=2���ԗFZA���S��p�u$�"CЖ)ۣ�0�FH���V��*��ti�?ޞ��M�틾c���.��C���:ހ�i�'H�(����+a��E�!��pq�b�ݙ%M��r��	a�'t�>0&1@����?~�Z!{G%�Яc�բ�)���E��vhn�FH���G�i�dB�*��`Sg�G�}��#�o#I� ZUz�i�Q���X���Iy�y�E�N�1������7I��pD8N���n4��6�L�Z�388�U��b��V��T�UL�S1M?�LaX�Q�P����pG#�<BW'g s�#�y���'틜]�	ң(���G�����31I�J�.�c�������H�.�C��h$�51����oJ4��q ��<��#L����g�H>��Z��>����$_Y��Gbj�toF�	3���l�j�����p�Ԙ����zd"aC	�j�&"�	�h�28[��Չ<$��H����<��u!�"�i������	��N�E]��&�X�d\��F��nS0�Nr�<(�3l-1��uMf��s�`n��w��݄a��� Ev���sh�@�fÔNʉW�ʅ�?�������[!���VW���n͔ᯂ�������ؼ 3Whƥ
mp^�f푤�ʄ�u�RY��Ju&)$/;�.8=�t9:��n���
H�p��.��h�Ã�U�?4_E8Wp0�p�� ��x��(D��o}�*4MKs��ư� �P$#�JȴB�F���˔�V��^ǖxx�wu	k��Aj���|��s���Wҕ�'cA��W!���^;�O����U�����[Ն���X��v�U��z���l�f�sֶ;�y�{���x�wC��܋eȪBNi���t��.�So���;�GuVN?T;娛t�
WS��/S�I��sqT�f��� �q??P!�g�˧7L���ÕIHԌ%����@c���j�U�æ-�]ք��x���j��qE�^S(A�+��~-�@��:�	����!�҂4+������@��h���^Z8�S��V�K�8̒B5�������8�m�F��t\���a���t~1���>Y�&��N����'�XA6U�sL�-]N�'bRK�~��gi��GCǻ�	�X���m��q��\���C�<�����]c#������MU����K�+��_-�k�=z�@\���_U�k�&��*ڮ�������x�02�L�"����h����bE#e�ɈJ2���EwS�tȵ'�j+_i��Ո���cfr��1=�n\2\zx�*�0V911UG��Đ�*��H�*�,襨`"��U��[�v�f���l��a�VdnUy��ֻzx��^^���{�o��b�zB+�_T�^��$�D:<�ز8���TT��(d�����u��I�Fmk���e�0�U��O�vx+f��a�u^g�R��g��z����vu4k���J��Ag=�ٕN�}9��i9]6v=�oq7M�����(�cx��C����C�P*�y��%�pv�1�J�W�\F���)��B׫��<�h$X�����o,hsג?�a�14S-��;Rf�7gK[��¥����1�sd8f"*[�
��+��Gd��a(E:��-m�L����t�S��T��zH|~�5�!�i��s�7�t�<~�C� ���'jo��bݻ�ݣ�:��8D��ݠ@"ԋ%P^ ��^�.	Θ��\��ZV��L��7�1��{i�:�ie�0�eZ��]�[����{/�R)2�����r���LO�E����'����}0\o�g4�k��P_�(�ÅT�^U���}��/,��_��A��w�+�q!�"4�<��)�0�~'"x���4L����>�k��R.G�ۛ���ܝ��To�.ˢ�K��#yi��DR�8�w�	}薜����B9
�
�I�D'���}����L�Kp���N㯫8���^��0�蔛r~�v��텢[<ϻ�w�z��v���B�rp,G�9��i�^�$6`Hg�D�jZ�Μ�¤Ϥ@�6��8|��*X��l`��b�|�#i�7�K"�T�D���n����j��x�1Dߩа�5=8|�]jG�.�6��J/�V�s"�r��d�<���s�C��~�����;��	ζ��l+��3_�_
�M
�*y�k��W�k�]R�ǳ��K��gמ�.W�b;��M�!�E)ߗ0Ye�h~����������      �	      x������ � �      �	      x������ � �     