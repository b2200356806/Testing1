PGDMP                         {            Ingredient_E-Commerce    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    Ingredient_E-Commerce    DATABASE     �   CREATE DATABASE "Ingredient_E-Commerce" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 '   DROP DATABASE "Ingredient_E-Commerce";
                postgres    false            �            1259    16412    address    TABLE     A  CREATE TABLE public.address (
    address_id integer NOT NULL,
    address_name character varying NOT NULL,
    address_city character varying(20) NOT NULL,
    address_district character varying(20) NOT NULL,
    address_street character varying NOT NULL,
    adress_number smallint NOT NULL,
    customer_id integer
);
    DROP TABLE public.address;
       public         heap    postgres    false                       0    16412    address 
   TABLE DATA           �   COPY public.address (address_id, address_name, address_city, address_district, address_street, adress_number, customer_id) FROM stdin;
    public          postgres    false    216   (	       p           2606    16418    address address_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    216            q           2606    16419     address address_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 J   ALTER TABLE ONLY public.address DROP CONSTRAINT address_customer_id_fkey;
       public          postgres    false    216                   x������ � �     