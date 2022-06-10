package helloMVC.servlet.web.test;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.annotation.WebServlet;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/test")
public class TestController {

    Logger logger = LoggerFactory.getLogger(getClass());

    /**
     * quertString 받는방법
     */
    @GetMapping("/example1")
    public void example1(@RequestParam String id,
                         @RequestParam String code, Model model) {
        model.addAttribute("id", id);
        model.addAttribute("code", code);
    }

    /**
     * Map으로 받는방법
     */
    @GetMapping("/example2")
    public void example2(@RequestParam Map<String, Object> paramMap, Model model) {
        model.addAttribute("paramMap", paramMap);
    }

    /**
     * dto(class)로 받는방법
     */
    @GetMapping("/example3")
    public void example3(TestParameter testParameter, Model model) {
        model.addAttribute("testParameter", testParameter);
    }

    /**
     * 배열로(list) 받는방법
     */
    @GetMapping("/example4")
    public void example4(@RequestParam String[] ids, Model model) {
        model.addAttribute("ids", ids);
    }

    /**
     * json 받는방법
     */
    @GetMapping("/example5/form")
    public void form(){
    }

    /**
     * json 받는방법
     */
    @PostMapping("/example5/saveData")
    @ResponseBody
    public String example5(@RequestBody TestUser requestBody){
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("result", true);
        logger.info("requestBody : {} ", requestBody);
        return "/test/example5";
    }

    /**
     *  js 연습
     */
    @GetMapping("/test")
    public void test() {
        System.out.println("진입했나요");
    }

    /**
     *  js 연습
     */
    @GetMapping("/test2")
    public void test2() {
        System.out.println("진입했나요");
    }

    /**
     *  나머지 매개변수, 전개구문
     */
    @GetMapping("/test3")
    public void test3() {
        System.out.println("진입했나요");
    }

    /**
     *  closure
     */
    @GetMapping("/closure")
    public void closure() {

    }

    /**
     *  setTimeout , setInterval
     */
    @GetMapping("/setTimeInterval")
    public void setTimeInterval() {

    }

    /**
     *  call, apply, bind
     */
    @GetMapping("/callApplyBind")
    public void callApplyBind() {

    }
    /**
     *  prototype
     */
    @GetMapping("/prototype")
    public void prototype() {

    }

}
