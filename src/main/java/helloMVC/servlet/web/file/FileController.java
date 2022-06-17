package helloMVC.servlet.web.file;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/file")
@RequiredArgsConstructor
public class FileController {

    private final FileService fileService;

    @GetMapping("/fileView")
    public void fileView() {

    }

    @PostMapping("/fileUpload")
    public String fileUpload(@RequestParam("file") MultipartFile file) throws IOException {

        fileService.fileUpload(file);

        return "/file/fileView";
    }
    @GetMapping("/fileList")
    public void fileList() {

    }
    @GetMapping("/fileDownload")
    public String fileDownload(HttpServletResponse response) throws IOException {
        fileService.fileDownload(response);
        System.out.println("response = " + response);

        return "/file/fileList";
    }
}
