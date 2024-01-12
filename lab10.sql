PGDMP     '    8                 |         
   Isaksystem    15.3    15.3 "               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    19674 
   Isaksystem    DATABASE     �   CREATE DATABASE "Isaksystem" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Isaksystem";
                postgres    false            �            1259    19715    Installations    TABLE     �  CREATE TABLE public."Installations" (
    id integer NOT NULL,
    operation_type character varying(255) NOT NULL,
    system_type character varying(255) NOT NULL,
    date_time timestamp with time zone NOT NULL,
    address character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "PersonId" integer
);
 #   DROP TABLE public."Installations";
       public         heap    postgres    false            �            1259    19714    Installations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Installations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Installations_id_seq";
       public          postgres    false    219                       0    0    Installations_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Installations_id_seq" OWNED BY public."Installations".id;
          public          postgres    false    218            �            1259    19706    People    TABLE     ]  CREATE TABLE public."People" (
    id integer NOT NULL,
    years_of_experience integer NOT NULL,
    full_name character varying(255) NOT NULL,
    contact_information character varying(255) NOT NULL,
    photo character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."People";
       public         heap    postgres    false            �            1259    19705    People_id_seq    SEQUENCE     �   CREATE SEQUENCE public."People_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."People_id_seq";
       public          postgres    false    217                        0    0    People_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."People_id_seq" OWNED BY public."People".id;
          public          postgres    false    216            �            1259    19676    Reviews    TABLE     �   CREATE TABLE public."Reviews" (
    id integer NOT NULL,
    text character varying(255) NOT NULL,
    rating integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Reviews";
       public         heap    postgres    false            �            1259    19675    Reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Reviews_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Reviews_id_seq";
       public          postgres    false    215            !           0    0    Reviews_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Reviews_id_seq" OWNED BY public."Reviews".id;
          public          postgres    false    214            �            1259    19729    Users    TABLE     U  CREATE TABLE public."Users" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    bio text,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    location character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    19728    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          postgres    false    221            "           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          postgres    false    220            v           2604    19718    Installations id    DEFAULT     x   ALTER TABLE ONLY public."Installations" ALTER COLUMN id SET DEFAULT nextval('public."Installations_id_seq"'::regclass);
 A   ALTER TABLE public."Installations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            u           2604    19709 	   People id    DEFAULT     j   ALTER TABLE ONLY public."People" ALTER COLUMN id SET DEFAULT nextval('public."People_id_seq"'::regclass);
 :   ALTER TABLE public."People" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            t           2604    19679 
   Reviews id    DEFAULT     l   ALTER TABLE ONLY public."Reviews" ALTER COLUMN id SET DEFAULT nextval('public."Reviews_id_seq"'::regclass);
 ;   ALTER TABLE public."Reviews" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            w           2604    19732    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221                      0    19715    Installations 
   TABLE DATA           �   COPY public."Installations" (id, operation_type, system_type, date_time, address, "createdAt", "updatedAt", "PersonId") FROM stdin;
    public          postgres    false    219   �'                 0    19706    People 
   TABLE DATA           |   COPY public."People" (id, years_of_experience, full_name, contact_information, photo, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   �)                 0    19676    Reviews 
   TABLE DATA           O   COPY public."Reviews" (id, text, rating, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   %,                 0    19729    Users 
   TABLE DATA           e   COPY public."Users" (id, name, bio, email, password, location, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   �-       #           0    0    Installations_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Installations_id_seq"', 34, true);
          public          postgres    false    218            $           0    0    People_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."People_id_seq"', 27, true);
          public          postgres    false    216            %           0    0    Reviews_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Reviews_id_seq"', 15, true);
          public          postgres    false    214            &           0    0    Users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Users_id_seq"', 2, true);
          public          postgres    false    220            }           2606    19722     Installations Installations_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Installations"
    ADD CONSTRAINT "Installations_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Installations" DROP CONSTRAINT "Installations_pkey";
       public            postgres    false    219            {           2606    19713    People People_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."People"
    ADD CONSTRAINT "People_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."People" DROP CONSTRAINT "People_pkey";
       public            postgres    false    217            y           2606    19681    Reviews Reviews_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Reviews"
    ADD CONSTRAINT "Reviews_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Reviews" DROP CONSTRAINT "Reviews_pkey";
       public            postgres    false    215                       2606    19738    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public            postgres    false    221            �           2606    19736    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    221            �           2606    19723 )   Installations Installations_PersonId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Installations"
    ADD CONSTRAINT "Installations_PersonId_fkey" FOREIGN KEY ("PersonId") REFERENCES public."People"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public."Installations" DROP CONSTRAINT "Installations_PersonId_fkey";
       public          postgres    false    217    219    3195               %  x����n1���������'�HA��%
�Z�
RH�� 	��D���I`���W�{7�U���k�=3���Xy��͈r����iA�G*��V�s�4âę��hi޹�������q��9�ZJ�i���PW2d*�=xfLK�ө�7RXW�9�|��w
��%�0#A�4��̀�pa@S�6R	���H�a��*i����FŴG��h������]����%���kD����he��^�ʺ/�X	-�
�0�'pt���[E���y�L�D5/a���I�����=8�z�G
q��u����r�P����Z�5�'�����,�E����(s�
[�[�V���R��^��Q�9t-[�ʦP	Wj���L����5j�o.�-C��)gH�=0Cm���+[N�#М~�v����
8_�!\�ȃ�C��1S���+���7
�m���J�N໬��Q�&�1z��Q7;~�{^C6Ю\&��y�,��
4�9����e�{�;�N��K?��)fz��{���P����S���&�5S�=�c h�ݰ         @  x�ݔ�n�0�מ�Ⱦr|��nx��I<i��8�=�
ذaQ����T�å}��̴ӠJlf�+�����?6���2\��p.��M2Ά��8bRp.� �2p�}�rz�{�v����ʤ��Q�еq������i���g](�b	I>����*�?����	���z�z�r'�n���cɌF�d/y��t��ƹ�_�e7��BM1��)����2S�+��Լ�E!��B�������u�
���m�we�����y�2KW�����^;ԝZo���	��FX���rJ��+b�4��y������D�A§��{��U}���8;7C�.�."�:��4;�X���Pt?Q{*�S_���:�C'q?U�D�*���)�"Ϩ���d��� AxU�÷����p=�3J����q��)%9]���p�,�;X�֛���CQF8C��ik������sh��0�iW1�f���5
~��ч���ή�m�s�j{��_ ʔ��fn۴�/�=�α��A����+!N��p�t��˪mf��+;o�&rF޺�����rx���k�4�L& ��         �  x��SKR�@]���Tf��,n��\ ��)��8�n�@���p���z�hY!������U��	�T�m)婦��<����#����iC鉦����9�	֜�ͷLՑ:S.p�i`O��6��0��sa��;��O[N�/xF�=Dx�+�����wT���%�PjTt�P��U(��&�|�)�<e�%�"��%����-Ȗ0�.E�Ǥ.�QK��� ���k+ʵT�M�yf5�w��tKX�6�^O������'[��5|0�����ѡ�5F�}�<Q5����P#���H{ ����̱��܉�R��X����,[�T�g�u,�8���ah>8��/���S�O���s������Eo:tM���b�a`��#ܭS�A�����}�8�m�A�t�_�����t®$;7�V�%�(         �   x�}�=
�0�g��C���4�ԃd��B38���U(dh�C�'�>��I�u8Fj�!��UO��`�{�22�QP �N��(�G����B��{�eoD���uN�1{����|1�I���so�t;�     