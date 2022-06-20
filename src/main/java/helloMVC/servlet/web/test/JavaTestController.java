package helloMVC.servlet.web.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/java")
public class JavaTestController {

    @GetMapping ("/listMapTest")
    public ModelAndView listMapTest(){
        List<Map<String, Object>> listMap = new ArrayList<>();
        ModelAndView mav = new ModelAndView("java/listMapTest");
        Map<String, String> map = new HashMap<>();

        map.put("peaple1", "사람1");
        map.put("peaple2", "사람2");
        map.put("peaple3", "사람3");
        map.put("peaple4", "사람4");
        map.put("peaple5", "사람5");
        map.put("peaple6", "사람6");
        map.put("peaple7", "사람7");
        mav.addObject("map",map);

        System.out.println(mav);
        System.out.println(map.get("peaple1"));
        System.out.println(mav.getModel());
        System.out.println(mav.getModelMap());

        return mav;
    }
}
