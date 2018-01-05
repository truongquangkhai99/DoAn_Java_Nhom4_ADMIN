package foodGroup4Quanly.service;

import java.util.List;

import foodGroup4Quanly.entity.Hoadon;

public interface HoadonService {
	
	void create(Hoadon hoadon);
	Hoadon getTheLastBillByTableStillCooking(int idBan);
	void delete(Hoadon hoadon);
	void update(Hoadon hoadon);
	Hoadon getBillById(int id);
	List<Hoadon> notConfirm();
	
	int getCount(String loaihoadon);
	List<Hoadon> getlist(String loaihoadon, int begin, int maxresult);
}
