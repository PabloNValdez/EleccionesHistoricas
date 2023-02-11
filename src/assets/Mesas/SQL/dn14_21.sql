PGDMP     *    -    
    	        {            dn21_14 %   10.22 (Ubuntu 10.22-0ubuntu0.18.04.1)    15.1     �           0    0    ENCODING    ENCODING         SET client_encoding = 'LATIN1';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    384523    dn21_14    DATABASE     s   CREATE DATABASE dn21_14 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es_ES.UTF-8';
    DROP DATABASE dn21_14;
             
   elecciones    false            �            1259    384688    mesas    TABLE     e  CREATE TABLE public.mesas (
    id integer DEFAULT nextval('public.mesas_id_seq'::regclass) NOT NULL,
    numero integer,
    sexo character varying(1),
    total_electores integer DEFAULT 0,
    cantidad_votantes integer DEFAULT 0,
    dni_presidente integer DEFAULT 0,
    dni_suplente integer DEFAULT 0,
    circuito_id integer,
    municipio_id integer,
    departamento_id integer,
    esta_cargada character varying(1) DEFAULT ''::character varying,
    esta_incorporada character varying(1) DEFAULT ''::character varying,
    escuela_id integer,
    cantidad_sobres integer DEFAULT 0,
    asignacion1 integer DEFAULT 0,
    asignacion2 integer DEFAULT 0,
    carga1 boolean DEFAULT false,
    carga2 boolean DEFAULT false,
    ruta_imagen character varying(255) DEFAULT ''::character varying,
    cantidad_votantes2 integer DEFAULT 0,
    cantidad_sobres2 integer DEFAULT 0,
    cantidad_votantes3 integer DEFAULT 0,
    cantidad_sobres3 integer DEFAULT 0,
    fh_ruta character varying(35) DEFAULT ''::character varying,
    h_asig1 character varying(100),
    h_asig2 character varying(100),
    bue character(1)
);
    DROP TABLE public.mesas;
       public         
   elecciones    false            �           0    0    COLUMN mesas.fh_ruta    COMMENT     R   COMMENT ON COLUMN public.mesas.fh_ruta IS 'Fecha y hora de escritura de la ruta';
          public       
   elecciones    false    213            �           0    0    TABLE mesas    ACL     8   GRANT SELECT ON TABLE public.mesas TO consu_elecciones;
          public       
   elecciones    false    213            �          0    384688    mesas 
   TABLE DATA             COPY public.mesas (id, numero, sexo, total_electores, cantidad_votantes, dni_presidente, dni_suplente, circuito_id, municipio_id, departamento_id, esta_cargada, esta_incorporada, escuela_id, cantidad_sobres, asignacion1, asignacion2, carga1, carga2, ruta_imagen, cantidad_votantes2, cantidad_sobres2, cantidad_votantes3, cantidad_sobres3, fh_ruta, h_asig1, h_asig2, bue) FROM stdin;
    public       
   elecciones    false    213   �                  2606    385032    mesas mesas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.mesas
    ADD CONSTRAINT mesas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.mesas DROP CONSTRAINT mesas_pkey;
       public         
   elecciones    false    213                       1259    385083    index_esta_cargada    INDEX     L   CREATE INDEX index_esta_cargada ON public.mesas USING btree (esta_cargada);
 &   DROP INDEX public.index_esta_cargada;
       public         
   elecciones    false    213                       1259    385084    index_esta_incorporada    INDEX     T   CREATE INDEX index_esta_incorporada ON public.mesas USING btree (esta_incorporada);
 *   DROP INDEX public.index_esta_incorporada;
       public         
   elecciones    false    213                       1259    385085    index_mesas_on_circuito_id    INDEX     S   CREATE INDEX index_mesas_on_circuito_id ON public.mesas USING btree (circuito_id);
 .   DROP INDEX public.index_mesas_on_circuito_id;
       public         
   elecciones    false    213                       1259    385086 ?   index_mesas_on_circuito_id_and_municipio_id_and_departamento_id    INDEX     �   CREATE INDEX index_mesas_on_circuito_id_and_municipio_id_and_departamento_id ON public.mesas USING btree (circuito_id, municipio_id, departamento_id);
 S   DROP INDEX public.index_mesas_on_circuito_id_and_municipio_id_and_departamento_id;
       public         
   elecciones    false    213    213    213                       1259    385087    index_mesas_on_departamento_id    INDEX     [   CREATE INDEX index_mesas_on_departamento_id ON public.mesas USING btree (departamento_id);
 2   DROP INDEX public.index_mesas_on_departamento_id;
       public         
   elecciones    false    213                       1259    385088    index_mesas_on_id    INDEX     A   CREATE INDEX index_mesas_on_id ON public.mesas USING btree (id);
 %   DROP INDEX public.index_mesas_on_id;
       public         
   elecciones    false    213                       1259    385089    index_mesas_on_municipio_id    INDEX     U   CREATE INDEX index_mesas_on_municipio_id ON public.mesas USING btree (municipio_id);
 /   DROP INDEX public.index_mesas_on_municipio_id;
       public         
   elecciones    false    213                       1259    385090    index_mesas_on_numero    INDEX     I   CREATE INDEX index_mesas_on_numero ON public.mesas USING btree (numero);
 )   DROP INDEX public.index_mesas_on_numero;
       public         
   elecciones    false    213            �      x��}ˎ躎ݸ�W��zK���8��4� @&i ��|Ȗ�%�:8�����]:�,����1埘�����'���z�	�?%���S���O�l��O���=�����?���������_�������������/)������o�?�����5h����Oi�/�GU�_�"�*矜~
���5����|P�D?_�خ1�p�7���7���Z����Acj4��A�s0����W��e֨��tNC4��y`t�z-��o鿵�C�������{����8b�KC��O?1�t�����L���Lݰ\��oH��9�ӖS��"/q������o�������Ҏ�!�Jl�7a��յ��:���ox�-��K��xX5�s�B��c ���~���u>��1<.3]�&;5�7������k�O1��SίT>����*v������Zv�&zE�A���=k;�w����w�Zd}���#j�i���O��	3_�_{���B�C8�0:�w�8G��eT�s���ٜ�.q�Q����%j||��#��c��D-d;Gi!d]]��[��Jl>g�+������ag��b=w�x�~-����\[�\��^}7���E��cl�q=��-�j���ym�s���^;����U�|~`m��o�<.��
X[n���2OW:�����5tX��Uϣ����̧����~��q=���~�7�<��sX�&�-o���:�s��l�$f������k��p�4��K>�����+Gֹ��q��a}���kdų��d7��IS���˟'��	�f�$6޴r�4U�U�Su�i�wo�|T������[�c���Yi��+�z��^�*�5�a�ꐹ���D�~^�'��D��/�:S���A�/��{�y�z�eU~K���|]�.�D�G�
t�4������V���r�����-zTf��q-���Y�Jl�
�5���k�����f�os/�|Tg�>��l�����lɼ��L��S���7�y�=�47I��!?����{w�������<}+�Y��N��ӊ�g�=�;4ZZ��9��ϰ=.��G���ú9b���IΥ���^]ؓ��ێ;��?oX�uw�%��^�y���z��'�?5�6��߭k��6� �g?7����MҸ��,y
RZOW�X�_���c>�%���-��C�^;�웥S�WV!�st&~�yl� C�pX�2,>���-�W�K��J������"�x�|V�uް^�-V{Uh���b�t$��Hl���ʹa���H���l�k:�6훕�_��J~|��������t �����e �������O$�8�{TG���f� �+<�W��}�P9��|]1x�����H\b��+�l����������R�����5��f�khq�q=����)�#1��x\.ҏf����d���"ݡH��8@L�빲rx�mڲ���;�qx��t�MfЪ����X�M� ��c%:k,��>
�l>W�����P������nM��ح������7�櫟.zo��4s��4�f�C��ro�׉�ؽ*�Ԍ�����RzX��rHMqHM��>�7Q7Z[�SS|p�
���I���r���U�]oin¼Ƭ#��9}���g�&;��l��˅@a����>���˝ Ѷ�a	/h[_/�.?��7}�4/�Ə�q�ܴv�a
�{�;3@�rW�;7�+�k!�a��Y���G��;ؐ�|_�F���Cp�q�#���IzX����|T|�|T	8�5O>M���/q��L��P�(�9��Jѥ�7,�s�'ᨭx�����f��M�h��wNM�
%�1��5`�P�Ʒ�/�0U@�b����#	�q��n\�9i	i�ϫ@�U>1?�=���o�*��*?�:=Sړ�2[���$^�ke3]˜-�M�ˬ�n�(�U��rTܻPp�gpA.�w���3��7}\T����EE��+�F;�c�݉��~�F<��
)�q��|N=�����%=(j����C�7��l>d�b��Q�EՎ�e@��ͅ�|M�;-��,~�olN�>շW��+�߰��b������6��󯢜�l�_k���|T�h�r��3
��[�*x7Mx��^��5n��<g+>.s�G|��f�����a�G�,�km��ќ6�֨�y���>A���B��g/^�yV�~�q���(�Ȟ����\~{�ђ�?^�843��t������/5��6��T�s�o�?�������i˂�Q03=x�+�X�ϐP Z���m��x�y���D�7�-�.��^{�'�c�'y9v��넦�~�]Klե���e���Z�x��*^Yy�ەUm(��uL3���o�DE��c%u��T��~�XU�=U
m�M��Hy֑�7x@�n���Q���q9>ڣ8�_0��{���ܹC]�L_��w��~�wq\�]D�z��^"�V�(���=�/�da�9:���S^�QF>���}���tlcq@橲9�<��h�q��0n9�8�IS��)L���HtŴ�Cs��ͼE�sg�qH7<.��y��Y׏m§)��e��X��|�B+rC�f�ҡ��Ui'8Wf$k ��c�Z�فh1��=�lU�i��'�-])1L���)��%)F`U�( ]fy�}U�k9, ��E�������f#�s`f�����riI"��Eø�d;������8�}kn�-*�'Ӹ�:η�����P�������q9��!հ���t��)o{�t�m3_g7�gu���2��@�lE`f���S<60�GzV���qy���1�l���fS<dU��M�*�;��O�mj�4��RL��G��#� ��aEN��z~��j�o���#�%�9DKat9�ο��� �?C^#����q���/2.4,r ƒ�Q �'�;����T|����n�lsG�ؘ6�x�})��ӆӎ�>���,	��Bz9�]�]�6AP�	=��
��A�Aɦ��>��m����E4�.�i�e9���YG�x,ӭ��6�/Zzc	���5.����d��������̍ͺ�M`�AEm6�h�/J��ϱN�>��d7��A�M_#�{��I��������t��>?.7]f���(dn���ON�8�p�����kL��nX.�9:"`9�I.6�	�9��lG�1�1)�t�r�q��}�w#�n��9.T����y���1�{��nU֗'��Cھ4iM��x��o�z#�e}���e��[��`=��o�W�T��I�{�%�pU"�&��&�8Oy��{S�6�)B�k�Sy��v���:�|�[r����N+�䍧jK���ƃg#�Rѣ���r^J�YU�<ˢf�oH6�Z3,sL�,��`��j'j��%k��%�w:iٍi�?�SI�F�ZOnۨ"���UR���V�<�08+��2�@�X~�M�(�<er�/h�ׅ�?�ij�����r���ӓ�cH�>�QYhO5��a��4�g��r�d�陉m�}���x�o�>��K�0�q�8��.ڏ�.s�����@:X�Ę#U�R�TI.K�AOA���6T5�z��6���m�[:����ֵ�f:i���{Mnq5����'$j���r<�t�D�Ԯ�Z�b��J[7���k6owP?���5�QT�H\��Su�{Ӊ:��q��I&��������ٺa�M<�MӸ�9���؜�^5�c�ryB����%v��q4A�H��i�~ѵ�7'VXUw>��Z��qi�
�X���F�M��P
y��� nV�Ê����Hd�BT[�&6-3��DYz�L���VU�+}�}Sv�¶���Y����H���c> i�{>��o��?���;�uTD�"��[(�E_����sr'���D��2Ŀ�E�rFeɹ8WĲ�d���P2��Y�!����;}���]���f쎼��,�ѳ��"��=�j�٢lrn�l5�c�Č|�xײ�e�B1I�i��9ߧs�W���a���y��Bl>C|�$5�Gy�\�i�ꆾ�n�	S;�����a��a�r��\[��֒��~mɩ;�_[��O�����mM*�l�fe j[    e3���Y9��ո�uk;t�y�tv��v�r�$�·?���s�]��K>�v�#+����w�5͓Ɍ�b�e���e��A8 �<��N��Ω�w哩2oN=�Y�4�.m�n	�4��O�xZI��h�c+�F�z��L��ޮ>%zRK��H�������'�L���T��Ζߟٞ9&)��*-�e��}�:Y���X� �<a,��������7��:��B͘hc�����}w�:�4w����er�ս�1�𦾅7��HZ�6�2�+�K/��0̂�y��6$��\�G$7�B/NS���� D��e��c��mS~? �J�3�e��n�pA���w� �<��I�EF�D��u k	p��?�����0'��EV�S����]��iC����mQUV�A���+���ަ��9$�k�g����,�gU^��֠�G�x��+����,9���|�1����Ԋz�8�`���i;*�/����G�5adI'eZUu)C��ARJ��d�Y��/q:�u[v�c����?[IV��'�i_Y+Џ�C��0x�0o�^�%�LT�8㚸�[�Ͱ�)kʙö�z.����s��妁<���+^+ �JR�g���H���V��������/��ngǻ��z�کf�-�慪$���MĲ�7D�N���=v�Maq�p%�`6�+erZ4\�$�"�@-7���11�a�͙��-o"�a�F<T��AV�K���а�XK�Rֱa�1�bQ��� �+ܖ�U���K�����8v�i�=��LĜ<x�D5k��ccr�?���I��W��~���`��-s'�XY����VR�,˜����'3S\�1�e�	K�;?��EÓ�iX�o�Q��x��>g�!Xi6����*4�q�1`m%].$*ӫy][����@Y�p�\�+���j�٤���>�ȭR��j�K��D:�+���I7��ԕ�RS�1�a��A��ÑCٔ��k�
���!�H��k�F0�L�+�GU2��bU�}|Pf,�B<�����w9��- ͢�&� T�v.�{�4.�u�V����ܷ^e��(��hg��Q���Ӱ��K����-�b�ξ0�ty�%?@����L�J*٩U�}+�6�O�*��f���*s�'�n�BǦ�M�>�z�}N���='prڂ������K���j��a��⣱�M�Bd�
��jÔ�0�^u�h�X��hZȚ	p�cqMA,�$�CBUu���U
��.������T��?8ҍ"+���U��U�L����<fɶ�x����j�U�v�<���Gu��^��e�V�Clλ��7J,*�"Q>z2yb\��\'��Vd��z�����O��(�/
�R����|5��C_>}�ˇ%�]Q�1�UdK�")L*@T���yn���u(X�R6���׿F� �S��牲�\�z��
�&uV�m�8�.����u�JxX cz���ϰ�$#�rD�;�������xw�4�U�˕�M+B��E��k��~��A`=-W֧Ԍ"âT�d�;��6R4y�6��Z����ac�ʰ��5�7(��,�
۴�~��`_.�n�5v�]��'��~.w���m6_O(�@��y��\�;!PI5�(��S4]�K��6���*���/e͸2�����!;<I˞$�sچ��mb���i�u I8�~�!_"���L��[��A�c�.O��6_�n�D>� (W�L���Nq0��D6ofK��7���L�|�=v(їHPn;�a^b�a53��AB�L(&���P��.ܻC�(y[0k8�����f�����h��dFYX��p�S2�K+�V��d�a����&YX�TU�����,�%!����7*9y""�qX�X����᪠ �y)�B�!y�}��H�.b!S��F�� �ET����ǆWW���Q���d5h��Ě�_������BLs�^� ��'�_V������b��_�]��qD�RG����(ב�=m�}:���M�h���������.1�,z�h��� i��f��K�n[�D�{��T{GԄ��wIk1��U�w-�ȿXu�hsx*�"�<�kY(l��B�:xuM�-�q�M�s(�ˁ� �`����E:��M�Ph�|V���P�+�ݗ���,%�Ni+�F�r�bN	���z�k���9�uk�5/����n�.:������Q_u
B�U0ѳ�E�Qd0�zՅ{��c&8A�z�2^��f�mS~�]�%�j��-�Ղ���S�c��%Chf�cl�9��:�?$�5un�m�j�4 ��e���UR�ǘٞ�^b]���Ӽ9��(�wF�SB7�橘��7���H!�r��g���hdp���u��#5��]!dkLdը�OdK���P��VT�������U�G�m�b&8�}L�v�2�-8[Ҁ,S@ֲ��2���У�*Ӻ�iGwP�����+Զ�x6����f��� �p�W˔����	R+.s���jb�VR������x�h[q�e��:�P�}����Yr�'�a�^¿΁�����>���}����R�Zo�~q&�.��k[�N��k�25�
���/��@c��l{1�����������3�]ZрF[d3.�/�nyN:�%�����8!V�g<�����>^�;Ͼ��f��L6�-��苶�~���Q�=�w�7�s+���l8�	�	e�`����2n���S�.F�2���v�\O�Ӗ]�%N���ui���b����&:��K6��4�s�J�aej"��ͩ~�ac�+=������Ζɴ#���� ]ؼ�*Z�7�ˁ���:l-�4<,rK��[n��.��#@�ǲA��O3��I!d��2���Ekk��Gz�Zo�@�:kF�������fpVn7�gX��p�y�����E/u���mƇ��%�~ �Q̸��aGk�s������ ��Ҋw���J����T˄�f��Ta��*��O�z�j�i$f-mȶRN:O��B�S����m�-ļ(V1/=La�W ���}bs=�Z�3���D-���li��a���r.|qXRɿ��`Q�$+�s�/0wOA�!x�x� A4E8� ����K��V�=G���
���7�W�5�.,R������skҦ'�d��Ȩ�~�Ŋ�cX��(纽����Y�6K.��\�0k�k����� �\��?�a<�]vsL��H���CM���$��V��f�����&�)�❳k�)BK��֧��K=��^�| �xL�+&�+,�=����fM��Q�x�&�:ڒ V�M���krL���P�$:|G�+=�W�fU%_?-"!��P<�����vŚg������ĬJ^!S��vJ�)V��t��i�\Z���EΘY����9
�;(��0�x,�W(�8�0"�u�*+a+��BF��E��(6ٸ�oeٸ^���)�v�!����^`�?��K�ʭ��iu�>6�z��r�H�-5Ŧ8)k�5��0%:����r�5�?�z*-.�pq���fk���|�w���>�"�vwV#��I�-|�-X��:f

�򓙻OAɹlY� H��z
;G�=�Ѕ������5��4xan��^X���_=��ucӠxD\66�b0�ֻ/'��<����"���a+�t�0����؏�O7]��e��	U�Gh��$������ˑL~n��S�]���K+	��;��s�jX�E���<}��H�K�b�l� *y"�.��5{'�2����[�k��l)Qj��<�S"לg۰��?��\�$˹��"�S�P����˹���f�>e�+���=T�	�0;&j>�B6,�b�<=���,�׳-|I�ƥk?��շ ���:Q����h�=��&�S<?���Nh����}"~F��g\�C R��f)���i�:5��!�OEUa+��!��ӨQT�z��[迀��k�r�2rj'�]3sM��vFٞ��R��S�-��-��m���>ۑ
�Poh�}�s���=�@VU�6Ѧn�UT��+�"�:4"�i�����8a�Mon��D �3�-�t�^�AD^�p�t�	���    ��Br�a��A�JT�#��]�]w IG*p ����$�r����M��	Lǂ��O?[y�+��}.c�|D�������N�"9�8Q�;�mD����:Zכ�O������%e*PJ+/���PqS�1���]���I�\-�(&��`�[q�N�ԫ���9ʔ��
i�(�E���zC�a�@�n�k�!)ow�a)oiԸI�4��D�&˫!?8�X��];w��˺6	�>�/���oD�;֔�V��Ym��q��?F��^�:�]�+T�ՅH�R�A��^W���$���+C%�*�k�ߞ�
(��]#p��.����.�N#6���++E�.�:�4��P'R�5l�~�!]�g��E:���-װ\q�N#�l��m��Q�`ޤ�&�S;��	�-@J�B��>!%9l,߭�K�B$**Ewq,�ܽ��{�(C�Oϝ� $K*=.N��{�e}X2�ŋ��n#i0�5��$�,{u�3T������ß���}璱"��7ڛ�+�rԷ�c�}�G)�ԥ����$��8�~�b��k�%�/-��7���L�u�Ķ.��PU�ʕV����L��[=nw�w���ٴ�J���%�!�HJ3�7��g�w��k�]T�
\�7VQk���a�T
Z��E��Zo�*�{_��36L���OJ�l�@�ho�=(Hߥ�jo��U������[!!^�4����vi�j������J������"9�E�RKDLC����	�x�R!"�G�qub��5A�%JU�?ڠ�"��	3��E�y٩rel	4�O�6$��m$ �K�|�qg����*�[���r�>�����1�"4�r06���T����]}@)$�����߲�l�	���Y�v�]���X�4��5N�v�o�l�삯A?IClUUN�8\ �ق�♼����K �� �to�
f*�Z�iV�;��+���������G����V�(3>X;c��T/���9��,(Fl��)Ut���|�`��U.�fkT��
����l����E.��w$�[�*m�h�v�tS�Ҿ��m�����~��ik_��榻����ߙ��A�B�=z�z�N�]/�{��^]����|b��ST�z�͗G�XZy��V�pH3�c����گɔk��y�z>$���Lh �>؎{��H����r��G��:��hQ�����Y��`�5��C��+����P������n��%��kK�l�8X
y�H�J�$�$��u�ǧ Mբ.�X˂S50f�U7-ؚ*�4�.�Ҕx�T����?W�H���/����͒�ɤ���In�m�즀�K31L>�6�&�(?���ߊ��]2�c-�v�l{17)�p�v��b�����[�2 �L�ɠ�<�����
�V��jR���,!e<��r@���?�C���F�Nl��)U�P��tۭ���^uG�U��Hu��R�ol��A��07T�q��愞�!�5�CB��g��3�(QE�� D��ݛތ��~��ތ\4mP��Mƀ�w(��r�hI�!��f辷�)i�zG�|�{1�ҧ�N;�J? ; ���|���>; Rd��	@k��	WH�-�V�=x�rI�3o��zi��ȋ�ۦ�]qߩ�/E��� D����@Ǿ��D��!�Y���F��c���,��>�_�}�I ATL#�"K�+ �}ҢM��+�yvlsxH�� Kq�S�?a����q�-À(r��,�˳��e^R�?�D%ox�[TRO@� :��IpH�L��b��b`���NhyO�ߊ
�I�e
*�o�ܳ�ӭ=a����'������
ĭf�pR7�uaY�����f<Թ���r�|��'����*�n�ڗ�jx��U�������UH\l�PFq���כ���yN��b�!��ea�:�X��y/-Qb�$-�8�k$�Hp��k�F���j\�<�Z����gHa���T��"[�<�0i��G������橘Q�5Q�*���&f�ğ�umMr�S�ev$a��t/��Խ���L�~`��S��v�Vf�8»[�}-$��DCRL�TL{[�V�Bm��l�])Sއ#(��!o����O䤅/{r�dR�&�~Y)��FŇ�}t>��t}\.u��qN�IlZ�Iay��l�΃͘U}��n+��[�rg��@aN��V %%鸈&~���̓����X��^)ų6�̻|��ϟ��ͽ�1�ɗ��;/`~K��x�� {Պv�����5�I��������܄��A�7D-��ұC��gJS�^���T�T�[غ�.[�Oj�@�	N�aOtP�	�\����@�DMa9�۱�
G����8s�EU�s9� ��ۃ|��6��!}h߰^=2q`�=�V'�:�܂�`U��U����~ӎ�{;KA�eu,}�ʕ�Lf�k�rª	�`��-Mq���r�<�L�t�_�0a%���d]-�	I�0�з]r��>[�n�����D����$��ߞ2hTz��(�>��)�~z�����'��HU�$Q�캟Y��ӌ���g�3y�NԔj4A��h�Y��B1ՁA��i�hmm:�>#C[���ՠ�C#Hg�MX��Dl�@���<m�W�>ugm�gֵK���"�I/����Do�E�~K�sЪԀ��&�$�?��7@\>��	c�4�=?Xr@��A��EH������,p )8f���zw ��Y���J�h�J�Q>��LO�����'�+A��)jD�e�y�w�%i�U������g�PL>�MP�b����~yay�D�c y�'�������d0u!<�%�Щ�H(ƽ��1L�=�)�ý��_����]�j.�U��A�ٺ�]�'�bRۺQNe��ҵ��@U��Vm� �5+�^������³�栤JXrvRb+LÔ3�>���B��>��,���Z}�z,��،3P�S:Wj�\?�`�Y�&,���"���k��ο�.Ή�&5��V/p���]��V?6j����KO��Ι!|�5����BCK>�a���9,޹�ݥh�w���)1�cKv�:oe�%�kuE!�!T�f#��B�P��8A6�\8-_�ʴY(�\.@�crL)�R�+��lt��ap�f������{=��I�R��������/3$�
%���S��Bp�A�>a�B9���NP�o�1��f��ܬ����ĵ�n�����r�L]iw�!���
��S�y����$ǫ+����W�ȇЋ`��K�'���w�w���T���0N� ���? ��o�hY����Ebw_*v�|#�UOj,H�8�³��,�g�%;�GU�����Ӗ��E�P��6W�u�?�kV}�8,�ݍ�ȷ��$�5@�>�f��u������QP�6�nfEȾa�r�Aj��Qk�I�*��e�h}A����^���䢿"-���dxa*�����;�{P%!?�{b[�+��C�C�'�>+�E��W�!�3]���J]*B�x�UCk�Ί�����{���ۗ(6�����}�x�~�P�������=gNۚ��6ٴJ"<�J�"FAQF����,S�+e<����(�<}0ui��:-K��郆ȹ�iC�R�-�.G�i/K�:�eu��ڄl^�D�Ӻ�1YN��yo��m�D�S>��7b'�/9Hʨ��ҋ�!��7-_�MO��k���Df��Ym��"�Hf��R'LjF�0��/�T����;�6t�`L䙸P4,�H
��.�c�t�r9�9!��ٲ.-�Ƕ���h�츹sX�YܗC�Q��`�Ӧ�o*�j2�`i��n�8[m��/y�S݇H6��5��`�������f�?��i�jR�?8�K��� ��Li^�Cދ\}�S񨜠�� @���KC�
���m)cء[�NCg��[���G���"K�2�����v��F9��m��Z��n�k�̜�j��2k�	x���8�F9)����X�Ss�t��r�.���i(F˸ߊ��D�X�eGq&:�\$�(��a6^��Q�����hx���âG?��f��o�)�Ł��:/�����VL��t�x:���c%�v��	U�{w����;l    l���@7,���v�:�k춟ä|��Ÿ����l���d"��.q���JV_8?�÷E����a��>;�H ��j܄���H��k,��$�M0�]^����P��"�c[���}���� i��ˁP�Y��r�3��o��E)�}�mѣ�ۖ������^�B�/����~U8;FG�_ݪ�54A�:��x���m+��v�7E~[F�ZE��u�����RO6N���h�P�s[(6̖:���g���b�ʔ�F 2�BV���Ki�,�M(+7#�wfg�e˄ܺ�]R�i����<1�P���{�mQ���k&���5,�t�T��,�S�DAZ �Vw|EM�KC�A46o�8�ŃȮ�99�~��WU"ny���<?7�h�����r�����uݸ*�5ae�#���v�קg?�hȹ�ʓ�漏�E?��d�l�V��H�~f9�E_܎*6Y]���m��'1C7�̶!��h�\��=Bl4��Z���K`���D6�FQb߰^vX#�v�P�2�-��E�V�Bq�?�2��f��6�V9�\��'�N������#4<UZ�:TH����l�`9�u�"��#�B�R�6-bw�kY,��1��n��'��YI}i[&j��ҧ�%���dX��N��m��u��a5z��EU���#.U�G��G���҄
ݰ\N���D?w�:�Jr?�x�yP*�xK��Tp�E4��u�YE�	���&�~����X����n�&{@���aBz�.�@_�j�����|2�==f���o�/�,Ot��ݥ����K�ds������ Ŭ��E�!w�����Ȝojh�����������j�1��iTye��I�a�b�o�ӁY���-���I���v,�"�����o�b擓���D����,Z�]���d!���%�*P.E<�x �.f����G��2��ղ�f)�Z�&��B�l�z@�vP&3=��d��n/%����p<��i��tg-_�0;�쳈
r?�5���㘪�*W��ƨ�wf3[��yo�%W�eKׄ]K�{/���R�-��o������yB"����>v!��Ɣ�x�5�8�C�8���ݭ�3�(^X�<+Z�����2.J��Iϭ�x�p;(]��e�����2�܊�+m�a�E�&F��sz�3k'f5�v69�E]�^a�.읈<66�w/��D8-0K�R�R�y�C�Ě�`F��M�������!���5M���MAu@�wJ�΍��'�i��*֟f�l�HT�e�r�%��cna/�ܞ�u�$�%I�c�����	(�#n�#D3������TE�RRyr�iM�%�@6�����L0A����f~D�v
�n���zm`������}�+����栶6�6�<��DO�٪iS
?�X
�+���z]&�����U��8L�sZl��nKn��r5o�֬�}	z���ͪص��2�ɡI�;��75���j^�ߝaN�M�H�-�;t�@�B��"R]}��tD$�\]�<��B�&�w���|��~r��o��N�cf���P���"��w�I���tlL���m&,6�����ZqD@TfM_\��f�a�G�Iܗs��ykS-mR�����������E���8aN	��5f�H����H|�+�$�7�vC�n�V&R<B�)����}���V�N���\��'B%㖮�sV�_j���j[7�4}��"�`'-r<j7�j\�v5k-��S��/�A�
�w���**Y�������Z��T4S�u3S3�c�,���!6�Y"I3�n���#|ZR/��/�\z1t;Qu�T�D$K^�fN9���c�E3[� �Ґ����H�D�=!-ͻ��e���I���z,S�9u�U���|;���ф������2efs��[��/����*6��b�����}.3�`��,i}+}��'X!��!P(+<��W���A]-��5�E�N��Ļ�:� 7�����O�Tʔ�RGux��.�se�jI� %%�c�����2�U���Ml�V�*O���Dz�"��O��|�;�����q���r<�a�0�ǁ�5�{��}�HK����y,,	D���^t��I��|�Ӗ�[�aS��kmD��lިC�OJ��#ly٬�i��ʔ�������z2M�V}�C�6�uK�5�Y��Uel?#�} �����+�6;x�CI>UkY"| +,|$�@�~��59�6��$�J\Ƹ�k0g�9"������bO�w�QžZ&�KY��j]�D䘈�C�@D��;>aM��@M�i��Z���_$=��"y\�s�L]��鐦g�'<K�&/WU���ď�ݛ�E�|�zټ��8��	��ΰC�n�8�+r�>��Ai>y<�'A�Y9��O��>�!� �:'U�{L����20~w��x�N�FZy�wgq��k[�Au$�&E� ��O�x�|I�1W�0��npڴ9v�9��^����3ѵ���������^�5�Lφ�W�;�8�n<�M��tt�g㺸����^H]d|��n�-Þ��(�q���9�l�-��E_M[�;��A�F���21�u�����]Vҽ�,S��E�Y��?����^p���r�	8#g�0��I�C{dw[@���w�:�oi>��%U��m2�2S
2R]*���i݂53����E\ayξ0ϖ�,CZ��B$xRo�Tѣ_μz,vw*�3(ߧ���.�UE�BU��U��K^ȿ.�򚔳Z�dZދ*Y���-C���_���A���������/z�c�Gde�]���;�&����$��yyi��������ӥ�-Jӝ�ѵ�r�:Hd�rw��,�a����ᅏ��H�M�)oQ'���Ⱳa�։�3��\�	�3�ޖ��|a�l�(�&f���M�M[��"��<��l�|"0�ƥ�T�ԋ�
ڼL�����r�&[(;��`�B����.ғ��Q��0��"6�1��l�~��tV�]R���O�!la7S�/Ri��h��t���[t�ְ�����fU_�_޲Wksz�b~Md�a%*�;`	u����΍*���#�Q�$l�Zl�6�k���:T�j�h�dV����$w'�a��&pࢿv��C1��v�K@pP��țr��ΖC�v!��_�"��x�l����?�\Rg�H��\9���� �2���ϼ�N">�iE�v���/�M��N��S"��Mbz�q�� |�����5L��v� kW�V�D��.���eG��nq)�	�
��U	~=��Z�~��s����+�h	57�~\�kCLD��$�U�����έh�h�A|�ɏ	Łp�͢��Q���X8�G�'��p�`�M�nX.wR���|�����bR��s�
�Y�c��O&z��	�Pocf+�/q߿����;5���k+j�:!��)��B0��vZ��;+<�^J6�8�6jWW
���|�q	e�q�t��O=�lu�H3�N6�H��\�����QRb.T���\����	`C�D�Ȩh=.��W�l�X�1z��w5uU�r�PFXnL���~�:x?0~f:ſs���y20�� ,����Jz�KЀ�y�Ҫ�N�ܧ�5��w�=�<�:z
װߌ�k��߬\?�r���&����Ʀ.$��!@S#6W+4KFe��(z�P67M�����ڎ ��R�r�G��(����8����Vw����쉓�f�i�98�-���x�w���F��n`�
VwNH�I��hT���U�oN!2㤏�_J�e[2���v�)Tgc��"g����<�j���S�b��`ܟ�ɓ�d�b(if�(�>k��|������=���U�< �L!p�4cFD>6�p'�nX./��0�IzJ��cy���\'��p&^F��u��M ��F|ʛ��S��������ì��Y�Gեc	54 ���r�`�)uB
���N�a�b����X�Q&��k�=@m�N�Q�Η|D����#ĺ�a�b��t2k�%�o��IBY\�/�3Ȱpk���*'/i�a��q�Q�]�&U���(��I�M�-=�    ���=�A�6�����z�
���eޕ�aimZŹ�T��R�C�w\ԾU� ��y�`�\F����s��eƊ2�欹D�g���Sw�w3���l�@����P�ma
e{�Ǣ�G�;��|m�
���n��N$v"�](@p�����Nl���@o��rwD*`�s�:x�f�9�q޷*PXƞ����D�Jlӱ��BSۚ��d�Kb��_G����t�����pW�����b��nt0;��I�Ы,\<�my�LM>�l"}�>�`�2{c�����ɇڱ׹�Hi��4ٌ�ƙw2\Y�D�(�!T:�Z�"s�T��/6�E[��=��e���)+����)/�$�n�Y"[�����3[}��d=V�4$5�$�,9�S��q�o
_��X�����!������0X�W`�z�嬮 �lǊ|S#����<�p��i�1F��jap�K�0q~�\]+|k)X�Ikr�\���ڶ��4o%k�� �n���֢lJD�u����pԶ��"�-���%�
��5x��[�+6m�A����6��[` �Gar����l1AA��?N�)��v�a�{c �N�}���wG�s�C��n����`ыWn]��q�E��F/]~x�@Mǽ����ήvi�������z�nhu����V�d/j���[�_j�n���W|�U�
��Obm�A\�T��*".(T���2jܛ�q`���z ����nX.�ɛ 6��9l��J�iǢc���F��)��R� �����h!z�*H��L��vH���иl��-w�c[�15vѥ�0>T���5H�l��t��F�^&H�u���qW�DVz]dY4��|��Jၗ8���>�nq�l�/ಎ�S��D3P��|�ݷ�fͫM��D��q��+0�Ď�jƤ��qy�!'7g)��C�o���I�"o~��%�OBƵ�WV3�$~2s+��P����Oڦ%��\��h�O�{(z�P=�Ҝ�c����G��v붋����׮'O&�ť���+��`���.�����'���D��3QwSmIH�v3��<��s�g�uj��>�J�kOJ�GR�a�At��H����l��߱�r9�����`�������*�B��.�D_
�űB��N�7hf�ҡ��L}����߮){��Pq��20AN`ZZN�PY�^r���g7y��y�Mvr�kr(N|s4��Oj�t�Abv��"�%�X��˰@�#�M��������k�_P��������6�=�9�ڴ�~jGQ:��
� Cc~�k����eW�����3<l\�F�Kr�_�'�m\%}6�}�Zyc�Ӈ��nddG!nP~��Uo�?�h �oK.���ұLS�]�i��-����|��O5������3�An|Jq�o�d~G�ڑ��Y��ͬ#�N!��X?�j�A�4G6o��f���e.�W�$:��Ht(�����W6o
�&��Ms���R���k��}����M�:Ǝ�;ɋ�q��'X�����l<]��,j>�H-��Y��|,���T^�e[�����nC��|ӳ��<��N���DUa"���LW�L>����]}v^�G\\�a[yK��f�iO�i�2�:��O�t�pr���J6K@�I=�	6n���T�\��)�p�<8G]Z�1����w�/ПZ�M��y��'�fB����o�#q��d���d̛���J~\�;D����S�f+�ƘQ5�C _���������w���]�������S���
�/��L�u��Â�g�h��b7��/�+��}�0�G��h� ��{)3 H�.]P?�:	��i�Y�=O�a�6��Tje��K§�h?�����>>/�)75������$�Fv-�Q�g�]�]�ge\|�}��:�cٕ&�}\aM�kܹ�Ξ�f�x5�y�a���E�6���q����pjj���I4��x٘�ax�uä�%5֔�+�&�v��Џ��v{[2%��wc����Zh%�v֨S�T Z]������3���e���p,��4��H!)��HK��J����x���࿢�b(@��}�M��|t�yn%*(v���&�2�%�Z<����⌊��{�"�6���_MW2Ble�'�����a[��G#�0Y����#���rA��(�5�|�a..�1~��r;��l�K]S.$7�z���1����n��@�6߅���z��ER�2�R�9�v�ӹw�AA��Lv_�;[��Q4�fz��@<�D��B�����@�[�
D��\�NɨL���f�ϧ�ʾ<�eqIa�s!M}tgS�IT��sbz�.g,w�.��y���f��\�e�e�ߙ@������?�縉4��S7�y��T�xg�F����ߊIK3^8s���,�f�����Qaʚ찁顑ݰ^��ޠ��@>.�D@�S`�'~��D�Q�u'K���2��2�)�ҏ;ϓؼmܦ-��t�3)De�f*���
��tA��>����]���MVKz�E!%���ѷ��ϻ~�bs�|���
�Ź�II��QY�s�ԁ��DO�	�V����D�,6IB4b���̢UU�o	=�PIgKZ)��%��ȇ��&��]{�٬ʇ��+�b��Ԓ�D�xI������Nٖ�]l/f�IK���o�P�%.>����[��i���ݭ�fE'�xiQ�i���� 	=��5��ӥX��#��	q�	�Z�+���iL�'�=��엻:Ö�h�&N����5 D��m�����2��M�U�%�$5Lk���*�|N�Ư)_�ҕV|E_ԙ�]/��H��؋y��W|�ٔ]is�n\£�D����K5�x��3�O^�I�M��*�DnnB{MA�Ȉl�"@�����������A��#�:�	��+�g[�RZl]y"�6}g#E�?���qT	�½�ҫ�4������J���+b�u�J*���7���ȇ�������8�q_�p�����	��K��p��a �o1HUhb1��5&]�n���"��8ܟ����W���� ��f���
U.�J�W1p�H�P�+hC{�u�ϝʱ�>^��W,-��=���6�ǵ%/*
8n����F�i\ʣT� ��m=������l��`���|���>���@����6N��J��	4fʓ��ڛ}�΍�H$�Lz��E�6��(J�J�f���>���Ͼ/��)��/`���y�<��ĥ9$�)�Ɇ��]�1S��9ݗ?]�EU��F>�}BX�<w=�r����Кctj��5����V�-�Y@IVH�9�T�<.�Y��}�8�l�J��1|��?SU�5U�*�Ƿ�@ggʪ,R)�-�/��V]D+�Z�7����xٸ�%��s������Uԓ}ySp�����������k�:>8�\{o��S�׮�]�16;�Eq޳��t�z��f��y@-�0����X�U��2�rŸ�E�ܧNbQ���S�u���m���Φlb�dj�+�*n]1���,h����v���:C�"����n:Sb�|���*�H(�+2��\N}��b��I$?D��"��dT��mȨ�ʘ�ɨ�1%��1�~G�����QK�$�L��%�P=K�dԽ���N}�r�^�����	��@�j, #=��z�a��Mt�kL��V�B� H�dC7ݭ&aä=��}1��R�.T�j9�y���x4M���C������J��b���WS�_y�i��,	u�����o�/SM�-��ʆ�$�!�k�7��D�X+؝hS��ѽ-��Z@e����u,�e׺�Όp�U�7�L1���sf��'��M[ 'J_��
.�/�Y�na	��So\������Q�=uF+K|vd�lƚ�3>��˄���E�3��Scq�8�3�����N��t'x٘�U��	���,\z�.�as
U���ß�A>]\�&9q�-��^.�6�2��P��3v��4�<�_���w;�:��Hb�|m7u��D3�{^u@�d�jNm���:���t����9��U��r��K��&cd�X�2zm�t.@.��k~�g�xs_f��6��؊�D �   T✎%��[3�T%_x=�4���}�H�>�A\�X�.��ҝYG%]>1Xx��_J"2h�Z|ej�*VD_Ug^K�U���8�6W��:$��K�V�s��"o�k�?v.}�VY	�]p4t�2#.��e�����nX.�+�k�ֹ���I:�s~L��9abW�L���y
N�2o���Ӯ�]��<	L����Y~]u�:�vJ��_��?���� �E��     