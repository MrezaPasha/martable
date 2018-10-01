package org.sadr.share.main.map.map;

import org.sadr._core.meta.annotation.PersianName;
import org.sadr._core.meta.generic.GenericControllerImpl;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author masoud
 */
@RestController
@PersianName("***")
public class MapController extends GenericControllerImpl<Map, MapService> {

    public MapController() {
    }
}
