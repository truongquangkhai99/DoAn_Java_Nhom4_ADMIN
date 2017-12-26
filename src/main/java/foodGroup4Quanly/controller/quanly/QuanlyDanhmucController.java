package foodGroup4Quanly.controller.quanly;

import foodGroup4Quanly.service.DanhMucService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/quanly")
public class QuanlyDanhmucController {

    @Autowired
    DanhMucService danhMucService;

    @RequestMapping(value = "/danhmuc", method = RequestMethod.GET)
    public String getListDanhmuc(Model model) {
        model.addAttribute("listDanhmuc", danhMucService.getAllDanhMuc());

        return "quanly-list-danh-muc";
    }

    @RequestMapping(value = "/danhmuc/{idDanhmuc}", method = RequestMethod.GET)
    public String getChitietDanhmuc(Model model, @PathVariable("idDanhmuc") int idDanhmuc) {
        return "quanly-chi-tiet-danh-muc";
    }

    @RequestMapping(value = "/danhmuc/themdanhmuc", method = RequestMethod.GET)
    public String getThemdanhmuc(Model model) {
        return "quanly-them-danh-muc";
    }

    @RequestMapping(value = "/danhmuc", method = RequestMethod.POST)
    public String postThemDanhmuc(Model model) {
        return "quanly-list-danh-muc";
    }
}
