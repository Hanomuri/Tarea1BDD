PGDMP     /    0                |            dbtarea    15.6    15.6 +    <           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            =           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            >           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16388    dbtarea    DATABASE     s   CREATE DATABASE dbtarea WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_GB.UTF-8';
    DROP DATABASE dbtarea;
                postgres    false            �            1259    16540    actor    TABLE     �   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.actor;
       public         heap    postgres    false            �            1259    16539    actor_id_actor_seq    SEQUENCE     �   ALTER TABLE public.actor ALTER COLUMN id_actor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actor_id_actor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    16556    actor_participa_en_pelicula    TABLE     u   CREATE TABLE public.actor_participa_en_pelicula (
    id_actor integer NOT NULL,
    id_pelicula integer NOT NULL
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    postgres    false            �            1259    16534    director    TABLE     �   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.director;
       public         heap    postgres    false            �            1259    16533    director_id_director_seq    SEQUENCE     �   ALTER TABLE public.director ALTER COLUMN id_director ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_director_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16546    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    id_director integer,
    nombre character varying(45) NOT NULL,
    genero character varying(45) NOT NULL,
    duracion integer NOT NULL,
    fecha_publicacion date NOT NULL
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            �            1259    16545    pelicula_id_pelicula_seq    SEQUENCE     �   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelicula_id_pelicula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    16583    premio_mejor_actor    TABLE     |   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    id_actor integer,
    anio integer NOT NULL
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    postgres    false            �            1259    16582     premio_mejor_actor_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_actor_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �            1259    16572    premio_mejor_director    TABLE     �   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    id_director integer,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    postgres    false            �            1259    16571 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_director_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    16594    premio_mejor_pelicula    TABLE     �   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    id_pelicula integer,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    postgres    false            �            1259    16593 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_pelicula_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            0          0    16540    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          postgres    false    217   �5       3          0    16556    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_actor, id_pelicula) FROM stdin;
    public          postgres    false    220   O=       .          0    16534    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          postgres    false    215   �C       2          0    16546    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, id_director, nombre, genero, duracion, fecha_publicacion) FROM stdin;
    public          postgres    false    219   ^K       7          0    16583    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, id_actor, anio) FROM stdin;
    public          postgres    false    224   �a       5          0    16572    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, id_director, anio) FROM stdin;
    public          postgres    false    222   \b       9          0    16594    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, id_pelicula, anio) FROM stdin;
    public          postgres    false    226   $c       @           0    0    actor_id_actor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actor_id_actor_seq', 200, true);
          public          postgres    false    216            A           0    0    director_id_director_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.director_id_director_seq', 200, true);
          public          postgres    false    214            B           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 300, true);
          public          postgres    false    218            C           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 22, true);
          public          postgres    false    223            D           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 32, true);
          public          postgres    false    221            E           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 33, true);
          public          postgres    false    225            �           2606    16560 <   actor_participa_en_pelicula actor_participa_en_pelicula_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_pkey PRIMARY KEY (id_actor, id_pelicula);
 f   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_pkey;
       public            postgres    false    220    220            �           2606    16544    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    217            �           2606    16538    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    215            �           2606    16550    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    219            �           2606    16587 *   premio_mejor_actor premio_mejor_actor_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_pkey PRIMARY KEY (id_premio);
 T   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_pkey;
       public            postgres    false    224            �           2606    16576 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            postgres    false    222            �           2606    16598 0   premio_mejor_pelicula premio_mejor_pelicula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_pkey;
       public            postgres    false    226            �           2606    16561 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          postgres    false    220    217    4238            �           2606    16566 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          postgres    false    219    4240    220            �           2606    16551 "   pelicula pelicula_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 L   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_director_fkey;
       public          postgres    false    4236    215    219            �           2606    16588 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          postgres    false    4238    217    224            �           2606    16577 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          postgres    false    4236    222    215            �           2606    16599 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          postgres    false    226    219    4240            0   �  x�]WIv�8\��	��@r)[$[�(O�7P&��V���e�6u��X�����@��#������Ȋ��l��vL�\⯟v�.���1Yr�^�{g;�]�mן�ɹFlj��]N���Ȍ�}���g���e����d���Ќx�q�7Xf$��e��e?�v�LJ^�/��t��K׮m�扉������ɞ��m�bJp!��{�����ځ�l'��'�M=2*���[*���8��7{v͐�t�)5�����.����d��s;����S�٤vqj��L�\����h��{��t�l� ���\�
-
^�"ף��CO�>�4/��N���n��9/
�av�4��W�%{����}v����U�k|������u��f謟��%&���h�3���tpv���;��[+v�.g��ngOg|m/jT�~�f��L�\�솲շ8���}�.����G�H�?��R\���M7�?g�m*.��#�F'q��~Ǎ������`d����~E�������oX�p��[\�CV��Rj�rv5��{&�E�k�����,�ڎ���B���PB�HLP*P+��n���m�j�a`�5������W%؅�o�S~�xf�O��ɗ�+�s�	��k�p-[?�	dSp]�w������J�elwB��AŞ5Ա���0?Q2ZCT�f	�KG=���86QI����Z��2�B_6lT��:t!�JBbr�`�w�co�8#�>��h��`oй��.jndh�{:�V�0v�|rk�)��D$QD�Ƭ|�k0bH�	�- �LŞ�D聩cp�6$��C�Iq��#�R�,,2�/%j����Wso��	�Kž��0��a�	�*�e����B�$�����dT��d�}�1���C�A��r��+�F�r^��g��U�n�c�L�M�M����{+��4bL�R�z����J����2Tn 'W��ng�������pY���l�g���s<���7���2���R],2G���:�7�ԧ�cx��7g�lO�5�x8ZwJ"�xm���@��(�dW�G6
}[�ҝo/��c�h���"�w�=�c�)I�޺֓E�P�0�}�#"#D�R�ԖkC
���F�/v8`���{G\���ٵT���I��*vK�z���B�Z�$q�([`�����;��"�X�X�/���Ni�K\���6zhDR�  [:��F� (�?J�*l�?����J����4�@���ޯ�q�+�a���(]�iS�8:�L@�-�L� n��!l@R�aPrp���L� b(��;�e64V,��h���?=�����xC��/Ʃ9y)X��I�V2�x��Oo�#Z�����E�'���#bR/�,{��d	8���q�hͮ�5E��/z�MA�^��ay���;���R&0^�x��A���(��s3�g�b .,@�7��6I\8�U�o�> .,?6-|��U�ɐF{�)`�F�~X������ /��1-2"܀�t1:4?x��b��v`c�������r ����"?@[�;���l�Dm_u� W.�t��S�\ ��a�C\��W�N$�����Z��0)�`i|^�%.L�h�W[8R�m��	����!�ebx�����e�?�x� ie�R�#�T��h�@Ù��y�7�� t(�	>�A{	t�\��f�SE�#�x���"���/"��!D�?����(��G&����2XC�@�o�r�����`	w���|�S���j�)��e����ÅpK��8��ËN,ІC�;��-X��f�	O��M�]���[��D�Jrð�8��^�²�g�hcV��Q�7��߅�a_-��!�����lo�~      3   Z  x�=�˕�6C�V19"��%��\�MV�'[ '�������^����|����2z[����R�x�-bqV�3���x�m*VܦW���[�ݥ�W���qt^����u����v~W_%a���ig|��� k�A�צC�>�f����5�K;�~G{s��S�xm)�j��C/����P�$��t�Oζ��0뛊2�Ն� ��#B��n���n�o�jG��trW�ٽ�sS�d�$�H#
������Q�8
pH"�iy���VW��2��A]��>Z�A�W;
���XRt���

/+��.jEU�w��PR��m��:k�U�賝��*3W&�,lo��\��r9tga�mS�C�OUT���Q���rW�0���H@��1�DE;U��Z��lb$��6�永.�H��p`�9:g�.��|z�:�jΥ8�PM'�Z �ڛ��pg�^(��G��"�kK5X��GPyh�˧�:<+��/��^�׹����~e�Lw�J�-H�G���^�'�Ǡ�\�;�
B�H,9Pa�u����M���������Ł}*Ⱥu�~��*�L��E((�cC]����F�5��
49��UHJ����*���тR@Oa��n�X	+�Ol�i��T��N7�E��U���BV�P_�b��E-���g-�U��K
Y8����0J�8��b��#/a��6�g�ucXI/�hK��_ŗ��8�c���՞Y�$VPfY� �1�&Q�l1��NY�Y6
x!4זg���}�u��Tڙ�i3P�������E���.Ұ�a�Oz �����$O�������}�Jһdm�Fg)���l"�q�t|%ԉtT�J1�N>�dWx^Z *y*;����խ���)�/�kP�[�.�r`K�t���(�J�<��U�jo����ɁF*�Õ��\n�4�Y�k�*�q踠�nt��rC����3�{1-m�Z�<_\��8+�$��Pg�6��5c����eod��m�c����a6'���LM4�(�J�pV��x�"o��!��X��������T����e))����� �v���L��툊��ƇqBL�X�-�� �`#�L����m��"�s�DtԵz�e��]R5t[����J��7U�h��k�;N:�k�PbMm���?�0����C��	F���r$)�Y���[�Ǡ�b�����åf��0�����duc�D%�c�j������E���� R�|U�#,hY�J�/i,��ԟ��&�f�i�c_�r�b��6��%�lw�ͼQ#�(W�������gH8�kPi�����J`�������(@��Q��7C��&���>��ѓ���# ñ GY����ɔ整.�.�С�����@���*��߸|�?�昿���R:e���n��v���P�@E��Z�J�,^�V@9mw����,l`�Ϻ�΁ �������&���j�9ãt_
�Ʉ�s�_�������և��S�-ǫȅ~k�Q/���<�T��aZ�VSQ��(�ŵ+qlb�?�7�+������Y:���F���2�($�~��h��[��
FxƚN������&͵kL�������������$�(�      .   �  x�eW�v�:|���_0��E��-�@d͋�ݚ��s�v�!3�2?6�u��y
h��o��ʂ}^�prCq3ݻ����{c�L��N�vvf��5{ݻǱ��z�T�v����q8��i�[�i:�����i|bZs� n8-s���e�J��;fڍŹY#�fW�h��b�Ͽ+y�nݓ},>��ź�0YrQ���s��x=���Ӓ�^ �m�-.W��L��azӏ��ɖ��}4'st��j���4�gS|�/���Z�E�.&�$yf^��֗q��5
O�����p0�!ͮ̀�;��Of@e����!�����d&�Uw�*���w��5��:� F�.�����|DqG��ռ��M�V}1��-n6�f���)^�Ӟ��s]�4f��t&�|o]�[�J�s7>�ap����f?�ɡM���~�uiL(�.���/.�o<:S��<9;���b�b�u��}�^�ig*�nا�9[X��[�`�3`b4�Z���TP%�Pt� �W�	�D�x������v��F(�S�7%{�\��y#R�?ӯ�gBDS��w������UsoY+y��[��5m
��d7��0s��_��a2o�2��= =�F���z��f���t��w@ڌM(>�jfM��2� ����:�����ֻiE*���y���5n6q�	�Ȫm�,?M'���he��e@�Z�V���/�6Hk5�`�C�Ajo����]�%;�r�X�iLl���}3þ�5����$���|�*�,Y����ғ�Lo��X�3�<Ӗ�V�z��[�s���ݍ���5{�j�*Yb+����+޺�9��H�c�v��\�{*M��bƽ�JD�[����PH��B��9�����[cRq�$��-V��F�y9ңx�d`�ISx����������*�:��lo�0�?"�5-��RMaZ��`�e,-vJW�[�7ί�݁uqX�aM�	�e�n�׃�M�u���	�3*�2��@m4����>�m�bd�։�������)��nxW坈<Dtu��K�5)v�����Ğu20뺺HF%�ɤ��v���DϛEU��""�T���%{}t?7J�T8MHK�Q˲Z���8�4DYg�mC�MF��Ex�(ی��PW�$�C��ͺ��>`D��-��_68�r�SK)UȽ�ԕ{B�!�����n�9��Ngu��:X��kt��J#���C�W )�����Px
?8o �w�'z�+����{�ց��$�)zu>(�����J��O@��._���}	��7���	���=P)<������%#C#�H/gՔ���� l/�����0��t^?p�����{��3|�� q���S��b�MgUtu�`y�:�/�����5]m�����*�:R�Kj��0�wUF��i	.� �1�4*�7�&�#�@#`��\����,���A����'����n9�a��
&'� &`bG���La����/��tLj
�r�4��('�X&�A<4�J%L ���7<AvWD�V��-B�p�!!8�xxv�Kj"`^�|
�0q�Qmɺ�#�M�V�dh ���>�3!`V�`��dU*s�!lB�ǍP�p�+���������7���{$Wqz�2�$
�<�E���o�2����0��і�6x�JC��	؆�W�r�@�~����a��˖�`���H?1
��7P+m��	��X�����d�~��B�FJ,}�%ˈi�;��;�Q�O�ɃE�DX�ЩMK&"	�� -<���N��W��.B�F��t���r�qbB�`#cR��jR�:*z�c���`�=0L�Xteb�0�0�����G�]�'�����d}�����q�L�ϣH�hj��}!)�"�d�@�aE�ic�h���W�&�^5A���p������      2      x��[���8��ɯ��5 �msH5��
3��Ŷ���Q6���
-��6j�����$�J���D p�?�ܩl�e|���4���������v=5���a_�·����Fi�讳��{5�Սz\<��i<�����}�������?�e�.�R�r�^�~U�5��-��7/��0�-q���[��e<���ǽ�kg`��o�뛿�^n���*�\>��6��������k׿*�Z����2~���/���L��`���t]�#���c�?k��鴦k]c���1���|�������zx�'Xx��yU��j��&t�ݏ��z��ߑw�������O�3^b�ri�ڹ64�ý߮��?`��y��O��L��j1Ѕv \O+�n�i���x�o��>5��;��}��fp�2}}���V�����75h +পU�/Z�1ݯ���z9��h���mm)Z��k�`[����2>�Mx��X�.��*�%ș���t:E?�-`��X���`�`�U;�f�L��[6��
�~=��kM ��䁮�U�ћ^����a.?�K�-:����G|U}�m�.EG�^��cc-~�խ�U���u�x\��t��Ĩ,��������8��<����ۈ������(�)����7�WC3�ں�t��"Ba3OX�j��x\t�����<�<�u��� 6S�PQ=Y���_�	H��2]�����c�;��
w�k5
���/_�9��Sf�І��I5xM�#�KH�0�y�@�? �:��c�������`����
}Z[�P��='$�_π��::/� @��ш&��QLq�����cuS�{��B��i��&�A���&9��2qգ�;�+�P�W�>�c',���!�*�j��Օp�?N�@��8gh�oM��@���G�h>�qh��0�o�4����O1<��%�iD�7UCk��-�OL/W�ִ�a�����0���v-��K[ߝ��5�\�D�2��
�< xQ���9�e[p���ī2�χr���M�`=�&[ߦ���\�����)`x�x����`E��<��%t����	;���S��wG�{��/�0�#A�k�++rH���t�Yvy�M�/�h􄟞,'z�,�;��#�ļ�� xzY��]'�B���t�����V�,5�IQ��6�Ϳ���1.G<s���\�0G�Z�~��(�q�%eA���m��D�s���3����m^�	�אoğ�!m���z��Ʋ<n%�+me�yհ���M|����l���	/���A<-���v�ҲB�֘^w ���_� X��:�$D��B�9�#��[<��;�ERw��Ⴋ�������&���k	���~LLYS9熟`�:G�$޸��hc�˜��Oɏ�^�-`(S�uο�9����i���"R�V�v~=��w�=��6G �w�_^�).5�P�Z�WG�v�>�:}��瘚�i�ܽ�!:�!4�kh-��I>�u"1�z%.���ozU0���Xu􄶽����I�+C�=�lC������\�J�qtKEED���U��s���P���\5�܁�&��v��h�L��[#A$Q.��r=|��dӰ� h�AxP;Є�`��u2�I

�3�48��� ��?��d�o�{d�D��s��%���"�s<,3x̼�b��&D0ϫ#����4e��N6�R٭��<q���J �.<G@���["W/`I��,+ASV�E���$�b���������l��(!h�ǜc�e�B�Z�"l�����ەH��~���#���Z�EP�w�Z��+Θ���L�@ᅁ8k ��{���ð������Z����a�_�L�G�r2����_���|][��^h{��
�w�"��	�Uy��S ���q�J���<v�(ɩ��p,tӜ߸
���8t�����Ю�N�����r�ƷE��:���@��>A|9�o��q�C�Q����\/ǰ�P;D���gF��1{��g��6\��N�{.��X7E[x�$�q8�`v�k��mFW��0�*[��%����@V�Z��r��_/S�t�5�ы�J�����~<����on%d�:�-���J;�{�IPg��4(��L�p�� ݷ�KzU�� :�&�I1� ��W`Ea�1N��\�)!�m1�������j0"�)��l�l��N1���mx18z���p5"h&��a?���R�=a^�H��m;��n���Z�"vA�_sh����������r�f[;A�wFK�aw/D���=�,K���c;�.��	s�>��(�|.0�EJ��B$J�1�\�m��� �?�ػs�HOt��y.Xo�g�1�4�Y�nO�>f
��=5Q%Th;G�a�Y���Ӂ�H�'���-��'��@��'*�>���$��F��o�q��Tc��重_Ĭ Q�BM�ԡ���$�'��U|G��PT��Q��ܻ�ktG����gD|U �8κY}ܴEn�Fp(;))iS�H�� �ׁ��C�J&���X/0Ş��rĚ+�1��\�v��9 �_a���
&+�=g ���%n�X�~D��Y5�k�S�a��B�R���"K˨h�tܡB��"p�N���Z�����0xk]%"=)�߰��5��Aխ����mYG810)��v��>(f����K���|?�R���1��p���},�(�@���A�#+���܊�L:���b��R4]���:V�`��;�t�"�`�1��ʛ�>1%�;���u
8?��1�)�>'�:4Z�!�h�$��F���f׼!ǫ���\���9�
�t�Jj� 1 ���eۭ��"u*��ŝ"Բk	=SȜ����!ʃ�4� T�ѕE{�w�E���k��s���?��4�fSi�)Lz0���UV��?k	F��6 c�3�n�m��p���ި_����7�| o+��͟D�Mp����~^Q������"��WJ�F}ֈCP�����J	,�崙Ro��.?�b���Z�}f)��l!l�j�7"��r�Ή2���'�h�P�P�h��mʁ�Ek���Ѳda����ۢhmm���ʊ���{Bx��QJ���p�9P_�9��6�럜����t=���>�G�7#p�m'�I�1B��w6	?6)�q�l��S���@��`�@�	�r�����3����^�Ǻ�Hd{xO(mr�Ӛ&�K�?��Bۀ�-��W���J�	JT:��H;E���^+`��T�Ҹ?�,�l���� 6yZ�i��8��6�e镒��Kw���6��Z�K]	q(�u��4����n8� |��8�����׫�w&)T�I-�(�[o�R���կ���x��l/,��)U.�ҙc��=rt���o^�b�b#;F���'i���Js�&�1�m��4 }l#j�����y$���o�'�޴���M��	-G�Vd�.���s_�`܆�!�R����F�:�Gw�D<U�X���aFZp;j>���Pe\�~=�z�� �Z���x��pBbn�9LT�P͹��V��������7��
chY��9_���m���Tt�S�}I��2û�>�佲^����ų�Ʈ��|�4KB��OZ��|!׻}l��8F�T�7�l'����(�JYf�g�Aú̏��r�PLB,H�(jw{-�4��Ɏ�,��<ɇ-�i���R��"������zU��*
@�t<�
���)��ߕ���/�9�ijwɢ"*��A�H#�i�ֽ��=��Tl�s�BJw5M��J4�XO��˰�V� �t����nCl�n�_�4��0�B`�񪣙�O.��:D��(?�Pk��G����A�ֺO��A�\�)J�A¢�}��u^�yE�����| fDڡw󬫜�Ʉ�@��)��O���9)��ld� �����)�sb��e��%N��¢�l�^�tn�#pR�\�h�l�+���b�������C�D�8v�iZ����)�&��h4r)������G��r��-�.�� ��o!)�Bn�ZX��&ΰ�t S  �)Xi���F�;<u�4PQP��U)<�m�ӯ˭-�S���h�}��m�DA2������ǝ�m���[<(����8 �ŹY(Jc�PÜ����~��c��4����s��uƖ�;�J[h!Z,}m�U��1ʏ�{�4#��82�MI#}��j��yn��)���`)J��QJ�:o�7n��RZې����j��.	�@������7Wu��ӥ*�Ȣ,�[�+�H_�z.k�vZ�ӣ���UE̞��i��]1���M[���õ���1���z�Q��Zw9��9̍X����C�"b�a/tvTRxz�n�$���O3n��O��ﴷxآ
d��F5�q�UW�����m=ߘG�v���Lo���pV�H����Z������T>�CUVz��B �N�m-�!��ʩ̠$S�:>u���ҨD!�jY7��8&�+\��o�i	��[��	�^j�I�nn_@
�X��O�k�!0241Ի7���P�t��02�qb�����z����#Ч4����S��
��Kc���=��dQ���4���� `@��m.���x��"^��ю!~����6�Rw)�A4��C-eR�YQ�^i�H�i�(#�IF�V���ƙM�^��>�`�N�`s+�n'�i�'�i�[O�D=l��'.�z��QZ�{IF[������}�p:���A��#ƴ��+�6�����bF���e�_q��)��6���$c�] k�$B���!6�֊S1��Snc|�����֒W���=~<�	����J�����1�@_1Z%<c#��i���iG��cڽ�q����	q��yg��}��;�+N�*��<j����q��7��۶�����!�|ð�2��d�����O���/���u�D��$���=o�o7���	���E|���L$R����!��vo��,�n%��,�j�bK}=7�T�9Z/���Ӎ{Z��$G!�×pSԷ�{�EY��N���$Q��Z���*fK�0e�;�(���\�2K1A�K�X��<��єc��oʂ�=�Li�c_%���� f�Aq	�h�g*S��v2�&M1��q�/�8�x��.԰ݶQr*>&+�@\w*3�c.<7��q�t +��}������� �ٓ���?E����>]�t�*��P�j�B`�����ǈyE�M�>�Q��x[S�R��ә�I�"��X.���B��x������M{�2"ȓ]�����O�L-M�#�
ʛm�������k���;.��I�.�����i����V�J�#뀠�o"s��j?)�%�T�9׾���<�i�'ህ(����d�\q�uT�!+���}��ٝ-�D�dJ㠸j_1��q�B/�p��<#V���h��?�42N�I��Q��h�czd�	!�ί��aF�\~�������P���EOC�Wo4󥇚b�kʏ?I�
��i@`�o���i-5h����6ty���SO� ��4ퟁV�8q�c� 1@���#����#���L�\���:��K�,�F)�����b�y'�o*��˩���u/4�Fy?����l�2vW��Vڄ%o��u4���!�95$���Kn��@�p�!U[�gY39-T���-�%����m���.      7   �   x�-��q 1CϨ���ǽ��:"�{���x���{#l���c�BL<�����ʅD{Y�-Ri��ZV���y�Ԗ����w�B��\�س�<��r�)Z���r�-���g�(�\��dy8�-�k��Q��g�� �s&f      5   �   x�-P� z�az�h4�t�9J�O	i�c>��uj�8��!��NU@�ܭ-��#2۸K�;Ĭ�`	�r��f��	�-��M^��Bi�)AE�.Q��V4<`��(PS��4y�^*�㹸��nB��lɆ�Ug愔=K��"|Y�@��Fxw�ö9��Vd��/K>�V�!J��uh�[;� ?&h9�      9   �   x�-P�� �&üT�]��/���k�11����ځ��X]�Tl����p���$g��Wܬ�%m�
��F|1��j�t��H/����lynؑȏ��dSb�0F��)�8��}����U�V��j$���Gj��hNGʏ�o������)>���Ι�X���b1����EnJ\�t�n��*=�Y=? D1;�     