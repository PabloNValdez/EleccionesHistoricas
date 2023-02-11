PGDMP     "    8        	        {            do17_22 %   10.22 (Ubuntu 10.22-0ubuntu0.18.04.1)    15.1     �           0    0    ENCODING    ENCODING         SET client_encoding = 'LATIN1';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    89920    do17_22    DATABASE     s   CREATE DATABASE do17_22 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es_ES.UTF-8';
    DROP DATABASE do17_22;
                postgres    false            �            1259    90024    mesas    TABLE     4  CREATE TABLE public.mesas (
    id integer NOT NULL,
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
   elecciones    false    217            �            1259    90267    mesas_id_seq    SEQUENCE     u   CREATE SEQUENCE public.mesas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.mesas_id_seq;
       public       
   elecciones    false    217            �           0    0    mesas_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.mesas_id_seq OWNED BY public.mesas.id;
          public       
   elecciones    false    248                       2604    90547    mesas id    DEFAULT     d   ALTER TABLE ONLY public.mesas ALTER COLUMN id SET DEFAULT nextval('public.mesas_id_seq'::regclass);
 7   ALTER TABLE public.mesas ALTER COLUMN id DROP DEFAULT;
       public       
   elecciones    false    248    217            �          0    90024    mesas 
   TABLE DATA             COPY public.mesas (id, numero, sexo, total_electores, cantidad_votantes, dni_presidente, dni_suplente, circuito_id, municipio_id, departamento_id, esta_cargada, esta_incorporada, escuela_id, cantidad_sobres, asignacion1, asignacion2, carga1, carga2, ruta_imagen, cantidad_votantes2, cantidad_sobres2, cantidad_votantes3, cantidad_sobres3, fh_ruta, h_asig1, h_asig2, bue) FROM stdin;
    public       
   elecciones    false    217   �       �           0    0    mesas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.mesas_id_seq', 78, true);
          public       
   elecciones    false    248            8           2606    90610    mesas mesas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.mesas
    ADD CONSTRAINT mesas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.mesas DROP CONSTRAINT mesas_pkey;
       public         
   elecciones    false    217            /           1259    90685    index_esta_cargada    INDEX     L   CREATE INDEX index_esta_cargada ON public.mesas USING btree (esta_cargada);
 &   DROP INDEX public.index_esta_cargada;
       public         
   elecciones    false    217            0           1259    90686    index_esta_incorporada    INDEX     T   CREATE INDEX index_esta_incorporada ON public.mesas USING btree (esta_incorporada);
 *   DROP INDEX public.index_esta_incorporada;
       public         
   elecciones    false    217            1           1259    90687    index_mesas_on_circuito_id    INDEX     S   CREATE INDEX index_mesas_on_circuito_id ON public.mesas USING btree (circuito_id);
 .   DROP INDEX public.index_mesas_on_circuito_id;
       public         
   elecciones    false    217            2           1259    90688 ?   index_mesas_on_circuito_id_and_municipio_id_and_departamento_id    INDEX     �   CREATE INDEX index_mesas_on_circuito_id_and_municipio_id_and_departamento_id ON public.mesas USING btree (circuito_id, municipio_id, departamento_id);
 S   DROP INDEX public.index_mesas_on_circuito_id_and_municipio_id_and_departamento_id;
       public         
   elecciones    false    217    217    217            3           1259    90689    index_mesas_on_departamento_id    INDEX     [   CREATE INDEX index_mesas_on_departamento_id ON public.mesas USING btree (departamento_id);
 2   DROP INDEX public.index_mesas_on_departamento_id;
       public         
   elecciones    false    217            4           1259    90690    index_mesas_on_id    INDEX     A   CREATE INDEX index_mesas_on_id ON public.mesas USING btree (id);
 %   DROP INDEX public.index_mesas_on_id;
       public         
   elecciones    false    217            5           1259    90691    index_mesas_on_municipio_id    INDEX     U   CREATE INDEX index_mesas_on_municipio_id ON public.mesas USING btree (municipio_id);
 /   DROP INDEX public.index_mesas_on_municipio_id;
       public         
   elecciones    false    217            6           1259    90692    index_mesas_on_numero    INDEX     I   CREATE INDEX index_mesas_on_numero ON public.mesas USING btree (numero);
 )   DROP INDEX public.index_mesas_on_numero;
       public         
   elecciones    false    217            9           2620    90727 "   mesas incorporar_mesas_automatic13    TRIGGER     �   CREATE TRIGGER incorporar_mesas_automatic13 BEFORE UPDATE ON public.mesas FOR EACH ROW EXECUTE PROCEDURE public.incorporar_mesa13();
 ;   DROP TRIGGER incorporar_mesas_automatic13 ON public.mesas;
       public       
   elecciones    false    217            �   ]	  x��ZK�$7\�;Ŝ�[�O]`�Yf9o���6`�à��)��,��,��άMR�`�B|���?B�_��я�Q�o���O�p��X�������?��?���o���?���
��w߃���>sx�G�o�KO�e,>�#(_�P��*R$�0PE�s|�ΰ"�s6`ѻ,��?�ҫW�^ǒ,@	ͽ`UV�8�JM�jn�����
�I�
�靈��t�aU���2����BLVFfԄ�}��1�)b�����(3�ܓ>^�V�_w|t�}4a!n��eXx�T�����`
V�zs�
�U�"v;[�{��Yľ�V�;�`@P���=z˟�ꦷ����U�%[�G�Q��B�`ux�`yJ�O�a��mT��Zxs�=p]Pn�f�,Ě؛������l�fuV��&W���e���C%P����L�dNX�&S�o�4LXe]X�6�ӭd�1Q��l��؇�5��#�mX9OX}],W5,�Y�:渳�=�ߚ�)��������=ȆO�d#5<]j{�*��-�۽UۀUҺX�I	�w�e5�":ȇ��J����0[g�uI���
A&���(��Z�EZ�DEa�����Yn]���lnW%��Si@	s;��xt������xe	��>�bn�0�ڥ�~�Y~�ZG���1�1m���Z�%`�y��{Q9n��{+j�8Y�?sбP8[`�����'OZKQA~:�Cù���㰜��:+G�u��W��%OÕ�Fl=��	�9S��{%h�&�N�V�p��3�\Q>�bz��H�>�x���(�\>l|̫�ܦ�܎�'c5�.��^��z)�(Y�5)x[�E����(�YCz`Y+���Y0NBue�aD��n��h�y'�"��R9�y'E��0q�2�]ksD״��J�����պ����t�/ӡ�X��c���ʍH�AC{1,�#|?g�Rl����l���Uч!b͈1ia
�=;8�m�؃^�vHZ����� ��!Wz��J��T�^���J�SL���r�6�rT0l+��m�na�C�v5���� ������ٌ;u7����)�'tV���C�zG��p��߉Rz�V�2�	�P��\dXt*�8�� MCu�� �m�0�{���R�a����d���&iz?���F�~0��`T0i��i�]M.��X�1�Z��oVbG���%u���4���8R�.�<E���Y����8i��Dz"��6|Hi�ܜ��8�-�p.��%�a�6���p.��^Ť7*��TL��X�A�j;7?�]���$������-!�1S�c7f?'	x��הZ�q0s|kn���%7���3��0u;&7ص�lm4_���;a�u����`R��5�J��V�q�:l�o����[��Ұ��q��	h�zj��i��m������ETf22�4Oŀ�=�x: �B���0HӺdյQ�@Is�`GG?�@����+^P�G��Czs��;�S�DTf_� ©a@�Y����>{�/y��7y���K�����M��D~Z6�rٞˇ��%˧���)���C���{�"�阧D���Kc��>!:�>[y�-z��l��Wͮ�V9����
��~c5�7VC��j�����1$Ewj>�����Uz��;�,�;Y�)�����I���w�:��^��Z>�>*򒂞�G˓h�����e�Q��u�(���ZD{��93&/�(6h�����.�6�:H jc�w�)����Nْ.0E7�����pn@�޲��@XB�0� �e��~L�L�Q�|�u���wI�� 獃\�L����X���1�*��Vu1! ������k	xQ]ϡI^���L�0Q�a��8�'����̚��ܰ����/�*�����u���z��tƸz�+��%��i�r���Dp��7���.��H��f/�7G75�Tºd�G��͈U\�@���*L�.7^�a�wB}�.���&<����	hCq?�Q����^�G�kǑb��kH�ɜI�y��R�61�^��(�>b2S�������^>u��R�`����u��eyS���h�1> �)��I�t�R��s�<�w�S
�.ϯo{�V�齐��\�NX��2�_�9�!3ꊰͯU���r���l��qa�r�w�U�2b��_o�V�������[W�P��o]�r�	]p�1,��pѝ��������� 
�ي�p�,8i�`~u.>�W�,X�7�����^BŘ3f�ˡ���,��� aEeY�3���/Za�`vN�{�5���ri�;BĆe���7񚴬"�ĸ�P��]O_x�=|� \tq������y6�.	+�+���v�������}}}��fМ     