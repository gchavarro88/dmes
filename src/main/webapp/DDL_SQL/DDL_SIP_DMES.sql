PGDMP     5    .                t            DMES    9.3.10    9.3.10 .   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    17263    DMES    DATABASE     x   CREATE DATABASE "DMES" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_CO.UTF-8' LC_CTYPE = 'es_CO.UTF-8';
    DROP DATABASE "DMES";
          	   sipPrueba    false                        2615    305317    dmes    SCHEMA        CREATE SCHEMA dmes;
    DROP SCHEMA dmes;
          	   sipPrueba    false            R           3079    11829    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    338            P           1259    313508    ot_log_production    TABLE     �   CREATE TABLE ot_log_production (
    id_log numeric(18,0) NOT NULL,
    id_process_product numeric(18,0) NOT NULL,
    id_order numeric(18,0) NOT NULL,
    creation_date timestamp without time zone NOT NULL,
    id_machine numeric(18,0)
);
 #   DROP TABLE dmes.ot_log_production;
       dmes      	   sipPrueba    false    6            �            1259    305318    ot_maintenance    TABLE     �  CREATE TABLE ot_maintenance (
    id_maintenance numeric(18,0) NOT NULL,
    id_machine_part numeric(18,0) NOT NULL,
    id_priority numeric(18,0) NOT NULL,
    description character varying(400),
    id_maintenance_clasification numeric(18,0) NOT NULL,
    id_maintenance_state numeric(18,0) NOT NULL,
    id_workforce numeric(18,0) NOT NULL,
    duration numeric(18,0) NOT NULL,
    description_damage character varying(400),
    id_maintenance_damage numeric(18,0) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    response_date timestamp with time zone,
    end_date timestamp with time zone,
    id_maintenance_schedule character varying(400)
);
     DROP TABLE dmes.ot_maintenance;
       dmes      	   sipPrueba    false    6            �            1259    305324    ot_maintenance_corrective    TABLE       CREATE TABLE ot_maintenance_corrective (
    id_maintenance_corrective numeric(18,0) NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(400),
    id_maintenance numeric(18,0) NOT NULL,
    duration character varying(100)
);
 +   DROP TABLE dmes.ot_maintenance_corrective;
       dmes      	   sipPrueba    false    6            �            1259    305330    ot_maintenance_preventive    TABLE     Y  CREATE TABLE ot_maintenance_preventive (
    id_maintenance_preventive numeric(18,0) NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(400),
    id_maintenance numeric(18,0) NOT NULL,
    type_frequency character varying(50) NOT NULL,
    amount_schedule numeric(18,0),
    duration character varying(100)
);
 +   DROP TABLE dmes.ot_maintenance_preventive;
       dmes      	   sipPrueba    false    6            �            1259    305336    ot_maintenance_schedule    TABLE       CREATE TABLE ot_maintenance_schedule (
    id_schedule_maintenance numeric(18,0) NOT NULL,
    id_employee numeric(18,0),
    creation_date timestamp(0) with time zone NOT NULL,
    id_maintenance numeric(18,0) NOT NULL,
    end_date timestamp with time zone NOT NULL
);
 )   DROP TABLE dmes.ot_maintenance_schedule;
       dmes      	   sipPrueba    false    6            �            1259    305339    ot_production_order    TABLE     �  CREATE TABLE ot_production_order (
    id_production_order numeric(18,0) NOT NULL,
    creation_date timestamp without time zone NOT NULL,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    id_production_state numeric(18,0) NOT NULL,
    name character varying(50),
    description character varying(200),
    start_date_real timestamp without time zone,
    end_date_real timestamp without time zone
);
 %   DROP TABLE dmes.ot_production_order;
       dmes      	   sipPrueba    false    6            �            1259    305342    sc_competencies    TABLE     �   CREATE TABLE sc_competencies (
    id_competencies numeric(18,0) NOT NULL,
    tittle character varying(100) NOT NULL,
    description character varying(2000),
    id_employee numeric(18,0) NOT NULL
);
 !   DROP TABLE dmes.sc_competencies;
       dmes      	   sipPrueba    false    6            �            1259    305348    sc_constants_load_files    TABLE     �   CREATE TABLE sc_constants_load_files (
    id_constants_load_file numeric(18,0) NOT NULL,
    max_size_file numeric(18,0) NOT NULL,
    extension character varying(2000) NOT NULL,
    path character varying(2000)
);
 )   DROP TABLE dmes.sc_constants_load_files;
       dmes      	   sipPrueba    false    6            �            1259    305354    sc_cost_center    TABLE     �   CREATE TABLE sc_cost_center (
    id_cost_center numeric(18,0) NOT NULL,
    description character varying(100) NOT NULL,
    cost_center character varying(100) NOT NULL,
    creation_date date NOT NULL,
    modify_date timestamp with time zone
);
     DROP TABLE dmes.sc_cost_center;
       dmes      	   sipPrueba    false    6            �            1259    305357    sc_distribution_unit    TABLE     �   CREATE TABLE sc_distribution_unit (
    id_distribution_unit numeric(18,0) NOT NULL,
    acronym character varying(20) NOT NULL,
    description character varying(200)
);
 &   DROP TABLE dmes.sc_distribution_unit;
       dmes      	   sipPrueba    false    6            �            1259    305360    sc_documents    TABLE     �  CREATE TABLE sc_documents (
    id_document numeric(18,0) NOT NULL,
    document_path character varying(200) NOT NULL,
    document_tittle character varying(2000) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    document_name character varying(2000) NOT NULL,
    id_person numeric(18,0) NOT NULL,
    upload_by character varying(2000) NOT NULL,
    type_document character varying(200)
);
    DROP TABLE dmes.sc_documents;
       dmes      	   sipPrueba    false    6            �            1259    305366    sc_employee    TABLE     �  CREATE TABLE sc_employee (
    id_employee numeric(18,0) NOT NULL,
    "position" character varying(100) NOT NULL,
    formation character varying(100) NOT NULL,
    admission_date timestamp with time zone NOT NULL,
    retirement_date timestamp with time zone,
    active character(1) NOT NULL,
    salary numeric(18,2),
    hour_value numeric(18,2),
    creation_date date NOT NULL,
    modify_date timestamp with time zone,
    id_person numeric(18,0) NOT NULL,
    id_turn numeric(18,0)
);
    DROP TABLE dmes.sc_employee;
       dmes      	   sipPrueba    false    6            �            1259    305369    sc_factory_location    TABLE     �   CREATE TABLE sc_factory_location (
    id_factory_location numeric(18,0) NOT NULL,
    location character varying(200) NOT NULL,
    description character varying(2000)
);
 %   DROP TABLE dmes.sc_factory_location;
       dmes      	   sipPrueba    false    6            �            1259    305375    sc_group    TABLE     �   CREATE TABLE sc_group (
    id_group numeric(18,0) NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(200),
    type numeric(1,0) NOT NULL
);
    DROP TABLE dmes.sc_group;
       dmes      	   sipPrueba    false    6            �            1259    305378    sc_input    TABLE     i  CREATE TABLE sc_input (
    id_input numeric(18,0) NOT NULL,
    type_material character varying(200) NOT NULL,
    expiry_date timestamp with time zone,
    supplier_guarantee numeric(18,0) NOT NULL,
    mark character varying(200) NOT NULL,
    value numeric(18,0) NOT NULL,
    path_picture character varying(2000),
    cost_center numeric(18,0) NOT NULL,
    serie character varying(2000) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    description character varying(200) NOT NULL,
    id_stock numeric(18,0) NOT NULL,
    id_priority numeric(18,0) NOT NULL,
    id_input_dimension numeric(18,0),
    id_packing numeric(18,0),
    id_money numeric(18,0),
    total_amount_distribution numeric(18,0),
    id_distribution_unit numeric(18,0),
    distribution_amount numeric(18,0),
    distribution_value numeric(18,2),
    id_location numeric(18,0)
);
    DROP TABLE dmes.sc_input;
       dmes      	   sipPrueba    false    6            �            1259    305384    sc_input_dimension    TABLE     q  CREATE TABLE sc_input_dimension (
    id_input_dimension numeric(18,0) NOT NULL,
    hight character varying(100),
    width character varying(100),
    large character varying(100),
    weight character varying(100),
    volume character varying(100),
    thickness character varying(100),
    radio character varying(100),
    observations character varying(2000)
);
 $   DROP TABLE dmes.sc_input_dimension;
       dmes      	   sipPrueba    false    6            �            1259    305390    sc_input_documents    TABLE     �  CREATE TABLE sc_input_documents (
    id_input_documents numeric(18,0) NOT NULL,
    document_path character varying(200) NOT NULL,
    document_tittle character varying(200),
    creation_date timestamp with time zone NOT NULL,
    document_name character varying(200),
    upload_by character varying(50) NOT NULL,
    type_document character varying(200) NOT NULL,
    id_input numeric(18,0) NOT NULL
);
 $   DROP TABLE dmes.sc_input_documents;
       dmes      	   sipPrueba    false    6            �            1259    305396    sc_input_equivalence    TABLE     �   CREATE TABLE sc_input_equivalence (
    id_input_equivalence numeric(18,0) NOT NULL,
    id_input numeric(18,0) NOT NULL,
    id_input_referenced numeric(18,0) NOT NULL
);
 &   DROP TABLE dmes.sc_input_equivalence;
       dmes      	   sipPrueba    false    6            �            1259    305399    sc_input_feactures    TABLE     �   CREATE TABLE sc_input_feactures (
    id_input_feactures numeric(18,0) NOT NULL,
    tittle character varying(200) NOT NULL,
    description character varying(2000) NOT NULL,
    id_input numeric(18,0) NOT NULL
);
 $   DROP TABLE dmes.sc_input_feactures;
       dmes      	   sipPrueba    false    6            �            1259    305405    sc_input_observations    TABLE     �   CREATE TABLE sc_input_observations (
    id_input_observation numeric(18,0) NOT NULL,
    tittle character varying(200) NOT NULL,
    description character varying(2000) NOT NULL,
    id_input numeric(18,0) NOT NULL
);
 '   DROP TABLE dmes.sc_input_observations;
       dmes      	   sipPrueba    false    6            �            1259    305411    sc_input_specifications    TABLE       CREATE TABLE sc_input_specifications (
    id_input_specifications numeric(18,0) NOT NULL,
    description character varying(2000) NOT NULL,
    tittle character varying(200) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    id_input numeric(18,0) NOT NULL
);
 )   DROP TABLE dmes.sc_input_specifications;
       dmes      	   sipPrueba    false    6            �            1259    305417    sc_location    TABLE     �   CREATE TABLE sc_location (
    id_location numeric(18,0) NOT NULL,
    location character varying(200) NOT NULL,
    description character varying(2000),
    id_store numeric(18,0)
);
    DROP TABLE dmes.sc_location;
       dmes      	   sipPrueba    false    6            �            1259    305423 
   sc_machine    TABLE     �  CREATE TABLE sc_machine (
    id_machine numeric(18,0) NOT NULL,
    name character varying(200) NOT NULL,
    hour_value numeric(18,2) NOT NULL,
    description character varying(400),
    id_priority numeric(18,0),
    id_time numeric(18,0),
    useful_life numeric(18,0),
    id_partner numeric(18,0),
    id_cost_center numeric(18,0),
    id_money numeric(18,0),
    id_location numeric(18,0),
    mark character varying(200),
    serie character varying(200),
    type character varying(200),
    clasification character varying(200),
    id_dimension numeric(18,0),
    path_picture character varying(2000),
    id_state numeric(1,0) DEFAULT 1
);
    DROP TABLE dmes.sc_machine;
       dmes      	   sipPrueba    false    6            �           0    0    COLUMN sc_machine.id_state    COMMENT     j   COMMENT ON COLUMN sc_machine.id_state IS 'Valor del estado de la máquina 1 en funcionamiento 0 en paro';
            dmes    	   sipPrueba    false    191            �            1259    305430    sc_machine_attached    TABLE     �   CREATE TABLE sc_machine_attached (
    id_attached numeric(18,0) NOT NULL,
    type character varying(50) NOT NULL,
    tittle character varying(200) NOT NULL,
    description character varying(200) NOT NULL,
    id_machine numeric(18,0) NOT NULL
);
 %   DROP TABLE dmes.sc_machine_attached;
       dmes      	   sipPrueba    false    6            �            1259    305433    sc_machine_conditions    TABLE     �   CREATE TABLE sc_machine_conditions (
    id_condition numeric(18,0) NOT NULL,
    type character varying(200) NOT NULL,
    description character varying(400),
    id_machine numeric(18,0) NOT NULL
);
 '   DROP TABLE dmes.sc_machine_conditions;
       dmes      	   sipPrueba    false    6            �            1259    305439    sc_machine_document    TABLE     �  CREATE TABLE sc_machine_document (
    id_machine_document numeric(18,0) NOT NULL,
    document_path character varying(200) NOT NULL,
    document_tittle character varying(200) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    document_name character varying(200) NOT NULL,
    upload_by character varying(200) NOT NULL,
    id_machine numeric(18,0) NOT NULL,
    document_type character varying(200) NOT NULL
);
 %   DROP TABLE dmes.sc_machine_document;
       dmes      	   sipPrueba    false    6            �            1259    305445    sc_machine_part    TABLE     �  CREATE TABLE sc_machine_part (
    id_machine_part numeric(18,0) NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(2000),
    clasification character varying(200) NOT NULL,
    mark character varying(200) NOT NULL,
    serie character varying(200) NOT NULL,
    useful_life numeric(18,0),
    value numeric(18,2) NOT NULL,
    path_picture character varying(200) NOT NULL,
    id_priority numeric(18,0) NOT NULL,
    id_cost_center numeric(18,0) NOT NULL,
    id_time numeric(18,0) NOT NULL,
    id_supplier_guarantee numeric(18,0) NOT NULL,
    id_money numeric(18,0) NOT NULL,
    id_dimension numeric(18,0) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    id_machine numeric(18,0) NOT NULL
);
 !   DROP TABLE dmes.sc_machine_part;
       dmes      	   sipPrueba    false    6            �            1259    305451    sc_machine_part_attached    TABLE       CREATE TABLE sc_machine_part_attached (
    id_machine_part_attached numeric(18,0) NOT NULL,
    type character varying(50) NOT NULL,
    tittle character varying(200) NOT NULL,
    description character varying(200) NOT NULL,
    id_machine_part numeric(18,0) NOT NULL
);
 *   DROP TABLE dmes.sc_machine_part_attached;
       dmes      	   sipPrueba    false    6            �            1259    305454    sc_machine_part_document    TABLE     �  CREATE TABLE sc_machine_part_document (
    id_machine_part_document numeric(18,0) NOT NULL,
    document_path character varying(200) NOT NULL,
    document_tittle character varying(200) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    document_name character varying(200) NOT NULL,
    upload_by character varying(200) NOT NULL,
    id_machine_part numeric(18,0) NOT NULL,
    document_type character varying(200) NOT NULL
);
 *   DROP TABLE dmes.sc_machine_part_document;
       dmes      	   sipPrueba    false    6            �            1259    305460    sc_mails    TABLE     �   CREATE TABLE sc_mails (
    id_mail numeric(18,0) NOT NULL,
    mail character varying(100) NOT NULL,
    description character varying(100),
    id_person numeric(18,0) NOT NULL
);
    DROP TABLE dmes.sc_mails;
       dmes      	   sipPrueba    false    6            �            1259    305463    sc_maintenance_activity    TABLE     �   CREATE TABLE sc_maintenance_activity (
    id_maintenance_activity numeric(18,0) NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(400),
    id_maintenance numeric(18,0) NOT NULL
);
 )   DROP TABLE dmes.sc_maintenance_activity;
       dmes      	   sipPrueba    false    6            �            1259    305469    sc_maintenance_clasification    TABLE     �   CREATE TABLE sc_maintenance_clasification (
    id_maintenance_clasification numeric(18,0) NOT NULL,
    clasification character varying(200) NOT NULL
);
 .   DROP TABLE dmes.sc_maintenance_clasification;
       dmes      	   sipPrueba    false    6            �            1259    305472    sc_maintenance_damage    TABLE     �   CREATE TABLE sc_maintenance_damage (
    id_maintenance_damage numeric(18,0) NOT NULL,
    damage character varying(200) NOT NULL
);
 '   DROP TABLE dmes.sc_maintenance_damage;
       dmes      	   sipPrueba    false    6            �            1259    305475    sc_maintenance_state    TABLE     �   CREATE TABLE sc_maintenance_state (
    id_maintenance_state numeric(18,0) NOT NULL,
    state character varying(200) NOT NULL
);
 &   DROP TABLE dmes.sc_maintenance_state;
       dmes      	   sipPrueba    false    6            �            1259    305478    sc_measure_unit    TABLE     �   CREATE TABLE sc_measure_unit (
    id_measure numeric(18,0) NOT NULL,
    acronym character varying(20),
    type character varying(200) NOT NULL
);
 !   DROP TABLE dmes.sc_measure_unit;
       dmes      	   sipPrueba    false    6            �            1259    305481    sc_module_permission    TABLE     *  CREATE TABLE sc_module_permission (
    id_module_permission numeric(18,0) NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(2000),
    icone character varying(2000),
    type character varying(50),
    id_father numeric(18,0),
    page character varying(50)
);
 &   DROP TABLE dmes.sc_module_permission;
       dmes      	   sipPrueba    false    6            �            1259    305487    sc_module_permission_by_role    TABLE     �   CREATE TABLE sc_module_permission_by_role (
    id_module_permission_by_role numeric(18,0) NOT NULL,
    id_role numeric(18,0) NOT NULL,
    id_type character varying(5),
    id_module_permission numeric(18,0) NOT NULL
);
 .   DROP TABLE dmes.sc_module_permission_by_role;
       dmes      	   sipPrueba    false    6            �            1259    305490    sc_money    TABLE     �   CREATE TABLE sc_money (
    id_money numeric(18,0) NOT NULL,
    description character varying(50),
    acronym character varying(2),
    trm numeric(18,2)
);
    DROP TABLE dmes.sc_money;
       dmes      	   sipPrueba    false    6            �            1259    305493    sc_notification    TABLE     �   CREATE TABLE sc_notification (
    id_notification numeric(18,0) NOT NULL,
    id_machine numeric(18,0) NOT NULL,
    password character varying(200) NOT NULL,
    id_group numeric(18,0) NOT NULL,
    id_stop_machine numeric(18,0) NOT NULL
);
 !   DROP TABLE dmes.sc_notification;
       dmes      	   sipPrueba    false    6            �            1259    305496    sc_operating_conditions    TABLE     K  CREATE TABLE sc_operating_conditions (
    id_operating_condition numeric(18,0) NOT NULL,
    internal character varying(2000) NOT NULL,
    external character varying(2000) NOT NULL,
    observations character varying(2000) NOT NULL,
    creation_date date NOT NULL,
    modify_date date,
    id_machine numeric(18,0) NOT NULL
);
 )   DROP TABLE dmes.sc_operating_conditions;
       dmes      	   sipPrueba    false    6            �            1259    305502    sc_packing_unit    TABLE     �   CREATE TABLE sc_packing_unit (
    id_packing numeric(18,0) NOT NULL,
    description character varying(200),
    acronym character varying(20) NOT NULL
);
 !   DROP TABLE dmes.sc_packing_unit;
       dmes      	   sipPrueba    false    6            �            1259    305505 
   sc_partner    TABLE     e  CREATE TABLE sc_partner (
    id_partner numeric(18,0) NOT NULL,
    active character varying(1) NOT NULL,
    "position" character varying(100) NOT NULL,
    web_page character varying(100),
    creation_date date NOT NULL,
    modify_date timestamp with time zone,
    id_person numeric(18,0) NOT NULL,
    company_name character varying(100) NOT NULL
);
    DROP TABLE dmes.sc_partner;
       dmes      	   sipPrueba    false    6            �            1259    305508 	   sc_person    TABLE     �  CREATE TABLE sc_person (
    id_person numeric(18,0) NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    age numeric(3,0) NOT NULL,
    country character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    personal_information character varying(2000),
    domicilie character varying(100) NOT NULL,
    studies character varying(2000),
    description character varying(2000),
    path_photo character varying NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    modify_date timestamp with time zone,
    identification numeric(18,0) NOT NULL,
    "pathFile" character varying(100)
);
    DROP TABLE dmes.sc_person;
       dmes      	   sipPrueba    false    6            �            1259    305514    sc_person_by_group    TABLE     �   CREATE TABLE sc_person_by_group (
    id_person_by_group numeric(18,0) NOT NULL,
    id_person numeric(18,0) NOT NULL,
    id_group numeric(18,0) NOT NULL
);
 $   DROP TABLE dmes.sc_person_by_group;
       dmes      	   sipPrueba    false    6            �            1259    305517    sc_person_observations    TABLE     �   CREATE TABLE sc_person_observations (
    id_person_observations numeric(18,0) NOT NULL,
    tittle character varying(200) NOT NULL,
    observation character varying(2000) NOT NULL,
    id_person numeric(18,0) NOT NULL
);
 (   DROP TABLE dmes.sc_person_observations;
       dmes      	   sipPrueba    false    6            �            1259    305523    sc_person_specifications    TABLE     �   CREATE TABLE sc_person_specifications (
    id_person_specifications numeric(18,0) NOT NULL,
    tittle character varying(200) NOT NULL,
    specification character varying(2000) NOT NULL,
    id_person numeric(18,0) NOT NULL
);
 *   DROP TABLE dmes.sc_person_specifications;
       dmes      	   sipPrueba    false    6            �            1259    305529 	   sc_phones    TABLE     �   CREATE TABLE sc_phones (
    id_phone numeric(18,0) NOT NULL,
    number_phone numeric(18,0) NOT NULL,
    description character varying(100),
    id_person numeric(18,0) NOT NULL
);
    DROP TABLE dmes.sc_phones;
       dmes      	   sipPrueba    false    6            �            1259    305532    sc_priority    TABLE     �   CREATE TABLE sc_priority (
    id_priority numeric(18,0) NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(200)
);
    DROP TABLE dmes.sc_priority;
       dmes      	   sipPrueba    false    6            �            1259    305535    sc_procces_product    TABLE       CREATE TABLE sc_procces_product (
    id_process_product numeric(18,0) NOT NULL,
    id_process_type numeric(18,0) NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(2000),
    total_time_machine numeric(18,0),
    total_value_machine numeric(18,2),
    total_value_input numeric(18,2),
    total_time_process numeric(18,0),
    total_value_process numeric(18,2),
    total_time_employee numeric(18,0),
    total_value_employee numeric(18,2),
    id_product_formulation numeric(18,0) NOT NULL
);
 $   DROP TABLE dmes.sc_procces_product;
       dmes      	   sipPrueba    false    6            �            1259    305541    sc_procces_product_order    TABLE     r  CREATE TABLE sc_procces_product_order (
    id_process_product_order numeric(18,0) NOT NULL,
    id_process_type numeric(18,0) NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(2000),
    total_time_machine numeric(18,0),
    total_value_machine numeric(18,2),
    total_value_input numeric(18,2),
    total_time_process numeric(18,0),
    total_value_process numeric(18,2),
    total_time_employee numeric(18,0),
    total_value_employee numeric(18,2),
    id_process_state numeric(18,0) NOT NULL,
    amount_produced numeric(18,0) NOT NULL,
    id_product_order numeric(18,0) NOT NULL
);
 *   DROP TABLE dmes.sc_procces_product_order;
       dmes      	   sipPrueba    false    6            �            1259    305547    sc_process_attached    TABLE     �   CREATE TABLE sc_process_attached (
    id_process_attached numeric(18,0) NOT NULL,
    tittle character varying(200) NOT NULL,
    description character varying(200),
    type character varying(20) NOT NULL
);
 %   DROP TABLE dmes.sc_process_attached;
       dmes      	   sipPrueba    false    6            �            1259    305550    sc_process_employee    TABLE     y  CREATE TABLE sc_process_employee (
    id_process_employee numeric(18,0) NOT NULL,
    labor_description character varying(200),
    time_use numeric(18,0) NOT NULL,
    other_expenses numeric(18,2),
    total_value_employee numeric(18,2),
    id_employee numeric(18,0) NOT NULL,
    id_process numeric(18,0) NOT NULL,
    description_other_expenses character varying(2000)
);
 %   DROP TABLE dmes.sc_process_employee;
       dmes      	   sipPrueba    false    6            �            1259    305556    sc_process_employee_order    TABLE     �  CREATE TABLE sc_process_employee_order (
    id_process_employee_order numeric(18,0) NOT NULL,
    labor_description character varying(200),
    time_use numeric(18,0) NOT NULL,
    other_expenses numeric(18,2),
    total_value_employee numeric(18,2),
    id_employee numeric(18,0) NOT NULL,
    id_process_order numeric(18,0) NOT NULL,
    description_other_expenses character varying(2000)
);
 +   DROP TABLE dmes.sc_process_employee_order;
       dmes      	   sipPrueba    false    6            �            1259    305562    sc_process_input    TABLE     (  CREATE TABLE sc_process_input (
    id_process_input numeric(18,0) NOT NULL,
    id_process numeric(18,0) NOT NULL,
    id_input numeric(18,0) NOT NULL,
    amount_distribution numeric(18,0) NOT NULL,
    percentage_residue numeric(18,2) NOT NULL,
    total_value_input numeric(18,2) NOT NULL
);
 "   DROP TABLE dmes.sc_process_input;
       dmes      	   sipPrueba    false    6            �            1259    305565    sc_process_input_order    TABLE     :  CREATE TABLE sc_process_input_order (
    id_process_input_order numeric(18,0) NOT NULL,
    id_process_order numeric(18,0) NOT NULL,
    id_input numeric(18,0) NOT NULL,
    amount_distribution numeric(18,0) NOT NULL,
    percentage_residue numeric(18,2) NOT NULL,
    total_value_input numeric(18,2) NOT NULL
);
 (   DROP TABLE dmes.sc_process_input_order;
       dmes      	   sipPrueba    false    6            �            1259    305568    sc_process_machine    TABLE     G  CREATE TABLE sc_process_machine (
    id_process_machine numeric(18,0) NOT NULL,
    id_machine numeric(18,0) NOT NULL,
    time_use numeric(18,0) NOT NULL,
    other_expenses numeric(18,2),
    total_value_machine numeric(18,2),
    id_process numeric(18,0) NOT NULL,
    description_other_expenses character varying(2000)
);
 $   DROP TABLE dmes.sc_process_machine;
       dmes      	   sipPrueba    false    6            �            1259    305574    sc_process_machine_order    TABLE     Y  CREATE TABLE sc_process_machine_order (
    id_process_machine_order numeric(18,0) NOT NULL,
    id_machine numeric(18,0) NOT NULL,
    time_use numeric(18,0) NOT NULL,
    other_expenses numeric(18,2),
    total_value_machine numeric(18,2),
    id_process_order numeric(18,0) NOT NULL,
    description_other_expenses character varying(2000)
);
 *   DROP TABLE dmes.sc_process_machine_order;
       dmes      	   sipPrueba    false    6            �            1259    305580    sc_process_type    TABLE     �   CREATE TABLE sc_process_type (
    id_process_type numeric(18,0) NOT NULL,
    description character varying(200),
    type character varying(200) NOT NULL
);
 !   DROP TABLE dmes.sc_process_type;
       dmes      	   sipPrueba    false    6            �            1259    305583    sc_product_attached    TABLE       CREATE TABLE sc_product_attached (
    id_product_attached numeric(18,0) NOT NULL,
    type character varying(200) NOT NULL,
    tittle character varying(200) NOT NULL,
    description character varying(2000) NOT NULL,
    id_product_formulation numeric(18,0) NOT NULL
);
 %   DROP TABLE dmes.sc_product_attached;
       dmes      	   sipPrueba    false    6            �            1259    305589    sc_product_documents    TABLE     �  CREATE TABLE sc_product_documents (
    id_product_documents numeric(18,0) NOT NULL,
    document_path character varying(200) NOT NULL,
    document_tittle character varying(200),
    creation_date timestamp with time zone NOT NULL,
    document_name character varying(200),
    upload_by character varying(50) NOT NULL,
    type_document character varying(200) NOT NULL,
    id_product_formulation numeric(18,0) NOT NULL
);
 &   DROP TABLE dmes.sc_product_documents;
       dmes      	   sipPrueba    false    6            �            1259    305595    sc_product_formulation    TABLE     
  CREATE TABLE sc_product_formulation (
    id_product_formulation numeric(18,0) NOT NULL,
    path_picture character varying(200),
    type_material character varying(200) NOT NULL,
    mark character varying(200) NOT NULL,
    serie character varying(200) NOT NULL,
    id_packing numeric(18,0) NOT NULL,
    expiry_date timestamp with time zone,
    creation_date timestamp with time zone NOT NULL,
    id_priority numeric(18,0) NOT NULL,
    id_cost_center numeric(18,0) NOT NULL,
    value numeric(18,0) NOT NULL,
    id_money numeric(18,0) NOT NULL,
    id_location numeric(18,0) NOT NULL,
    manufacturing_time numeric(18,0) NOT NULL,
    description character varying(200) NOT NULL,
    id_product_dimension numeric(18,0) NOT NULL,
    id_stock numeric(18,0) NOT NULL
);
 (   DROP TABLE dmes.sc_product_formulation;
       dmes      	   sipPrueba    false    6            �           0    0 )   COLUMN sc_product_formulation.id_priority    COMMENT     =   COMMENT ON COLUMN sc_product_formulation.id_priority IS '
';
            dmes    	   sipPrueba    false    229            �            1259    305601    sc_product_order    TABLE     w  CREATE TABLE sc_product_order (
    id_product_order numeric(18,0) NOT NULL,
    path_picture character varying(200),
    type_material character varying(200) NOT NULL,
    mark character varying(200) NOT NULL,
    serie character varying(200) NOT NULL,
    id_packing numeric(18,0) NOT NULL,
    expiry_date timestamp with time zone,
    creation_date timestamp with time zone NOT NULL,
    id_priority numeric(18,0) NOT NULL,
    id_cost_center numeric(18,0) NOT NULL,
    value numeric(18,0) NOT NULL,
    id_money numeric(18,0) NOT NULL,
    id_location numeric(18,0) NOT NULL,
    manufacturing_time numeric(18,0) NOT NULL,
    description character varying(200) NOT NULL,
    id_product_dimension numeric(18,0) NOT NULL,
    id_order numeric(18,0) NOT NULL,
    amount_required numeric(18,0),
    amount_produced numeric(18,0),
    id_product_formulation numeric(18,0) NOT NULL
);
 "   DROP TABLE dmes.sc_product_order;
       dmes      	   sipPrueba    false    6            �            1259    305607    sc_production_state    TABLE     �   CREATE TABLE sc_production_state (
    id_production_state numeric(18,0) NOT NULL,
    description character varying(50) NOT NULL
);
 %   DROP TABLE dmes.sc_production_state;
       dmes      	   sipPrueba    false    6            �            1259    305610    sc_replacement    TABLE     !  CREATE TABLE sc_replacement (
    id_replacement numeric(18,0) NOT NULL,
    type_replacement character varying(200) NOT NULL,
    useful_life numeric(18,0) NOT NULL,
    supplier_guarantee numeric(18,0) NOT NULL,
    mark character varying(200) NOT NULL,
    value numeric(18,2) NOT NULL,
    path_picture character varying(2000),
    cost_center numeric(18,0) NOT NULL,
    serie character varying(2000) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    description character varying(200) NOT NULL,
    id_stock numeric(18,0) NOT NULL,
    id_priority numeric(18,0) NOT NULL,
    id_replacement_dimension numeric(18,0),
    id_money numeric(18,0),
    id_location numeric(18,0),
    name character varying(200) NOT NULL,
    "time" numeric(18,0),
    value_minutes numeric(18,0)
);
     DROP TABLE dmes.sc_replacement;
       dmes      	   sipPrueba    false    6            �            1259    305616    sc_replacement_attached    TABLE       CREATE TABLE sc_replacement_attached (
    id_replacement_attached numeric(18,0) NOT NULL,
    type character varying(200) NOT NULL,
    tittle character varying(200) NOT NULL,
    description character varying(2000) NOT NULL,
    id_replacement numeric(18,0) NOT NULL
);
 )   DROP TABLE dmes.sc_replacement_attached;
       dmes      	   sipPrueba    false    6            �            1259    305622    sc_replacement_documents    TABLE     �  CREATE TABLE sc_replacement_documents (
    id_replacement_documents numeric(18,0) NOT NULL,
    document_path character varying(200) NOT NULL,
    document_tittle character varying(200),
    creation_date timestamp with time zone NOT NULL,
    document_name character varying(200),
    upload_by character varying(50) NOT NULL,
    type_document character varying(200) NOT NULL,
    id_replacement numeric(18,0) NOT NULL
);
 *   DROP TABLE dmes.sc_replacement_documents;
       dmes      	   sipPrueba    false    6            �            1259    305628    sc_roles    TABLE     �   CREATE TABLE sc_roles (
    id_role numeric(18,0) NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(2000),
    creation_date timestamp with time zone NOT NULL,
    modify_date timestamp with time zone
);
    DROP TABLE dmes.sc_roles;
       dmes      	   sipPrueba    false    6            �            1259    305634    sc_services_or_products    TABLE     ~  CREATE TABLE sc_services_or_products (
    id_service_or_products numeric(18,0) NOT NULL,
    name_service_or_product character varying(100) NOT NULL,
    cost numeric(18,2) NOT NULL,
    guarantee character varying(2000),
    description character varying(2000),
    amount numeric(18,0) NOT NULL,
    id_partner numeric(18,0) NOT NULL,
    type character varying(100) NOT NULL
);
 )   DROP TABLE dmes.sc_services_or_products;
       dmes      	   sipPrueba    false    6            �            1259    305640    sc_stock    TABLE     X  CREATE TABLE sc_stock (
    id_stock numeric(18,0) NOT NULL,
    maxime_stock numeric(18,0) NOT NULL,
    minime_stock numeric(18,0) NOT NULL,
    current_stock numeric(18,0) NOT NULL,
    price_unit numeric(18,0) NOT NULL,
    total_value numeric(18,0) NOT NULL,
    id_store numeric(18,0) NOT NULL,
    optime_stock numeric(18,0) NOT NULL
);
    DROP TABLE dmes.sc_stock;
       dmes      	   sipPrueba    false    6            �            1259    305643    sc_stop_machine    TABLE     �  CREATE TABLE sc_stop_machine (
    id_stop_machine numeric(18,0) NOT NULL,
    id_maintenance numeric(18,0),
    creation_date timestamp with time zone NOT NULL,
    reason character varying(400),
    duration_estimate numeric(18,0),
    end_date timestamp with time zone,
    duration_real numeric(18,0),
    state numeric(1,0) DEFAULT 1 NOT NULL,
    password character varying(100),
    response_date timestamp with time zone
);
 !   DROP TABLE dmes.sc_stop_machine;
       dmes      	   sipPrueba    false    6            �            1259    305650    sc_store    TABLE     j   CREATE TABLE sc_store (
    id_store numeric(18,0) NOT NULL,
    name character varying(2000) NOT NULL
);
    DROP TABLE dmes.sc_store;
       dmes      	   sipPrueba    false    6            �            1259    305656    sc_store_order    TABLE       CREATE TABLE sc_store_order (
    id_store_order numeric(18,0) NOT NULL,
    order_type character varying(200) NOT NULL,
    order_class character varying(200) NOT NULL,
    id_state numeric(18,0) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    reason_cancellation character varying(200),
    required_by character varying(200) NOT NULL,
    amount_items numeric(18,0) NOT NULL,
    id_employee_create numeric(18,0),
    id_employee_store numeric(18,0),
    id_order_request character varying(50)
);
     DROP TABLE dmes.sc_store_order;
       dmes      	   sipPrueba    false    6            �            1259    305662    sc_store_order_item    TABLE     �  CREATE TABLE sc_store_order_item (
    id_item numeric(18,0) NOT NULL,
    class_item character varying(200) NOT NULL,
    amount_required numeric(18,0) NOT NULL,
    amount_delivery numeric(18,0) NOT NULL,
    amount_store numeric(18,0) NOT NULL,
    amount_pending numeric(18,0) NOT NULL,
    item_description character varying(200) NOT NULL,
    id_store_order numeric(18,0) NOT NULL,
    id_item_class numeric(18,0),
    amount_pending_hidden numeric(18,0)
);
 %   DROP TABLE dmes.sc_store_order_item;
       dmes      	   sipPrueba    false    6            �            1259    305665    sc_store_order_state    TABLE     |   CREATE TABLE sc_store_order_state (
    id_state numeric(18,0) NOT NULL,
    description character varying(200) NOT NULL
);
 &   DROP TABLE dmes.sc_store_order_state;
       dmes      	   sipPrueba    false    6            �            1259    305668    sc_store_requisition    TABLE     q  CREATE TABLE sc_store_requisition (
    id_store_requisition numeric(18,0) NOT NULL,
    requisition_type character varying(200) NOT NULL,
    order_class character varying(200) NOT NULL,
    id_state numeric(18,0) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    reason_cancellation character varying(200),
    amount_items numeric(18,0) NOT NULL
);
 &   DROP TABLE dmes.sc_store_requisition;
       dmes      	   sipPrueba    false    6            �            1259    305674    sc_store_requisition_item    TABLE     �  CREATE TABLE sc_store_requisition_item (
    id_item numeric(18,0) NOT NULL,
    class_item character varying(200) NOT NULL,
    amount_required numeric(18,0) NOT NULL,
    amount_delivery numeric(18,0) NOT NULL,
    amount_store numeric(18,0) NOT NULL,
    amount_pending numeric(18,0) NOT NULL,
    item_description character varying(200) NOT NULL,
    id_store_requisition numeric(18,0) NOT NULL,
    id_item_class numeric(18,0),
    amount_pending_hidden numeric(18,0)
);
 +   DROP TABLE dmes.sc_store_requisition_item;
       dmes      	   sipPrueba    false    6            �            1259    305677    sc_store_requisition_state    TABLE     �   CREATE TABLE sc_store_requisition_state (
    id_state numeric(18,0) NOT NULL,
    description character varying(200) NOT NULL
);
 ,   DROP TABLE dmes.sc_store_requisition_state;
       dmes      	   sipPrueba    false    6            �            1259    305680    sc_time    TABLE     �   CREATE TABLE sc_time (
    id_time numeric(18,0) NOT NULL,
    acronym character varying(200) NOT NULL,
    minutes numeric(18,0)
);
    DROP TABLE dmes.sc_time;
       dmes      	   sipPrueba    false    6            �            1259    305683    sc_tool    TABLE       CREATE TABLE sc_tool (
    id_tool numeric(18,0) NOT NULL,
    type_tool character varying(200) NOT NULL,
    useful_life numeric(18,0) NOT NULL,
    supplier_guarantee numeric(18,0) NOT NULL,
    mark character varying(200) NOT NULL,
    value numeric(18,2) NOT NULL,
    path_picture character varying(2000),
    cost_center numeric(18,0) NOT NULL,
    serie character varying(2000) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    description character varying(200) NOT NULL,
    id_stock numeric(18,0) NOT NULL,
    id_priority numeric(18,0) NOT NULL,
    id_tool_dimension numeric(18,0),
    id_money numeric(18,0),
    id_location numeric(18,0),
    name character varying(200) NOT NULL,
    "time" numeric(18,0),
    value_minutes numeric(18,0)
);
    DROP TABLE dmes.sc_tool;
       dmes      	   sipPrueba    false    6            �            1259    305689    sc_tool_attached    TABLE     �   CREATE TABLE sc_tool_attached (
    id_tool_attached numeric(18,0) NOT NULL,
    type character varying(200) NOT NULL,
    tittle character varying(200) NOT NULL,
    description character varying(2000) NOT NULL,
    id_tool numeric(18,0) NOT NULL
);
 "   DROP TABLE dmes.sc_tool_attached;
       dmes      	   sipPrueba    false    6            �            1259    305695    sc_tool_documents    TABLE     �  CREATE TABLE sc_tool_documents (
    id_tool_documents numeric(18,0) NOT NULL,
    document_path character varying(200) NOT NULL,
    document_tittle character varying(200),
    creation_date timestamp with time zone NOT NULL,
    document_name character varying(200),
    upload_by character varying(50) NOT NULL,
    type_document character varying(200) NOT NULL,
    id_tool numeric(18,0) NOT NULL
);
 #   DROP TABLE dmes.sc_tool_documents;
       dmes      	   sipPrueba    false    6            �            1259    305701    sc_turn    TABLE     �   CREATE TABLE sc_turn (
    id_turn numeric(18,0) NOT NULL,
    description character varying(100) NOT NULL,
    hour_amount numeric(18,0) NOT NULL
);
    DROP TABLE dmes.sc_turn;
       dmes      	   sipPrueba    false    6            �            1259    305704    sc_type    TABLE     �   CREATE TABLE sc_type (
    id_type numeric(18,0) NOT NULL,
    type character varying(100) NOT NULL,
    id_class_type numeric(18,0) NOT NULL,
    creation_date date NOT NULL,
    modify_date date NOT NULL
);
    DROP TABLE dmes.sc_type;
       dmes      	   sipPrueba    false    6            �            1259    305707    sc_users    TABLE     @  CREATE TABLE sc_users (
    id_user numeric(18,0) NOT NULL,
    id_person numeric(18,0) NOT NULL,
    id_role numeric(18,0) NOT NULL,
    login character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    modify_date timestamp with time zone
);
    DROP TABLE dmes.sc_users;
       dmes      	   sipPrueba    false    6            �            1259    305710    sc_work_experience    TABLE       CREATE TABLE sc_work_experience (
    id_work_experience numeric(18,0) NOT NULL,
    init_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    id_employee numeric(18,0) NOT NULL,
    company_name character varying(100) NOT NULL
);
 $   DROP TABLE dmes.sc_work_experience;
       dmes      	   sipPrueba    false    6            �            1259    305713    sc_workforce    TABLE     �   CREATE TABLE sc_workforce (
    id_workforce numeric(18,0) NOT NULL,
    workforce character varying(200) NOT NULL,
    id_employee numeric(18,0),
    type_workforce character varying(100) NOT NULL
);
    DROP TABLE dmes.sc_workforce;
       dmes      	   sipPrueba    false    6            �            1259    305716    sqclasstype    SEQUENCE     }   CREATE SEQUENCE sqclasstype
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
     DROP SEQUENCE dmes.sqclasstype;
       dmes    	   sipPrueba    false    6                        1259    305718    sqmaintenanceschedule    SEQUENCE     �   CREATE SEQUENCE sqmaintenanceschedule
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1111111111111111111
    CACHE 1;
 *   DROP SEQUENCE dmes.sqmaintenanceschedule;
       dmes    	   sipPrueba    false    6            Q           1259    313513    sqotlogproduction    SEQUENCE     �   CREATE SEQUENCE sqotlogproduction
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 &   DROP SEQUENCE dmes.sqotlogproduction;
       dmes    	   sipPrueba    false    6                       1259    305720    sqotmaintenance    SEQUENCE     �   CREATE SEQUENCE sqotmaintenance
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 $   DROP SEQUENCE dmes.sqotmaintenance;
       dmes    	   sipPrueba    false    6                       1259    305722    sqotmaintenancecorrective    SEQUENCE     �   CREATE SEQUENCE sqotmaintenancecorrective
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 .   DROP SEQUENCE dmes.sqotmaintenancecorrective;
       dmes    	   sipPrueba    false    6                       1259    305724    sqotmaintenancepreventive    SEQUENCE     �   CREATE SEQUENCE sqotmaintenancepreventive
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1111111111111111
    CACHE 1;
 .   DROP SEQUENCE dmes.sqotmaintenancepreventive;
       dmes    	   sipPrueba    false    6                       1259    305726    sqotproductionorder    SEQUENCE     �   CREATE SEQUENCE sqotproductionorder
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 (   DROP SEQUENCE dmes.sqotproductionorder;
       dmes    	   sipPrueba    false    6                       1259    305728    sqotproductionproduct    SEQUENCE     �   CREATE SEQUENCE sqotproductionproduct
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 *   DROP SEQUENCE dmes.sqotproductionproduct;
       dmes    	   sipPrueba    false    6                       1259    305730    sqsccompetencies    SEQUENCE     �   CREATE SEQUENCE sqsccompetencies
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 11111111111111111
    CACHE 1;
 %   DROP SEQUENCE dmes.sqsccompetencies;
       dmes    	   sipPrueba    false    6                       1259    305732    sqsccostcenter    SEQUENCE     �   CREATE SEQUENCE sqsccostcenter
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 #   DROP SEQUENCE dmes.sqsccostcenter;
       dmes    	   sipPrueba    false    6                       1259    305734    sqscdistributionunit    SEQUENCE     �   CREATE SEQUENCE sqscdistributionunit
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 )   DROP SEQUENCE dmes.sqscdistributionunit;
       dmes    	   sipPrueba    false    6            	           1259    305736    sqscdocuments    SEQUENCE        CREATE SEQUENCE sqscdocuments
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 "   DROP SEQUENCE dmes.sqscdocuments;
       dmes    	   sipPrueba    false    6            
           1259    305738    sqscemployee    SEQUENCE     }   CREATE SEQUENCE sqscemployee
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 11111111111111111
    CACHE 1;
 !   DROP SEQUENCE dmes.sqscemployee;
       dmes    	   sipPrueba    false    6                       1259    305740    sqscfactorylocation    SEQUENCE     �   CREATE SEQUENCE sqscfactorylocation
    START WITH 7
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 (   DROP SEQUENCE dmes.sqscfactorylocation;
       dmes    	   sipPrueba    false    6                       1259    305742 	   sqscgroup    SEQUENCE     {   CREATE SEQUENCE sqscgroup
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
    DROP SEQUENCE dmes.sqscgroup;
       dmes    	   sipPrueba    false    6                       1259    305744 	   sqscinput    SEQUENCE     {   CREATE SEQUENCE sqscinput
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
    DROP SEQUENCE dmes.sqscinput;
       dmes    	   sipPrueba    false    6                       1259    305746    sqscinputdimension    SEQUENCE     �   CREATE SEQUENCE sqscinputdimension
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 '   DROP SEQUENCE dmes.sqscinputdimension;
       dmes    	   sipPrueba    false    6                       1259    305748    sqscinputdocuments    SEQUENCE     �   CREATE SEQUENCE sqscinputdocuments
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 '   DROP SEQUENCE dmes.sqscinputdocuments;
       dmes    	   sipPrueba    false    6                       1259    305750    sqscinputequivalence    SEQUENCE     �   CREATE SEQUENCE sqscinputequivalence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 )   DROP SEQUENCE dmes.sqscinputequivalence;
       dmes    	   sipPrueba    false    6                       1259    305752    sqscinputfeature    SEQUENCE     �   CREATE SEQUENCE sqscinputfeature
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 %   DROP SEQUENCE dmes.sqscinputfeature;
       dmes    	   sipPrueba    false    6                       1259    305754    sqscinputobservation    SEQUENCE     �   CREATE SEQUENCE sqscinputobservation
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 )   DROP SEQUENCE dmes.sqscinputobservation;
       dmes    	   sipPrueba    false    6                       1259    305756    sqscinputspecification    SEQUENCE     �   CREATE SEQUENCE sqscinputspecification
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 +   DROP SEQUENCE dmes.sqscinputspecification;
       dmes    	   sipPrueba    false    6                       1259    305758    sqsclocation    SEQUENCE     ~   CREATE SEQUENCE sqsclocation
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 !   DROP SEQUENCE dmes.sqsclocation;
       dmes    	   sipPrueba    false    6                       1259    305760    sqscmachine    SEQUENCE     }   CREATE SEQUENCE sqscmachine
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
     DROP SEQUENCE dmes.sqscmachine;
       dmes    	   sipPrueba    false    6                       1259    305762    sqscmachineattached    SEQUENCE     �   CREATE SEQUENCE sqscmachineattached
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 (   DROP SEQUENCE dmes.sqscmachineattached;
       dmes    	   sipPrueba    false    6                       1259    305764    sqscmachineconditions    SEQUENCE     �   CREATE SEQUENCE sqscmachineconditions
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 *   DROP SEQUENCE dmes.sqscmachineconditions;
       dmes    	   sipPrueba    false    6                       1259    305766    sqscmachinedocument    SEQUENCE     �   CREATE SEQUENCE sqscmachinedocument
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 (   DROP SEQUENCE dmes.sqscmachinedocument;
       dmes    	   sipPrueba    false    6                       1259    305768    sqscmachinepart    SEQUENCE     �   CREATE SEQUENCE sqscmachinepart
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 $   DROP SEQUENCE dmes.sqscmachinepart;
       dmes    	   sipPrueba    false    6                       1259    305770    sqscmachinepartattached    SEQUENCE     �   CREATE SEQUENCE sqscmachinepartattached
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 ,   DROP SEQUENCE dmes.sqscmachinepartattached;
       dmes    	   sipPrueba    false    6                       1259    305772    sqscmachinepartdocument    SEQUENCE     �   CREATE SEQUENCE sqscmachinepartdocument
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 ,   DROP SEQUENCE dmes.sqscmachinepartdocument;
       dmes    	   sipPrueba    false    6                       1259    305774 	   sqscmails    SEQUENCE     {   CREATE SEQUENCE sqscmails
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
    DROP SEQUENCE dmes.sqscmails;
       dmes    	   sipPrueba    false    6                       1259    305776    sqscmaintenanceactivity    SEQUENCE     �   CREATE SEQUENCE sqscmaintenanceactivity
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 ,   DROP SEQUENCE dmes.sqscmaintenanceactivity;
       dmes    	   sipPrueba    false    6                       1259    305778    sqscmaintenanceplan    SEQUENCE     �   CREATE SEQUENCE sqscmaintenanceplan
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 11111111111111111
    CACHE 1;
 (   DROP SEQUENCE dmes.sqscmaintenanceplan;
       dmes    	   sipPrueba    false    6                       1259    305780    sqscmaintenancereplacement    SEQUENCE     �   CREATE SEQUENCE sqscmaintenancereplacement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 /   DROP SEQUENCE dmes.sqscmaintenancereplacement;
       dmes    	   sipPrueba    false    6                        1259    305782    sqscmaintenancetool    SEQUENCE     �   CREATE SEQUENCE sqscmaintenancetool
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 (   DROP SEQUENCE dmes.sqscmaintenancetool;
       dmes    	   sipPrueba    false    6            !           1259    305784    sqscmeasure    SEQUENCE     }   CREATE SEQUENCE sqscmeasure
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
     DROP SEQUENCE dmes.sqscmeasure;
       dmes    	   sipPrueba    false    6            "           1259    305786    sqscmodulespermissionbyrole    SEQUENCE     �   CREATE SEQUENCE sqscmodulespermissionbyrole
    START WITH 17
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 0   DROP SEQUENCE dmes.sqscmodulespermissionbyrole;
       dmes    	   sipPrueba    false    6            #           1259    305788 	   sqscmoney    SEQUENCE     {   CREATE SEQUENCE sqscmoney
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
    DROP SEQUENCE dmes.sqscmoney;
       dmes    	   sipPrueba    false    6            $           1259    305790    sqscnotification    SEQUENCE     �   CREATE SEQUENCE sqscnotification
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 %   DROP SEQUENCE dmes.sqscnotification;
       dmes    	   sipPrueba    false    6            %           1259    305792    sqscoperatingconditions    SEQUENCE     �   CREATE SEQUENCE sqscoperatingconditions
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 ,   DROP SEQUENCE dmes.sqscoperatingconditions;
       dmes    	   sipPrueba    false    6            &           1259    305794    sqscpackingunit    SEQUENCE     �   CREATE SEQUENCE sqscpackingunit
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 $   DROP SEQUENCE dmes.sqscpackingunit;
       dmes    	   sipPrueba    false    6            '           1259    305796    sqscpartners    SEQUENCE     ~   CREATE SEQUENCE sqscpartners
    START WITH 15
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 11111111111111111
    CACHE 1;
 !   DROP SEQUENCE dmes.sqscpartners;
       dmes    	   sipPrueba    false    6            (           1259    305798    sqscpartsandconsumables    SEQUENCE     �   CREATE SEQUENCE sqscpartsandconsumables
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 ,   DROP SEQUENCE dmes.sqscpartsandconsumables;
       dmes    	   sipPrueba    false    6            )           1259    305800    sqscpersonbygroup    SEQUENCE     �   CREATE SEQUENCE sqscpersonbygroup
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 &   DROP SEQUENCE dmes.sqscpersonbygroup;
       dmes    	   sipPrueba    false    6            *           1259    305802    sqscpersondocumentationattached    SEQUENCE     �   CREATE SEQUENCE sqscpersondocumentationattached
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 4   DROP SEQUENCE dmes.sqscpersondocumentationattached;
       dmes    	   sipPrueba    false    6            +           1259    305804    sqscpersonobservations    SEQUENCE     �   CREATE SEQUENCE sqscpersonobservations
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 +   DROP SEQUENCE dmes.sqscpersonobservations;
       dmes    	   sipPrueba    false    6            ,           1259    305806    sqscpersons    SEQUENCE     }   CREATE SEQUENCE sqscpersons
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
     DROP SEQUENCE dmes.sqscpersons;
       dmes    	   sipPrueba    false    6            -           1259    305808    sqscpersonspecifications    SEQUENCE     �   CREATE SEQUENCE sqscpersonspecifications
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 -   DROP SEQUENCE dmes.sqscpersonspecifications;
       dmes    	   sipPrueba    false    6            .           1259    305810 
   sqscphones    SEQUENCE     |   CREATE SEQUENCE sqscphones
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
    DROP SEQUENCE dmes.sqscphones;
       dmes    	   sipPrueba    false    6            /           1259    305812 	   sqscphoto    SEQUENCE     z   CREATE SEQUENCE sqscphoto
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 11111111111111111
    CACHE 1;
    DROP SEQUENCE dmes.sqscphoto;
       dmes    	   sipPrueba    false    6            0           1259    305814    sqscprocessattached    SEQUENCE     �   CREATE SEQUENCE sqscprocessattached
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 (   DROP SEQUENCE dmes.sqscprocessattached;
       dmes    	   sipPrueba    false    6            1           1259    305816    sqscprocessemployee    SEQUENCE     �   CREATE SEQUENCE sqscprocessemployee
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 (   DROP SEQUENCE dmes.sqscprocessemployee;
       dmes    	   sipPrueba    false    6            2           1259    305818    sqscprocessemployeeorder    SEQUENCE     �   CREATE SEQUENCE sqscprocessemployeeorder
    START WITH 33
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 -   DROP SEQUENCE dmes.sqscprocessemployeeorder;
       dmes    	   sipPrueba    false    6            3           1259    305820    sqscprocessinput    SEQUENCE     �   CREATE SEQUENCE sqscprocessinput
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 %   DROP SEQUENCE dmes.sqscprocessinput;
       dmes    	   sipPrueba    false    6            4           1259    305822    sqscprocessinputorder    SEQUENCE     �   CREATE SEQUENCE sqscprocessinputorder
    START WITH 23
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 *   DROP SEQUENCE dmes.sqscprocessinputorder;
       dmes    	   sipPrueba    false    6            5           1259    305824    sqscprocessmachine    SEQUENCE     �   CREATE SEQUENCE sqscprocessmachine
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 '   DROP SEQUENCE dmes.sqscprocessmachine;
       dmes    	   sipPrueba    false    6            6           1259    305826    sqscprocessmachineorder    SEQUENCE     �   CREATE SEQUENCE sqscprocessmachineorder
    START WITH 32
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 ,   DROP SEQUENCE dmes.sqscprocessmachineorder;
       dmes    	   sipPrueba    false    6            7           1259    305828    sqscprocessproduct    SEQUENCE     �   CREATE SEQUENCE sqscprocessproduct
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 '   DROP SEQUENCE dmes.sqscprocessproduct;
       dmes    	   sipPrueba    false    6            8           1259    305830    sqscprocessproductorder    SEQUENCE     �   CREATE SEQUENCE sqscprocessproductorder
    START WITH 25
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 ,   DROP SEQUENCE dmes.sqscprocessproductorder;
       dmes    	   sipPrueba    false    6            9           1259    305832    sqscprocesstype    SEQUENCE     �   CREATE SEQUENCE sqscprocesstype
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 $   DROP SEQUENCE dmes.sqscprocesstype;
       dmes    	   sipPrueba    false    6            :           1259    305834    sqscproductattached    SEQUENCE     �   CREATE SEQUENCE sqscproductattached
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 (   DROP SEQUENCE dmes.sqscproductattached;
       dmes    	   sipPrueba    false    6            ;           1259    305836    sqscproductdocuments    SEQUENCE     �   CREATE SEQUENCE sqscproductdocuments
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 )   DROP SEQUENCE dmes.sqscproductdocuments;
       dmes    	   sipPrueba    false    6            <           1259    305838    sqscproductformulation    SEQUENCE     �   CREATE SEQUENCE sqscproductformulation
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 +   DROP SEQUENCE dmes.sqscproductformulation;
       dmes    	   sipPrueba    false    6            =           1259    305840    sqscproductorder    SEQUENCE     �   CREATE SEQUENCE sqscproductorder
    START WITH 12
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 %   DROP SEQUENCE dmes.sqscproductorder;
       dmes    	   sipPrueba    false    6            >           1259    305842    sqscreplacement    SEQUENCE     �   CREATE SEQUENCE sqscreplacement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 $   DROP SEQUENCE dmes.sqscreplacement;
       dmes    	   sipPrueba    false    6            ?           1259    305844    sqscreplacementattached    SEQUENCE     �   CREATE SEQUENCE sqscreplacementattached
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 ,   DROP SEQUENCE dmes.sqscreplacementattached;
       dmes    	   sipPrueba    false    6            @           1259    305846    sqscreplacementdocuments    SEQUENCE     �   CREATE SEQUENCE sqscreplacementdocuments
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 -   DROP SEQUENCE dmes.sqscreplacementdocuments;
       dmes    	   sipPrueba    false    6            A           1259    305848 	   sqscroles    SEQUENCE     {   CREATE SEQUENCE sqscroles
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
    DROP SEQUENCE dmes.sqscroles;
       dmes    	   sipPrueba    false    6            B           1259    305850    sqscservicesorproducts    SEQUENCE     �   CREATE SEQUENCE sqscservicesorproducts
    START WITH 15
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 11111111111111111
    CACHE 1;
 +   DROP SEQUENCE dmes.sqscservicesorproducts;
       dmes    	   sipPrueba    false    6            C           1259    305852 	   sqscstock    SEQUENCE     {   CREATE SEQUENCE sqscstock
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
    DROP SEQUENCE dmes.sqscstock;
       dmes    	   sipPrueba    false    6            D           1259    305854    sqscstopmachine    SEQUENCE     �   CREATE SEQUENCE sqscstopmachine
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 $   DROP SEQUENCE dmes.sqscstopmachine;
       dmes    	   sipPrueba    false    6            E           1259    305856 	   sqscstore    SEQUENCE     z   CREATE SEQUENCE sqscstore
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 11111111111111111
    CACHE 1;
    DROP SEQUENCE dmes.sqscstore;
       dmes    	   sipPrueba    false    6            F           1259    305858    sqscstoreorder    SEQUENCE     �   CREATE SEQUENCE sqscstoreorder
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 #   DROP SEQUENCE dmes.sqscstoreorder;
       dmes    	   sipPrueba    false    6            G           1259    305860    sqscstoreorderitem    SEQUENCE     �   CREATE SEQUENCE sqscstoreorderitem
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 '   DROP SEQUENCE dmes.sqscstoreorderitem;
       dmes    	   sipPrueba    false    6            H           1259    305862    sqscstoreorderstate    SEQUENCE     �   CREATE SEQUENCE sqscstoreorderstate
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 (   DROP SEQUENCE dmes.sqscstoreorderstate;
       dmes    	   sipPrueba    false    6            I           1259    305864    sqsctool    SEQUENCE     z   CREATE SEQUENCE sqsctool
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
    DROP SEQUENCE dmes.sqsctool;
       dmes    	   sipPrueba    false    6            J           1259    305866    sqsctoolattached    SEQUENCE     �   CREATE SEQUENCE sqsctoolattached
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 %   DROP SEQUENCE dmes.sqsctoolattached;
       dmes    	   sipPrueba    false    6            K           1259    305868    sqsctooldocuments    SEQUENCE     �   CREATE SEQUENCE sqsctooldocuments
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 &   DROP SEQUENCE dmes.sqsctooldocuments;
       dmes    	   sipPrueba    false    6            L           1259    305870 	   sqscusers    SEQUENCE     z   CREATE SEQUENCE sqscusers
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 11111111111111111
    CACHE 1;
    DROP SEQUENCE dmes.sqscusers;
       dmes    	   sipPrueba    false    6            M           1259    305872    sqscworkexperience    SEQUENCE     �   CREATE SEQUENCE sqscworkexperience
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 11111111111111111
    CACHE 1;
 '   DROP SEQUENCE dmes.sqscworkexperience;
       dmes    	   sipPrueba    false    6            N           1259    305874    sqscworkforce    SEQUENCE        CREATE SEQUENCE sqscworkforce
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 111111111111111111
    CACHE 1;
 "   DROP SEQUENCE dmes.sqscworkforce;
       dmes    	   sipPrueba    false    6            O           1259    305876    sqtype    SEQUENCE     n   CREATE SEQUENCE sqtype
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 11111111
    CACHE 1;
    DROP SEQUENCE dmes.sqtype;
       dmes    	   sipPrueba    false    6            �          0    313508    ot_log_production 
   TABLE DATA                     dmes    	   sipPrueba    false    336   
�      1          0    305318    ot_maintenance 
   TABLE DATA                     dmes    	   sipPrueba    false    170   ��      2          0    305324    ot_maintenance_corrective 
   TABLE DATA                     dmes    	   sipPrueba    false    171   ��      3          0    305330    ot_maintenance_preventive 
   TABLE DATA                     dmes    	   sipPrueba    false    172   ��      4          0    305336    ot_maintenance_schedule 
   TABLE DATA                     dmes    	   sipPrueba    false    173   ��      5          0    305339    ot_production_order 
   TABLE DATA                     dmes    	   sipPrueba    false    174   0�      6          0    305342    sc_competencies 
   TABLE DATA                     dmes    	   sipPrueba    false    175   ��      7          0    305348    sc_constants_load_files 
   TABLE DATA                     dmes    	   sipPrueba    false    176   ��      8          0    305354    sc_cost_center 
   TABLE DATA                     dmes    	   sipPrueba    false    177   D�      9          0    305357    sc_distribution_unit 
   TABLE DATA                     dmes    	   sipPrueba    false    178   ��      :          0    305360    sc_documents 
   TABLE DATA                     dmes    	   sipPrueba    false    179   ��      ;          0    305366    sc_employee 
   TABLE DATA                     dmes    	   sipPrueba    false    180   ��      <          0    305369    sc_factory_location 
   TABLE DATA                     dmes    	   sipPrueba    false    181   ��      =          0    305375    sc_group 
   TABLE DATA                     dmes    	   sipPrueba    false    182   X�      >          0    305378    sc_input 
   TABLE DATA                     dmes    	   sipPrueba    false    183   ��      ?          0    305384    sc_input_dimension 
   TABLE DATA                     dmes    	   sipPrueba    false    184   >�      @          0    305390    sc_input_documents 
   TABLE DATA                     dmes    	   sipPrueba    false    185   ��      A          0    305396    sc_input_equivalence 
   TABLE DATA                     dmes    	   sipPrueba    false    186   ��      B          0    305399    sc_input_feactures 
   TABLE DATA                     dmes    	   sipPrueba    false    187   ��      C          0    305405    sc_input_observations 
   TABLE DATA                     dmes    	   sipPrueba    false    188   L�      D          0    305411    sc_input_specifications 
   TABLE DATA                     dmes    	   sipPrueba    false    189   ��      E          0    305417    sc_location 
   TABLE DATA                     dmes    	   sipPrueba    false    190   ��      F          0    305423 
   sc_machine 
   TABLE DATA                     dmes    	   sipPrueba    false    191   g�      G          0    305430    sc_machine_attached 
   TABLE DATA                     dmes    	   sipPrueba    false    192   D�      H          0    305433    sc_machine_conditions 
   TABLE DATA                     dmes    	   sipPrueba    false    193   ��      I          0    305439    sc_machine_document 
   TABLE DATA                     dmes    	   sipPrueba    false    194   $�      J          0    305445    sc_machine_part 
   TABLE DATA                     dmes    	   sipPrueba    false    195   ��      K          0    305451    sc_machine_part_attached 
   TABLE DATA                     dmes    	   sipPrueba    false    196   �      L          0    305454    sc_machine_part_document 
   TABLE DATA                     dmes    	   sipPrueba    false    197   ��      M          0    305460    sc_mails 
   TABLE DATA                     dmes    	   sipPrueba    false    198   :�      N          0    305463    sc_maintenance_activity 
   TABLE DATA                     dmes    	   sipPrueba    false    199   ^�      O          0    305469    sc_maintenance_clasification 
   TABLE DATA                     dmes    	   sipPrueba    false    200   ��      P          0    305472    sc_maintenance_damage 
   TABLE DATA                     dmes    	   sipPrueba    false    201   G�      Q          0    305475    sc_maintenance_state 
   TABLE DATA                     dmes    	   sipPrueba    false    202   ��      R          0    305478    sc_measure_unit 
   TABLE DATA                     dmes    	   sipPrueba    false    203   [�      S          0    305481    sc_module_permission 
   TABLE DATA                     dmes    	   sipPrueba    false    204   ��      T          0    305487    sc_module_permission_by_role 
   TABLE DATA                     dmes    	   sipPrueba    false    205   ��      U          0    305490    sc_money 
   TABLE DATA                     dmes    	   sipPrueba    false    206   |�      V          0    305493    sc_notification 
   TABLE DATA                     dmes    	   sipPrueba    false    207   4�      W          0    305496    sc_operating_conditions 
   TABLE DATA                     dmes    	   sipPrueba    false    208   V�      X          0    305502    sc_packing_unit 
   TABLE DATA                     dmes    	   sipPrueba    false    209   p�      Y          0    305505 
   sc_partner 
   TABLE DATA                     dmes    	   sipPrueba    false    210   ?�      Z          0    305508 	   sc_person 
   TABLE DATA                     dmes    	   sipPrueba    false    211   ��      [          0    305514    sc_person_by_group 
   TABLE DATA                     dmes    	   sipPrueba    false    212   ��      \          0    305517    sc_person_observations 
   TABLE DATA                     dmes    	   sipPrueba    false    213   %�      ]          0    305523    sc_person_specifications 
   TABLE DATA                     dmes    	   sipPrueba    false    214    �      ^          0    305529 	   sc_phones 
   TABLE DATA                     dmes    	   sipPrueba    false    215          _          0    305532    sc_priority 
   TABLE DATA                     dmes    	   sipPrueba    false    216   P      `          0    305535    sc_procces_product 
   TABLE DATA                     dmes    	   sipPrueba    false    217   �      a          0    305541    sc_procces_product_order 
   TABLE DATA                     dmes    	   sipPrueba    false    218   �      b          0    305547    sc_process_attached 
   TABLE DATA                     dmes    	   sipPrueba    false    219         c          0    305550    sc_process_employee 
   TABLE DATA                     dmes    	   sipPrueba    false    220         d          0    305556    sc_process_employee_order 
   TABLE DATA                     dmes    	   sipPrueba    false    221   �      e          0    305562    sc_process_input 
   TABLE DATA                     dmes    	   sipPrueba    false    222   �      f          0    305565    sc_process_input_order 
   TABLE DATA                     dmes    	   sipPrueba    false    223   f      g          0    305568    sc_process_machine 
   TABLE DATA                     dmes    	   sipPrueba    false    224   7      h          0    305574    sc_process_machine_order 
   TABLE DATA                     dmes    	   sipPrueba    false    225   �      i          0    305580    sc_process_type 
   TABLE DATA                     dmes    	   sipPrueba    false    226   �      j          0    305583    sc_product_attached 
   TABLE DATA                     dmes    	   sipPrueba    false    227   }	      k          0    305589    sc_product_documents 
   TABLE DATA                     dmes    	   sipPrueba    false    228   �
      l          0    305595    sc_product_formulation 
   TABLE DATA                     dmes    	   sipPrueba    false    229   �      m          0    305601    sc_product_order 
   TABLE DATA                     dmes    	   sipPrueba    false    230   3      n          0    305607    sc_production_state 
   TABLE DATA                     dmes    	   sipPrueba    false    231   �      o          0    305610    sc_replacement 
   TABLE DATA                     dmes    	   sipPrueba    false    232   Z      p          0    305616    sc_replacement_attached 
   TABLE DATA                     dmes    	   sipPrueba    false    233   �      q          0    305622    sc_replacement_documents 
   TABLE DATA                     dmes    	   sipPrueba    false    234   �      r          0    305628    sc_roles 
   TABLE DATA                     dmes    	   sipPrueba    false    235   �      s          0    305634    sc_services_or_products 
   TABLE DATA                     dmes    	   sipPrueba    false    236   �      t          0    305640    sc_stock 
   TABLE DATA                     dmes    	   sipPrueba    false    237   �      u          0    305643    sc_stop_machine 
   TABLE DATA                     dmes    	   sipPrueba    false    238   �      v          0    305650    sc_store 
   TABLE DATA                     dmes    	   sipPrueba    false    239   �      w          0    305656    sc_store_order 
   TABLE DATA                     dmes    	   sipPrueba    false    240   1       x          0    305662    sc_store_order_item 
   TABLE DATA                     dmes    	   sipPrueba    false    241   "      y          0    305665    sc_store_order_state 
   TABLE DATA                     dmes    	   sipPrueba    false    242   �$      z          0    305668    sc_store_requisition 
   TABLE DATA                     dmes    	   sipPrueba    false    243   Y%      {          0    305674    sc_store_requisition_item 
   TABLE DATA                     dmes    	   sipPrueba    false    244   s%      |          0    305677    sc_store_requisition_state 
   TABLE DATA                     dmes    	   sipPrueba    false    245   �%      }          0    305680    sc_time 
   TABLE DATA                     dmes    	   sipPrueba    false    246   �%      ~          0    305683    sc_tool 
   TABLE DATA                     dmes    	   sipPrueba    false    247   =&                0    305689    sc_tool_attached 
   TABLE DATA                     dmes    	   sipPrueba    false    248   �*      �          0    305695    sc_tool_documents 
   TABLE DATA                     dmes    	   sipPrueba    false    249   �,      �          0    305701    sc_turn 
   TABLE DATA                     dmes    	   sipPrueba    false    250   �/      �          0    305704    sc_type 
   TABLE DATA                     dmes    	   sipPrueba    false    251   70      �          0    305707    sc_users 
   TABLE DATA                     dmes    	   sipPrueba    false    252   %1      �          0    305710    sc_work_experience 
   TABLE DATA                     dmes    	   sipPrueba    false    253   �2      �          0    305713    sc_workforce 
   TABLE DATA                     dmes    	   sipPrueba    false    254   �3      �           0    0    sqclasstype    SEQUENCE SET     3   SELECT pg_catalog.setval('sqclasstype', 1, false);
            dmes    	   sipPrueba    false    255            �           0    0    sqmaintenanceschedule    SEQUENCE SET     =   SELECT pg_catalog.setval('sqmaintenanceschedule', 53, true);
            dmes    	   sipPrueba    false    256            �           0    0    sqotlogproduction    SEQUENCE SET     8   SELECT pg_catalog.setval('sqotlogproduction', 5, true);
            dmes    	   sipPrueba    false    337            �           0    0    sqotmaintenance    SEQUENCE SET     7   SELECT pg_catalog.setval('sqotmaintenance', 39, true);
            dmes    	   sipPrueba    false    257            �           0    0    sqotmaintenancecorrective    SEQUENCE SET     A   SELECT pg_catalog.setval('sqotmaintenancecorrective', 25, true);
            dmes    	   sipPrueba    false    258            �           0    0    sqotmaintenancepreventive    SEQUENCE SET     @   SELECT pg_catalog.setval('sqotmaintenancepreventive', 6, true);
            dmes    	   sipPrueba    false    259            �           0    0    sqotproductionorder    SEQUENCE SET     ;   SELECT pg_catalog.setval('sqotproductionorder', 24, true);
            dmes    	   sipPrueba    false    260            �           0    0    sqotproductionproduct    SEQUENCE SET     =   SELECT pg_catalog.setval('sqotproductionproduct', 17, true);
            dmes    	   sipPrueba    false    261            �           0    0    sqsccompetencies    SEQUENCE SET     7   SELECT pg_catalog.setval('sqsccompetencies', 9, true);
            dmes    	   sipPrueba    false    262            �           0    0    sqsccostcenter    SEQUENCE SET     6   SELECT pg_catalog.setval('sqsccostcenter', 19, true);
            dmes    	   sipPrueba    false    263            �           0    0    sqscdistributionunit    SEQUENCE SET     ;   SELECT pg_catalog.setval('sqscdistributionunit', 4, true);
            dmes    	   sipPrueba    false    264            �           0    0    sqscdocuments    SEQUENCE SET     5   SELECT pg_catalog.setval('sqscdocuments', 36, true);
            dmes    	   sipPrueba    false    265            �           0    0    sqscemployee    SEQUENCE SET     4   SELECT pg_catalog.setval('sqscemployee', 18, true);
            dmes    	   sipPrueba    false    266            �           0    0    sqscfactorylocation    SEQUENCE SET     ;   SELECT pg_catalog.setval('sqscfactorylocation', 7, false);
            dmes    	   sipPrueba    false    267            �           0    0 	   sqscgroup    SEQUENCE SET     1   SELECT pg_catalog.setval('sqscgroup', 1, false);
            dmes    	   sipPrueba    false    268            �           0    0 	   sqscinput    SEQUENCE SET     1   SELECT pg_catalog.setval('sqscinput', 18, true);
            dmes    	   sipPrueba    false    269            �           0    0    sqscinputdimension    SEQUENCE SET     :   SELECT pg_catalog.setval('sqscinputdimension', 71, true);
            dmes    	   sipPrueba    false    270            �           0    0    sqscinputdocuments    SEQUENCE SET     :   SELECT pg_catalog.setval('sqscinputdocuments', 13, true);
            dmes    	   sipPrueba    false    271            �           0    0    sqscinputequivalence    SEQUENCE SET     <   SELECT pg_catalog.setval('sqscinputequivalence', 1, false);
            dmes    	   sipPrueba    false    272            �           0    0    sqscinputfeature    SEQUENCE SET     8   SELECT pg_catalog.setval('sqscinputfeature', 17, true);
            dmes    	   sipPrueba    false    273            �           0    0    sqscinputobservation    SEQUENCE SET     <   SELECT pg_catalog.setval('sqscinputobservation', 11, true);
            dmes    	   sipPrueba    false    274            �           0    0    sqscinputspecification    SEQUENCE SET     >   SELECT pg_catalog.setval('sqscinputspecification', 20, true);
            dmes    	   sipPrueba    false    275            �           0    0    sqsclocation    SEQUENCE SET     4   SELECT pg_catalog.setval('sqsclocation', 18, true);
            dmes    	   sipPrueba    false    276            �           0    0    sqscmachine    SEQUENCE SET     3   SELECT pg_catalog.setval('sqscmachine', 14, true);
            dmes    	   sipPrueba    false    277            �           0    0    sqscmachineattached    SEQUENCE SET     ;   SELECT pg_catalog.setval('sqscmachineattached', 22, true);
            dmes    	   sipPrueba    false    278            �           0    0    sqscmachineconditions    SEQUENCE SET     <   SELECT pg_catalog.setval('sqscmachineconditions', 2, true);
            dmes    	   sipPrueba    false    279            �           0    0    sqscmachinedocument    SEQUENCE SET     :   SELECT pg_catalog.setval('sqscmachinedocument', 7, true);
            dmes    	   sipPrueba    false    280            �           0    0    sqscmachinepart    SEQUENCE SET     7   SELECT pg_catalog.setval('sqscmachinepart', 18, true);
            dmes    	   sipPrueba    false    281            �           0    0    sqscmachinepartattached    SEQUENCE SET     ?   SELECT pg_catalog.setval('sqscmachinepartattached', 34, true);
            dmes    	   sipPrueba    false    282            �           0    0    sqscmachinepartdocument    SEQUENCE SET     ?   SELECT pg_catalog.setval('sqscmachinepartdocument', 16, true);
            dmes    	   sipPrueba    false    283            �           0    0 	   sqscmails    SEQUENCE SET     1   SELECT pg_catalog.setval('sqscmails', 39, true);
            dmes    	   sipPrueba    false    284                        0    0    sqscmaintenanceactivity    SEQUENCE SET     ?   SELECT pg_catalog.setval('sqscmaintenanceactivity', 40, true);
            dmes    	   sipPrueba    false    285                       0    0    sqscmaintenanceplan    SEQUENCE SET     ;   SELECT pg_catalog.setval('sqscmaintenanceplan', 1, false);
            dmes    	   sipPrueba    false    286                       0    0    sqscmaintenancereplacement    SEQUENCE SET     B   SELECT pg_catalog.setval('sqscmaintenancereplacement', 1, false);
            dmes    	   sipPrueba    false    287                       0    0    sqscmaintenancetool    SEQUENCE SET     ;   SELECT pg_catalog.setval('sqscmaintenancetool', 1, false);
            dmes    	   sipPrueba    false    288                       0    0    sqscmeasure    SEQUENCE SET     3   SELECT pg_catalog.setval('sqscmeasure', 28, true);
            dmes    	   sipPrueba    false    289                       0    0    sqscmodulespermissionbyrole    SEQUENCE SET     E   SELECT pg_catalog.setval('sqscmodulespermissionbyrole', 2111, true);
            dmes    	   sipPrueba    false    290                       0    0 	   sqscmoney    SEQUENCE SET     1   SELECT pg_catalog.setval('sqscmoney', 1, false);
            dmes    	   sipPrueba    false    291                       0    0    sqscnotification    SEQUENCE SET     8   SELECT pg_catalog.setval('sqscnotification', 67, true);
            dmes    	   sipPrueba    false    292                       0    0    sqscoperatingconditions    SEQUENCE SET     ?   SELECT pg_catalog.setval('sqscoperatingconditions', 1, false);
            dmes    	   sipPrueba    false    293            	           0    0    sqscpackingunit    SEQUENCE SET     6   SELECT pg_catalog.setval('sqscpackingunit', 7, true);
            dmes    	   sipPrueba    false    294            
           0    0    sqscpartners    SEQUENCE SET     4   SELECT pg_catalog.setval('sqscpartners', 21, true);
            dmes    	   sipPrueba    false    295                       0    0    sqscpartsandconsumables    SEQUENCE SET     ?   SELECT pg_catalog.setval('sqscpartsandconsumables', 1, false);
            dmes    	   sipPrueba    false    296                       0    0    sqscpersonbygroup    SEQUENCE SET     9   SELECT pg_catalog.setval('sqscpersonbygroup', 1, false);
            dmes    	   sipPrueba    false    297                       0    0    sqscpersondocumentationattached    SEQUENCE SET     G   SELECT pg_catalog.setval('sqscpersondocumentationattached', 6, false);
            dmes    	   sipPrueba    false    298                       0    0    sqscpersonobservations    SEQUENCE SET     >   SELECT pg_catalog.setval('sqscpersonobservations', 19, true);
            dmes    	   sipPrueba    false    299                       0    0    sqscpersons    SEQUENCE SET     3   SELECT pg_catalog.setval('sqscpersons', 38, true);
            dmes    	   sipPrueba    false    300                       0    0    sqscpersonspecifications    SEQUENCE SET     @   SELECT pg_catalog.setval('sqscpersonspecifications', 18, true);
            dmes    	   sipPrueba    false    301                       0    0 
   sqscphones    SEQUENCE SET     2   SELECT pg_catalog.setval('sqscphones', 34, true);
            dmes    	   sipPrueba    false    302                       0    0 	   sqscphoto    SEQUENCE SET     1   SELECT pg_catalog.setval('sqscphoto', 1, false);
            dmes    	   sipPrueba    false    303                       0    0    sqscprocessattached    SEQUENCE SET     ;   SELECT pg_catalog.setval('sqscprocessattached', 1, false);
            dmes    	   sipPrueba    false    304                       0    0    sqscprocessemployee    SEQUENCE SET     ;   SELECT pg_catalog.setval('sqscprocessemployee', 33, true);
            dmes    	   sipPrueba    false    305                       0    0    sqscprocessemployeeorder    SEQUENCE SET     @   SELECT pg_catalog.setval('sqscprocessemployeeorder', 39, true);
            dmes    	   sipPrueba    false    306                       0    0    sqscprocessinput    SEQUENCE SET     8   SELECT pg_catalog.setval('sqscprocessinput', 23, true);
            dmes    	   sipPrueba    false    307                       0    0    sqscprocessinputorder    SEQUENCE SET     =   SELECT pg_catalog.setval('sqscprocessinputorder', 36, true);
            dmes    	   sipPrueba    false    308                       0    0    sqscprocessmachine    SEQUENCE SET     :   SELECT pg_catalog.setval('sqscprocessmachine', 32, true);
            dmes    	   sipPrueba    false    309                       0    0    sqscprocessmachineorder    SEQUENCE SET     ?   SELECT pg_catalog.setval('sqscprocessmachineorder', 45, true);
            dmes    	   sipPrueba    false    310                       0    0    sqscprocessproduct    SEQUENCE SET     :   SELECT pg_catalog.setval('sqscprocessproduct', 25, true);
            dmes    	   sipPrueba    false    311                       0    0    sqscprocessproductorder    SEQUENCE SET     ?   SELECT pg_catalog.setval('sqscprocessproductorder', 31, true);
            dmes    	   sipPrueba    false    312                       0    0    sqscprocesstype    SEQUENCE SET     7   SELECT pg_catalog.setval('sqscprocesstype', 1, false);
            dmes    	   sipPrueba    false    313                       0    0    sqscproductattached    SEQUENCE SET     ;   SELECT pg_catalog.setval('sqscproductattached', 47, true);
            dmes    	   sipPrueba    false    314                       0    0    sqscproductdocuments    SEQUENCE SET     <   SELECT pg_catalog.setval('sqscproductdocuments', 13, true);
            dmes    	   sipPrueba    false    315                       0    0    sqscproductformulation    SEQUENCE SET     >   SELECT pg_catalog.setval('sqscproductformulation', 12, true);
            dmes    	   sipPrueba    false    316                        0    0    sqscproductorder    SEQUENCE SET     8   SELECT pg_catalog.setval('sqscproductorder', 18, true);
            dmes    	   sipPrueba    false    317            !           0    0    sqscreplacement    SEQUENCE SET     6   SELECT pg_catalog.setval('sqscreplacement', 9, true);
            dmes    	   sipPrueba    false    318            "           0    0    sqscreplacementattached    SEQUENCE SET     ?   SELECT pg_catalog.setval('sqscreplacementattached', 24, true);
            dmes    	   sipPrueba    false    319            #           0    0    sqscreplacementdocuments    SEQUENCE SET     @   SELECT pg_catalog.setval('sqscreplacementdocuments', 15, true);
            dmes    	   sipPrueba    false    320            $           0    0 	   sqscroles    SEQUENCE SET     1   SELECT pg_catalog.setval('sqscroles', 11, true);
            dmes    	   sipPrueba    false    321            %           0    0    sqscservicesorproducts    SEQUENCE SET     >   SELECT pg_catalog.setval('sqscservicesorproducts', 23, true);
            dmes    	   sipPrueba    false    322            &           0    0 	   sqscstock    SEQUENCE SET     1   SELECT pg_catalog.setval('sqscstock', 39, true);
            dmes    	   sipPrueba    false    323            '           0    0    sqscstopmachine    SEQUENCE SET     7   SELECT pg_catalog.setval('sqscstopmachine', 79, true);
            dmes    	   sipPrueba    false    324            (           0    0 	   sqscstore    SEQUENCE SET     1   SELECT pg_catalog.setval('sqscstore', 1, false);
            dmes    	   sipPrueba    false    325            )           0    0    sqscstoreorder    SEQUENCE SET     6   SELECT pg_catalog.setval('sqscstoreorder', 78, true);
            dmes    	   sipPrueba    false    326            *           0    0    sqscstoreorderitem    SEQUENCE SET     :   SELECT pg_catalog.setval('sqscstoreorderitem', 53, true);
            dmes    	   sipPrueba    false    327            +           0    0    sqscstoreorderstate    SEQUENCE SET     ;   SELECT pg_catalog.setval('sqscstoreorderstate', 1, false);
            dmes    	   sipPrueba    false    328            ,           0    0    sqsctool    SEQUENCE SET     0   SELECT pg_catalog.setval('sqsctool', 13, true);
            dmes    	   sipPrueba    false    329            -           0    0    sqsctoolattached    SEQUENCE SET     8   SELECT pg_catalog.setval('sqsctoolattached', 10, true);
            dmes    	   sipPrueba    false    330            .           0    0    sqsctooldocuments    SEQUENCE SET     9   SELECT pg_catalog.setval('sqsctooldocuments', 17, true);
            dmes    	   sipPrueba    false    331            /           0    0 	   sqscusers    SEQUENCE SET     1   SELECT pg_catalog.setval('sqscusers', 24, true);
            dmes    	   sipPrueba    false    332            0           0    0    sqscworkexperience    SEQUENCE SET     :   SELECT pg_catalog.setval('sqscworkexperience', 12, true);
            dmes    	   sipPrueba    false    333            1           0    0    sqscworkforce    SEQUENCE SET     5   SELECT pg_catalog.setval('sqscworkforce', 31, true);
            dmes    	   sipPrueba    false    334            2           0    0    sqtype    SEQUENCE SET     .   SELECT pg_catalog.setval('sqtype', 1, false);
            dmes    	   sipPrueba    false    335            �	           2606    305879    PK_DISTRIBUTION_UNIT 
   CONSTRAINT     t   ALTER TABLE ONLY sc_distribution_unit
    ADD CONSTRAINT "PK_DISTRIBUTION_UNIT" PRIMARY KEY (id_distribution_unit);
 S   ALTER TABLE ONLY dmes.sc_distribution_unit DROP CONSTRAINT "PK_DISTRIBUTION_UNIT";
       dmes      	   sipPrueba    false    178    178            �	           2606    305881    PK_FACTORY_LOCATION 
   CONSTRAINT     q   ALTER TABLE ONLY sc_factory_location
    ADD CONSTRAINT "PK_FACTORY_LOCATION" PRIMARY KEY (id_factory_location);
 Q   ALTER TABLE ONLY dmes.sc_factory_location DROP CONSTRAINT "PK_FACTORY_LOCATION";
       dmes      	   sipPrueba    false    181    181            �	           2606    305883    PK_INPUT_DIMENSION 
   CONSTRAINT     n   ALTER TABLE ONLY sc_input_dimension
    ADD CONSTRAINT "PK_INPUT_DIMENSION" PRIMARY KEY (id_input_dimension);
 O   ALTER TABLE ONLY dmes.sc_input_dimension DROP CONSTRAINT "PK_INPUT_DIMENSION";
       dmes      	   sipPrueba    false    184    184            �	           2606    305885    PK_INPUT_EQUIVALENCES 
   CONSTRAINT     u   ALTER TABLE ONLY sc_input_equivalence
    ADD CONSTRAINT "PK_INPUT_EQUIVALENCES" PRIMARY KEY (id_input_equivalence);
 T   ALTER TABLE ONLY dmes.sc_input_equivalence DROP CONSTRAINT "PK_INPUT_EQUIVALENCES";
       dmes      	   sipPrueba    false    186    186            �	           2606    305887    PK_INPUT_LOCATION 
   CONSTRAINT     _   ALTER TABLE ONLY sc_location
    ADD CONSTRAINT "PK_INPUT_LOCATION" PRIMARY KEY (id_location);
 G   ALTER TABLE ONLY dmes.sc_location DROP CONSTRAINT "PK_INPUT_LOCATION";
       dmes      	   sipPrueba    false    190    190            #
           2606    305889    PK_INPUT_STOCK 
   CONSTRAINT     V   ALTER TABLE ONLY sc_stock
    ADD CONSTRAINT "PK_INPUT_STOCK" PRIMARY KEY (id_stock);
 A   ALTER TABLE ONLY dmes.sc_stock DROP CONSTRAINT "PK_INPUT_STOCK";
       dmes      	   sipPrueba    false    237    237            K
           2606    313512    PK_LOG_PRODUCTION 
   CONSTRAINT     `   ALTER TABLE ONLY ot_log_production
    ADD CONSTRAINT "PK_LOG_PRODUCTION" PRIMARY KEY (id_log);
 M   ALTER TABLE ONLY dmes.ot_log_production DROP CONSTRAINT "PK_LOG_PRODUCTION";
       dmes      	   sipPrueba    false    336    336            �	           2606    305891    PK_MACHINE_DOCUMENT 
   CONSTRAINT     q   ALTER TABLE ONLY sc_machine_document
    ADD CONSTRAINT "PK_MACHINE_DOCUMENT" PRIMARY KEY (id_machine_document);
 Q   ALTER TABLE ONLY dmes.sc_machine_document DROP CONSTRAINT "PK_MACHINE_DOCUMENT";
       dmes      	   sipPrueba    false    194    194            �	           2606    305893    PK_MACHINE_PART 
   CONSTRAINT     e   ALTER TABLE ONLY sc_machine_part
    ADD CONSTRAINT "PK_MACHINE_PART" PRIMARY KEY (id_machine_part);
 I   ALTER TABLE ONLY dmes.sc_machine_part DROP CONSTRAINT "PK_MACHINE_PART";
       dmes      	   sipPrueba    false    195    195            �	           2606    305895    PK_MACHINE_PART_ATTACHED 
   CONSTRAINT     �   ALTER TABLE ONLY sc_machine_part_attached
    ADD CONSTRAINT "PK_MACHINE_PART_ATTACHED" PRIMARY KEY (id_machine_part_attached);
 [   ALTER TABLE ONLY dmes.sc_machine_part_attached DROP CONSTRAINT "PK_MACHINE_PART_ATTACHED";
       dmes      	   sipPrueba    false    196    196            �	           2606    305897    PK_MACHINE_PART_DOCUMENT 
   CONSTRAINT     �   ALTER TABLE ONLY sc_machine_part_document
    ADD CONSTRAINT "PK_MACHINE_PART_DOCUMENT" PRIMARY KEY (id_machine_part_document);
 [   ALTER TABLE ONLY dmes.sc_machine_part_document DROP CONSTRAINT "PK_MACHINE_PART_DOCUMENT";
       dmes      	   sipPrueba    false    197    197            �	           2606    305899    PK_MAINTENANCE 
   CONSTRAINT     b   ALTER TABLE ONLY ot_maintenance
    ADD CONSTRAINT "PK_MAINTENANCE" PRIMARY KEY (id_maintenance);
 G   ALTER TABLE ONLY dmes.ot_maintenance DROP CONSTRAINT "PK_MAINTENANCE";
       dmes      	   sipPrueba    false    170    170            �	           2606    305901    PK_MAINTENANCE_ACTIVITY 
   CONSTRAINT     }   ALTER TABLE ONLY sc_maintenance_activity
    ADD CONSTRAINT "PK_MAINTENANCE_ACTIVITY" PRIMARY KEY (id_maintenance_activity);
 Y   ALTER TABLE ONLY dmes.sc_maintenance_activity DROP CONSTRAINT "PK_MAINTENANCE_ACTIVITY";
       dmes      	   sipPrueba    false    199    199            �	           2606    305903    PK_MAINTENANCE_CLASIFICATION 
   CONSTRAINT     �   ALTER TABLE ONLY sc_maintenance_clasification
    ADD CONSTRAINT "PK_MAINTENANCE_CLASIFICATION" PRIMARY KEY (id_maintenance_clasification);
 c   ALTER TABLE ONLY dmes.sc_maintenance_clasification DROP CONSTRAINT "PK_MAINTENANCE_CLASIFICATION";
       dmes      	   sipPrueba    false    200    200            �	           2606    305905    PK_MAINTENANCE_CORRECTIVE 
   CONSTRAINT     �   ALTER TABLE ONLY ot_maintenance_corrective
    ADD CONSTRAINT "PK_MAINTENANCE_CORRECTIVE" PRIMARY KEY (id_maintenance_corrective);
 ]   ALTER TABLE ONLY dmes.ot_maintenance_corrective DROP CONSTRAINT "PK_MAINTENANCE_CORRECTIVE";
       dmes      	   sipPrueba    false    171    171            �	           2606    305907    PK_MAINTENANCE_DAMAGE 
   CONSTRAINT     w   ALTER TABLE ONLY sc_maintenance_damage
    ADD CONSTRAINT "PK_MAINTENANCE_DAMAGE" PRIMARY KEY (id_maintenance_damage);
 U   ALTER TABLE ONLY dmes.sc_maintenance_damage DROP CONSTRAINT "PK_MAINTENANCE_DAMAGE";
       dmes      	   sipPrueba    false    201    201            �	           2606    305909    PK_MAINTENANCE_PREVENTIVE 
   CONSTRAINT     �   ALTER TABLE ONLY ot_maintenance_preventive
    ADD CONSTRAINT "PK_MAINTENANCE_PREVENTIVE" PRIMARY KEY (id_maintenance_preventive);
 ]   ALTER TABLE ONLY dmes.ot_maintenance_preventive DROP CONSTRAINT "PK_MAINTENANCE_PREVENTIVE";
       dmes      	   sipPrueba    false    172    172            �	           2606    305911    PK_MAINTENANCE_STATE 
   CONSTRAINT     t   ALTER TABLE ONLY sc_maintenance_state
    ADD CONSTRAINT "PK_MAINTENANCE_STATE" PRIMARY KEY (id_maintenance_state);
 S   ALTER TABLE ONLY dmes.sc_maintenance_state DROP CONSTRAINT "PK_MAINTENANCE_STATE";
       dmes      	   sipPrueba    false    202    202            �	           2606    305913    PK_PROCESS_ATTACHED 
   CONSTRAINT     q   ALTER TABLE ONLY sc_process_attached
    ADD CONSTRAINT "PK_PROCESS_ATTACHED" PRIMARY KEY (id_process_attached);
 Q   ALTER TABLE ONLY dmes.sc_process_attached DROP CONSTRAINT "PK_PROCESS_ATTACHED";
       dmes      	   sipPrueba    false    219    219            �	           2606    305915    PK_PROCESS_EMPLOYEE 
   CONSTRAINT     q   ALTER TABLE ONLY sc_process_employee
    ADD CONSTRAINT "PK_PROCESS_EMPLOYEE" PRIMARY KEY (id_process_employee);
 Q   ALTER TABLE ONLY dmes.sc_process_employee DROP CONSTRAINT "PK_PROCESS_EMPLOYEE";
       dmes      	   sipPrueba    false    220    220            
           2606    305917    PK_PROCESS_EMPLOYEE_ORDER 
   CONSTRAINT     �   ALTER TABLE ONLY sc_process_employee_order
    ADD CONSTRAINT "PK_PROCESS_EMPLOYEE_ORDER" PRIMARY KEY (id_process_employee_order);
 ]   ALTER TABLE ONLY dmes.sc_process_employee_order DROP CONSTRAINT "PK_PROCESS_EMPLOYEE_ORDER";
       dmes      	   sipPrueba    false    221    221            
           2606    305919    PK_PROCESS_INPUT 
   CONSTRAINT     h   ALTER TABLE ONLY sc_process_input
    ADD CONSTRAINT "PK_PROCESS_INPUT" PRIMARY KEY (id_process_input);
 K   ALTER TABLE ONLY dmes.sc_process_input DROP CONSTRAINT "PK_PROCESS_INPUT";
       dmes      	   sipPrueba    false    222    222            
           2606    305921    PK_PROCESS_INPUT_ORDER 
   CONSTRAINT     z   ALTER TABLE ONLY sc_process_input_order
    ADD CONSTRAINT "PK_PROCESS_INPUT_ORDER" PRIMARY KEY (id_process_input_order);
 W   ALTER TABLE ONLY dmes.sc_process_input_order DROP CONSTRAINT "PK_PROCESS_INPUT_ORDER";
       dmes      	   sipPrueba    false    223    223            �	           2606    305923    PK_PROCESS_PRODUCT 
   CONSTRAINT     n   ALTER TABLE ONLY sc_procces_product
    ADD CONSTRAINT "PK_PROCESS_PRODUCT" PRIMARY KEY (id_process_product);
 O   ALTER TABLE ONLY dmes.sc_procces_product DROP CONSTRAINT "PK_PROCESS_PRODUCT";
       dmes      	   sipPrueba    false    217    217            �	           2606    305926    PK_PROCESS_PRODUCT_ORDER 
   CONSTRAINT     �   ALTER TABLE ONLY sc_procces_product_order
    ADD CONSTRAINT "PK_PROCESS_PRODUCT_ORDER" PRIMARY KEY (id_process_product_order);
 [   ALTER TABLE ONLY dmes.sc_procces_product_order DROP CONSTRAINT "PK_PROCESS_PRODUCT_ORDER";
       dmes      	   sipPrueba    false    218    218            
           2606    305928    PK_PROCESS_TYPE 
   CONSTRAINT     e   ALTER TABLE ONLY sc_process_type
    ADD CONSTRAINT "PK_PROCESS_TYPE" PRIMARY KEY (id_process_type);
 I   ALTER TABLE ONLY dmes.sc_process_type DROP CONSTRAINT "PK_PROCESS_TYPE";
       dmes      	   sipPrueba    false    226    226            �	           2606    305930    PK_PRODUCTION_ORDER 
   CONSTRAINT     q   ALTER TABLE ONLY ot_production_order
    ADD CONSTRAINT "PK_PRODUCTION_ORDER" PRIMARY KEY (id_production_order);
 Q   ALTER TABLE ONLY dmes.ot_production_order DROP CONSTRAINT "PK_PRODUCTION_ORDER";
       dmes      	   sipPrueba    false    174    174            
           2606    305932    PK_PRODUCTION_STATE 
   CONSTRAINT     q   ALTER TABLE ONLY sc_production_state
    ADD CONSTRAINT "PK_PRODUCTION_STATE" PRIMARY KEY (id_production_state);
 Q   ALTER TABLE ONLY dmes.sc_production_state DROP CONSTRAINT "PK_PRODUCTION_STATE";
       dmes      	   sipPrueba    false    231    231            
           2606    305934    PK_PRODUCT_ATTACHED 
   CONSTRAINT     q   ALTER TABLE ONLY sc_product_attached
    ADD CONSTRAINT "PK_PRODUCT_ATTACHED" PRIMARY KEY (id_product_attached);
 Q   ALTER TABLE ONLY dmes.sc_product_attached DROP CONSTRAINT "PK_PRODUCT_ATTACHED";
       dmes      	   sipPrueba    false    227    227            
           2606    305936    PK_REPLACEMENT_ATTACHED 
   CONSTRAINT     }   ALTER TABLE ONLY sc_replacement_attached
    ADD CONSTRAINT "PK_REPLACEMENT_ATTACHED" PRIMARY KEY (id_replacement_attached);
 Y   ALTER TABLE ONLY dmes.sc_replacement_attached DROP CONSTRAINT "PK_REPLACEMENT_ATTACHED";
       dmes      	   sipPrueba    false    233    233            �	           2606    305938    PK_SCHEDULE_MAINTENANCE 
   CONSTRAINT     }   ALTER TABLE ONLY ot_maintenance_schedule
    ADD CONSTRAINT "PK_SCHEDULE_MAINTENANCE" PRIMARY KEY (id_schedule_maintenance);
 Y   ALTER TABLE ONLY dmes.ot_maintenance_schedule DROP CONSTRAINT "PK_SCHEDULE_MAINTENANCE";
       dmes      	   sipPrueba    false    173    173            �	           2606    305940    PK_SC_CONSTANTS_LOAD_FILES 
   CONSTRAINT        ALTER TABLE ONLY sc_constants_load_files
    ADD CONSTRAINT "PK_SC_CONSTANTS_LOAD_FILES" PRIMARY KEY (id_constants_load_file);
 \   ALTER TABLE ONLY dmes.sc_constants_load_files DROP CONSTRAINT "PK_SC_CONSTANTS_LOAD_FILES";
       dmes      	   sipPrueba    false    176    176            �	           2606    305942    PK_SC_GROUP 
   CONSTRAINT     S   ALTER TABLE ONLY sc_group
    ADD CONSTRAINT "PK_SC_GROUP" PRIMARY KEY (id_group);
 >   ALTER TABLE ONLY dmes.sc_group DROP CONSTRAINT "PK_SC_GROUP";
       dmes      	   sipPrueba    false    182    182            �	           2606    305944    PK_SC_INPUT 
   CONSTRAINT     S   ALTER TABLE ONLY sc_input
    ADD CONSTRAINT "PK_SC_INPUT" PRIMARY KEY (id_input);
 >   ALTER TABLE ONLY dmes.sc_input DROP CONSTRAINT "PK_SC_INPUT";
       dmes      	   sipPrueba    false    183    183            �	           2606    305946    PK_SC_INPUT_DOCUMENTS 
   CONSTRAINT     q   ALTER TABLE ONLY sc_input_documents
    ADD CONSTRAINT "PK_SC_INPUT_DOCUMENTS" PRIMARY KEY (id_input_documents);
 R   ALTER TABLE ONLY dmes.sc_input_documents DROP CONSTRAINT "PK_SC_INPUT_DOCUMENTS";
       dmes      	   sipPrueba    false    185    185            �	           2606    305948    PK_SC_INPUT_FEATURES 
   CONSTRAINT     p   ALTER TABLE ONLY sc_input_feactures
    ADD CONSTRAINT "PK_SC_INPUT_FEATURES" PRIMARY KEY (id_input_feactures);
 Q   ALTER TABLE ONLY dmes.sc_input_feactures DROP CONSTRAINT "PK_SC_INPUT_FEATURES";
       dmes      	   sipPrueba    false    187    187            �	           2606    305950    PK_SC_INPUT_OBSERVATIONS 
   CONSTRAINT     y   ALTER TABLE ONLY sc_input_observations
    ADD CONSTRAINT "PK_SC_INPUT_OBSERVATIONS" PRIMARY KEY (id_input_observation);
 X   ALTER TABLE ONLY dmes.sc_input_observations DROP CONSTRAINT "PK_SC_INPUT_OBSERVATIONS";
       dmes      	   sipPrueba    false    188    188            �	           2606    305952    PK_SC_INPUT_SPECIFICATIONS 
   CONSTRAINT     �   ALTER TABLE ONLY sc_input_specifications
    ADD CONSTRAINT "PK_SC_INPUT_SPECIFICATIONS" PRIMARY KEY (id_input_specifications);
 \   ALTER TABLE ONLY dmes.sc_input_specifications DROP CONSTRAINT "PK_SC_INPUT_SPECIFICATIONS";
       dmes      	   sipPrueba    false    189    189            �	           2606    305954    PK_SC_M0NEY 
   CONSTRAINT     S   ALTER TABLE ONLY sc_money
    ADD CONSTRAINT "PK_SC_M0NEY" PRIMARY KEY (id_money);
 >   ALTER TABLE ONLY dmes.sc_money DROP CONSTRAINT "PK_SC_M0NEY";
       dmes      	   sipPrueba    false    206    206            �	           2606    305956    PK_SC_MACHINE 
   CONSTRAINT     Y   ALTER TABLE ONLY sc_machine
    ADD CONSTRAINT "PK_SC_MACHINE" PRIMARY KEY (id_machine);
 B   ALTER TABLE ONLY dmes.sc_machine DROP CONSTRAINT "PK_SC_MACHINE";
       dmes      	   sipPrueba    false    191    191            �	           2606    305958    PK_SC_MACHINE_ATTACHED 
   CONSTRAINT     l   ALTER TABLE ONLY sc_machine_attached
    ADD CONSTRAINT "PK_SC_MACHINE_ATTACHED" PRIMARY KEY (id_attached);
 T   ALTER TABLE ONLY dmes.sc_machine_attached DROP CONSTRAINT "PK_SC_MACHINE_ATTACHED";
       dmes      	   sipPrueba    false    192    192            �	           2606    305960    PK_SC_MACHINE_CONDITION 
   CONSTRAINT     p   ALTER TABLE ONLY sc_machine_conditions
    ADD CONSTRAINT "PK_SC_MACHINE_CONDITION" PRIMARY KEY (id_condition);
 W   ALTER TABLE ONLY dmes.sc_machine_conditions DROP CONSTRAINT "PK_SC_MACHINE_CONDITION";
       dmes      	   sipPrueba    false    193    193            �	           2606    305962    PK_SC_MEASURE 
   CONSTRAINT     ^   ALTER TABLE ONLY sc_measure_unit
    ADD CONSTRAINT "PK_SC_MEASURE" PRIMARY KEY (id_measure);
 G   ALTER TABLE ONLY dmes.sc_measure_unit DROP CONSTRAINT "PK_SC_MEASURE";
       dmes      	   sipPrueba    false    203    203            �	           2606    305964    PK_SC_NOTIFICATION 
   CONSTRAINT     h   ALTER TABLE ONLY sc_notification
    ADD CONSTRAINT "PK_SC_NOTIFICATION" PRIMARY KEY (id_notification);
 L   ALTER TABLE ONLY dmes.sc_notification DROP CONSTRAINT "PK_SC_NOTIFICATION";
       dmes      	   sipPrueba    false    207    207            �	           2606    305966    PK_SC_PACKING 
   CONSTRAINT     ^   ALTER TABLE ONLY sc_packing_unit
    ADD CONSTRAINT "PK_SC_PACKING" PRIMARY KEY (id_packing);
 G   ALTER TABLE ONLY dmes.sc_packing_unit DROP CONSTRAINT "PK_SC_PACKING";
       dmes      	   sipPrueba    false    209    209            �	           2606    305968    PK_SC_PERSON_BY_GROUP 
   CONSTRAINT     q   ALTER TABLE ONLY sc_person_by_group
    ADD CONSTRAINT "PK_SC_PERSON_BY_GROUP" PRIMARY KEY (id_person_by_group);
 R   ALTER TABLE ONLY dmes.sc_person_by_group DROP CONSTRAINT "PK_SC_PERSON_BY_GROUP";
       dmes      	   sipPrueba    false    212    212            �	           2606    305970    PK_SC_PRIORITY 
   CONSTRAINT     \   ALTER TABLE ONLY sc_priority
    ADD CONSTRAINT "PK_SC_PRIORITY" PRIMARY KEY (id_priority);
 D   ALTER TABLE ONLY dmes.sc_priority DROP CONSTRAINT "PK_SC_PRIORITY";
       dmes      	   sipPrueba    false    216    216            
           2606    305972    PK_SC_PROCESS_MACHINE 
   CONSTRAINT     q   ALTER TABLE ONLY sc_process_machine
    ADD CONSTRAINT "PK_SC_PROCESS_MACHINE" PRIMARY KEY (id_process_machine);
 R   ALTER TABLE ONLY dmes.sc_process_machine DROP CONSTRAINT "PK_SC_PROCESS_MACHINE";
       dmes      	   sipPrueba    false    224    224            	
           2606    305974    PK_SC_PROCESS_MACHINE_ORDER 
   CONSTRAINT     �   ALTER TABLE ONLY sc_process_machine_order
    ADD CONSTRAINT "PK_SC_PROCESS_MACHINE_ORDER" PRIMARY KEY (id_process_machine_order);
 ^   ALTER TABLE ONLY dmes.sc_process_machine_order DROP CONSTRAINT "PK_SC_PROCESS_MACHINE_ORDER";
       dmes      	   sipPrueba    false    225    225            
           2606    305976    PK_SC_PRODUCT_DOCUMENTS 
   CONSTRAINT     w   ALTER TABLE ONLY sc_product_documents
    ADD CONSTRAINT "PK_SC_PRODUCT_DOCUMENTS" PRIMARY KEY (id_product_documents);
 V   ALTER TABLE ONLY dmes.sc_product_documents DROP CONSTRAINT "PK_SC_PRODUCT_DOCUMENTS";
       dmes      	   sipPrueba    false    228    228            
           2606    305978    PK_SC_PRODUCT_FORMULATION 
   CONSTRAINT     }   ALTER TABLE ONLY sc_product_formulation
    ADD CONSTRAINT "PK_SC_PRODUCT_FORMULATION" PRIMARY KEY (id_product_formulation);
 Z   ALTER TABLE ONLY dmes.sc_product_formulation DROP CONSTRAINT "PK_SC_PRODUCT_FORMULATION";
       dmes      	   sipPrueba    false    229    229            
           2606    305980    PK_SC_PRODUCT_ORDER 
   CONSTRAINT     k   ALTER TABLE ONLY sc_product_order
    ADD CONSTRAINT "PK_SC_PRODUCT_ORDER" PRIMARY KEY (id_product_order);
 N   ALTER TABLE ONLY dmes.sc_product_order DROP CONSTRAINT "PK_SC_PRODUCT_ORDER";
       dmes      	   sipPrueba    false    230    230            
           2606    305982    PK_SC_REPLACEMENT 
   CONSTRAINT     e   ALTER TABLE ONLY sc_replacement
    ADD CONSTRAINT "PK_SC_REPLACEMENT" PRIMARY KEY (id_replacement);
 J   ALTER TABLE ONLY dmes.sc_replacement DROP CONSTRAINT "PK_SC_REPLACEMENT";
       dmes      	   sipPrueba    false    232    232            
           2606    305984    PK_SC_REPLACEMENT_DOCUMENTS 
   CONSTRAINT     �   ALTER TABLE ONLY sc_replacement_documents
    ADD CONSTRAINT "PK_SC_REPLACEMENT_DOCUMENTS" PRIMARY KEY (id_replacement_documents);
 ^   ALTER TABLE ONLY dmes.sc_replacement_documents DROP CONSTRAINT "PK_SC_REPLACEMENT_DOCUMENTS";
       dmes      	   sipPrueba    false    234    234            '
           2606    305986    PK_SC_STORE 
   CONSTRAINT     S   ALTER TABLE ONLY sc_store
    ADD CONSTRAINT "PK_SC_STORE" PRIMARY KEY (id_store);
 >   ALTER TABLE ONLY dmes.sc_store DROP CONSTRAINT "PK_SC_STORE";
       dmes      	   sipPrueba    false    239    239            9
           2606    305988 
   PK_SC_TOOL 
   CONSTRAINT     P   ALTER TABLE ONLY sc_tool
    ADD CONSTRAINT "PK_SC_TOOL" PRIMARY KEY (id_tool);
 <   ALTER TABLE ONLY dmes.sc_tool DROP CONSTRAINT "PK_SC_TOOL";
       dmes      	   sipPrueba    false    247    247            =
           2606    305990    PK_SC_TOOL_DOCUMENTS 
   CONSTRAINT     n   ALTER TABLE ONLY sc_tool_documents
    ADD CONSTRAINT "PK_SC_TOOL_DOCUMENTS" PRIMARY KEY (id_tool_documents);
 P   ALTER TABLE ONLY dmes.sc_tool_documents DROP CONSTRAINT "PK_SC_TOOL_DOCUMENTS";
       dmes      	   sipPrueba    false    249    249            %
           2606    305992    PK_STOP_MACHINE 
   CONSTRAINT     e   ALTER TABLE ONLY sc_stop_machine
    ADD CONSTRAINT "PK_STOP_MACHINE" PRIMARY KEY (id_stop_machine);
 I   ALTER TABLE ONLY dmes.sc_stop_machine DROP CONSTRAINT "PK_STOP_MACHINE";
       dmes      	   sipPrueba    false    238    238            )
           2606    305994    PK_STORE_ORDER 
   CONSTRAINT     b   ALTER TABLE ONLY sc_store_order
    ADD CONSTRAINT "PK_STORE_ORDER" PRIMARY KEY (id_store_order);
 G   ALTER TABLE ONLY dmes.sc_store_order DROP CONSTRAINT "PK_STORE_ORDER";
       dmes      	   sipPrueba    false    240    240            +
           2606    305996    PK_STORE_ORDER_ITEM 
   CONSTRAINT     e   ALTER TABLE ONLY sc_store_order_item
    ADD CONSTRAINT "PK_STORE_ORDER_ITEM" PRIMARY KEY (id_item);
 Q   ALTER TABLE ONLY dmes.sc_store_order_item DROP CONSTRAINT "PK_STORE_ORDER_ITEM";
       dmes      	   sipPrueba    false    241    241            -
           2606    305998    PK_STORE_ORDER_STATE 
   CONSTRAINT     h   ALTER TABLE ONLY sc_store_order_state
    ADD CONSTRAINT "PK_STORE_ORDER_STATE" PRIMARY KEY (id_state);
 S   ALTER TABLE ONLY dmes.sc_store_order_state DROP CONSTRAINT "PK_STORE_ORDER_STATE";
       dmes      	   sipPrueba    false    242    242            /
           2606    306000    PK_STORE_REQUISITION 
   CONSTRAINT     t   ALTER TABLE ONLY sc_store_requisition
    ADD CONSTRAINT "PK_STORE_REQUISITION" PRIMARY KEY (id_store_requisition);
 S   ALTER TABLE ONLY dmes.sc_store_requisition DROP CONSTRAINT "PK_STORE_REQUISITION";
       dmes      	   sipPrueba    false    243    243            1
           2606    306002    PK_STORE_REQUISITION_ITEM 
   CONSTRAINT     q   ALTER TABLE ONLY sc_store_requisition_item
    ADD CONSTRAINT "PK_STORE_REQUISITION_ITEM" PRIMARY KEY (id_item);
 ]   ALTER TABLE ONLY dmes.sc_store_requisition_item DROP CONSTRAINT "PK_STORE_REQUISITION_ITEM";
       dmes      	   sipPrueba    false    244    244            3
           2606    306004    PK_STORE_REQUISITION_STATE 
   CONSTRAINT     t   ALTER TABLE ONLY sc_store_requisition_state
    ADD CONSTRAINT "PK_STORE_REQUISITION_STATE" PRIMARY KEY (id_state);
 _   ALTER TABLE ONLY dmes.sc_store_requisition_state DROP CONSTRAINT "PK_STORE_REQUISITION_STATE";
       dmes      	   sipPrueba    false    245    245            5
           2606    306006    PK_TIME 
   CONSTRAINT     M   ALTER TABLE ONLY sc_time
    ADD CONSTRAINT "PK_TIME" PRIMARY KEY (id_time);
 9   ALTER TABLE ONLY dmes.sc_time DROP CONSTRAINT "PK_TIME";
       dmes      	   sipPrueba    false    246    246            ;
           2606    306008    PK_TOOL_ATTACHED 
   CONSTRAINT     h   ALTER TABLE ONLY sc_tool_attached
    ADD CONSTRAINT "PK_TOOL_ATTACHED" PRIMARY KEY (id_tool_attached);
 K   ALTER TABLE ONLY dmes.sc_tool_attached DROP CONSTRAINT "PK_TOOL_ATTACHED";
       dmes      	   sipPrueba    false    248    248            ?
           2606    306010    PK_TURN 
   CONSTRAINT     M   ALTER TABLE ONLY sc_turn
    ADD CONSTRAINT "PK_TURN" PRIMARY KEY (id_turn);
 9   ALTER TABLE ONLY dmes.sc_turn DROP CONSTRAINT "PK_TURN";
       dmes      	   sipPrueba    false    250    250            I
           2606    306012    PK_WORKFORCE 
   CONSTRAINT     \   ALTER TABLE ONLY sc_workforce
    ADD CONSTRAINT "PK_WORKFORCE" PRIMARY KEY (id_workforce);
 C   ALTER TABLE ONLY dmes.sc_workforce DROP CONSTRAINT "PK_WORKFORCE";
       dmes      	   sipPrueba    false    254    254            �	           2606    306014    UK_IDENTIFICATION 
   CONSTRAINT     [   ALTER TABLE ONLY sc_person
    ADD CONSTRAINT "UK_IDENTIFICATION" UNIQUE (identification);
 E   ALTER TABLE ONLY dmes.sc_person DROP CONSTRAINT "UK_IDENTIFICATION";
       dmes      	   sipPrueba    false    211    211            
           2606    306016    UK_ROLENAME 
   CONSTRAINT     J   ALTER TABLE ONLY sc_roles
    ADD CONSTRAINT "UK_ROLENAME" UNIQUE (name);
 >   ALTER TABLE ONLY dmes.sc_roles DROP CONSTRAINT "UK_ROLENAME";
       dmes      	   sipPrueba    false    235    235            �	           2606    306018     UK_SC_ROLES_SC_MODULE_PERMISSION 
   CONSTRAINT     �   ALTER TABLE ONLY sc_module_permission_by_role
    ADD CONSTRAINT "UK_SC_ROLES_SC_MODULE_PERMISSION" UNIQUE (id_role, id_module_permission);
 g   ALTER TABLE ONLY dmes.sc_module_permission_by_role DROP CONSTRAINT "UK_SC_ROLES_SC_MODULE_PERMISSION";
       dmes      	   sipPrueba    false    205    205    205            7
           2606    306020    UK_TIME 
   CONSTRAINT     H   ALTER TABLE ONLY sc_time
    ADD CONSTRAINT "UK_TIME" UNIQUE (acronym);
 9   ALTER TABLE ONLY dmes.sc_time DROP CONSTRAINT "UK_TIME";
       dmes      	   sipPrueba    false    246    246            �	           2606    306022    UK_UNIT_MEASURE 
   CONSTRAINT     X   ALTER TABLE ONLY sc_measure_unit
    ADD CONSTRAINT "UK_UNIT_MEASURE" UNIQUE (acronym);
 I   ALTER TABLE ONLY dmes.sc_measure_unit DROP CONSTRAINT "UK_UNIT_MEASURE";
       dmes      	   sipPrueba    false    203    203            C
           2606    306024    UK_USERNAME 
   CONSTRAINT     K   ALTER TABLE ONLY sc_users
    ADD CONSTRAINT "UK_USERNAME" UNIQUE (login);
 >   ALTER TABLE ONLY dmes.sc_users DROP CONSTRAINT "UK_USERNAME";
       dmes      	   sipPrueba    false    252    252            �	           2606    306026    pk_competencies 
   CONSTRAINT     c   ALTER TABLE ONLY sc_competencies
    ADD CONSTRAINT pk_competencies PRIMARY KEY (id_competencies);
 G   ALTER TABLE ONLY dmes.sc_competencies DROP CONSTRAINT pk_competencies;
       dmes      	   sipPrueba    false    175    175            �	           2606    306028    pk_cost_center 
   CONSTRAINT     `   ALTER TABLE ONLY sc_cost_center
    ADD CONSTRAINT pk_cost_center PRIMARY KEY (id_cost_center);
 E   ALTER TABLE ONLY dmes.sc_cost_center DROP CONSTRAINT pk_cost_center;
       dmes      	   sipPrueba    false    177    177            �	           2606    306030    pk_document 
   CONSTRAINT     X   ALTER TABLE ONLY sc_documents
    ADD CONSTRAINT pk_document PRIMARY KEY (id_document);
 @   ALTER TABLE ONLY dmes.sc_documents DROP CONSTRAINT pk_document;
       dmes      	   sipPrueba    false    179    179            �	           2606    306032    pk_employee 
   CONSTRAINT     W   ALTER TABLE ONLY sc_employee
    ADD CONSTRAINT pk_employee PRIMARY KEY (id_employee);
 ?   ALTER TABLE ONLY dmes.sc_employee DROP CONSTRAINT pk_employee;
       dmes      	   sipPrueba    false    180    180            �	           2606    306034    pk_mails 
   CONSTRAINT     M   ALTER TABLE ONLY sc_mails
    ADD CONSTRAINT pk_mails PRIMARY KEY (id_mail);
 9   ALTER TABLE ONLY dmes.sc_mails DROP CONSTRAINT pk_mails;
       dmes      	   sipPrueba    false    198    198            �	           2606    306036    pk_module_permission_by_role 
   CONSTRAINT     �   ALTER TABLE ONLY sc_module_permission_by_role
    ADD CONSTRAINT pk_module_permission_by_role PRIMARY KEY (id_module_permission_by_role);
 a   ALTER TABLE ONLY dmes.sc_module_permission_by_role DROP CONSTRAINT pk_module_permission_by_role;
       dmes      	   sipPrueba    false    205    205            �	           2606    306038    pk_operatin_condition 
   CONSTRAINT     x   ALTER TABLE ONLY sc_operating_conditions
    ADD CONSTRAINT pk_operatin_condition PRIMARY KEY (id_operating_condition);
 U   ALTER TABLE ONLY dmes.sc_operating_conditions DROP CONSTRAINT pk_operatin_condition;
       dmes      	   sipPrueba    false    208    208            �	           2606    306040 
   pk_partner 
   CONSTRAINT     T   ALTER TABLE ONLY sc_partner
    ADD CONSTRAINT pk_partner PRIMARY KEY (id_partner);
 =   ALTER TABLE ONLY dmes.sc_partner DROP CONSTRAINT pk_partner;
       dmes      	   sipPrueba    false    210    210            �	           2606    306042 	   pk_person 
   CONSTRAINT     Q   ALTER TABLE ONLY sc_person
    ADD CONSTRAINT pk_person PRIMARY KEY (id_person);
 ;   ALTER TABLE ONLY dmes.sc_person DROP CONSTRAINT pk_person;
       dmes      	   sipPrueba    false    211    211            �	           2606    306044    pk_person_observations 
   CONSTRAINT     x   ALTER TABLE ONLY sc_person_observations
    ADD CONSTRAINT pk_person_observations PRIMARY KEY (id_person_observations);
 U   ALTER TABLE ONLY dmes.sc_person_observations DROP CONSTRAINT pk_person_observations;
       dmes      	   sipPrueba    false    213    213            �	           2606    306046    pk_person_specifications 
   CONSTRAINT     ~   ALTER TABLE ONLY sc_person_specifications
    ADD CONSTRAINT pk_person_specifications PRIMARY KEY (id_person_specifications);
 Y   ALTER TABLE ONLY dmes.sc_person_specifications DROP CONSTRAINT pk_person_specifications;
       dmes      	   sipPrueba    false    214    214            �	           2606    306048 	   pk_phones 
   CONSTRAINT     P   ALTER TABLE ONLY sc_phones
    ADD CONSTRAINT pk_phones PRIMARY KEY (id_phone);
 ;   ALTER TABLE ONLY dmes.sc_phones DROP CONSTRAINT pk_phones;
       dmes      	   sipPrueba    false    215    215            �	           2606    306050    pk_sc_module_permission 
   CONSTRAINT     u   ALTER TABLE ONLY sc_module_permission
    ADD CONSTRAINT pk_sc_module_permission PRIMARY KEY (id_module_permission);
 T   ALTER TABLE ONLY dmes.sc_module_permission DROP CONSTRAINT pk_sc_module_permission;
       dmes      	   sipPrueba    false    204    204            
           2606    306052    pk_sc_roles 
   CONSTRAINT     P   ALTER TABLE ONLY sc_roles
    ADD CONSTRAINT pk_sc_roles PRIMARY KEY (id_role);
 <   ALTER TABLE ONLY dmes.sc_roles DROP CONSTRAINT pk_sc_roles;
       dmes      	   sipPrueba    false    235    235            !
           2606    306054    pk_service_or_product 
   CONSTRAINT     x   ALTER TABLE ONLY sc_services_or_products
    ADD CONSTRAINT pk_service_or_product PRIMARY KEY (id_service_or_products);
 U   ALTER TABLE ONLY dmes.sc_services_or_products DROP CONSTRAINT pk_service_or_product;
       dmes      	   sipPrueba    false    236    236            A
           2606    306056    pk_type 
   CONSTRAINT     K   ALTER TABLE ONLY sc_type
    ADD CONSTRAINT pk_type PRIMARY KEY (id_type);
 7   ALTER TABLE ONLY dmes.sc_type DROP CONSTRAINT pk_type;
       dmes      	   sipPrueba    false    251    251            E
           2606    306058    pk_users 
   CONSTRAINT     M   ALTER TABLE ONLY sc_users
    ADD CONSTRAINT pk_users PRIMARY KEY (id_user);
 9   ALTER TABLE ONLY dmes.sc_users DROP CONSTRAINT pk_users;
       dmes      	   sipPrueba    false    252    252            G
           2606    306060    pk_work_experience 
   CONSTRAINT     l   ALTER TABLE ONLY sc_work_experience
    ADD CONSTRAINT pk_work_experience PRIMARY KEY (id_work_experience);
 M   ALTER TABLE ONLY dmes.sc_work_experience DROP CONSTRAINT pk_work_experience;
       dmes      	   sipPrueba    false    253    253            Y
           2606    306061    FK_CENTER_COST_INPUT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_input
    ADD CONSTRAINT "FK_CENTER_COST_INPUT" FOREIGN KEY (cost_center) REFERENCES sc_cost_center(id_cost_center);
 G   ALTER TABLE ONLY dmes.sc_input DROP CONSTRAINT "FK_CENTER_COST_INPUT";
       dmes    	   sipPrueba    false    177    2467    183            �
           2606    306066    FK_COSTCENTER_REPLACEMENT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_replacement
    ADD CONSTRAINT "FK_COSTCENTER_REPLACEMENT" FOREIGN KEY (cost_center) REFERENCES sc_cost_center(id_cost_center);
 R   ALTER TABLE ONLY dmes.sc_replacement DROP CONSTRAINT "FK_COSTCENTER_REPLACEMENT";
       dmes    	   sipPrueba    false    177    2467    232            �
           2606    306071    FK_COSTCENTER_TOOL    FK CONSTRAINT     �   ALTER TABLE ONLY sc_tool
    ADD CONSTRAINT "FK_COSTCENTER_TOOL" FOREIGN KEY (cost_center) REFERENCES sc_cost_center(id_cost_center);
 D   ALTER TABLE ONLY dmes.sc_tool DROP CONSTRAINT "FK_COSTCENTER_TOOL";
       dmes    	   sipPrueba    false    247    2467    177            r
           2606    306076    FK_COST_CENTER_MACHINE_PART    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine_part
    ADD CONSTRAINT "FK_COST_CENTER_MACHINE_PART" FOREIGN KEY (id_cost_center) REFERENCES sc_cost_center(id_cost_center);
 U   ALTER TABLE ONLY dmes.sc_machine_part DROP CONSTRAINT "FK_COST_CENTER_MACHINE_PART";
       dmes    	   sipPrueba    false    2467    177    195            s
           2606    306081    FK_DIMENSION_MACHINE_PART    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine_part
    ADD CONSTRAINT "FK_DIMENSION_MACHINE_PART" FOREIGN KEY (id_dimension) REFERENCES sc_input_dimension(id_input_dimension);
 S   ALTER TABLE ONLY dmes.sc_machine_part DROP CONSTRAINT "FK_DIMENSION_MACHINE_PART";
       dmes    	   sipPrueba    false    184    2481    195            �
           2606    306086    FK_DIMENSION_REPLACEMENT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_replacement
    ADD CONSTRAINT "FK_DIMENSION_REPLACEMENT" FOREIGN KEY (id_replacement_dimension) REFERENCES sc_input_dimension(id_input_dimension);
 Q   ALTER TABLE ONLY dmes.sc_replacement DROP CONSTRAINT "FK_DIMENSION_REPLACEMENT";
       dmes    	   sipPrueba    false    184    232    2481            �
           2606    306091    FK_DIMENSION_TOOL    FK CONSTRAINT     �   ALTER TABLE ONLY sc_tool
    ADD CONSTRAINT "FK_DIMENSION_TOOL" FOREIGN KEY (id_tool_dimension) REFERENCES sc_input_dimension(id_input_dimension);
 C   ALTER TABLE ONLY dmes.sc_tool DROP CONSTRAINT "FK_DIMENSION_TOOL";
       dmes    	   sipPrueba    false    247    184    2481            h
           2606    306096    FK_FACTORY_LOCATION_MACHINE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine
    ADD CONSTRAINT "FK_FACTORY_LOCATION_MACHINE" FOREIGN KEY (id_location) REFERENCES sc_factory_location(id_factory_location);
 P   ALTER TABLE ONLY dmes.sc_machine DROP CONSTRAINT "FK_FACTORY_LOCATION_MACHINE";
       dmes    	   sipPrueba    false    181    191    2475            �
           2606    306101    FK_GROUP_BY_GROUP    FK CONSTRAINT     �   ALTER TABLE ONLY sc_person_by_group
    ADD CONSTRAINT "FK_GROUP_BY_GROUP" FOREIGN KEY (id_group) REFERENCES sc_group(id_group);
 N   ALTER TABLE ONLY dmes.sc_person_by_group DROP CONSTRAINT "FK_GROUP_BY_GROUP";
       dmes    	   sipPrueba    false    2477    212    182            
           2606    306106    FK_GROUP_NOTIFICATION    FK CONSTRAINT     �   ALTER TABLE ONLY sc_notification
    ADD CONSTRAINT "FK_GROUP_NOTIFICATION" FOREIGN KEY (id_group) REFERENCES sc_group(id_group);
 O   ALTER TABLE ONLY dmes.sc_notification DROP CONSTRAINT "FK_GROUP_NOTIFICATION";
       dmes    	   sipPrueba    false    2477    182    207            c
           2606    306111    FK_INPUT_EQUIVALENCE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_input_equivalence
    ADD CONSTRAINT "FK_INPUT_EQUIVALENCE" FOREIGN KEY (id_input) REFERENCES sc_input(id_input);
 S   ALTER TABLE ONLY dmes.sc_input_equivalence DROP CONSTRAINT "FK_INPUT_EQUIVALENCE";
       dmes    	   sipPrueba    false    186    183    2479            d
           2606    306116    FK_INPUT_FEACTURES    FK CONSTRAINT     �   ALTER TABLE ONLY sc_input_feactures
    ADD CONSTRAINT "FK_INPUT_FEACTURES" FOREIGN KEY (id_input) REFERENCES sc_input(id_input);
 O   ALTER TABLE ONLY dmes.sc_input_feactures DROP CONSTRAINT "FK_INPUT_FEACTURES";
       dmes    	   sipPrueba    false    187    183    2479            e
           2606    306121    FK_INPUT_OBSERVATIONS    FK CONSTRAINT     �   ALTER TABLE ONLY sc_input_observations
    ADD CONSTRAINT "FK_INPUT_OBSERVATIONS" FOREIGN KEY (id_input) REFERENCES sc_input(id_input);
 U   ALTER TABLE ONLY dmes.sc_input_observations DROP CONSTRAINT "FK_INPUT_OBSERVATIONS";
       dmes    	   sipPrueba    false    183    188    2479            f
           2606    306126    FK_INPUT_SPECIFICATIONS    FK CONSTRAINT     �   ALTER TABLE ONLY sc_input_specifications
    ADD CONSTRAINT "FK_INPUT_SPECIFICATIONS" FOREIGN KEY (id_input) REFERENCES sc_input(id_input);
 Y   ALTER TABLE ONLY dmes.sc_input_specifications DROP CONSTRAINT "FK_INPUT_SPECIFICATIONS";
       dmes    	   sipPrueba    false    189    2479    183            �
           2606    306131    FK_INPUT_STOCK_STORE    FK CONSTRAINT     z   ALTER TABLE ONLY sc_stock
    ADD CONSTRAINT "FK_INPUT_STOCK_STORE" FOREIGN KEY (id_store) REFERENCES sc_store(id_store);
 G   ALTER TABLE ONLY dmes.sc_stock DROP CONSTRAINT "FK_INPUT_STOCK_STORE";
       dmes    	   sipPrueba    false    2599    237    239            �
           2606    306136    FK_LOCATION_REPLACEMENT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_replacement
    ADD CONSTRAINT "FK_LOCATION_REPLACEMENT" FOREIGN KEY (id_location) REFERENCES sc_location(id_location);
 P   ALTER TABLE ONLY dmes.sc_replacement DROP CONSTRAINT "FK_LOCATION_REPLACEMENT";
       dmes    	   sipPrueba    false    232    190    2493            g
           2606    306141    FK_LOCATION_STORE    FK CONSTRAINT     z   ALTER TABLE ONLY sc_location
    ADD CONSTRAINT "FK_LOCATION_STORE" FOREIGN KEY (id_store) REFERENCES sc_store(id_store);
 G   ALTER TABLE ONLY dmes.sc_location DROP CONSTRAINT "FK_LOCATION_STORE";
       dmes    	   sipPrueba    false    190    2599    239            �
           2606    306146    FK_LOCATION_TOOL    FK CONSTRAINT     ~   ALTER TABLE ONLY sc_tool
    ADD CONSTRAINT "FK_LOCATION_TOOL" FOREIGN KEY (id_location) REFERENCES sc_location(id_location);
 B   ALTER TABLE ONLY dmes.sc_tool DROP CONSTRAINT "FK_LOCATION_TOOL";
       dmes    	   sipPrueba    false    190    2493    247            o
           2606    306151    FK_MACHINE_ATTACHED    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine_attached
    ADD CONSTRAINT "FK_MACHINE_ATTACHED" FOREIGN KEY (id_machine) REFERENCES sc_machine(id_machine);
 Q   ALTER TABLE ONLY dmes.sc_machine_attached DROP CONSTRAINT "FK_MACHINE_ATTACHED";
       dmes    	   sipPrueba    false    192    191    2495            p
           2606    306156    FK_MACHINE_CONDITION    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine_conditions
    ADD CONSTRAINT "FK_MACHINE_CONDITION" FOREIGN KEY (id_machine) REFERENCES sc_machine(id_machine);
 T   ALTER TABLE ONLY dmes.sc_machine_conditions DROP CONSTRAINT "FK_MACHINE_CONDITION";
       dmes    	   sipPrueba    false    193    191    2495            i
           2606    306161    FK_MACHINE_COST_CENTER    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine
    ADD CONSTRAINT "FK_MACHINE_COST_CENTER" FOREIGN KEY (id_cost_center) REFERENCES sc_cost_center(id_cost_center);
 K   ALTER TABLE ONLY dmes.sc_machine DROP CONSTRAINT "FK_MACHINE_COST_CENTER";
       dmes    	   sipPrueba    false    191    2467    177            j
           2606    306166    FK_MACHINE_DIMENSION    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine
    ADD CONSTRAINT "FK_MACHINE_DIMENSION" FOREIGN KEY (id_dimension) REFERENCES sc_input_dimension(id_input_dimension);
 I   ALTER TABLE ONLY dmes.sc_machine DROP CONSTRAINT "FK_MACHINE_DIMENSION";
       dmes    	   sipPrueba    false    184    2481    191            q
           2606    306171    FK_MACHINE_DOCUMENT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine_document
    ADD CONSTRAINT "FK_MACHINE_DOCUMENT" FOREIGN KEY (id_machine) REFERENCES sc_machine(id_machine);
 Q   ALTER TABLE ONLY dmes.sc_machine_document DROP CONSTRAINT "FK_MACHINE_DOCUMENT";
       dmes    	   sipPrueba    false    194    191    2495            t
           2606    306176    FK_MACHINE_MACHINE_PART    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine_part
    ADD CONSTRAINT "FK_MACHINE_MACHINE_PART" FOREIGN KEY (id_machine) REFERENCES sc_machine(id_machine);
 Q   ALTER TABLE ONLY dmes.sc_machine_part DROP CONSTRAINT "FK_MACHINE_MACHINE_PART";
       dmes    	   sipPrueba    false    191    195    2495            k
           2606    306181    FK_MACHINE_MONEY    FK CONSTRAINT     x   ALTER TABLE ONLY sc_machine
    ADD CONSTRAINT "FK_MACHINE_MONEY" FOREIGN KEY (id_money) REFERENCES sc_money(id_money);
 E   ALTER TABLE ONLY dmes.sc_machine DROP CONSTRAINT "FK_MACHINE_MONEY";
       dmes    	   sipPrueba    false    2529    206    191            �
           2606    306186    FK_MACHINE_NOTIFICATION    FK CONSTRAINT     �   ALTER TABLE ONLY sc_notification
    ADD CONSTRAINT "FK_MACHINE_NOTIFICATION" FOREIGN KEY (id_machine) REFERENCES sc_machine(id_machine);
 Q   ALTER TABLE ONLY dmes.sc_notification DROP CONSTRAINT "FK_MACHINE_NOTIFICATION";
       dmes    	   sipPrueba    false    2495    207    191            l
           2606    306191    FK_MACHINE_PARTNER    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine
    ADD CONSTRAINT "FK_MACHINE_PARTNER" FOREIGN KEY (id_partner) REFERENCES sc_partner(id_partner);
 G   ALTER TABLE ONLY dmes.sc_machine DROP CONSTRAINT "FK_MACHINE_PARTNER";
       dmes    	   sipPrueba    false    2537    191    210            y
           2606    306196    FK_MACHINE_PART_ATTACHED    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine_part_attached
    ADD CONSTRAINT "FK_MACHINE_PART_ATTACHED" FOREIGN KEY (id_machine_part) REFERENCES sc_machine_part(id_machine_part);
 [   ALTER TABLE ONLY dmes.sc_machine_part_attached DROP CONSTRAINT "FK_MACHINE_PART_ATTACHED";
       dmes    	   sipPrueba    false    196    2503    195            z
           2606    306201    FK_MACHINE_PART_DOCUMENT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine_part_document
    ADD CONSTRAINT "FK_MACHINE_PART_DOCUMENT" FOREIGN KEY (id_machine_part) REFERENCES sc_machine_part(id_machine_part);
 [   ALTER TABLE ONLY dmes.sc_machine_part_document DROP CONSTRAINT "FK_MACHINE_PART_DOCUMENT";
       dmes    	   sipPrueba    false    197    2503    195            m
           2606    306206    FK_MACHINE_PRIORITY    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine
    ADD CONSTRAINT "FK_MACHINE_PRIORITY" FOREIGN KEY (id_priority) REFERENCES sc_priority(id_priority);
 H   ALTER TABLE ONLY dmes.sc_machine DROP CONSTRAINT "FK_MACHINE_PRIORITY";
       dmes    	   sipPrueba    false    191    216    2551            n
           2606    306211    FK_MACHINE_TIME    FK CONSTRAINT     t   ALTER TABLE ONLY sc_machine
    ADD CONSTRAINT "FK_MACHINE_TIME" FOREIGN KEY (id_time) REFERENCES sc_time(id_time);
 D   ALTER TABLE ONLY dmes.sc_machine DROP CONSTRAINT "FK_MACHINE_TIME";
       dmes    	   sipPrueba    false    2613    191    246            |
           2606    306216    FK_MAINTENANCE_ACTIVITY    FK CONSTRAINT     �   ALTER TABLE ONLY sc_maintenance_activity
    ADD CONSTRAINT "FK_MAINTENANCE_ACTIVITY" FOREIGN KEY (id_maintenance) REFERENCES ot_maintenance(id_maintenance);
 Y   ALTER TABLE ONLY dmes.sc_maintenance_activity DROP CONSTRAINT "FK_MAINTENANCE_ACTIVITY";
       dmes    	   sipPrueba    false    2453    170    199            L
           2606    306221    FK_MAINTENANCE_CLASIFICATION    FK CONSTRAINT     �   ALTER TABLE ONLY ot_maintenance
    ADD CONSTRAINT "FK_MAINTENANCE_CLASIFICATION" FOREIGN KEY (id_maintenance_clasification) REFERENCES sc_maintenance_clasification(id_maintenance_clasification);
 U   ALTER TABLE ONLY dmes.ot_maintenance DROP CONSTRAINT "FK_MAINTENANCE_CLASIFICATION";
       dmes    	   sipPrueba    false    2513    200    170            R
           2606    306226    FK_MAINTENANCE_CORRECTIVE    FK CONSTRAINT     �   ALTER TABLE ONLY ot_maintenance_corrective
    ADD CONSTRAINT "FK_MAINTENANCE_CORRECTIVE" FOREIGN KEY (id_maintenance) REFERENCES ot_maintenance(id_maintenance);
 ]   ALTER TABLE ONLY dmes.ot_maintenance_corrective DROP CONSTRAINT "FK_MAINTENANCE_CORRECTIVE";
       dmes    	   sipPrueba    false    171    2453    170            M
           2606    306231    FK_MAINTENANCE_DAMAGE    FK CONSTRAINT     �   ALTER TABLE ONLY ot_maintenance
    ADD CONSTRAINT "FK_MAINTENANCE_DAMAGE" FOREIGN KEY (id_maintenance_damage) REFERENCES sc_maintenance_damage(id_maintenance_damage);
 N   ALTER TABLE ONLY dmes.ot_maintenance DROP CONSTRAINT "FK_MAINTENANCE_DAMAGE";
       dmes    	   sipPrueba    false    2515    201    170            N
           2606    306236    FK_MAINTENANCE_MACHINE_PART    FK CONSTRAINT     �   ALTER TABLE ONLY ot_maintenance
    ADD CONSTRAINT "FK_MAINTENANCE_MACHINE_PART" FOREIGN KEY (id_machine_part) REFERENCES sc_machine_part(id_machine_part);
 T   ALTER TABLE ONLY dmes.ot_maintenance DROP CONSTRAINT "FK_MAINTENANCE_MACHINE_PART";
       dmes    	   sipPrueba    false    2503    195    170            S
           2606    306241    FK_MAINTENANCE_PREVENTIVE    FK CONSTRAINT     �   ALTER TABLE ONLY ot_maintenance_preventive
    ADD CONSTRAINT "FK_MAINTENANCE_PREVENTIVE" FOREIGN KEY (id_maintenance) REFERENCES ot_maintenance(id_maintenance);
 ]   ALTER TABLE ONLY dmes.ot_maintenance_preventive DROP CONSTRAINT "FK_MAINTENANCE_PREVENTIVE";
       dmes    	   sipPrueba    false    172    2453    170            O
           2606    306246    FK_MAINTENANCE_PRIORITY    FK CONSTRAINT     �   ALTER TABLE ONLY ot_maintenance
    ADD CONSTRAINT "FK_MAINTENANCE_PRIORITY" FOREIGN KEY (id_priority) REFERENCES sc_priority(id_priority);
 P   ALTER TABLE ONLY dmes.ot_maintenance DROP CONSTRAINT "FK_MAINTENANCE_PRIORITY";
       dmes    	   sipPrueba    false    216    170    2551            P
           2606    306251    FK_MAINTENANCE_STATE    FK CONSTRAINT     �   ALTER TABLE ONLY ot_maintenance
    ADD CONSTRAINT "FK_MAINTENANCE_STATE" FOREIGN KEY (id_maintenance_state) REFERENCES sc_maintenance_state(id_maintenance_state);
 M   ALTER TABLE ONLY dmes.ot_maintenance DROP CONSTRAINT "FK_MAINTENANCE_STATE";
       dmes    	   sipPrueba    false    2517    170    202            �
           2606    306256    FK_MAINTENANCE_STOP_MACHINE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_stop_machine
    ADD CONSTRAINT "FK_MAINTENANCE_STOP_MACHINE" FOREIGN KEY (id_maintenance) REFERENCES ot_maintenance(id_maintenance);
 U   ALTER TABLE ONLY dmes.sc_stop_machine DROP CONSTRAINT "FK_MAINTENANCE_STOP_MACHINE";
       dmes    	   sipPrueba    false    238    2453    170            Q
           2606    306261    FK_MAINTENANCE_WORKFORCE    FK CONSTRAINT     �   ALTER TABLE ONLY ot_maintenance
    ADD CONSTRAINT "FK_MAINTENANCE_WORKFORCE" FOREIGN KEY (id_workforce) REFERENCES sc_workforce(id_workforce);
 Q   ALTER TABLE ONLY dmes.ot_maintenance DROP CONSTRAINT "FK_MAINTENANCE_WORKFORCE";
       dmes    	   sipPrueba    false    2633    170    254            u
           2606    306266    FK_MONEY_MACHINE_PART    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine_part
    ADD CONSTRAINT "FK_MONEY_MACHINE_PART" FOREIGN KEY (id_money) REFERENCES sc_money(id_money);
 O   ALTER TABLE ONLY dmes.sc_machine_part DROP CONSTRAINT "FK_MONEY_MACHINE_PART";
       dmes    	   sipPrueba    false    2529    206    195            �
           2606    306271    FK_MONEY_REPLACEMENT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_replacement
    ADD CONSTRAINT "FK_MONEY_REPLACEMENT" FOREIGN KEY (id_money) REFERENCES sc_money(id_money);
 M   ALTER TABLE ONLY dmes.sc_replacement DROP CONSTRAINT "FK_MONEY_REPLACEMENT";
       dmes    	   sipPrueba    false    2529    232    206            �
           2606    306276    FK_MONEY_TOOL    FK CONSTRAINT     r   ALTER TABLE ONLY sc_tool
    ADD CONSTRAINT "FK_MONEY_TOOL" FOREIGN KEY (id_money) REFERENCES sc_money(id_money);
 ?   ALTER TABLE ONLY dmes.sc_tool DROP CONSTRAINT "FK_MONEY_TOOL";
       dmes    	   sipPrueba    false    206    2529    247            �
           2606    306281    FK_PERSON_BY_GROUP    FK CONSTRAINT     �   ALTER TABLE ONLY sc_person_by_group
    ADD CONSTRAINT "FK_PERSON_BY_GROUP" FOREIGN KEY (id_person) REFERENCES sc_person(id_person);
 O   ALTER TABLE ONLY dmes.sc_person_by_group DROP CONSTRAINT "FK_PERSON_BY_GROUP";
       dmes    	   sipPrueba    false    212    2541    211            v
           2606    306286    FK_PRIORITY_MACHINE_PART    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine_part
    ADD CONSTRAINT "FK_PRIORITY_MACHINE_PART" FOREIGN KEY (id_priority) REFERENCES sc_priority(id_priority);
 R   ALTER TABLE ONLY dmes.sc_machine_part DROP CONSTRAINT "FK_PRIORITY_MACHINE_PART";
       dmes    	   sipPrueba    false    2551    195    216            �
           2606    306291    FK_PRIORITY_REPLACEMENT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_replacement
    ADD CONSTRAINT "FK_PRIORITY_REPLACEMENT" FOREIGN KEY (id_priority) REFERENCES sc_priority(id_priority);
 P   ALTER TABLE ONLY dmes.sc_replacement DROP CONSTRAINT "FK_PRIORITY_REPLACEMENT";
       dmes    	   sipPrueba    false    232    216    2551            �
           2606    306296    FK_PRIORITY_TOOL    FK CONSTRAINT     ~   ALTER TABLE ONLY sc_tool
    ADD CONSTRAINT "FK_PRIORITY_TOOL" FOREIGN KEY (id_priority) REFERENCES sc_priority(id_priority);
 B   ALTER TABLE ONLY dmes.sc_tool DROP CONSTRAINT "FK_PRIORITY_TOOL";
       dmes    	   sipPrueba    false    2551    216    247            �
           2606    306301    FK_PROCESS_EMPLOYEE_EMPLOYEE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_process_employee
    ADD CONSTRAINT "FK_PROCESS_EMPLOYEE_EMPLOYEE" FOREIGN KEY (id_employee) REFERENCES sc_employee(id_employee);
 Z   ALTER TABLE ONLY dmes.sc_process_employee DROP CONSTRAINT "FK_PROCESS_EMPLOYEE_EMPLOYEE";
       dmes    	   sipPrueba    false    220    180    2473            �
           2606    306306    FK_PROCESS_EMPLOYEE_ORDER    FK CONSTRAINT     �   ALTER TABLE ONLY sc_process_employee_order
    ADD CONSTRAINT "FK_PROCESS_EMPLOYEE_ORDER" FOREIGN KEY (id_employee) REFERENCES sc_employee(id_employee);
 ]   ALTER TABLE ONLY dmes.sc_process_employee_order DROP CONSTRAINT "FK_PROCESS_EMPLOYEE_ORDER";
       dmes    	   sipPrueba    false    221    2473    180            �
           2606    306311    FK_PROCESS_EMPLOYEE_PROCESS    FK CONSTRAINT     �   ALTER TABLE ONLY sc_process_employee
    ADD CONSTRAINT "FK_PROCESS_EMPLOYEE_PROCESS" FOREIGN KEY (id_process) REFERENCES sc_procces_product(id_process_product);
 Y   ALTER TABLE ONLY dmes.sc_process_employee DROP CONSTRAINT "FK_PROCESS_EMPLOYEE_PROCESS";
       dmes    	   sipPrueba    false    2553    217    220            �
           2606    306316    FK_PROCESS_INPUT_INPUT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_process_input
    ADD CONSTRAINT "FK_PROCESS_INPUT_INPUT" FOREIGN KEY (id_input) REFERENCES sc_input(id_input);
 Q   ALTER TABLE ONLY dmes.sc_process_input DROP CONSTRAINT "FK_PROCESS_INPUT_INPUT";
       dmes    	   sipPrueba    false    183    2479    222            �
           2606    306321    FK_PROCESS_INPUT_ORDER    FK CONSTRAINT     �   ALTER TABLE ONLY sc_process_input_order
    ADD CONSTRAINT "FK_PROCESS_INPUT_ORDER" FOREIGN KEY (id_process_order) REFERENCES sc_procces_product_order(id_process_product_order);
 W   ALTER TABLE ONLY dmes.sc_process_input_order DROP CONSTRAINT "FK_PROCESS_INPUT_ORDER";
       dmes    	   sipPrueba    false    2555    223    218            �
           2606    306326    FK_PROCESS_INPUT_PROCESS    FK CONSTRAINT     �   ALTER TABLE ONLY sc_process_input
    ADD CONSTRAINT "FK_PROCESS_INPUT_PROCESS" FOREIGN KEY (id_process) REFERENCES sc_procces_product(id_process_product);
 S   ALTER TABLE ONLY dmes.sc_process_input DROP CONSTRAINT "FK_PROCESS_INPUT_PROCESS";
       dmes    	   sipPrueba    false    2553    217    222            �
           2606    306331    FK_PROCESS_MACHINE_MACHINE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_process_machine
    ADD CONSTRAINT "FK_PROCESS_MACHINE_MACHINE" FOREIGN KEY (id_machine) REFERENCES sc_machine(id_machine);
 W   ALTER TABLE ONLY dmes.sc_process_machine DROP CONSTRAINT "FK_PROCESS_MACHINE_MACHINE";
       dmes    	   sipPrueba    false    224    2495    191            �
           2606    306336    FK_PROCESS_MACHINE_ORDER    FK CONSTRAINT     �   ALTER TABLE ONLY sc_process_machine_order
    ADD CONSTRAINT "FK_PROCESS_MACHINE_ORDER" FOREIGN KEY (id_machine) REFERENCES sc_machine(id_machine);
 [   ALTER TABLE ONLY dmes.sc_process_machine_order DROP CONSTRAINT "FK_PROCESS_MACHINE_ORDER";
       dmes    	   sipPrueba    false    2495    225    191            �
           2606    306341    FK_PROCESS_ORDER_EMPLOYEE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_process_employee_order
    ADD CONSTRAINT "FK_PROCESS_ORDER_EMPLOYEE" FOREIGN KEY (id_process_order) REFERENCES sc_procces_product_order(id_process_product_order);
 ]   ALTER TABLE ONLY dmes.sc_process_employee_order DROP CONSTRAINT "FK_PROCESS_ORDER_EMPLOYEE";
       dmes    	   sipPrueba    false    218    2555    221            �
           2606    306346    FK_PROCESS_ORDER_INPUT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_process_input_order
    ADD CONSTRAINT "FK_PROCESS_ORDER_INPUT" FOREIGN KEY (id_input) REFERENCES sc_input(id_input);
 W   ALTER TABLE ONLY dmes.sc_process_input_order DROP CONSTRAINT "FK_PROCESS_ORDER_INPUT";
       dmes    	   sipPrueba    false    2479    183    223            �
           2606    306351    FK_PROCESS_ORDER_MACHINE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_process_machine_order
    ADD CONSTRAINT "FK_PROCESS_ORDER_MACHINE" FOREIGN KEY (id_process_order) REFERENCES sc_procces_product_order(id_process_product_order);
 [   ALTER TABLE ONLY dmes.sc_process_machine_order DROP CONSTRAINT "FK_PROCESS_ORDER_MACHINE";
       dmes    	   sipPrueba    false    2555    218    225            �
           2606    306356    FK_PROCESS_PROCESS_MACHINE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_process_machine
    ADD CONSTRAINT "FK_PROCESS_PROCESS_MACHINE" FOREIGN KEY (id_process) REFERENCES sc_procces_product(id_process_product);
 W   ALTER TABLE ONLY dmes.sc_process_machine DROP CONSTRAINT "FK_PROCESS_PROCESS_MACHINE";
       dmes    	   sipPrueba    false    217    224    2553            �
           2606    306361    FK_PROCESS_PROCESS_TYPE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_procces_product
    ADD CONSTRAINT "FK_PROCESS_PROCESS_TYPE" FOREIGN KEY (id_process_type) REFERENCES sc_process_type(id_process_type);
 T   ALTER TABLE ONLY dmes.sc_procces_product DROP CONSTRAINT "FK_PROCESS_PROCESS_TYPE";
       dmes    	   sipPrueba    false    226    217    2571            �
           2606    306366    FK_PROCESS_PRODUCT_FORMULATION    FK CONSTRAINT     �   ALTER TABLE ONLY sc_procces_product
    ADD CONSTRAINT "FK_PROCESS_PRODUCT_FORMULATION" FOREIGN KEY (id_product_formulation) REFERENCES sc_product_formulation(id_product_formulation);
 [   ALTER TABLE ONLY dmes.sc_procces_product DROP CONSTRAINT "FK_PROCESS_PRODUCT_FORMULATION";
       dmes    	   sipPrueba    false    229    217    2577            �
           2606    306371    FK_PROCESS_PRODUCT_ORDER    FK CONSTRAINT     �   ALTER TABLE ONLY sc_procces_product_order
    ADD CONSTRAINT "FK_PROCESS_PRODUCT_ORDER" FOREIGN KEY (id_product_order) REFERENCES sc_product_order(id_product_order);
 [   ALTER TABLE ONLY dmes.sc_procces_product_order DROP CONSTRAINT "FK_PROCESS_PRODUCT_ORDER";
       dmes    	   sipPrueba    false    230    218    2579            �
           2606    306376    FK_PROCESS_STATE_ORDER    FK CONSTRAINT     �   ALTER TABLE ONLY sc_procces_product_order
    ADD CONSTRAINT "FK_PROCESS_STATE_ORDER" FOREIGN KEY (id_process_state) REFERENCES sc_production_state(id_production_state);
 Y   ALTER TABLE ONLY dmes.sc_procces_product_order DROP CONSTRAINT "FK_PROCESS_STATE_ORDER";
       dmes    	   sipPrueba    false    2581    231    218            �
           2606    306381    FK_PROCESS_TYPE_ORDER    FK CONSTRAINT     �   ALTER TABLE ONLY sc_procces_product_order
    ADD CONSTRAINT "FK_PROCESS_TYPE_ORDER" FOREIGN KEY (id_process_type) REFERENCES sc_process_type(id_process_type);
 X   ALTER TABLE ONLY dmes.sc_procces_product_order DROP CONSTRAINT "FK_PROCESS_TYPE_ORDER";
       dmes    	   sipPrueba    false    2571    218    226            U
           2606    306386    FK_PRODUCTION_STATE    FK CONSTRAINT     �   ALTER TABLE ONLY ot_production_order
    ADD CONSTRAINT "FK_PRODUCTION_STATE" FOREIGN KEY (id_production_state) REFERENCES sc_production_state(id_production_state);
 Q   ALTER TABLE ONLY dmes.ot_production_order DROP CONSTRAINT "FK_PRODUCTION_STATE";
       dmes    	   sipPrueba    false    231    2581    174            �
           2606    306391    FK_PRODUCT_DIMENSION    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_formulation
    ADD CONSTRAINT "FK_PRODUCT_DIMENSION" FOREIGN KEY (id_product_dimension) REFERENCES sc_input_dimension(id_input_dimension);
 U   ALTER TABLE ONLY dmes.sc_product_formulation DROP CONSTRAINT "FK_PRODUCT_DIMENSION";
       dmes    	   sipPrueba    false    184    2481    229            �
           2606    306396    FK_PRODUCT_DIMENSION    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_order
    ADD CONSTRAINT "FK_PRODUCT_DIMENSION" FOREIGN KEY (id_product_dimension) REFERENCES sc_input_dimension(id_input_dimension);
 O   ALTER TABLE ONLY dmes.sc_product_order DROP CONSTRAINT "FK_PRODUCT_DIMENSION";
       dmes    	   sipPrueba    false    2481    184    230            �
           2606    306401    FK_PRODUCT_FORMULATION_ATTACHED    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_attached
    ADD CONSTRAINT "FK_PRODUCT_FORMULATION_ATTACHED" FOREIGN KEY (id_product_formulation) REFERENCES sc_product_formulation(id_product_formulation);
 ]   ALTER TABLE ONLY dmes.sc_product_attached DROP CONSTRAINT "FK_PRODUCT_FORMULATION_ATTACHED";
       dmes    	   sipPrueba    false    227    2577    229            �
           2606    306406 "   FK_PRODUCT_FORMULATION_COST_CENTER    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_formulation
    ADD CONSTRAINT "FK_PRODUCT_FORMULATION_COST_CENTER" FOREIGN KEY (id_cost_center) REFERENCES sc_cost_center(id_cost_center);
 c   ALTER TABLE ONLY dmes.sc_product_formulation DROP CONSTRAINT "FK_PRODUCT_FORMULATION_COST_CENTER";
       dmes    	   sipPrueba    false    2467    229    177            �
           2606    306411    FK_PRODUCT_FORMULATION_MONEY    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_formulation
    ADD CONSTRAINT "FK_PRODUCT_FORMULATION_MONEY" FOREIGN KEY (id_money) REFERENCES sc_money(id_money);
 ]   ALTER TABLE ONLY dmes.sc_product_formulation DROP CONSTRAINT "FK_PRODUCT_FORMULATION_MONEY";
       dmes    	   sipPrueba    false    2529    206    229            �
           2606    306416    FK_PRODUCT_FORMULATION_PACKING    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_formulation
    ADD CONSTRAINT "FK_PRODUCT_FORMULATION_PACKING" FOREIGN KEY (id_packing) REFERENCES sc_packing_unit(id_packing);
 _   ALTER TABLE ONLY dmes.sc_product_formulation DROP CONSTRAINT "FK_PRODUCT_FORMULATION_PACKING";
       dmes    	   sipPrueba    false    2535    209    229            �
           2606    306421    FK_PRODUCT_FORMULATION_PRIORITY    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_formulation
    ADD CONSTRAINT "FK_PRODUCT_FORMULATION_PRIORITY" FOREIGN KEY (id_priority) REFERENCES sc_priority(id_priority);
 `   ALTER TABLE ONLY dmes.sc_product_formulation DROP CONSTRAINT "FK_PRODUCT_FORMULATION_PRIORITY";
       dmes    	   sipPrueba    false    2551    229    216            �
           2606    306426    FK_PRODUCT_FORMULATION_STOCK    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_formulation
    ADD CONSTRAINT "FK_PRODUCT_FORMULATION_STOCK" FOREIGN KEY (id_stock) REFERENCES sc_stock(id_stock);
 ]   ALTER TABLE ONLY dmes.sc_product_formulation DROP CONSTRAINT "FK_PRODUCT_FORMULATION_STOCK";
       dmes    	   sipPrueba    false    237    229    2595            �
           2606    306431    FK_PRODUCT_ORDER_COST_CENTER    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_order
    ADD CONSTRAINT "FK_PRODUCT_ORDER_COST_CENTER" FOREIGN KEY (id_cost_center) REFERENCES sc_cost_center(id_cost_center);
 W   ALTER TABLE ONLY dmes.sc_product_order DROP CONSTRAINT "FK_PRODUCT_ORDER_COST_CENTER";
       dmes    	   sipPrueba    false    177    230    2467            �
           2606    306436    FK_PRODUCT_ORDER_MONEY    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_order
    ADD CONSTRAINT "FK_PRODUCT_ORDER_MONEY" FOREIGN KEY (id_money) REFERENCES sc_money(id_money);
 Q   ALTER TABLE ONLY dmes.sc_product_order DROP CONSTRAINT "FK_PRODUCT_ORDER_MONEY";
       dmes    	   sipPrueba    false    206    230    2529            �
           2606    306441    FK_PRODUCT_ORDER_ORDER    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_order
    ADD CONSTRAINT "FK_PRODUCT_ORDER_ORDER" FOREIGN KEY (id_order) REFERENCES ot_production_order(id_production_order);
 Q   ALTER TABLE ONLY dmes.sc_product_order DROP CONSTRAINT "FK_PRODUCT_ORDER_ORDER";
       dmes    	   sipPrueba    false    230    174    2461            �
           2606    306446    FK_PRODUCT_ORDER_PACKING    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_order
    ADD CONSTRAINT "FK_PRODUCT_ORDER_PACKING" FOREIGN KEY (id_packing) REFERENCES sc_packing_unit(id_packing);
 S   ALTER TABLE ONLY dmes.sc_product_order DROP CONSTRAINT "FK_PRODUCT_ORDER_PACKING";
       dmes    	   sipPrueba    false    230    209    2535            �
           2606    306451    FK_PRODUCT_ORDER_PRIORITY    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_order
    ADD CONSTRAINT "FK_PRODUCT_ORDER_PRIORITY" FOREIGN KEY (id_priority) REFERENCES sc_priority(id_priority);
 T   ALTER TABLE ONLY dmes.sc_product_order DROP CONSTRAINT "FK_PRODUCT_ORDER_PRIORITY";
       dmes    	   sipPrueba    false    2551    230    216            �
           2606    306456 #   FK_REPLACEMENT_FORMULATION_ATTACHED    FK CONSTRAINT     �   ALTER TABLE ONLY sc_replacement_attached
    ADD CONSTRAINT "FK_REPLACEMENT_FORMULATION_ATTACHED" FOREIGN KEY (id_replacement) REFERENCES sc_replacement(id_replacement);
 e   ALTER TABLE ONLY dmes.sc_replacement_attached DROP CONSTRAINT "FK_REPLACEMENT_FORMULATION_ATTACHED";
       dmes    	   sipPrueba    false    232    233    2583            T
           2606    306461     FK_SCHEDULE_MAINTENANCE_EMPLOYEE    FK CONSTRAINT     �   ALTER TABLE ONLY ot_maintenance_schedule
    ADD CONSTRAINT "FK_SCHEDULE_MAINTENANCE_EMPLOYEE" FOREIGN KEY (id_employee) REFERENCES sc_employee(id_employee);
 b   ALTER TABLE ONLY dmes.ot_maintenance_schedule DROP CONSTRAINT "FK_SCHEDULE_MAINTENANCE_EMPLOYEE";
       dmes    	   sipPrueba    false    180    173    2473            Z
           2606    306466    FK_SC_INPUT_DISTRIBUTION_UNIT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_input
    ADD CONSTRAINT "FK_SC_INPUT_DISTRIBUTION_UNIT" FOREIGN KEY (id_distribution_unit) REFERENCES sc_distribution_unit(id_distribution_unit);
 P   ALTER TABLE ONLY dmes.sc_input DROP CONSTRAINT "FK_SC_INPUT_DISTRIBUTION_UNIT";
       dmes    	   sipPrueba    false    178    183    2469            b
           2606    306471    FK_SC_INPUT_DOCUMENTS_INPUT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_input_documents
    ADD CONSTRAINT "FK_SC_INPUT_DOCUMENTS_INPUT" FOREIGN KEY (id_input) REFERENCES sc_input(id_input);
 X   ALTER TABLE ONLY dmes.sc_input_documents DROP CONSTRAINT "FK_SC_INPUT_DOCUMENTS_INPUT";
       dmes    	   sipPrueba    false    183    185    2479            [
           2606    306476    FK_SC_INPUT_LOCATION    FK CONSTRAINT     �   ALTER TABLE ONLY sc_input
    ADD CONSTRAINT "FK_SC_INPUT_LOCATION" FOREIGN KEY (id_location) REFERENCES sc_location(id_location);
 G   ALTER TABLE ONLY dmes.sc_input DROP CONSTRAINT "FK_SC_INPUT_LOCATION";
       dmes    	   sipPrueba    false    183    2493    190            \
           2606    306481    FK_SC_INPUT_MONEY    FK CONSTRAINT     w   ALTER TABLE ONLY sc_input
    ADD CONSTRAINT "FK_SC_INPUT_MONEY" FOREIGN KEY (id_money) REFERENCES sc_money(id_money);
 D   ALTER TABLE ONLY dmes.sc_input DROP CONSTRAINT "FK_SC_INPUT_MONEY";
       dmes    	   sipPrueba    false    183    2529    206            ]
           2606    306486    FK_SC_INPUT_PACKING_UNIT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_input
    ADD CONSTRAINT "FK_SC_INPUT_PACKING_UNIT" FOREIGN KEY (id_packing) REFERENCES sc_packing_unit(id_packing);
 K   ALTER TABLE ONLY dmes.sc_input DROP CONSTRAINT "FK_SC_INPUT_PACKING_UNIT";
       dmes    	   sipPrueba    false    2535    209    183            ^
           2606    306491    FK_SC_INPUT_SC_DIMENSION    FK CONSTRAINT     �   ALTER TABLE ONLY sc_input
    ADD CONSTRAINT "FK_SC_INPUT_SC_DIMENSION" FOREIGN KEY (id_input_dimension) REFERENCES sc_input_dimension(id_input_dimension);
 K   ALTER TABLE ONLY dmes.sc_input DROP CONSTRAINT "FK_SC_INPUT_SC_DIMENSION";
       dmes    	   sipPrueba    false    183    184    2481            _
           2606    306496    FK_SC_INPUT_SC_PRIORITY    FK CONSTRAINT     �   ALTER TABLE ONLY sc_input
    ADD CONSTRAINT "FK_SC_INPUT_SC_PRIORITY" FOREIGN KEY (id_priority) REFERENCES sc_priority(id_priority);
 J   ALTER TABLE ONLY dmes.sc_input DROP CONSTRAINT "FK_SC_INPUT_SC_PRIORITY";
       dmes    	   sipPrueba    false    216    2551    183            `
           2606    306501    FK_SC_INPUT_STOCK    FK CONSTRAINT     w   ALTER TABLE ONLY sc_input
    ADD CONSTRAINT "FK_SC_INPUT_STOCK" FOREIGN KEY (id_stock) REFERENCES sc_stock(id_stock);
 D   ALTER TABLE ONLY dmes.sc_input DROP CONSTRAINT "FK_SC_INPUT_STOCK";
       dmes    	   sipPrueba    false    183    2595    237            �
           2606    306506    FK_SC_PRODUCT_DOCUMENTS_INPUT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_product_documents
    ADD CONSTRAINT "FK_SC_PRODUCT_DOCUMENTS_INPUT" FOREIGN KEY (id_product_formulation) REFERENCES sc_product_formulation(id_product_formulation);
 \   ALTER TABLE ONLY dmes.sc_product_documents DROP CONSTRAINT "FK_SC_PRODUCT_DOCUMENTS_INPUT";
       dmes    	   sipPrueba    false    2577    229    228            �
           2606    306511    FK_SC_REPLACEMENT_DOCUMENTS_    FK CONSTRAINT     �   ALTER TABLE ONLY sc_replacement_documents
    ADD CONSTRAINT "FK_SC_REPLACEMENT_DOCUMENTS_" FOREIGN KEY (id_replacement) REFERENCES sc_replacement(id_replacement);
 _   ALTER TABLE ONLY dmes.sc_replacement_documents DROP CONSTRAINT "FK_SC_REPLACEMENT_DOCUMENTS_";
       dmes    	   sipPrueba    false    2583    232    234            �
           2606    306516    FK_SC_TOOL_DOCUMENTS_    FK CONSTRAINT     �   ALTER TABLE ONLY sc_tool_documents
    ADD CONSTRAINT "FK_SC_TOOL_DOCUMENTS_" FOREIGN KEY (id_tool) REFERENCES sc_tool(id_tool);
 Q   ALTER TABLE ONLY dmes.sc_tool_documents DROP CONSTRAINT "FK_SC_TOOL_DOCUMENTS_";
       dmes    	   sipPrueba    false    2617    247    249            �
           2606    306521    FK_STOCK_REPLACEMENT    FK CONSTRAINT     �   ALTER TABLE ONLY sc_replacement
    ADD CONSTRAINT "FK_STOCK_REPLACEMENT" FOREIGN KEY (id_stock) REFERENCES sc_stock(id_stock);
 M   ALTER TABLE ONLY dmes.sc_replacement DROP CONSTRAINT "FK_STOCK_REPLACEMENT";
       dmes    	   sipPrueba    false    2595    237    232            �
           2606    306526    FK_STOCK_TOOL    FK CONSTRAINT     r   ALTER TABLE ONLY sc_tool
    ADD CONSTRAINT "FK_STOCK_TOOL" FOREIGN KEY (id_stock) REFERENCES sc_stock(id_stock);
 ?   ALTER TABLE ONLY dmes.sc_tool DROP CONSTRAINT "FK_STOCK_TOOL";
       dmes    	   sipPrueba    false    2595    237    247            �
           2606    306531    FK_STOP_MACHINE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_notification
    ADD CONSTRAINT "FK_STOP_MACHINE" FOREIGN KEY (id_stop_machine) REFERENCES sc_stop_machine(id_stop_machine);
 I   ALTER TABLE ONLY dmes.sc_notification DROP CONSTRAINT "FK_STOP_MACHINE";
       dmes    	   sipPrueba    false    207    238    2597            �
           2606    306536    FK_STORE_ORDER    FK CONSTRAINT     �   ALTER TABLE ONLY sc_store_order_item
    ADD CONSTRAINT "FK_STORE_ORDER" FOREIGN KEY (id_store_order) REFERENCES sc_store_order(id_store_order);
 L   ALTER TABLE ONLY dmes.sc_store_order_item DROP CONSTRAINT "FK_STORE_ORDER";
       dmes    	   sipPrueba    false    2601    241    240            �
           2606    306541    FK_STORE_ORDER_STATE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_store_order
    ADD CONSTRAINT "FK_STORE_ORDER_STATE" FOREIGN KEY (id_state) REFERENCES sc_store_order_state(id_state);
 M   ALTER TABLE ONLY dmes.sc_store_order DROP CONSTRAINT "FK_STORE_ORDER_STATE";
       dmes    	   sipPrueba    false    240    2605    242            �
           2606    306546    FK_STORE_REQUISITION    FK CONSTRAINT     �   ALTER TABLE ONLY sc_store_requisition_item
    ADD CONSTRAINT "FK_STORE_REQUISITION" FOREIGN KEY (id_store_requisition) REFERENCES sc_store_requisition(id_store_requisition);
 X   ALTER TABLE ONLY dmes.sc_store_requisition_item DROP CONSTRAINT "FK_STORE_REQUISITION";
       dmes    	   sipPrueba    false    244    243    2607            �
           2606    306551    FK_STORE_REQUISITION_STATE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_store_requisition
    ADD CONSTRAINT "FK_STORE_REQUISITION_STATE" FOREIGN KEY (id_state) REFERENCES sc_store_requisition_state(id_state);
 Y   ALTER TABLE ONLY dmes.sc_store_requisition DROP CONSTRAINT "FK_STORE_REQUISITION_STATE";
       dmes    	   sipPrueba    false    2611    243    245            �
           2606    306556    FK_SUPPLIER_GUARANTEE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_replacement
    ADD CONSTRAINT "FK_SUPPLIER_GUARANTEE" FOREIGN KEY (supplier_guarantee) REFERENCES sc_partner(id_partner);
 N   ALTER TABLE ONLY dmes.sc_replacement DROP CONSTRAINT "FK_SUPPLIER_GUARANTEE";
       dmes    	   sipPrueba    false    210    232    2537            w
           2606    306561    FK_SUPPLIER_GUARANTEE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_machine_part
    ADD CONSTRAINT "FK_SUPPLIER_GUARANTEE" FOREIGN KEY (id_supplier_guarantee) REFERENCES sc_partner(id_partner);
 O   ALTER TABLE ONLY dmes.sc_machine_part DROP CONSTRAINT "FK_SUPPLIER_GUARANTEE";
       dmes    	   sipPrueba    false    2537    210    195            a
           2606    306566    FK_SUPPLIER_PARTNERS    FK CONSTRAINT     �   ALTER TABLE ONLY sc_input
    ADD CONSTRAINT "FK_SUPPLIER_PARTNERS" FOREIGN KEY (supplier_guarantee) REFERENCES sc_partner(id_partner);
 G   ALTER TABLE ONLY dmes.sc_input DROP CONSTRAINT "FK_SUPPLIER_PARTNERS";
       dmes    	   sipPrueba    false    210    2537    183            �
           2606    306571    FK_SUPPLIER_TOOL    FK CONSTRAINT     �   ALTER TABLE ONLY sc_tool
    ADD CONSTRAINT "FK_SUPPLIER_TOOL" FOREIGN KEY (supplier_guarantee) REFERENCES sc_partner(id_partner);
 B   ALTER TABLE ONLY dmes.sc_tool DROP CONSTRAINT "FK_SUPPLIER_TOOL";
       dmes    	   sipPrueba    false    2537    210    247            x
           2606    306576    FK_TIME_MACHINE_PART    FK CONSTRAINT     ~   ALTER TABLE ONLY sc_machine_part
    ADD CONSTRAINT "FK_TIME_MACHINE_PART" FOREIGN KEY (id_time) REFERENCES sc_time(id_time);
 N   ALTER TABLE ONLY dmes.sc_machine_part DROP CONSTRAINT "FK_TIME_MACHINE_PART";
       dmes    	   sipPrueba    false    195    246    2613            �
           2606    306581    FK_TIME_REPLACEMENT    FK CONSTRAINT     {   ALTER TABLE ONLY sc_replacement
    ADD CONSTRAINT "FK_TIME_REPLACEMENT" FOREIGN KEY ("time") REFERENCES sc_time(id_time);
 L   ALTER TABLE ONLY dmes.sc_replacement DROP CONSTRAINT "FK_TIME_REPLACEMENT";
       dmes    	   sipPrueba    false    232    246    2613            �
           2606    306586    FK_TIME_TOOL    FK CONSTRAINT     m   ALTER TABLE ONLY sc_tool
    ADD CONSTRAINT "FK_TIME_TOOL" FOREIGN KEY ("time") REFERENCES sc_time(id_time);
 >   ALTER TABLE ONLY dmes.sc_tool DROP CONSTRAINT "FK_TIME_TOOL";
       dmes    	   sipPrueba    false    246    247    2613            �
           2606    306591    FK_TOOL_ATTACHED    FK CONSTRAINT     {   ALTER TABLE ONLY sc_tool_attached
    ADD CONSTRAINT "FK_TOOL_ATTACHED" FOREIGN KEY (id_tool) REFERENCES sc_tool(id_tool);
 K   ALTER TABLE ONLY dmes.sc_tool_attached DROP CONSTRAINT "FK_TOOL_ATTACHED";
       dmes    	   sipPrueba    false    248    247    2617            �
           2606    306596    FK_WORKFORCE_EMPLOYEE    FK CONSTRAINT     �   ALTER TABLE ONLY sc_workforce
    ADD CONSTRAINT "FK_WORKFORCE_EMPLOYEE" FOREIGN KEY (id_employee) REFERENCES sc_employee(id_employee);
 L   ALTER TABLE ONLY dmes.sc_workforce DROP CONSTRAINT "FK_WORKFORCE_EMPLOYEE";
       dmes    	   sipPrueba    false    254    180    2473            X
           2606    306601    fk_employee_person    FK CONSTRAINT     |   ALTER TABLE ONLY sc_employee
    ADD CONSTRAINT fk_employee_person FOREIGN KEY (id_person) REFERENCES sc_person(id_person);
 F   ALTER TABLE ONLY dmes.sc_employee DROP CONSTRAINT fk_employee_person;
       dmes    	   sipPrueba    false    180    211    2541            {
           2606    306606    fk_mails_person    FK CONSTRAINT     v   ALTER TABLE ONLY sc_mails
    ADD CONSTRAINT fk_mails_person FOREIGN KEY (id_person) REFERENCES sc_person(id_person);
 @   ALTER TABLE ONLY dmes.sc_mails DROP CONSTRAINT fk_mails_person;
       dmes    	   sipPrueba    false    2541    198    211            }
           2606    306611    fk_module_permission    FK CONSTRAINT     �   ALTER TABLE ONLY sc_module_permission_by_role
    ADD CONSTRAINT fk_module_permission FOREIGN KEY (id_module_permission) REFERENCES sc_module_permission(id_module_permission);
 Y   ALTER TABLE ONLY dmes.sc_module_permission_by_role DROP CONSTRAINT fk_module_permission;
       dmes    	   sipPrueba    false    205    204    2523            ~
           2606    306616 %   fk_module_permission_by_role_for_role    FK CONSTRAINT     �   ALTER TABLE ONLY sc_module_permission_by_role
    ADD CONSTRAINT fk_module_permission_by_role_for_role FOREIGN KEY (id_role) REFERENCES sc_roles(id_role);
 j   ALTER TABLE ONLY dmes.sc_module_permission_by_role DROP CONSTRAINT fk_module_permission_by_role_for_role;
       dmes    	   sipPrueba    false    205    235    2591            �
           2606    306621    fk_partner_person    FK CONSTRAINT     z   ALTER TABLE ONLY sc_partner
    ADD CONSTRAINT fk_partner_person FOREIGN KEY (id_person) REFERENCES sc_person(id_person);
 D   ALTER TABLE ONLY dmes.sc_partner DROP CONSTRAINT fk_partner_person;
       dmes    	   sipPrueba    false    211    2541    210            �
           2606    306626 	   fk_person    FK CONSTRAINT     p   ALTER TABLE ONLY sc_users
    ADD CONSTRAINT fk_person FOREIGN KEY (id_person) REFERENCES sc_person(id_person);
 :   ALTER TABLE ONLY dmes.sc_users DROP CONSTRAINT fk_person;
       dmes    	   sipPrueba    false    2541    211    252            �
           2606    306631     fk_person_observation_for_person    FK CONSTRAINT     �   ALTER TABLE ONLY sc_person_observations
    ADD CONSTRAINT fk_person_observation_for_person FOREIGN KEY (id_person) REFERENCES sc_person(id_person);
 _   ALTER TABLE ONLY dmes.sc_person_observations DROP CONSTRAINT fk_person_observation_for_person;
       dmes    	   sipPrueba    false    213    2541    211            �
           2606    306636 #   fk_person_specifications_for_person    FK CONSTRAINT     �   ALTER TABLE ONLY sc_person_specifications
    ADD CONSTRAINT fk_person_specifications_for_person FOREIGN KEY (id_person) REFERENCES sc_person(id_person);
 d   ALTER TABLE ONLY dmes.sc_person_specifications DROP CONSTRAINT fk_person_specifications_for_person;
       dmes    	   sipPrueba    false    2541    211    214            �
           2606    306641    fk_phones_person    FK CONSTRAINT     x   ALTER TABLE ONLY sc_phones
    ADD CONSTRAINT fk_phones_person FOREIGN KEY (id_person) REFERENCES sc_person(id_person);
 B   ALTER TABLE ONLY dmes.sc_phones DROP CONSTRAINT fk_phones_person;
       dmes    	   sipPrueba    false    2541    211    215            �
           2606    306646    fk_role    FK CONSTRAINT     i   ALTER TABLE ONLY sc_users
    ADD CONSTRAINT fk_role FOREIGN KEY (id_role) REFERENCES sc_roles(id_role);
 8   ALTER TABLE ONLY dmes.sc_users DROP CONSTRAINT fk_role;
       dmes    	   sipPrueba    false    2591    235    252            W
           2606    306651    fk_sc_person_to_sc_documents    FK CONSTRAINT     �   ALTER TABLE ONLY sc_documents
    ADD CONSTRAINT fk_sc_person_to_sc_documents FOREIGN KEY (id_person) REFERENCES sc_person(id_person);
 Q   ALTER TABLE ONLY dmes.sc_documents DROP CONSTRAINT fk_sc_person_to_sc_documents;
       dmes    	   sipPrueba    false    2541    211    179            �
           2606    306656    fk_service_or_product_partner    FK CONSTRAINT     �   ALTER TABLE ONLY sc_services_or_products
    ADD CONSTRAINT fk_service_or_product_partner FOREIGN KEY (id_partner) REFERENCES sc_partner(id_partner);
 ]   ALTER TABLE ONLY dmes.sc_services_or_products DROP CONSTRAINT fk_service_or_product_partner;
       dmes    	   sipPrueba    false    210    236    2537            �
           2606    306661    fk_work_experience_employee    FK CONSTRAINT     �   ALTER TABLE ONLY sc_work_experience
    ADD CONSTRAINT fk_work_experience_employee FOREIGN KEY (id_employee) REFERENCES sc_employee(id_employee);
 V   ALTER TABLE ONLY dmes.sc_work_experience DROP CONSTRAINT fk_work_experience_employee;
       dmes    	   sipPrueba    false    253    180    2473            V
           2606    306666    id_competencies_employee    FK CONSTRAINT     �   ALTER TABLE ONLY sc_competencies
    ADD CONSTRAINT id_competencies_employee FOREIGN KEY (id_employee) REFERENCES sc_employee(id_employee);
 P   ALTER TABLE ONLY dmes.sc_competencies DROP CONSTRAINT id_competencies_employee;
       dmes    	   sipPrueba    false    175    2473    180            �   �   x���v
Q���W�/���O�/(�O)M.���S��L	�( i�prjq1L,�_��Z���\��R��X�
��ML���K�Ts�	uV�04 C0R7204�#+0R�hZsy��A���AF@�0chdFtv��`r��`r�)1��� W�      1   �  x���n�@���sG"���`�U�F��$��í��AM���է�uw9��/��%��Y[�����><�~����7(��G��*�"Sp��O�>�u��jwH��>8TyY��o��Ϊ���e�I�Ww�{Z�y�:�u�6������kY�/��N}��n�~�?����Ri�3;V�>�E���*����doj|W7�����������G�>/�MY��ڋ��!�Sb@&��k�\��<<�ݝk�D��л�t�]a8a�:�M5�{U�������!��e��FXd��0�[XsPa@h@�0A9�=�,��\Q-�bdD� q
��P��v���$"�v��1�x��X���K8�E8���Xt�u��&�R07��@N4�+�e,:ۺ�1�dz*�}`X�6��R�j�� ��>>}�<^y,�0��_?rۤ�^�����MBc��E��&��i$�#$�m؊i���A�c��D��g��Ďg�X�u�S�h<�6�,ھ��h��{>x�9�0�w�)[h;��r�dz7��μ�E���wp��K���y�N�~j�юe�9�ĉ�	�Hl"��ﱉ�8����L8�s�1�c�99F���X�d�e���t���:�] ���u�u|�ZP�bn-$2Ü8�����J���. ���Nf���sh�!ة,�h�D��O�����a!<      2   `  x����j�0�{��ܩ�A���ʮ�&��6�m�5�0qi����)|�%�V�](�CO(��o2_��^�0_����|/K픖�Pya�U�+?��]O+-�~ݩ�����F'��훵��3����f�
#�%0�?}�����{]j	,�g,#TPJ�!���_���,u�L�=�V��b|;�G�Lz(������%�-�Ó�?vx4:ozUR)1���t�b�)��&u�����A�0h�F��^ͣ�� ����'��QB��t��K��a���.X�:�m@]W݅=.�o����bL���ɢx��5�Y��S΅��ί*�d�_>��:q��RB8"6&��a0���kl      3   �   x�u��
�0��>��T��h����h�V��¥�b���4|��3.���Ɋ�|���د�8U�fG�\�j,݉��tu���X��-�n�6,�w-�=RgK7O\>`m<;Ֆ���C{���i~��;��|_�Z��7�A��РE��3�X�R�#�&�d�	� �ƆI�&!�M��L*�8�yoE�L�R      4   [  x��սn�0���� %�^���ԁ!RE�B�F�T$U�}�:4"�a�R�d��ubg���e�j��:?���UQmm��}�����lW��7"p�=|�?�-����w�*/��/�k�������u������I�D1
�$EtO�r�~*��a���N���OuPv��u����x�� KQux�&%r�iB�
�!���+ ��N3z����ף�$(����(���>ތ�	��'����ޜ�z#;��ܑB�]�OYs�$���؝�'"1�����ۏ 
������BrB����ތ�;�}`<&��Q!�Y��M��T�
��n�W����O&�mhH      5   k  x�Ք�n�0��<En�Uv�B����cӀ����A�B8l��G؋��P��ıR�vٟ~g:_L^�l:_>�2l����,�e�)�u��s{���;S��7d�`|8�]aO�v&������j�!���
\fo����������j�`}Cq���;�@���8E]�PT!�'1��Fѿ�T�� �F�wؚ����l���{����1�0��cLG7�Q��3�G㩨m�p��=�Uv��h7L��ԉ�AʛH!e�U���ED3�b.�6Չ�Ea��O&�":[{R-G�9������d�"���2���5�5B��Ū	լZn��a5�KRWE祮2�����ZI\�Ѐ1�4U2j��z��}�A      6   �   x����J1��>���B<X[<���B�`�W��a��̈́dVԧwvEP��^B2�����x�?��=���3J�I)!S�%�_ʪ��X8+Kr`���QމV�;<�O�\;X8P��,�6����)�ֲv]�ʯ|�	詠41�omgDm,Y%� {���9F���/ӒG��+(	�"%�l+Q}�q��fF��H6;$F�J��L�L�_��J���ve�#rmȦ����      7   �   x�m��
�0E�~��&���:��m�
!4)bxoxH>^��s�:��}��0� W���d"��X������/�����1��>E��S������UОԍX�ei��v+��شȻp!��3~��x���V0�}/�UU} Ƌ=�      8   �  x����J�0��=E��9��Z��:�S���Ȓl�f���s���'S�zk�RzZ(?N�����ɌǳR��e�ж�l -gN�1����*�9���U��¨�v���z�m�t5���%:�y�J-��e�X3`�9�)�.e]`X��Q��1�3C��Z�Ƥ�_2��.�2����:(��ߊ(��&3v�$��(����[UFg����(�)d@#͆g��/ɭ-lP����D	H�X]�h������B�;fI�1�ڨH�yF�$�h�A��V�CD�d��0IT��(��c�և�����4͊����Ʈէ�)
�t/C�Ư�N���D����@�8�Z9m#p�J2�`?K���y�R�4��'�]P����F�bS�      9   �   x���?�@�w>E7 aur2ā�`"�J�C��#�g��{l�L}m_�{M붻=z���V��34zG��� #�?- ���� '+��*�׵y�:���v�R��ak��Ѧ�%�w�����h#��*60k�7���h)biH��Bv$Q.���11x���~�N�$ӭ�\XI�Г�      :   
   x���          ;   �  x�Օ�j�0��y
�KZ��F�{��CXi�l�BOA�լ���l�P=�#��v,�!qq��i4�c�|����'���oR$k�o3���\��������TF_x���\ԶGD���@s���YY*+s��vC$���\�LؽG��ʮw"�p/��]��M�^���o�-�h���W�q�x���%0��w�Cc���H%� 2�Ii�V����Ч�Oc����i����b��'4�5���n:D =�gQ'�c����|p�"T5��Z���$���tjj�s����m��32o#��p$���a���.�Oa�A�U���ͱN��E�a�+��[|��=A�6,�ui�������E�����"Cr�X�4O��d�.�ˠ[Xe�'y"���Z���*�U<XT�w�*����_�9�\��Ā�ˎ������A�_Rc�e����U��k�o�N{-�9�S���S�A�K|��`�L�Vy�"�띭�s�W��ﲃ�y̠a6�I��Q      <   �   x���v
Q���W(N�OKL.�/����ON,���S��L��Q@�RR���2@M�0G�P�`Cu����Ĕ���bu /8599���<�z�����̼�b�d�Mk.OZ��h�kn��T\�9��TTu@'qq Y.e�      =     x��ѿN�0�=Oq[[)K˟��!� H%RX��\���Yv��ȣtd��b\RT	"$��>���fyr��4[-!��ϵ��.�SK�����v�fC��h���7I�y��4o��Z�D�3_;�v;Ă��2���h�<��a0T:O��|v�%-qE���1�� �
�#9��s]�fS��n��+���}��qAkj�_J/*ݼ��E=I��o����@pxO��/,��;I^Kѳ�/=ͫ'�m���tm��BK{�,�:]V���#��Bh-�?o~k�� A49      >   �  x��VMs� ��Wps2cŠ/�����q�L�q�`Dmj	(�4��]��i&�v|�G#Ê]�}����ͷ{4_�E-+��΢KQu�1�;�ˆZn�ǈ?kave�1j�ֵ�\;j��l5�1z�����vSj��3�c��%�0΀/�6éJ�+�2#���$�ZŶ���PF�]���J4\���������n��0�*K�6�I?��F��K�CC餀��:�W�~a�^+2�B��7w�dc4����j��,�i��~��g���#c0L6��5��'j�*�IXe[~5��BND��h�*Ǭ"�Z��9�<��W3��~Hs����Ó��PF�O#���u�^}���r2�x���|X,:"$��$� ���P7�k�^�О�>�;�5��(��Q��t��=�q2���3�'�>���V���z�T�k���_t j+�r�J�$ �xV���Du	x��� �C����!��rր�� �V�
��Ih}�k7 WDq�ƹ�۠��S�
����dID
D�������NC��E/�N{�dg��T5�֣'n*gh�V�8P�-2�*���S�k=|�3%�E�?.	5�4�I���P�i������š?���&�_�폓���Ez���ܙ����X��x�������i@�t@:}A�_..~+:��      ?   �  x��XKk�@��W��	���}i驄@M�4�I�� [�-jYA+���W�}��\;>�c�og�y���ߟ���������z�^�,Wg�gt��cF��p�0�����SRT�Iu޷�t����1��:+�1*�4+0*vZ�oIU�}�~|��|�E7Fˈ�\/��U��*��̺����Nf��4�<��f�{:*�?�Y���Ǐ�,x�y��Q�Y��>�+�f<���{�!
��e~��gU�c�!M^n�zba�3� ��FB�N���{�*���%(�����;x�yWWz|V�֐`UKծ���r:$ibꎧQƃ]���F<�<2q[��0�Z��$g�E�lѰK S�g�(��`qXu���l�W! ЙO�6[*vI以U3<���o���+���I���鼜�Ya�������֗w�`����5�9�b*��t_x���;�<�M��v:����z/���.�N�(�wp9�5i�X^�.�Y�T��i�0�PS>)���ԓ�M�5��᭔�J�*�ܱ�� �f�{d�6*їR��ɔ��Li���,=u��`������_)]������S��#ÛFMlڸJE�]�3��1��S4�F����w��l�V��
���.o���;ׂ�}j��p{����fzu��Cr*�0���ws�.gL�7���/W�n      @   }  x�͒�n� ��y��5��+�zrk���,�R�fQ�	8M޾8U���H�EB���g����,����r
WL��VDⶡ��3�����X)d7'�e�r��Y&EE��'q�g��KD���v��oa�w�--W��q��U���x��Hky{T���3�B�J�+�L��E�ȏ�~2���>���QyY��O��Y��H3	��9�%�"u��\�Tk�eg �8ÇYx<<��f���e���6N'���,���,�4��,�;�c�MW���:�NbK�o���� �.b�/��#A(X�>Ч<�s����1�%A�j`K�q�C���51��=�R�F���
HEŮ����_�5��8\�%5QZbj��H���!z�oH�XW      A   
   x���          B   �   x���v
Q���W(N���+(-�OKML.)-J-V��LA�Q(�,)�I�QHI-N.�,(����Q�)�Ts�	uV�04�QP/���W�E��I�@����5�'m5[̀�e�g'����KLI,N-JO�lNc���6�@l�x�d��^.. � �[      C   �   x���v
Q���W(N���+(-��O*N-*K,���+V��L��Q(�,)�I�QHI-N.�,�j*�9���+hX�(�g��$��y�)��)@����5�'��64��m�;�45/��nvB�Y]PT��bZ ��� �~}	      D   �   x���M�@໿bn*����U�:x� ����F��k��]A��P'���e�a�,ON�Yq�����'U����*9S�kGpd���#do6�T��A�}Y3���؅��pNrpH���u�MPL�}D} �c=�!����5��f��$*f���a/h�H��ւ�3TL����)u��O㕠/P��K�Բ��
�      E   �  x����N�0��{
ߺI���q1�Jc �qEY�j���$��x-��n�uB�S����ױ�x�,_7�7����¤�RF�Pe�d]��K�*ۄ�q��8����v��P�!H����+�pmn���v��О��~�!c��ttu\ �PH(�S)3X�,2EM����H�f�6x��B8P*�����s��eA��P���USq�b��L̈�g�OQ�/�G�  ���ʈ�~Jy����!<g�o��8�(�t��p��6ݺݩT�dnV�lJ���J�m��۫�4�g)K��X����5�')l"�ܑu0�8���ҳG৪�)���bv:�=0/���fF�O���~���@�)���ʈq��!)���S�8���cx�/�����F!g�$�X�`�Jȇus�爇d0��\�o      F   �  x��Kn�0��9wJ !)J�ѕ�x I���V`(*f+�
E6po�e�E����9q�p�daH��1��!/o���
\ެ>��V�k.8��Ύ� �}��Q�W�k�l����K��+.���ܹ��5��Zް�B�Ly��AW�	=�;)X�m%%aԎ�/1��6^oz��-x�wֽ�S���z��Uϩ6*L8h���4��_�ഈAt���Aj���(e���bQ J��<I������pA zF9i�7Rۖ ��A���-� �o8�?kBߊJ�F<F���J��R�ɰ��e�g�n�S���l+w������<��d�P5�e�v��=NJ;�|�STy��{?<�pry,@���Ip�]����+�fh"� ��4�A�/����)�q���g|�� 20�h�ì*r�ffi��bZTJ����N2<C��������9Jj�g����Gh�T�[���hp��`t�)��d[�W~�,�Mqn�d(�!.�W�i�f�4?NHh�"W��*$	�v�P�4Q@��D;y���h�V��s�K��B�p��]@�9�R�����ArLO�3�
~?��	%N9Ac��L��V\1f{�J���n/�kF�/"(�8H(����Z£<l��F��m��d��a�s�{w
���'�SBT�yG��\�m ��cgv��dc�:*��}�@��}�,l��}vaxЫDS�����?��P�O2h� 99��-�Z      G   E  x�Œ�n�0��<�o�
hhډ�"Ub�h�B�@�M���Խ՞a/��u\�.�m+�?�gQ��!��s0�&g�^H�0"�a
m�^�,�YA�9M�$Z$�����.��z4]�}�E0'�x��ٝK<��
V/ӟ!J�2�;����\���\�$V�WԆe�f�yl����9�I0ǫeP1F���R�N3��T�7�|����

�!c�y��00Ĵ�A~�6j�$Nz�9񻷆��(Dy��������@Q-UN�5P� �����64���6r֗=ye�Òx#��������n�R?�����]K�&i�� ���V      H   {   x���v
Q���W(N��ML���K�O��K�,���+V��LApuJ*RuRR���2 B@P}�
a�>���
�:
�y%�Ey��@fVFzVzV�i�i��I#K��,��������vrq ��Mf      I   o  x�ՑKO�0���s+H���e9��BAТ�En<i��� ���%*J��qW�af����^<VK��;�]+h7p�-S�(q�Wp;���{��΍8�� u\ɖQ�{��"�^���v���g��.[���T4�����٠f~����n���x�g��NCV��@C�������̓�"!���</��Q�F�x�;��,o����Q�x�T�`��j=��xRf]8NL�/'�?�����ߪ/�Na��?�_����-�[�)����^$K�F�&�^A�MT��n��U����Z.7bLw��Ay�m�����|vH��X���
���.�~WM�'���n��lb��ƣ1h⯑��F��d��N      J   T  x��W�n�0��+xs
81WQjOAڤH�^F�m���T��ɱߑ�P��,H�\B&�eR���ON/��/�����E^�bm��[��7坁9���sTj_8���9**���j���}�#������ˮ�+���wUuд*����sЃZgg¯�S4>䅶A��L=��]�VF�|�)���0\7VO�0��aKN���K�i�[�B���:�@��ѬnB�f`�_�-�#�2�Z&s��Cg.�M��b��+�4]D<����T�#���ԫ���8ˡ<��K�Q��$�"�"M(I9in��+X���#:".K�pz�%"�5�p`��7{';��3�R�T~���ڨ.45<[�8o��m�B��EX�%�SBq,#��i�Sd�+��0���|�#��q�v��py�<��)U61�A�NU�"dS�?Cg�=�+ma�F�vTaC�ˈ��2J�QDv�"" ��u�J!2�s\��)�ET@���1ʩ���ů^0��Ј���A�݊��[��c}��>�px�7_�\�v_.}�mp(�~^(g9�4IR�1J��I� 
eY"q"a<%Dn�(����%=Nhth7��:cAC�H�m�}��j������`ʸ���!S�������2�l���PˁAz/�H�"ɞ�l�����bqs=eӭ�e,�?��B���������nU���v8���e�*�+T4�e�0��v��V��E"�c�=W�L�um��%��`�˾-�8Y��A��3�����w��/���D�b����$2��q)��(�<�#yB8�(���Qs�D���(H1��d|���)�m?dp3�q+:e<�D��	eo�/�E4C      K   �  x����n�0 �{�bnm�j�_�)Q	�J�����I�JldLw�;���^�bk@�X��$�1�|̄1$�M��B�J�P����r�3��9?�n����r�r��G!nU��C�t��Ǘx��!ܬ��}]��zu㧄Ш�:��~��6O�2yH��2Wձ��H�`�̔�FcL����d<iRf3Ԥ�=B�\���2}y�Mk���貐�:d�P��[o�v�p4��PSGX�Y��JW�su��Л��SV����L\�����h��?N���V����������
خd�x�A]����k\Z����S�؟��h��w�~��Q�z;˲8��g��Ԫ��3!*/����tF<��Җƛ�3b=��q�ow-����-�,].�(��cM��|kZ��7ﵒ�D;J4[XNZ^t����:�˸�틊ء�hHW���b��ɋB<r농�����S�)�      L   3  x��_o�0����F+��P��ijY���kdb�%qd;���!eUZ�&EE��s��ٿs�Γ��x:����T�$�yƂ�HP)�4\qzZӃ�d����\�� ��h.���*����Y� 4X�zP3Q�j��kX|y�>��U�]')sVaL6DJ�yN9DD�	"��W��̡�f�fJ�oᡅ<� �>!dK��lbM-ׇ�B�EB$��m
��iT�X��Ȟi�<Ox�ߛ���eڽ�ܙ�����8��p�Wq�>O���}�lÕY1,�m�oK厄"3挌Q��&���Y�M�ȸ�he�(�!;l��!$ͥ�R<[��}д�7M��_௜d�?8~���/�*~���ݾo������?������Fx�^sx�����(��ѻ��3��2a)Qw�o�tm�ݧ���`R2)J��}N�j'O�ډ��8�wˤ�&�*�a����Q�lq����<K��A�	PN	��&%�#m���/�[pw*��<��\.���it�؉�q�S�{g�Ւ�Z�����B#�����6ǡFW��ʴ��	iYH      M     x���]K�0���+r�J��O�ٔ^t����1�mN9�
��f��!�&���s^�/��e%���IX��6VL���b�_Kmc�L,�]�ْ�����kV�i��bRm������f���j�^*j'>pO̚�3�Q�A���f�Q� 1���v���/�ـÞ���(��p�A�v�-0n��#@��|9�l?ƽ���`��M�j?ߨ����i\yĺ&#�����<YB��_��5!
�D~��U�9Vk���Ӫ�[l������(�>L�eh      N   0  x��ձn�0����-��@�$D�:d��ҨI�F_�U0�6�x�>C_��VMU)j3����O��8��V{�7�{��J;�B�x�S��0V���h0��4�s��!�^;�����j�8a�VM����zk����g�� gs,)u0ƙ��%g|Q���X�pW��H"V��KB�G�jЀҕA�z�C�jʪ��QyQ�*J�%���
Q�*��1ռ�9���K*��|v2@��S�җ�}%�m�j[������Z��9k~�s�ϧ{�*�?��Z?,R[ږ�ԫ�oU�z�хR���i�      O   �   x���v
Q���W(N��M��+I�K�KN�O�I,�L�LN,���S��L�-�����Ts�	uV�0�QPw�9�2��(��i��I[����&^�G����yd�^X�CM�A�
�Û��IS����%������F3���������rq U�      P   �   x���v
Q���W(N��M��+I�K�KN�OI�MLOU��L�"�� �5�}B]�4u�}S�/��L�W״���F@�]s�L.)����@��sr�RR\K3�l�	���Ee�)�EԵ��
���̒���Û�@�pq �$�E      Q   a   x���v
Q���W(N��M��+I�K�KN�/.I,IU��L��Q S�
a�>���
�:
��~.��~!���\��1�h������g���?�`.. *>9�      R      x���KN�0�}O�]Z)By��*�D
�j��H~?�r(N�Űc
B,�*�e}c���v��a�zs�l����zE�M�&J��j�%s�g����qٲiU��q��tF�bv5���GM&��l�IWM�	���yo<��Y$>&r���"Ž@�>���4n؋8���8ǅ��}I�a���Ͳ��+tO��,�<x{B;O�e���m���I���C*Z��R#^�C��)��?G������"�I��Y���z���ӫ'���$!�J;�TG����z�q      S   �  x�͙�n�6��y
޼���N�	z��&��|����P��D�C1��69��G��uHK��DA�R�"E����Cjx;�������1Mtdc����4Fj�>�h���O��"0e��")���l��/�z��`��|���뇋1���ί`2��GQ{6���x��n�����Tͨ�s���O������s�����[s�<J#�d,#m��
ٗ:� �_p�0B=C�pQ�F��\�'�bYQ��} 'u����>(�HP�.�'\�O����ڰ{�6�t�>�_I�����"9
5�(��}�Ϝf@���`��mx,q�d�SfA��{g?�2�����_<<���q�F�wD

Ϧ)�JW]���&�����1ΫW�b����N�eY�>�=���(I���|�%AQ5���k%��hS�p�kN4���a�s~�m�ud6?tm��w1( �G�� �U8��')���pkHy8��e��
i|�_���k�%�C?�1�8f*(���I��u����CH�w�f������$'�l8�Q��X�/R�$��Ǚ�:���M\�Y̓|�4ZUm��,l@u�R�g�F�O� ���X\k��KS<m��( �ۣ�	���&:,_���o	d��SN>_վ����t)�}_�jڄ"7S?x��?�c����}5�=��ȐE�^�K޹��eCel���*�Y8�S����6Y>��-1ɧZR�������rp�"�rz�����}�M��Á����!�����ࣖD9vW�y�Ћ�'\,���]�'O-���kֹ�JQ}��hO6�{w
�ip�\�20��*���ﺎá�6��c��?65ߣ�?�48�ǚ� 2���q�_�St 0鎠�px�ݔw��:�;���F�~�$x�fYu�,��#
ʟ�>���('�-ߐj�eލ	�4/�t�C=ۆ��^�iə���~��n�S:��ӧ�|���������}��Y����ޤ<8��W��      T   �  x�͜�K\A�{��ש���|3�T!��5i-��I��y�R�-��Ǽs��{��󋫳���������}��x���v�t��p��r��c��u��x��������2������ӟ��������/gW�I
i������嗏ǻ%��;:�X��4���d�*LEaLa
	U2qaJ�C�sx�d�K�=���D�I��J�
Cz�'ߎ¨~����d�Y�dИ�Ma	�jΠOi՘���h�DT2��r�*��;?43������S���0�l�F����3v�4���!C8��N�̚���ms<�����Xz��B*�7�g�>����!zw�E��U����-*9Ct�
C��������Y��<�jW�d׶m��I����.�ɻɂ�Z�X��C�zh�gQs��,��y7YrF8;�	���ќ�*�L�L<|��v�&E3���62����4��T]���}PIܦmA�&�X����9��AcJ�zj���l�qx�D�CNZ�:V��IvyI��V�%��a�4�æN�>g���}Φ`-�����Y��ZĴ�؁?[]����r�*bj��h[1p��оb�xg�1ؽ��a�{g��ܽ��T6�,�F1笌���Mʓ�|�� ���
�b��hP[�J����avα��A���MF�.�Yh�[���OS���i*+���>��,�v�Y��NŬ����݀mU���N��@�T��iMU�.�֜����NŬû���5͜�YO����4�T��9QUqF����8�CzTg�k�QW�L�ߠq�"�f�8O�_�Oa��9ʛ>��'��{���>ɦ9h�Ұ��*�W��@��!ǉS�h��eИҰiS���Qk�8�ÿ��*{e7����ZP���4�7h]2h4o�J �U��%�F=�)4�)6���;�5�)6�����]=��%�F=�%����ݠQ��u����*��Sly���ly�s8z3���fq��S[���;r      U   �   x���v
Q���W(N����K�T��L��tRR���2J2��t����*suJ�r5�}B]�4u�]�s�ԁ adl`�g`�i��I��F@CR��a�R�hc��>�IE� �-�mJE�� MuN�+I,�[�HM7���@##S��&/�&0�sq \Ď�      V     x���ˎ�0��}��]f�,llu��,"US�3���.	`�������gY��d|~|~�x����?�G.��[ߔM�����KS��p��B��u�_Nѐ:��N�s���<<9o��O�ѯ��~�}D/��"~���w:-y���sAů_g"Cx^,-ewիg� �A@Cr����C��� 6�.�Y�
�� 7�:�oƷ@hP�A7�,k3x�Mh����:ɦx��Р7�Xa+1�	��lX����*�`��gs�E�AS�NgP�C����[��;�8��qM��,U��N���l����s��T�I�װN�𻁰�
;	�Q�3�Z�na'v����l��@�I:��^e���d}#�0�Jo�S�lZU��� �2�!�/:�E��eh�P�y.��7��P^(E�։���P�������i���x3��7=�8�0� �<\m<�"$����[��.��Ԅ����og��%F� coF��/�����w�Ϫ*_<�d����������      W   
   x���          X   �   x����
�0E���٥��|-\�tQ�
�v[�$ȨIj�
��i��d7\f΁�eU�ʪ9��]��N���<�$~AB:n��dtȭ�o�A�;���E,�a���9H�=ސeۤ��Y�Hz��@��N:�G�-�5������y���1"3��ԋ������8*<LIo��I߆x�'��Ұ+      Y   p  x�͔�N�0��y�� ـ�C���Y00��0K�v���C����27����4=OO�?==�t6y�#:F2\fD(�hT�-DBEw`���K�(gW�a�b����Q:LyD��C`�����4�f�헌��F��`1���P󭩗�Ʌٽ+��v�y�wb��:��9pzx`cl㡎�� ��k}LĎlH�l�5��q?>��Q�I�TĨU���hy!��ﯔ�D���u�ek@;`G\���xP>�I7����MA��#��z�d�l��֣�H	��W�gb+r��Y5 ��~���{Z�=ty�_�� Bc����*Z3�h�*���L��z���\���'�N�����?�h� q,�&      Z   �  x��YMo�6��W��-P%E}y'7M�Y4i��F�ef鑒��_�'���Ev���^Rr츮��;ir`K�P�����:>�<|{��ϮΑɮ�\%�s�w�/�XhS_KV�d�����L5��wp"j�n���Zȱ����A�*��R�xS7��ڸɴ�����\O'�Vp#�ݴ��0�R��u"�c�u7~j'�%����;�D��K48��ԂIt�*Q��m��)�Z����Zh#�mW��nCn+���;=��snjE���};�`�z8�A~<��<���8ڞ?<9�����YiGJf���ͭ(K��3VM-�:�kp^1���@����Sk�"	z�R/$�v6/`h`i�jQ1��,>X�p&`��<a3���S��� ��:S��d��
����Q@ c�t1h����ۼ�T�1����������^(�l����I�lkdy���m�])g�|�
ܹ�(%���P���똆�=0�m��DqҰ���}YrX���U����O�X	'�Wvn-��h�n`�9�".�ݒ2��V3ra��BL�҈�g��"S�3�v����?h�<G�U�b	�7�*��*?�RF	�/Y��n'	�j���	���%�3�%ߺ�#ڿ�bI,j'���[���l�q�^��E�$�Pm�T���u�.XY	�˂K�ߝۼ���W�|�V�LBh������v��s��Ϭ�lA6�|�c[���j%�V那�n�].~Yh�㠥�m�[h�Ύ��L���ѻ������q��m���y̩��z�Π�s0	��,���3�:���]Cf�v �<*�J�^A�QB\2Ҭ��mJ����o��.Z, �����5��*� 7��Զ��[���R�A��Ӕ�ABzl*Vj~T ��n�E�N��Mz�
U/>>���Z�
a!�8�,2.3��F;F.����Y��ͭ&��j� ���g ��/Ŕ���@�ڔ��d�i�J'_�V��7��lI�l��LP��lY��U �����E5U��"����	%ɾ�Ӧ6�cX�,t_Tži #H����x_S��8��|�2Q���e��l�Ͷ���gf<�-�bЀ>�Np��M>v�򙙭Hinਜ਼�|Lu�o؝*�CFB��d����3�h�=�D��E8M�ەV+Q�� �)p-�'��la+aŪ�3	�US���]�ʹ4��g��'�M8|:�鐦X��@��$�[~���%.��|nU|3L���]��cS���$o���B�;Y�fp�Q�X[�>j@�f
�rA�s�Уs][� ����<۔�<?Z��Ԯ4�}nQ#�b�.L�!�j��2��1�Q��d�O��"��p� D��X B�{Oי`��Ym����ߊ���#�9�&���${�O���u�+|�L��O�n�r�xvV��_��i���i��VvRi�v�=�!�i����O���h�      [   �   x���v
Q���W(N�/H-*�ϋO��O/�/-P��LA�Q����`AM�0G�P�`CҴ����:
FF42��l#Zm4h�1-̶ �t�	-̶�rSZ�mh 4�LG���ӈ1���)�h�$3H���� �A1�      \   �   x��οjA�����N�
�LPHeaq��I+�:������Y��y��&E���|����z��A��<#�m�>8�u���DQ90P�{y��b�\�*��W�m�x��1�
�L����i��,��h�@��x�`�I� 8@~k���a���)-}}����㾐�@>$�t�M�٫`\����YH�$c^F%sψ�vtt`����|#�}�'	x.�TB]�	�I_�����[Nƣ�)�o�A�      ]   �   x��п
�0�Oq[[�`+�'�Q��*%=� ^J/�Z>�/fZPP;�)�/���d�<�l![m� �Pa-�R��#�a����,Y�1��<��B��r���q�K�Q����s��p�e��'��Wh�9�ahTʝ�92T�Q(F@c�Q�
ʜ��5�������J|B&�M�@\���P�$u=i{��%~w�L��M~�Z���yO��      ^   ;  x���=k�0�=��6'�A����S(mZ�kql�qq�`7��wvM��	d?�݋����-��.������6���i�B{=B?��0�}}���6���kW�~z��a)E
(�1B'SH�Єc�v�%<�"IA���b{gW�+�@#��:^(�0����FT����pM��l
ޡҙ���c��1e"P��,3�A�����)g���0v��_RcA�I��(Csm�b�z��v� WeP���O�R<ʟT��P<N�R���d�-*BQ̐�U�"ģB-=��\nsB�>k�ߤ᫯NL��_���l      _   n   x���v
Q���W(N�/(��/�,�T��L�st�sSuRR���2J2��4�}B]�4u�sJ�a��5�'���MM��
aP�Xc�iN�Y`S�4�P.. ˩Q�      `   �   x�u��J1 ��>���B(ٍ��'�
�Z�V�ː���D�[�>��ֿ�0�o&3��v�z��z��(�0z))�[e�`��d��K�@�E9ꐴw�Oh��-�v�moh�?�]����לӲ3�
��t��W�;���?�l����j�g�1��e����3�A��
�{��j��� �?��L�9��V��D�����K^�/���mWiJ���i�O{#�x      a   ,  x��Kj�0@�>�쒀��.]���!M�I�5BT����Bn�3�d��|��dQo�oƒF�)כ�����,���P�m�e���4�70��p{�Ap�q��#�D��qKQ;a4g���W��O���}���B�ޝ��?��v�\����ņGzrg��(����١���>W��L�A�`��5̄NaE��d������J�M �|��Vx��M0�s�,�8��-�'8�p���K$},fQ9����� �Zp7���W����W>��a������󕍾n��d_!�"���_����      b   
   x���          c   �   x�e�A
�0E�=���B��ŕ+
R�V�!6�$$��q<�3��7������i���C������=��*�@�L��#�/�1�~p�i4� Gd���	Wt��G�b7�&�!"w��J̨l���ݟ���"��&-�01��z�R�@QRtE��_->�:&�|�$�ɺR�      d   �   x��н
�0�Oq[-�~��P� ����H�������bFQ���k�#���,/���|�SQ�e��P���D*5C����� 5eh*�U�eC��5�� �QS<+lۑm)�~�����{�k�W6�`�X��Ɉ���ƙ��*�k͛�'�!�p�?k�xM�̽��qo��k��3��}	��5�Yo��E�yw��ì      e   �   x���v
Q���W(N�/(�ON-.���+(-Q��LA�Q@���P����Ҽ����⒢̤Ғ��<��Ԣ�Լ��������̔�T����Ĝ��Ĝ�T�^M�0G�P�`###SC3 ���"& ��5���q�1~�rq �tq�      f   �   x���=�0ཿ�����'��`�k�M�@MJ>���:� �fx�x��g���� m7��d�j��!gg�Ҍk���#����s�)'-a�X-.�
%�\�\Zz�Ds#����t"w:9��M�۟��l�`IZ�d�
c�x�m����
�^{i�=��S/��g�s��i/���=�^��G�
ف�      g   �   x�͏�
�0D�~��T�&��S�B����7�~~S���²��2OUuyk@U���i���`l�F�̵���m:��BQ����5�HH��������;-�����>���|��5d���3�3��[p��#�4�O��s�F��@JYH��$oo��~      h   �   x�Ց�
�0E�~��l!�h�C��PZ��� :Ѐ5�h��7���Br�e'?٩��P�ֲ7�Fk孪��C�M�f���0p���`P7��u��h$>z�,Z��j�jG�|�*����Q��t'+�p���Y3�b�s|��s>ka8�99(�y��LB����6~O�P��Y���=�d�"�'�H�ד�d���a���)"��yz!�����      i   �   x��α
�0��Oq���EW'���V��+��pSE}zS�����s�T�Շ����fb�G �~,E#.̎}�e*q��u�bU!o�1CH��-#�`Ԙ\�4h
BQ�T~&񜗛L�K��!���nnD6y}gt2,����d�Q]      j   W  x�Œ�N1��<��	t�j��$��Ȗ���M:m���ƥ���y+:bԭl��s�󝜖˺�(��
<�ZgD�a�B`�	��!� ,�(CP4��I��#8ۿ3���%}�lq_�0�\���gU�7EU�M�g}R�����șs���<��&q|5���N;!��^y9'Ҽ\-�"r��� ��ž�}D��ZP����G� jp�`H��z���<:)XBt�[�&u�[/�z�GF��GF��"y����iY��胹�ͯ��jC����[Z-�A�P�T��I�b<��|R���掎3qA���a5�W7����!:�0�Q�;Ӟ�7ȒRx���[      k   �   x�eNAN�0��{k+��I�(p�PP$(%)�Z�vKNl96R��;�N�V���0;�;3�^U[(��w�s��(�V�Vu�����Y��h:��xжc�5�;ަ5:c�d_G�����(mo}��e����U�|�`B�*r�����\�Q�Ԉ$�~�N�x����#:-�@4_`z���J�`�����.�������G�����pq�}J�~��9�ũ9�y1{̲�||s      l   >  x�mO�N�0��+|�&�4)�8Mc�&�@lp��4k�ҦJ҉�=n;��l������lw��=l��7����`]��m`����Z*�j:��s�x-�rZ�pGr���Gݔ�O�ݙ�$ ��.pؤ���< i}�R5hJ�$L7jjۨQ`��S��;����QZ(/�nG�������`�q_�����,%%��UR�J��s6ϓˬ�m�;~��L�2��|�e�C�*���������3Ki���=�ј�1c��GJ1b�Eò��ŷ���a3����@�a-��<,+ur֨��t�9{�L&��h�6      m   �  x��QO�0����&�k���O�!A4�6Mw@e[g����64�,O��M���]���m<�=��a<��B�DaMR)'�M�BO'�
�֢��U=p�E&Z-S2i7���V�J�����.�݉��(��i��e3C�ݮʔN(�]=n+Ӫ�d&�֐�����j)���tF�Keu�ΟP5/������r',~U�b�h������fUڌ������i=~�A7X���Z˭���q��)�R��Fw�l(LMy�Y����N�u0+���y^���G����1��H1��>���;�h�,�6����3���
��hG��VyFvG��J�qkM����vk�.&
«��������΂2�/\����Yp^�81ó�������,�������N���d:      n   w   x���v
Q���W(N�/(�O)M.��ϋ/.I,IU��L��QHI-N.�, 	i*�9���+h�(����x�����kZsyR�l#�ٮ~
A�ή��T6�h������g���#�p.. M�\�      o   `  x��Ko�0���V/i%��잪��J�n��jo�up��c�|�C�&}I�G2��c�'�c��7�Ww����7r���t\�^j�N�b�N����'���;��	r��NI[7�[����v���`���(�K���Hk�UQ��{5�z�=��U&*	�h��z|2VV��h�T/���~�r���O~4����������^��;E.~=^ݣ�q�fw�	��DD@�҂Mh���8k���7���v��	��K��[��s�7��p�2�l�qqI(�A��QL�3� R����͍�M��e���-�����0|���� �#���r�.�꩓�2����@_�^u*f46E`ep��+#vF����J�A�F<$�7��uj���)r���>#T�%I%�8b�c1�/�����h�jN��#�ŗ�b�w�Vg�]�52NN�h²�XƊLcx�< �i���"C�^������PUt��L�Ͳɿ�i��~�El��Lc/J�-Q�W�"��({G��@#�����]�
�M��$-H]0�3Z��b�ʪ����9��RZ�z=6fV�eQ�����N�e�N�$F�j�U���E��������      p   �   x����
�@�O��<�u(:�l��]C��+q���7��]�.�,�~0���M���X�b�bS���L��(/�®`��tm�kETsꢭ�.gG�ό�.Xg2����r�4��ㅥ~n�� ��P�T�*�:!a/M��C����w��A�f[فʶ|�Pty����'��l�����K�7�l�?�M�\��f첬�A�      q     x���[o�0 �w~��J%v���)+لD�T`�[dl��Jb��~Φ��R���d)��ur�ɖ<�ͣ���@�X1�a�rV��
bˎMN�GZ����toh�1k�6\1ņ��������4^�Z��${N���?��2��f�n:��Ygm5I�P^Hkt���}wEt\}�Q�i��!�{е@�O��e!8��AЇmI�r�JZ���'�����~nLΌl�q��RL3��l�9|as{�`�D�+g�6j�k�'��.�О֖9o%����,�gƍ��?�<@���7:�_�D��=����\�o��;�q���!X������g�p
����q8_���g9�%?,m�뤨 �O���\i�������l:@�>`��ף�o�n}YKRn�i�hk&Fİ�[֍!�� �z���A�gM�����!wvg_G��^3�ݑ��#y��
n��(�q������tr!�
r!�؆kW'X��.oO�m
���<K�ʱўHNXU~��PT*A���<kW�j�������      r     x�͔�j�0����-�����ٕk���3��.�j+A�HFr}�=��#��&��l�lW)c�}@���|�IV`Z��L��U�\�f�� ���nj-�^(9�Zs檇���wP��=7��.�:���68#��`��<��kr��]��5�{�({4�4�.�8=Kx�=7�Pږ���c��9�zd�k�cB?��������������tn>L�E�YMD�T���rp\��o��v[h�᧟��Z:%��-�K�kE�?:�[�-��GT8�W����^��˪4���*�QJ�8����a͙g�E�HXc��1�ͷ�"JrеL�쌲���=C���[@�\ݣ9�Z`F쥛M�BǵQ�voy]�.e������䋵��R�h�\e�!�? �P.���A�=�HQRT�ԡl���݆{Fr'���9N酳�8�p:^��*�og�袑.�n�Di����n��	7%�Ô@����0m�Z�J������#��<?r�+?�������d� e�
      s   �  x�Օ�n�0��y
��F+i�b�z0t�����
�%O��q� ;��b#�4I�<@-�臒̏���������>�S��-�&�M��+63\x�*8�!`Kg$5���~.�0d��M��>���%�\��0�@�����Kx�����.���acYVC�-j�0Ǫ3��t*3e�
�P54��������dT5-�r hr�I���s	ڜ�po�P݈�-�(>`����ŉ�Sp�?�����Ġ�]�z�����z��֡te�eN���/|�}φX� "v�7����,�Bʽ㭆pL{Q��V���Kh���3Av�6e�o���ZK�Ĥ�?S�u߹�Us37�cv�g>�k�G���j��C�%rR�J�n�Ad4��y��O���Q�'u<3ʹ�0��]���O��?n0��      t   J  x�͗�n�0E{�P���%��"��E�c[���؁#�����F�%J���KΝ�������><�q����|>���韎����ޏ��tZ�����4�ۏ�t8i�|��o�����88�������[�����'w���08�O@��@�:���lp?�D��"Q.P�`�h�{/g��SfH�*�I����sۦ����*�B03��&�%+�ucF��9Y!�2�ZI�4̹=2B�U��*�y�{@�En��nV�Т��
 �@�V�"j��|0d��͸ ��	xWy�nb	`�*3"s���kk+ḇ;,��/��Y�j��ۅ�5dV��T��s�B�h��(��<�e�>ef�uu�>���{$�mڳ��箔��g?r��׼ʸ�S�}J���%i��CI�KC%u'���x�f*��e=S�����Dv+�e Y�VNy���ؑ����D~EĴ��b����z�+���k�dZYY�F^e]�B1\0[-ȫV�%�Vo��̊,b�+FԼ]�PJ8i�Ж�rACM�ֺ�3*`�IF0;"�bq4���`�˫�����F��Uy�7��`&F      u   �  x�ՙMo�8�����^�E��aV��H���4�m� 	��#�d�?�!I�4ݺ�"oH��|�><>�<����_�D6}�}ӾU&-�:G?�lt���ʔu�צN�8�rӗM�����6��v�p:�}Y/�uv].�zs�l<�k�i���ĶMm��'����_/臠w��;tK1�����ND�p	r��-\|}x������QL��%\dp��V�%Y��vrkP��P�����c0�`UϿ���q�"�ŉT�����ûc�͒Wku���p:(~[5���#�c�Q�(UT�%�?��H���@��P	����P����s�䃤]~`=Φ�Ү�E*���1�Dp���L��b�/�����ס��׻�o��H��xL��L�u��s`X4���`�LE�_M=�P��q���e�۞�!Q�*$�DE�Xt�;'H~F�N�x��C�<����Q�g�G��o@�1$vسfźB{ ���<I����HQ}HA��F��X�sj\I�d�By�	U�d\�кh�*}��+Ld�	��T�\Ϊ�>���zQQ�8����|_(�qi��uiɻ�e�vj\i��O	ʷ��Rߡ�<ވ��!n�z��=�d�MNz\��rN#-�K:���
�]��z��M1�X�p:t#��;��������g���UJ�w+��U����??!��q��V,wd�̶�کix���ݰrA""��wgH��z�g�.���,<�@��koz>�6��8Wɸ7ݦ��.t����8��V�1 ����H�s�d���M����*��k�A��V��}Uc�v�]�thS�m!��]Ը;�̎��
©Yp���(�#ir����5.���^���,�Sr7��R�Q�Q���-,}b�Ӕ/�:{WsJ��zP���,GT�/�� �P�'^ ����I�F-AAb~H�=�t2b��bx:��}E>r�v��s��b�{1�ZXuI_�8���G ڍn{���)%�\	%X���V�}�R��1�x����V�C�<���P��G<���Y�����~�:Ľ�v13ʩ�3)�Dܘ	_��o�4�t$ ��M��� ���&i?"؈��5	�bZ����^�{��©x�Ka�D#7�t�Q"�Ξ����s�sV�5�A���y��П��#B5r����wb����?5����3on��S�}      v   a   x���v
Q���W(N�/.�/JU��L��t�sS5�}B]�4u�sr�S��5��<I�n��݈t��HڍI�n��݄t��H�MAڹ� �^p      w   �  x����J�0 ��=E�Va���L�+���9ſے�)��L��=��ዙf��Ti�t���9i��q�&�V��G��o�)rc��\�4���<!�/��|�0fB��ºp�A�Jɼ�EW2�PY@]��6���4��z7!�Q[i��B���M�v ��
�1;>��~�{B�/�O���	g�E�QcwxZ��i�q�ԅb��Sʧ	%��S�S:w������_֍(�ߤ�0�boO.F�?�Jz����9�ze�l�T}T�Ku��eȎ\�֭Z׀t}t	�� �zy��Sl �)>�S1�A^C�����W��)zyq������a^g�j��S-�gea;b�[s!�����҂�|#uh����JB��A0�OqPF|�ͯ;��ma}����{�=��N6|����A�%G �m�Գ����8#·�V땠W��as�_�~{G�oo\���No4� ͯ�      x   l  x��Y�n�0}�W�-��D{��J�4uU�M{�\|�x"63��k�H�zD{�R�혜�{�7��ۇ'��{���j�v���:n�;رk��FĪZ���-w�7����^;PS��Z���N�z�]Fi�1�
Nn+��N[�=�����0ix����V
�������Gv�[|��N��d��X1x->.ot]KeKp<K"�_�o>\�i��D�k��;��ر��w=<K���<~�S&C@����EAI,
R�&
���Wm��OKN
6f�����p�^��z�s�{YKSI��� ��$�I�����؃ǎ���gA��1�{�����܌xq��G� b9���9������/l~N�k������t����ϩ��ty��i�����a�BZ��Ĵ>��Α�F6P�Z�  � �=nV�"@��g�h8�����Kr�7���m,�����511+����S� r��CA��"z���Lq2\遁�t�b����5t��'�8��4�
A�'���	��=,��C���
b(�����/[k<t�{N*�E���'PP3�I@��W!�G?p�~�8���/�Щ
Z�B�r(������� X�      y   �   x��ѽ�0�񝧸HX�6q"��D���J��B�@K����}^�FGF����_���R�W(��	�h�3L�aI�gt���)IV��2:�{~�Hf�g6-c��t���sO�*Ț ��c��v\~wtLm(q��=jA�a0�A��(ƗRXO
���)��a
�I�ڑV�"�¼r�5	�P�F�a��      z   
   x���          {   
   x���          |   
   x���          }   �   x���v
Q���W(N�/��MU��L3t����*sur3�JKR�5�}B]�4u�]25�5�uML4��<�4�hVpjnb�8J�3��Z��
6���Ȁ�L��9ޘq�����8.. ��]q      ~   E  x���n�6���Do�v�oI�U��"@�k6`W#�6[I�(*Y�6��e�!/�CRNl'��bw.�!�S���x���.~�B��~FCUzk����f��]���q�˱)��s4�}���ը�꼆�V�Ost�����7��*;���P�A[�L�sZyc��V��*g��3G�����S�띱�������iu7lj��ө���Jt��>_x��b��lM7z=�B��y�������읮���L�fsD(�?Ȅ�x�4v@w��>U��5�Z��m���Z����s���ʥi�/0�sӮ�aP`:�[����~��@(��b"X,C$�c�B2��m��~s���(�2o��Bb��ǳ��E�aZޚ�7�s�3@J�T;��*f��Zu�B�n��������"���h��n���ys
U���&SP=ƵDE\k,�XI��Rn��RXO�+L��M�f��D�avB	��ј��!�;[���d#���-�Շ����P��D.�#����URߥ���ı�=�*�b�U�����!Ơ���B,��09�\�������X/2�9i��8?y�e��T�iW\�O��Qm}�Q�r�0��+�-x�!�ߟ4�A�_p��&�	��i��<�h����K�+�i�l�7���6x$A��3V �(�9R�"#�d�fg��Rd�0I�n�g��o��GuD�����q�[�Y~�5�g+6���V����$;��3q*K}cL��~��1P*�LI������-�Y���&�k*�w�Z��lb&+:�M<-0~��r���4g�	ַˡ��f����06'{����Sa��wU(�������-$�6Ƞ��]����M�$���7�M�C�!��i�s��ɇ����\ʍ'} >_��
?���.�����m~�?�/ɍ�x��l�:໊�h�Ig�Sw��)�
0��� !��z��O���c	�x��6�`x^��nzC#x�Cht��ħtwm�*�Ͷ#4�Z���y�B��@���,>�7p,�N%��]AO�y��e
T������Ώ�	g�hP�Zo�����P��zxLz����SA��2!�����_:�;W         �  x��T�n�0��+�����6EO�� 
���\�5��iP�JRܿ*�	��.%�A_������ٝY�e���b�Z���Z��!�ؒ�%�?I!j�_��(��꠬I�|/����n�)�?�Y�X̦�b1�����2.��qx�5)�Hct���/c�z̧���S����=�Ok��yB��pm��K��P�Ai�n�������_� l��$f�(���w����n��3���r����d�A��cP6��,�ϠƠ�Fk�Fb����u:�]Xmݱ�-�݃���H�hPyf�]a�a�;{���DLk��N��,u���C}�?�*`�o�[Ik���;j�r{r>�$J���%���IbH��j�rZ���b|ev_��Q7�e�J����Z퐣.QbĆw�=�n�����(�QL�z�cb�xv�9�^{��5E���>[�����>�W<����8�$�N)}      �   	  x��]O�0����nC��8iK�]�JPЀiw��v[3��S�~�l��X��UʄԨ������9�L���a2=?�f�5㆕����k��`����^z�D���3�^<�ט�lY(�|v�n�_���-��]�4:���kڂW���Eg���Bk�`Б�(��ͥ���N��
-�p>��	푤Gh
t�M��_����{{�n?#��V�%�7J��B�`�p�RjR��!���{.J,06��(�dw3�|���ow&�Ř��H�o~��=���f{$M�YF(9�� Z#3:��4��و�Z��x��VS:U��8���c�QI.��u�f�$�N�*�m��o��4o�B��\͍��;b�s��fJ�cya�I��U{S�|��Z���5�>�$�dV���K�e�Y�!����K2N�����+ɑ�U>*��\~�+��+�0��^2@P���t^��b��Ἆ5!����m��m�J��*e�S)���{�uD�L���#��f9����I8��d�Uګ�R�y*u7��znrTp�d0P�l1��(l).�Z�����i�÷�Z��Za����W�Ke ��t<�^���p�����ލ�&�c������<.�Jt�y��a�y�Ҥ�\W��+��pD�µ��f(vO�O��N�^$�V�������D��WY5Q]����`�B�cF�IT½p��B�������7�jB�e����ѽȣ'��^�M��t`=��E�3J3N���Q��?]�>2�7);;� N䪢      �   �   x��ϱ
�0��=Oq���A�����!P"�ڵ�6�6���������僣�i�(�� �C���i	��#�'a��
����S��}4ʽ�BZ컐p�.B�	l�w,�舋��rͲ�O��&����=�9��E!��!l_      �   �   x�Ŕ�
�0��>E�Z�`����b��_��JH"D��$>������]�\�p�[~?r��u�ڐb�Y���v����/b�~!rͬ�4��̩��A<�Bn>Dd7�n�5iИ�����Y����h֤I�f�w�A��@%Lu�jT�@C�j�� �L
���Ј: +f��t��DT�ջX=KD�>���z�G���](53��_ʫ��'��->��      �   �  x�͔MK$1�����T�J��5{ڃ��aVݫ�2��N��a��o��Uaσ�@U�އ�������Xoo�)�''q1��D+��K=,�X�܉}��
�����i��<��}�M�]�P^��R�������vBb��8��n����d�PG��%NV��#�L9foK��R���$!�
��tS�w��巳���ꄂN���q_#��;���A��
���}����^9!�G�7�-l�RIߨ�k2��#�#�K4�4J%b�}1��m٨�l��������-LsX��B]�"�^&k|P��t>eg�4ЛwZ��_��:��T/!�C�}�V�yO�R1�K�G`�&����+�/�T�I+T+PW�O�f��%�<��0m�J�d"�2�!O Q2YN?�'v��Bw��qv��,g      �   �   x��ұn�0�=Oq[@�ҝ!4i��*�J�Y��NCP��1I��b�t�ٿ��+���g���Y�?�;�|m�3�4��4���3}ݨ>���.<d۞���A{�*w���<�����f�b�DZ	"�9P��J`��I�$a�B�{uJ�oI9!�p�eW	�%6�,��1j���F���pyR�2ԓ��\�������tV]''���C>'�~�'�dcy؎$�b�Ց      �   �   x���v
Q���W(N�/�/�N�/JNU��LA�t��@��܂���T ��� �NS!��'�5XA��PGA]]G�H��^�\R�����i��I+ 6Z )�����hm��BלT�o����;�i�	�R#zZj��S�� 3�����Ҝމ�%.��GPP�Z\��.5���t���C�%\\ ���     