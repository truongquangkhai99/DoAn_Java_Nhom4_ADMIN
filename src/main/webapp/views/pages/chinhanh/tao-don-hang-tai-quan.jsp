<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#">
                <em class="fa fa-home"></em>
            </a></li>
            <li>Tạo đơn hàng tại quán </li>
        </ol>
    </div><!--/.row-->

    <div class="content">
        <div class="row" style="display: flex;">
            <div class="col-lg-6" >
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Danh sách bàn trong quán
                    </div>
                    <div class="panel-body" style="height: 490px; overflow:auto;" >
                        <div class="row">
                        <c:forEach items="${dsBan }" var="item">
                         <div class="col-md-2">
                                <div class="btn-dat-ban ${item.tinhTrang == 1 ? 'btn-dat-ban-occupied':'' }" data-id="${item.banId }">
                                    <a href="javascript:">
                                        <img class="img-responsive"/>
                                        <p>${item.tenBan }</p>
                                    </a>
                                </div>
                            </div>
                        </c:forEach>
                           
                            
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="modal-dat-hang-tai-quan" role="dialog">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Chọn món ăn</h4>
                        </div>
                        <div class="modal-body" style="height: 500px">
                            <div class="col-md-5">
                                <div class="form-group">
                                    <label class="control-label col-md-3" style="margin-top: 6px">Danh mục:</label>
                                    <select id="select-danh-muc" class="form-control expanded-input"
                                            style="border: 1px solid #cccccc; width: 150px;">
                                        <option value="option-mon-an-nuong">Nướng</option>
                                        <option value="option-mon-an-xao">Xào</option>
                                        <option value="option-mon-an-chien">Chiên</option>
                                        <option value="option-mon-an-luoc">Luộc</option>
                                    </select>
                                </div>
                                <div class="well" style="height: 415px;">
                                    <div style="position: relative">
                                        <div style="height: 380px; overflow:auto;">
                                            <div class="select-danh-muc" id="option-mon-an-nuong">
                                                <ul>
                                                    <li>
                                                        Gà nướng nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right btn-them-mon-an"
                                                                id-sp="001" name="Gà nướng nguyên con"
                                                                price="80000">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Lạc đà nướng nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right btn-them-mon-an"
                                                                id-sp="002" name="Lạc đà nướng nguyên con"
                                                                price="100000">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Chim cút nướng nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right btn-them-mon-an"
                                                                id-sp="003" name="Chim cút nướng nguyên con"
                                                                price="110000">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Chó nướng nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Mèo nướng nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Cá nướng nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Vịt nướng nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Trâu nướng nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Bò nướng nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Heo nướng nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Trâu nướng nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Bò nướng nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Heo nướng nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="select-danh-muc" id="option-mon-an-xao">
                                                <ul>
                                                    <li>
                                                        Gà xào nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Lạc đà xào nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Chim cút xào nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Chó xào nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Mèo xào nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Cá xào nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Vịt xào nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Trâu xào nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Bò xào nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Heo xào nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Trâu xào nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Bò xào nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Heo xào nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="select-danh-muc" id="option-mon-an-chien">
                                                <ul>
                                                    <li>
                                                        Gà chiên nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Lạc đà chiên nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Chim cút chiên nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Chó chiên nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Mèo chiên nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Cá chiên nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Vịt chiên nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Trâu chiên nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Bò chiên nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Heo chiên nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Trâu chiên nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Bò chiên nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Heo chiên nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="select-danh-muc" id="option-mon-an-luoc">
                                                <ul>
                                                    <li>
                                                        Gà luộc nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Lạc đà luộc nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Chim cút luộc nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Chó luộc nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Mèo luộc nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Cá luộc nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Vịt luộc nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Trâu luộc nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Bò luộc nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Heo luộc nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Trâu luộc nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Bò luộc nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                    <li>
                                                        Heo luộc nguyên con
                                                        <button type="button"
                                                                class="btn btn-info btn-xs pull-right">Chọn
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="text-center">
                                    <label class="control-label">Danh sách món ăn đã chọn</label>
                                </div>
                                <div class="well" style="margin-top: 18px; height: 415px;">
                                    <div style="position: relative">
                                        <div class="list-mon-an-da-chon" style="height: 380px; overflow:auto;">
                                            <ul id="danh-sach-mon-an-da-chon">
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <form class="form-horizontal">
                    <div class="panel panel-default" id="menu-ben-phai">
                        <div class="panel-heading">
                            <span id="menu-ben-phai-ten-ban">Bàn 001</span>
                            <a class="btn btn-primary fix pull-right">Mở bàn</a>
                        </div>
                        <div class="panel-body" style="height: 436px;">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-md-offset-1">Tình trạng </label>
                                <div class="col-md-5">
                                    <input class="form-control expanded-input">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-md-offset-1">Tổng tiền </label>
                                <div class="col-md-5">
                                    <input class="form-control expanded-input">
                                </div>
                            </div>
                            <table id="table-don-hang-tai-quan">
                                <thead>
                                <tr>
                                    <th width="60%" style="padding-left: 10px; text-align: left">Tên món ăn</th>
                                    <th width="20%">Số lượng</th>
                                    <th width="20%">Tổng tiền</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td width="60%" style="padding-left: 10px">Vịt quay xào não bò</td>
                                    <td width="20%" class="text-center">2</td>
                                    <td width="20%" class="text-right" style="padding-right: 10px">500000</td>
                                </tr>
                                <tr>
                                    <td width="60%" style="padding-left: 10px">Đầu trâu trộn tương ớt</td>
                                    <td width="20%" class="text-center">1</td>
                                    <td width="20%" class="text-right" style="padding-right: 10px">800000</td>
                                </tr>
                                <tr>
                                    <td width="60%" style="padding-left: 10px">Cầy tơ bảy món</td>
                                    <td width="20%" class="text-center">1</td>
                                    <td width="20%" class="text-right" style="padding-right: 10px">1500000</td>
                                </tr>
                                <tr>
                                    <td width="60%" style="padding-left: 10px">Vịt quay xào não bò</td>
                                    <td width="20%" class="text-center">2</td>
                                    <td width="20%" class="text-right" style="padding-right: 10px">500000</td>
                                </tr>
                                <tr>
                                    <td width="60%" style="padding-left: 10px">Vịt quay xào não bò</td>
                                    <td width="20%" class="text-center">2</td>
                                    <td width="20%" class="text-right" style="padding-right: 10px">500000</td>
                                </tr>
                                <tr>
                                    <td width="60%" style="padding-left: 10px">Đầu trâu trộn tương ớt</td>
                                    <td width="20%" class="text-center">1</td>
                                    <td width="20%" class="text-right" style="padding-right: 10px">800000</td>
                                </tr>
                                <tr>
                                    <td width="60%" style="padding-left: 10px">Cầy tơ bảy món</td>
                                    <td width="20%" class="text-center">1</td>
                                    <td width="20%" class="text-right" style="padding-right: 10px">1500000</td>
                                </tr>
                                <tr>
                                    <td width="60%" style="padding-left: 10px">Vịt quay xào não bò</td>
                                    <td width="20%" class="text-center">2</td>
                                    <td width="20%" class="text-right" style="padding-right: 10px">500000</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="panel-footer text-center">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-dat-hang-tai-quan">Chọn món</button>
                            <button type="submit" class="btn btn-primary">Thanh toán</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>