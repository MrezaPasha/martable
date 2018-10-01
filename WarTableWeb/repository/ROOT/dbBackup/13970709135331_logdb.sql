PGDMP         5            	    v            logdb    10.4    10.4     h           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            i           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            j           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            k           1262    51319    logdb    DATABASE     �   CREATE DATABASE logdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Persian_Iran.1256' LC_CTYPE = 'Persian_Iran.1256';
    DROP DATABASE logdb;
             sa_wt    false                        2615    56771    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                        3079    12278    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            l           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    56773    Web.System.Log.RemoteLog    TABLE     �  CREATE TABLE public."Web.System.Log.RemoteLog" (
    id bigint NOT NULL,
    "createDateTime" character varying(30),
    "entityState" integer NOT NULL,
    "modifyDateTime" character varying(30),
    "actionType" integer,
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
    "userLevel" integer
);
 .   DROP TABLE public."Web.System.Log.RemoteLog";
       public         postgres    false    5            �            1259    56781    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public       postgres    false    5            d          0    56773    Web.System.Log.RemoteLog 
   TABLE DATA               �  COPY public."Web.System.Log.RemoteLog" (id, "createDateTime", "entityState", "modifyDateTime", "actionType", "agentSignature", "computerSignature", "dateTimeG", "httpCode", "importanceLevel", "isTaskTwoLevelConfirm", message, "onlineLoggingStrategy", "portNumber", "porterUuid", "requestMethod", "sendDateTimeG", "sendStatus", sensitivity, "serverId", "sessionId", "taskName", "taskTitle", url, "userGroupId", "userId", "userLevel") FROM stdin;
    public       postgres    false    196   �       m           0    0    hibernate_sequence    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hibernate_sequence', 180, true);
            public       postgres    false    197            �           2606    56780 6   Web.System.Log.RemoteLog Web.System.Log.RemoteLog_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."Web.System.Log.RemoteLog"
    ADD CONSTRAINT "Web.System.Log.RemoteLog_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."Web.System.Log.RemoteLog" DROP CONSTRAINT "Web.System.Log.RemoteLog_pkey";
       public         postgres    false    196            d      x��][oG�~V~!@�	�&�~��5��\�Y�� ���L�&9$��y� N��0�y�ǃě��f�;���lU�⥫)�bu�(j[�H6/]u�>��N��w0ղ�̏�aZD������]��N�/�V�Q�y���G��a�a?��9���9�`��=��\��mw��8�y*r����>|���V�^�{+8��y3W����
B�Q�2-�����Q�ל�m���̩�JHsK�伎v>ݽ�h���nq�t2���5��J�np0ؽ�{�l�so����\���6w��ܠ���^p��W��q���w�^Ӽ������4�9PGrHoh}x�!o6�d7�&\�F �!�y������Y��jYs�q�j*HS^�в�����N�8�o���;���f;_��J�=�uZfL����a�hg������ї������󝻃A�X(�:���NP��Y�|��
���I�G����1G��'.G�����6<���?�ͼto��3z6����Z"��ΤK���E�AJ�a�����h-?�}��� ̮���u�v�x`>�8���I��F�?'�P����cs�f�6G?8	z�o�w��"�����_�S�ng�<n�U�^��W�{J��e���S$|����{�򞪌����������w��g�;�� �:�s��3y�������+��G{�o��w��V�?ATA���q�~}1���������χ��|��[�8јS�\�7��f*A�YJ���+��ه���J	�I�.q��5��Z-�Z��K�V�q����L�QY�z���Ag�2�?98�&�۳�s���]����E3�9s�<Z�x��ڃ�ϼ�&������1��01��bW�=�!`u�L��6�w�t�è-��l.�H��}ߞJ��gv���t�����R�ØZ�
���5&ʗU��۝A�o5��Y�G
���:<���X���m�i*�����~��\O`:���1��7�)o��1Oy�� ����4�W³�]�������ws�k�~�Z��q� �# �f�D (���U�=��ܠ�%���my���2��!���q�,�����!|o/86��F���Ma\ �e�qU3ÝY�g6����V�l�f��ҦR&��?%s}��(�j��[P�:�*�ې(�h @@Ɖ�h��/h��P\s�"J7�FK۫Ix���U���l���U(�)A�W��W%��Ar�2�h�U��!Qr� �	� `��
u͹
�/!#{[�\ӫPIp���U�WAbQ3ve�3�V��y$��d0��,�5`2�A�^��4\0oA�h
{�;�%f0��+��@��b��o�Z�{�� ��kr:|5��&!���{��_?��ӵ�+�C���y�$V�0�Y��w�OQ�0e�9#�T��Ҭ=c���8<&dl0��<h����A����^�wf��6;�7�@ß���OG_�Yo[ �)G][N�h��A���}n�Z+�w�<Ռ�-�4�@�3�k+wꋹXo˟��8�����*�Rf���+U��1�WH���^>�q�0gI8C޶{]_.�!�%�=F���_�ʝ����n����.Q����Ap�����$?7���i�J&@��$ÈxS���Z�Q��ʛ���w�^���d��Q��Ȟ��=!��Ʋi4�lu�W�Ѩ�$�D��%�,[�o������,����6w]}�(�KL�R�pE�o���;����4G����;,:py�^U\!V�s�H�<�.���(�Kd���q�e�y����E%�*"���2׼� ":1���������R�����jL�3�A�3���_+��I� �I����C�0��4�.(EO9�U�S%>��2��4���E(�q:l{�;T��7��A)�7��/�E�����"�/{�u��)��z���WV%�ߗ9����KK?�% �Z�	�~T@���6��mi�V������X�	��ǌ����I�"4��=qV�8~�l8M��[ve������%97�fR�,�'5��#E��9}CW�\�Ԕr���	�%�IG�\�����<���N8�1�%�쨩��D����Qe�5C���<A#����������$��an�w��-l�|���j�DF=��Mj���fT�d���۝����Y�p�`�9�[�c<�:&SM���(���13tV`�����<�2<|!+���(&��q�	uuZO$��*T�B5'Zx��2�w�92���6Gr_�d�&zG�GJQ�i"4V��(�L	�Q���yC=�� �!���r��-�)=�Af��fфCP�"��D�5�T���P�05�`y���*��*wj]d0]3E8� �Ə!YK���n[h�ж0l8\5dlH�Y�08Y.nZ��,`4z�F��$f�S�����P�q�HG`;��;ۛ��h�D���,��^���+���F�Y��xbs��Ex|��#��M��T���f�a���c���Voڭ�b�z3�w����F�9�F�\@]bM�t�1�F�y�2��vZ�j���_Cb��ß,k��4|9�g���/QZ�4��-�V4�IK��2bq�XQv�"��M
��3���Rب-ѥ��e�-X �2�����3g� ��K��x�3tD�i
�{�B�r�Fb�x��ĦQn2<��������Ħ��'��d���(\�+z�#��ރ"Uy��i��0¹��G�G{p9�4������C��G��l�#u�q�o*yGޤ����O�:"ZRբ��U.JLkV-W�Ш�K��4�Ք�ed�6B#k�B#�a_B��g?�ҋ(��F|t�Ã�(B���[M�>����[/z��j�Zb%�0�$ʬR�յ�1AH��iA%J��Mz���
��L�JO��"�(�IqA�:kK�a���4�����L_P).s�\�%I�x�8��E#���f���-Lӳ�g�0�[M������D�C(@��0��X$C7g�dM{�Ћf��H+����������Ik\��L�Q�w߁��%�y;��R�TMN���OT��;�v޶q�d<.zFO�����v�ˍ�S �N��WS�g|� U̼L1��� ]��v�x���G�75�!s�'��N�������v���?�~�����|��s���H��z�v����N�4��~��s��'��l��{�~{�z<x�GD�Ɵ[���7z�n�Z�.iAm�צmՒ߷�sh=����A�>������i�oO��p<�S�i'�"�#۞��j�Ц�dHN�JeZ3W �)E�^+հ�uZ�\C)1 ��	�^&FW�e�+���P�N�.�P�=��(i%)�2��)�_��q�~4��4G�Y� ��U�G� ��H���� c�_>��* )b�놘b�|%���RCt8� ��A��}�j�,c0�,B�����UBK$�r��w=�r�+�k�y�Y�RT���J��E��X�&J�^6�1��4%FNǰ�i���/�8�FP	f�B_�J�n��A|Li�k�n&>�󑦽9^���Wݎ�ۇ���pj֖�i*��1m	y[HM>��:���i���s���Q>�s�I�pni�[囋fя�������N��,����3��h��hb��P �k̇���� �{ʝ��K��;�F*ږ��,�]w������!��yYx��rn��d���9� �P�H�.�D�����,4c@��N`5��v��^R'6\��/���� V�"7����n�d2�VB�1��j#�<��f
c\�9	3�!HH�42�q�Ä	Q��v�F�d*#��p> =M��L'�#5S��k��N,��DW��&hI=�G]�.��B���f�yj��u�?���_Ȍ����u	����uAO �]W���?e<��������sR�D��LXa�%d'�#9D��`O�(��{N[�s��n���_��K���l��?mI���5O�.�.�lW9HN�a�=����:ݠ7��q 3=Z0G/-� �  t�%����g��!3}r�m�~�^�������k~cY�؇���¸L�V�-L�\�W]�aTs���O��8D���P1汛tfk��5�a~l@�8��mX�0E�(:£`V��g�̲��b�t:�n���R/l�k�&/4oz�Y�9����C��H ��D-�r�M�zI��Vp���rs8j�B��4�
�OPx��t����1/�㗮�Ƨj!󖽷�����F���&hY���0�P�����e�Hˬ���\2LmX0��D�u�a�q]�a�wm�6�6�w(^��ʸ !;2��C���^�g��~>z6���o�/W$��I(`"M\:�Z�K!��꩙�� "�"WXu}oD����k&y�4�CKk�K�\a�<'�'ze����-LQ��a����˧aJ�������s����+�0�f>�暂����q�^�f�;�~�Cr�n��%���$���j0�v����>[9L�H#��4fj����nP�抸Si�7��6���iiL���i�y��M�473� �	$��Y[x�2J�����츅H�I m(���䒲Ov�s���Ad�&0#,�������5�(�B�s����Pb8�T5\�cg�4&N��J�&Ði�55\�/�!�U{2����r�� ���G2�(�n1�d �
�NY��d��(7nQ ��� �{+ݟ�`Qڠ f�VA5��I�c8��9���ES%�q����}��*����WJ���Wӂ�P���H��3�1k�&��zV�F�K.i{pysv�����v3�-g1�a��,�q�)��� �N�`�P�D��S�8�Ot���9��P�p��:di�iخ�1hv����	>�-���qЛf����V�6:}&�Y*����������:�#���|�ň$���Y[p"I")ca�bHv��uJ%�*���|2Lx�s����!?�����5��6>�r��$;!0CI������X�|���4ss� �?]\�,��ǯ��I�U��!�za:T��#뀙�[��C�,�FA�Vǹ��a�&`�<ƫf�l�[߮�NNަ̥�0�Q�@�*�S_YO���g�en�D܉�	P�$��P��eZ%���	���PYy+�yq�mhv��e�l%�u��dقFR����aP�vr��������o�-�
�V+�Օ�J���j���Vڶ�J�/f�s�7��� 5E��� �5�6�`���,�'4�2#:R :x�O!�7LHΒ�4�m��m��1l:��"b�[De�%V��p��z�H*��]V3�c�<C���~�؜x�`��y(*�c�ySaɴ�L��f���<�Q� � U��j�%��bUr������N��v�URD +pHBm�����};�!)b��2$�D��-����O��'�p��1D}/�m�ՐyP)�L��$�G�P�q"�2�}(�0�hbɐ��0qc��������~a��-�^�w�8�$Z:J2��W��V����@B�H2I�����;�W��1�����F\�L<�shK�A��'�l��"�w�8��	�=/�+[�3�`�C$�P�vy$�Vl�t�ʖ�1�/c��\�-��1�7h��@�w�,u|��>���%n��,���|�%�:�J%.j��+�Z��B�	^ⵚ�UZ����,c��{y����[%�X�!r}�K"#�(Gj�Β��ۃ��j�>�_��
X�<Ռ�m;	"�E����%�Ps^�R�w���T�)˲�
U%��I� VגI��J�������"㾒��VD�D�ԍ���+�\�	�KH��eA�<5xF���z�/��-�K�&#�hb�1���Ws�k��B����(aG]}������/�dJ�G]}��i�j��U�+|EP����A�v=:\��W��N���I7�c������ �v����J$�+��!M��q��7��^�)�     