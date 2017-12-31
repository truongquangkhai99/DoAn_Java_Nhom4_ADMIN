package foodGroup4Quanly.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Component;

import foodGroup4Quanly.config.HibernateUtil;
import foodGroup4Quanly.entity.Luongchonhanvien;

@Component
public class LuongChoNhanVienDaoImp extends HibernateUtil implements LuongChoNhanVienDao{

	@Override
	public long getSum(Date begin, Date end) {
		String hql = "select COALESCE(SUM(tien), 0) from Luongchonhanvien where ngay >= :begin and ngay < :end";
		Query query = getSession().createQuery(hql);
		query.setParameter("begin", begin);
		query.setParameter("end", end);
		return (long) query.uniqueResult();
	}

	@Override
	public long getSum(Date begin, Date end, int ChiNhanh) {
		String hql = "select COALESCE(SUM(tien), 0) from Luongchonhanvien where ngay >= :begin and ngay < :end and chinhanh.chiNhanhId = :ChiNhanh";
		Query query = getSession().createQuery(hql);
		query.setParameter("begin", begin);
		query.setParameter("end", end);
		query.setParameter("ChiNhanh", ChiNhanh);
		return (long) query.uniqueResult();
	}

	@Override
	public List<Luongchonhanvien> getListIn(Date begin, Date end) {
		String hql = "from Luongchonhanvien where ngay >= :begin and ngay < :end";
		Query query = getSession().createQuery(hql).setParameter("begin", begin);
		query.setParameter("end", end);
		return query.list();
	}

}
