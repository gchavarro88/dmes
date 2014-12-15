/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sip.dmes.utilities;

/**
 * Proyecto: DMES - Versión: 1.0
 * @author (es): Gustavo Adolfo Chavarro Ortiz 
 * @Funcionalidad: Esta clase está encargada de guardar todos los valores constantes
 * utilizados por la aplicación.
 * @Modificado por:  
 * @Funcionalidad agregada:
 */
public class DMESConstants
{
   //Mensaje que se mostrará en todas las tablas y grillas donde no existan datos
   public static final String  MESSAGE_EMPTY_INFORMATION = "No existe información para visualizar.";
   public static final String  MESSAGE_ERROR_ADMINISTRATOR = "Su solicitud no pudo ser procesada, espere un momento e intente nuevamente, o comuniquese con el administrador para una solución.";
   public static final String  MESSAGE_TITTLE_ERROR_ADMINISTRATOR = "Error de Sistema";
   public static final String  MESSAGE_TITTLE_SUCCES = "Operación Exitosa";
   public static final String  MESSAGE_SUCCES = "Se realizó la operación con total éxito";
   
   //id clase tipos
   public static final Long scClassTypeClassification=1L;
   public static final Long scClassTypePriority=2L;
   public static final Long scClassTypeLifeSpan=3L;
   public static final Long scClassTypeCost=4L;
}
 