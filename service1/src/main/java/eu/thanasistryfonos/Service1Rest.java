package eu.thanasistryfonos;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * Created by atryfo03 on 11/20/17.
 */
@RestController
public class Service1Rest {

//    @RequestMapping(method = RequestMethod.GET, path = "/service/{msg}", name = "service")
//    public String sayHi(@PathVariable(required = false) String msg){
//        return "Hello world from " + msg;
//    }

    @RequestMapping(method = RequestMethod.GET, path = "/service")
    public String sayHiNoPar(){
        return "Hello world from JAVA!";
    }

}
