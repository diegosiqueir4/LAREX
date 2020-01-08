package de.uniwue.web.controller;

import de.uniwue.web.communication.ExportRequest;
import de.uniwue.web.config.LarexConfiguration;
import de.uniwue.web.facade.segmentation.LarexFacade;
import de.uniwue.web.facade.segmentation.SegmentationSettings;
import de.uniwue.web.io.FileDatabase;
import de.uniwue.web.io.FilePathManager;
import de.uniwue.web.io.PageXMLReader;
import de.uniwue.web.io.PageXMLWriter;
import de.uniwue.web.model.PageAnnotations;
import org.opencv.core.Mat;
import org.opencv.core.MatOfByte;
import org.opencv.imgcodecs.Imgcodecs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;

import javax.annotation.PostConstruct;
import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

/**
 * Communication Controller to provide file contents
 * and process save as well as export requests
 */
@Controller
@Scope("request")
public class SearchController {


    @Autowired
    private ServletContext servletContext;
    @Autowired
    private FilePathManager fileManager;
    @Autowired
    private LarexConfiguration config;

    /**
     * Initialize the controller by loading the fileManager and settings if not
     * loaded already.
     **/
    @PostConstruct
    private void init() {
        if (!fileManager.isInit()) {
            fileManager.init(servletContext);
        }
        if (!config.isInitiated()) {
            config.read(new File(fileManager.getConfigurationFile()));
            String bookFolder = config.getSetting("bookpath");
            if (!bookFolder.equals("")) {
                fileManager.setLocalBooksPath(bookFolder);
            }
        }
    }

    /**
     * Request an image of a book, by book name and image name.
     * Use resize to get a downscaled preview image, with a width of 300px.
     */
    @RequestMapping(value = "/images/books/{book}/{image}", method = RequestMethod.GET)
    public void getImage(@PathVariable("book") final String book,
                         @PathVariable("image") final String image,
                         @RequestParam(value = "resize", defaultValue = "false") boolean doResize) throws IOException {

    }
}
