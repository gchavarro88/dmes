/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sip.dmes.beans.resources.materials;

import com.sip.dmes.beans.SessionBean;
import com.sip.dmes.dao.bo.IScInput;
import com.sip.dmes.dao.bs.ScInputDao;
import com.sip.dmes.entitys.ScCostCenter;
import com.sip.dmes.entitys.ScInput;
import com.sip.dmes.entitys.ScInputDimension;
import com.sip.dmes.entitys.ScInputEquivalence;
import com.sip.dmes.entitys.ScInputLocation;
import com.sip.dmes.entitys.ScMeasureUnit;
import com.sip.dmes.entitys.ScPackingUnit;
import com.sip.dmes.entitys.ScPartner;
import com.sip.dmes.utilities.DMESConstants;
import com.sip.dmes.utilities.Utilities;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import org.apache.log4j.Logger;
import org.primefaces.context.RequestContext;
import org.primefaces.event.FlowEvent;
import org.primefaces.model.UploadedFile;

/**
 *
 * @author gchavarr88
 */
public class ScInputBean 
{

    //Declaración de Variables
    private List<ScInput> inputList;//Lista de insumos de la tabla
    private List<ScInputDimension> dimensionInputList;//Lista de dimensiones del insumo
    private List<ScInputEquivalence> equivalenceInputList; //Lista de equivalencias del insumo
    private ScInput inputSelected; //Insumo seleccionado para consulta, edición o eliminación
    private ScInput inputSave; //Insumo seleccionado para agregar
    private ScMeasureUnit measureUnitSave; //Unidad de medida seleccionado para agregar
    private ScMeasureUnit measureUnitSelected; //Unidad de medida seleccionado para agregar al insumo
    private ScPackingUnit packingUnitSave; //Unidad de empaque seleccionado para agregar
    private ScPackingUnit packingUnitSelected; //Unidad de empaque seleccionado para agregar al insumo
    private ScInputLocation inputLocationSave; //Localizacion seleccionada para agregar
    private ScInputLocation inputLocationSelected; //Localizacion seleccionada para agregar al insumo
    private SessionBean sessionBean; //Bean de sesion
    private UploadedFile pictureFile; //Archivo que se copiara para la imagen del insumo
    private ScCostCenter costCenterSave; //Centro de Costo para agregar
    private List<ScPartner> partnersList;//Listado de proveedores
    private List<ScCostCenter> costCenterList;//Listado de centros de costo
    private List<ScMeasureUnit> measureUnitsList;//Lista de unidades de medida
    private List<ScPackingUnit> packingUnitsList;//Lista de unidades de empaque
    private List<ScInputLocation> inputLocationsList;//Lista de localizaciones
    
    //Persistencia
    private IScInput scInputServer; //Dao de persistencia del insumos
    
    
    private final static Logger log = Logger.getLogger(ScInputDao.class);
   
    //Constantes
    private String PATH_FILE = System.getProperty("user.home"); //Obtenemos la ruta del servidor
    
    /**
     * Creates a new instance of ScInputBean
     */
    public ScInputBean() 
    {
        
    }
    
    /**
     * Método encargado de mostrar los datos iniciales
     */
    @PostConstruct
    public void initData()
    {
        fillListInputs();
        fillListPartners();
        fillListCostCenter();
        fillListPackingUnit();
        fillListInputLocation();
        cleanFieldsInit();
    }
    
    /**
     * Método encargado de llenar la lista de insumos.
     * @author Gustavo Chavarro Ortiz
     */
    public void fillListInputs()
    {
        try
        {
            //Se consultan todos los insumos y se guardan en la lista ordenados por la fecha
            setInputList(getScInputServer().getAllInputs());
        }
        catch(Exception e)
        {
            log.error("Error al intentar consultar los insumos de la tabla", e);
        }
    }
    /**
     * Método encargado de llenar la lista de proveedores.
     * @author Gustavo Chavarro Ortiz
     */
    public void fillListPartners()
    {
        try
        {
            //Se consultan todos los proveedores existentes
            setPartnersList(getScInputServer().getAllPartners());
        }
        catch(Exception e)
        {
            log.error("Error al intentar consultar los proveedores para los insumos", e);
        }
    }
    
    /**
     * Método encargado de llenar la lista de centros de costo.
     * @author Gustavo Chavarro Ortiz
     */
    public void fillListCostCenter()
    {
        try
        {
            //Se consultan todos los proveedores existentes
            setCostCenterList(getScInputServer().getAllCostCenter());
        }
        catch(Exception e)
        {
            log.error("Error al intentar consultar los proveedores para los insumos", e);
        }
    }
    
    /**
     * Método encargado de llenar la lista de centros de costo.
     * @author Gustavo Chavarro Ortiz
     */
    public void fillListPackingUnit()
    {
        try
        {
            //Se consultan todos los proveedores existentes
            setCostCenterList(getScInputServer().getAllCostCenter());
        }
        catch(Exception e)
        {
            log.error("Error al intentar consultar los proveedores para los insumos", e);
        }
    }
    
    /**
     * Método encargado de llenar la lista de centros de costo.
     * @author Gustavo Chavarro Ortiz
     */
    public void fillListInputLocation()
    {
        try
        {
            //Se consultan todos los proveedores existentes
            setCostCenterList(getScInputServer().getAllCostCenter());
        }
        catch(Exception e)
        {
            log.error("Error al intentar consultar los proveedores para los insumos", e);
        }
    }
    /**
     * Método encargado de vaciar los objetos.
     * @author Gustavo Chavarro Ortiz
     */
    public void cleanFieldsInit()
    {
        setInputSave(new ScInput());
        setInputSelected(new ScInput());
        setCostCenterSave(new ScCostCenter());
        setPackingUnitSave(new ScPackingUnit());
        setInputLocationSave(new ScInputLocation());
        setMeasureUnitSave(new ScMeasureUnit());
    }
    
    /**
     * Método encargado de vaciar los objetos.
     * @author Gustavo Chavarro Ortiz
     */
    public void cleanFieldsCostCenter()
    {
        setCostCenterSave(new ScCostCenter());
    }
    /**
     * Método encargado de vaciar los objetos.
     * @author Gustavo Chavarro Ortiz
     */
    public void cleanFieldsPackingUnit()
    {
        setPackingUnitSave(new ScPackingUnit());
    }
    
    /**
     * Método encargado de vaciar los objetos.
     * @author Gustavo Chavarro Ortiz
     */
    public void cleanFieldsLocationInput()
    {
        setInputLocationSave(new ScInputLocation());
    }
    
    /**
     * Método encargado de agregar un centro de costos.
     * @author Gustavo Chavarro Ortiz
     */
    public void addCostCenter()
    {
        try 
        {
            if(getCostCenterSave() != null)
            {
                if(Utilities.isNumeric(getCostCenterSave().getCostCenter()))
                {
                    getCostCenterSave().setCreationDate(new Date());
                    getScInputServer().saveCostCenter(getCostCenterSave());
                    if(getCostCenterList() == null)
                    {
                        setCostCenterList(new ArrayList<ScCostCenter>());
                    }
                    getCostCenterList().add(getCostCenterSave());
                    cleanFieldsCostCenter();
                }
                else
                {
                    log.error("Error al intentar crear el centro de costos desde insumos");
                    addError(null, "Error al crear un centro de costos", "Debe ingresar solo números para el campo código del centro de costo");
                }
            }
            else
            {
                log.error("Error al intentar crear el centro de costos desde insumos");
                addError(null, DMESConstants.MESSAGE_TITTLE_ERROR_ADMINISTRATOR, DMESConstants.MESSAGE_ERROR_ADMINISTRATOR);
            }
            
        }
        catch (Exception e)
        {
            addError(null, DMESConstants.MESSAGE_TITTLE_ERROR_ADMINISTRATOR, DMESConstants.MESSAGE_ERROR_ADMINISTRATOR);
            log.error("Error al intentar agregar un centro de costos desde insumos",e);
        }
    
    }
    
    /**
     * Método encargado de agregar una unidad de empaque
     * @author Gustavo Chavarro Ortiz
     */
    public void addPackingUnit()
    {
        try 
        {
            if(getPackingUnitSave()!= null)
            {
                
                getScInputServer().savePackingUnit(getPackingUnitSave());
                if(getPackingUnitsList() == null)
                {
                    setPackingUnitsList(new ArrayList<ScPackingUnit>());
                }
                getPackingUnitsList().add(getPackingUnitSave());
                cleanFieldsPackingUnit();
                
            }
            else
            {
                log.error("Error al intentar crear la unidad de empaque desde insumos");
                addError(null, DMESConstants.MESSAGE_TITTLE_ERROR_ADMINISTRATOR, DMESConstants.MESSAGE_ERROR_ADMINISTRATOR);
            }
            
        }
        catch (Exception e)
        {
            addError(null, DMESConstants.MESSAGE_TITTLE_ERROR_ADMINISTRATOR, DMESConstants.MESSAGE_ERROR_ADMINISTRATOR);
            log.error("Error al intentar crear la unidad de empaque desde insumos",e);
        }
    
    }
    
    /**
     * Método encargado de agregar una unidad de empaque
     * @author Gustavo Chavarro Ortiz
     */
    public void addInputLocations()
    {
        try 
        {
            if(getInputLocationSave()!= null)
            {
                
                getScInputServer().saveLocationInput(getInputLocationSave());
                if(getInputLocationsList() == null)
                {
                    setInputLocationsList(new ArrayList<ScInputLocation>());
                }
                getInputLocationsList().add(getInputLocationSave());
                cleanFieldsLocationInput();
            }
            else
            {
                log.error("Error al intentar crear la localización desde insumos");
                addError(null, DMESConstants.MESSAGE_TITTLE_ERROR_ADMINISTRATOR, DMESConstants.MESSAGE_ERROR_ADMINISTRATOR);
            }
            
        }
        catch (Exception e)
        {
            addError(null, DMESConstants.MESSAGE_TITTLE_ERROR_ADMINISTRATOR, DMESConstants.MESSAGE_ERROR_ADMINISTRATOR);
            log.error("Error al intentar crear la localización desde insumos",e);
        }
    }
    
    /**
     * Método encargado de llevar el flujo al guardar un insumo.
     * @param event evento en el cual se encuentra el asistente para crear insumos
     * @return String al final retorna el nombre de la siguiente pestaña del asistente
     * @author Gustavo Chavarro Ortiz
     */
    public String onFlowProcessSaveInput(FlowEvent event) 
    {    
//        if(event.getOldStep().equals(TAB_USERS))
//        {
//        }    
        return event.getNewStep(); 
    }
/**
     * Método encargado de realizar la copia del archivo que se desea cargar.
     * @param event Evento que trae el archvio cargado al servidor
     * @author: Gustavo Adolfo Chavarro Ortiz
     */
    public void handleFileUpload() {
         //Validamos que el evento de copiado no sea nulo
            if(getPictureFile() != null)
            {
    
                String fileName =  getPictureFile().getFileName(); //Extraemos el nombre del archivo
                long fileSize    = getPictureFile().getSize(); //Extraemos el tamaño del archivo
                int positionLimitName = fileName.indexOf("."); //Extraemos la posicion del delimitar del tipo del archivo
                String fileType = fileName.substring(positionLimitName+1, fileName.length()); //Extraemos el tipo del archivo
                    //Validamos que el archivo contenga los tipos permitidos
                    if(DMESConstants.TYPES_EXTENTIONS_IMAGES.contains(fileType))
                    {
                        String folderName = DMESConstants.FILE_PATH_INPUTS;
                        //Creamos el folder
                        File folder = new File(PATH_FILE+"/"+folderName);
                        folder.mkdirs(); 
                        //Creamos el archivo con la ruta y el nombre de la carpeta
                        File file = new File(folder+"/"+fileName);
                        try
                        {
                            //Creamos el archivo y lo enviamos al metodo que lo escribe
                            if(writeFile(getPictureFile().getInputstream(), file))
                            {
                                getInputSave().setPathPicture(file.getAbsolutePath());
                                //addInfo(null, DMESConstants.MESSAGE_TITTLE_SUCCES, DMESConstants.MESSAGE_SUCCES);
                            }
                            //Si sucede un error al escribir el archivo
                            else
                            {
                                addError(null, DMESConstants.MESSAGE_TITTLE_ERROR_ADMINISTRATOR, DMESConstants.MESSAGE_ERROR_ADMINISTRATOR);
                            }   
                        }
                        catch (Exception e)
                        {
                            //Excepción de escritura
                            addError(null, DMESConstants.MESSAGE_TITTLE_ERROR_ADMINISTRATOR, DMESConstants.MESSAGE_ERROR_ADMINISTRATOR);
                            log.error("Error al intentar guardar la imagen", e);
                        }
                    }
                    //El tipo no pertenece
                    else
                    {
                        addError(null, DMESConstants.MESSAGE_TITTLE_ERROR_ADMINISTRATOR, "El archivo no pertenece a los tipos permitidos "+DMESConstants.TYPES_EXTENTIONS_IMAGES);
                    }
                }
                else
                {
                    addError(null, DMESConstants.MESSAGE_TITTLE_ERROR_ADMINISTRATOR, "El archivo se encuentra vacio");
                }
            RequestContext.getCurrentInstance().execute("PF('pictureSave').hide()");
            RequestContext.getCurrentInstance().execute("PF('dialogInputSave').show()");
    }
    
    /**
     * Método encargado de visualizar la imagen de un elemento.
     * @return String cadena con la ruta de la imagen
     * @param input insumo al que se le consultará la imagen
     * @author Gustavo Chavarro Ortiz
     */
    public String searchImage(ScInput input)
    {
        if(input != null)
        {
            if(!Utilities.isEmpty(input.getPathPicture()))
            {
                //la constante me permite mapear imagenes externas
                return DMESConstants.PATH_EXTERN_PICTURES+input.getPathPicture();
            }
        } 
        return DMESConstants.PATH_IMAGE_DEFAULT;
    }
    
    /**
     * Método encargado de recibir una entrada de datos y un archivo para posteriormente
     * escribir los datos en el archivo.
     * @param dataIn entrada de datos a escribir
     * @param newFile archivo nuevo en el que se escribiran los datos
     * @return valor booleano indicando si el proceso de escritura se realizó satisfactoriamente
     * @author: Gustavo Adolfo Chavarro Ortiz
     */
    public boolean writeFile(InputStream dataIn, File newFile)
    {
        boolean result = false;
        try
        {
            OutputStream outputStream = new FileOutputStream(newFile);
            byte[] buffer = new byte[1024];
            int len;
            while((len = dataIn.read(buffer)) > 0)
            { 
                outputStream.write(buffer, 0, len);
            }
            outputStream.flush();
            outputStream.close();
            dataIn.close();
            result = true;
        }
        catch(IOException e)
        {
            log.error("Error al intentar crear el archivo, metodo writeFile",e);
        }
        return result;
    }
    
    /**
     * Método encargado de visualizar un  mensaje en la pantalla de tipo informativo
     * @param actionEvent Evento de donde es llamado
     * @param tittle Título del mensaje
     * @param message cuerpo del mensaje
     * @author: Gustavo Adolfo Chavarro Ortiz
     */
    public void addInfo(ActionEvent actionEvent, String tittle, String message)
    {
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, tittle, message));
    }

    /**
     * Método encargado de visualizar un  mensaje en la pantalla de tipo Advertencia
     * @param actionEvent Evento de donde es llamado
     * @param tittle Título del mensaje
     * @param message cuerpo del mensaje
     * @author: Gustavo Adolfo Chavarro Ortiz
     */
    public void addWarn(ActionEvent actionEvent, String tittle, String message)
    {
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_WARN, tittle, message));
    }

    /**
     * Método encargado de visualizar un  mensaje en la pantalla de tipo Error
     * @param actionEvent Evento de donde es llamado
     * @param tittle Título del mensaje
     * @param message cuerpo del mensaje
     * @author: Gustavo Adolfo Chavarro Ortiz
     */
    public void addError(ActionEvent actionEvent, String tittle, String message)
    {
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, tittle, message));
    }

    /**
     * Método encargado de visualizar un  mensaje en la pantalla de tipo Fatal
     * @param actionEvent Evento de donde es llamado
     * @param tittle Título del mensaje
     * @param message cuerpo del mensaje
     * @author: Gustavo Adolfo Chavarro Ortiz
     */
    public void addFatal(ActionEvent actionEvent, String tittle, String message)
    {
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_FATAL, tittle, message));
    }
    
    public List<ScInput> getInputList()
    {
        return inputList;
    }

    public void setInputList(List<ScInput> inputList)
    {
        this.inputList = inputList;
    }

    public List<ScInputDimension> getDimensionInputList()
    {
        return dimensionInputList;
    }

    public void setDimensionInputList(List<ScInputDimension> dimensionInputList)
    {
        this.dimensionInputList = dimensionInputList;
    }

    public List<ScInputEquivalence> getEquivalenceInputList()
    {
        return equivalenceInputList;
    }

    public void setEquivalenceInputList(List<ScInputEquivalence> equivalenceInputList)
    {
        this.equivalenceInputList = equivalenceInputList;
    }

    public SessionBean getSessionBean()
    {
        return sessionBean;
    }

    public void setSessionBean(SessionBean sessionBean)
    {
        this.sessionBean = sessionBean;
    }

    public IScInput getScInputServer()
    {
        return scInputServer;
    }

    public void setScInputServer(IScInput scInputServer)
    {
        this.scInputServer = scInputServer;
    }

    public ScInput getInputSelected()
    {
        return inputSelected;
    }

    public void setInputSelected(ScInput inputSelected)
    {
        this.inputSelected = inputSelected;
    }

    public ScInput getInputSave()
    {
        return inputSave;
    }

    public void setInputSave(ScInput inputSave)
    {
        this.inputSave = inputSave;
    }

    public UploadedFile getPictureFile()
    {
        return pictureFile;
    }

    public void setPictureFile(UploadedFile pictureFile)
    {
        this.pictureFile = pictureFile;
    }

    public List<ScPartner> getPartnersList()
    {
        return partnersList;
    }

    public void setPartnersList(List<ScPartner> partnersList)
    {
        this.partnersList = partnersList;
    }

    public List<ScCostCenter> getCostCenterList()
    {
        return costCenterList;
    }

    public void setCostCenterList(List<ScCostCenter> costCenterList)
    {
        this.costCenterList = costCenterList;
    }

    public ScCostCenter getCostCenterSave()
    {
        return costCenterSave;
    }

    public void setCostCenterSave(ScCostCenter costCenterSave)
    {
        this.costCenterSave = costCenterSave;
    }

    public ScMeasureUnit getMeasureUnitSave()
    {
        return measureUnitSave;
    }

    public void setMeasureUnitSave(ScMeasureUnit measureUnitSave)
    {
        this.measureUnitSave = measureUnitSave;
    }

    public List<ScMeasureUnit> getMeasureUnitsList()
    {
        return measureUnitsList;
    }

    public void setMeasureUnitsList(List<ScMeasureUnit> measureUnitsList)
    {
        this.measureUnitsList = measureUnitsList;
    }

    public ScMeasureUnit getMeasureUnitSelected()
    {
        return measureUnitSelected;
    }

    public void setMeasureUnitSelected(ScMeasureUnit measureUnitSelected)
    {
        this.measureUnitSelected = measureUnitSelected;
    }

    public ScPackingUnit getPackingUnitSave()
    {
        return packingUnitSave;
    }

    public void setPackingUnitSave(ScPackingUnit packingUnitSave)
    {
        this.packingUnitSave = packingUnitSave;
    }

    public ScPackingUnit getPackingUnitSelected()
    {
        return packingUnitSelected;
    }

    public void setPackingUnitSelected(ScPackingUnit packingUnitSelected)
    {
        this.packingUnitSelected = packingUnitSelected;
    }

    public List<ScPackingUnit> getPackingUnitsList()
    {
        return packingUnitsList;
    }

    public void setPackingUnitsList(List<ScPackingUnit> packingUnitsList)
    {
        this.packingUnitsList = packingUnitsList;
    }

    public ScInputLocation getInputLocationSave()
    {
        return inputLocationSave;
    }

    public void setInputLocationSave(ScInputLocation inputLocationSave)
    {
        this.inputLocationSave = inputLocationSave;
    }

    public ScInputLocation getInputLocationSelected()
    {
        return inputLocationSelected;
    }

    public void setInputLocationSelected(ScInputLocation inputLocationSelected)
    {
        this.inputLocationSelected = inputLocationSelected;
    }

    public List<ScInputLocation> getInputLocationsList()
    {
        return inputLocationsList;
    }

    public void setInputLocationsList(List<ScInputLocation> inputLocationsList)
    {
        this.inputLocationsList = inputLocationsList;
    }
    
}
