package foodGroup4Quanly.controller.chinhanh;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import foodGroup4Quanly.entity.Chinhanh;
import foodGroup4Quanly.service.BanService;

@Controller
@RequestMapping(value = "/chinhanh/taodonhang")
public class ChiNhanhTaoDonHangController {

	@Autowired
	private BanService banService;
	
    @RequestMapping(value = "/taiquan")
    public String getTaoDonHangTaiQuan(Model model, @ModelAttribute("chinhanh") Chinhanh chinhanh) {
    	if(chinhanh == null)
    		return "/login";
    	model.addAttribute("dsBan", banService.layDSBanByChiNhanh(chinhanh.getChiNhanhId()));
    	System.out.println(chinhanh.getChiNhanhId());
        return "chinhanh-tao-don-hang-tai-quan";
    }

    @RequestMapping(value = "/mangve")
    public String getTaoDonHangMangVe(Model model) {
        return "chinhanh-tao-don-hang-mang-ve";
    }

}
