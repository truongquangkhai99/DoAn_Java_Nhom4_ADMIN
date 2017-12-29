$('#calendar').datepicker({
		});

!function ($) {
    $(document).on("click","ul.nav li.parent > a ", function(){          
        $(this).find('em').toggleClass("fa-minus");      
    }); 
    $(".sidebar span.icon").find('em:first').addClass("fa-plus");
}

(window.jQuery);
	$(window).on('resize', function () {
  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
})
$(window).on('resize', function () {
  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
})

$(document).on('click', '.panel-heading span.clickable', function(e){
    var $this = $(this);
	if(!$this.hasClass('panel-collapsed')) {
		$this.parents('.panel').find('.panel-body').slideUp();
		$this.addClass('panel-collapsed');
		$this.find('em').removeClass('fa-toggle-up').addClass('fa-toggle-down');
	} else {
		$this.parents('.panel').find('.panel-body').slideDown();
		$this.removeClass('panel-collapsed');
		$this.find('em').removeClass('fa-toggle-down').addClass('fa-toggle-up');
	}
})


$(document).ready(function () {
    $('.option-don-hang').hide();
    $('#option-tai-quan').show();
    $('#option-don-hang').change(function () {
        $('.option-don-hang').hide();
        $('#'+$(this).val()).show();
    })
});

$('#modal-sua-danh-muc').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget);
    var data = button.data('tendanhmuc');
    $(this).find('#ten-danh-muc-1').val(data);
});

$('#modal-sua-ban').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget);
    var data = button.data('info');
    $(this).find('#table-change-info').val(data);
});

$('#input-search-food-header-bar').keyup(function() {
    var $rows = $('#food-search-header-bar tbody tr');
    var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();

    $rows.show().filter(function() {
        var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
        return !~text.indexOf(val);
    }).hide();
});

$('#input-search-table-header-bar').keyup(function() {
    var $rows = $('#table-search-header-bar tbody tr');
    var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();

    $rows.show().filter(function() {
        var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
        return !~text.indexOf(val);
    }).hide();
});

$(document).ready(function() {
    $('[id^=detail-]').hide();
    $('.toggle').click(function() {
        $input = $( this );
        $target = $('#'+$input.attr('data-toggle'));
        $target.slideToggle();
    });
});

$(function () {
    $("div[id*='list-mon-an-']").on('click', '.list-group .list-group-item', function () {
        $(this).toggleClass('active');
    });
});


$("#input-modal-search-food-menu").keyup(function(){
    var searchText = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
    $('ul.ul-search-mon-an > li').each(function(){
        var currentLiText = $(this).text().replace(/\s+/g, ' ').toLowerCase();
            showCurrentLi = currentLiText.indexOf(searchText) !== -1;
        $(this).toggle(showCurrentLi);
    });
});

//  Change option báo cáo thống kê
$(document).ready(function () {
    $('.option-thong-ke').hide();
    $('#option-ngay').show();
    $('#option-thong-ke').change(function () {
        $('.option-thong-ke').hide();
        $('#'+$(this).val()).show();
    })
});

$('[data-provide="datepicker"]').datepicker({
    format: 'dd-mm-yyyy',
    endDate: new Date(),
    "autoclose": true
});

$('[data-provide="datepicker-month"]').datepicker({
    format: 'mm-yyyy',
    minViewMode: 1,
    endDate: new Date(),
    "autoclose": true
});

$('[data-provide="datepicker-year"]').datepicker({
    format: 'yyyy',
    minViewMode: 2,
    endDate: new Date(),
    "autoclose": true
});

//  thay đổi lựa chọn danh mục của tạo đơn hàng tại quá
$(document).ready(function () {
    $('.select-danh-muc').hide();
    $('#option-mon-an-nuong').show();
    $('#select-danh-muc').change(function () {
        $('.select-danh-muc').hide();
        $('#'+$(this).val()).show();
    })
});

//  Thêm món ăn vào danh sách món ăn được chọn bên phải
$(document).ready(function() {
    $('.btn-them-mon-an').click(function () {
        var text = $(this).attr('name');
        var id = $(this).attr('id-sp');
        var price = $(this).attr('price');

        if (text.length) {

            var labelTenMonAn = $('<p class="li-p-ten-mon-an"></p>');
            labelTenMonAn.append(text);
            var divTenMonAn = $('<div class="col-md-6"></div>');
            divTenMonAn.append(labelTenMonAn);

            var inputSoluong = $('<input type="number" class="input-sl-mon-an" id value="1" price/>');
            inputSoluong.attr({id: id, price: price});

            var inputTongTien = $('<input class="input-gia-mon-an" type="text">');
            inputTongTien.attr({value: price});

            var btnXoa = $('<a href="#" class="btn-remove"><i class="fa fa-times" aria-hidden="true"></i></a>');

            var divFormInline = $('<div class="form-inline"></div>');
            divFormInline.append('<p class="li-p-ds-mon-an">Số lượng: </p>');
            divFormInline.append(inputSoluong);
            divFormInline.append('<p class="li-p-ds-mon-an t">Tổng tiền: </p>');
            divFormInline.append(inputTongTien);
            divFormInline.append(btnXoa);

            var myLi = $('<li/>');
            myLi.append(divTenMonAn);
            myLi.append(divFormInline);

            $('ul#danh-sach-mon-an-da-chon').append(myLi);
        }
    });
});

//  Nút xóa món ăn khỏi danh sách món ăn được chọn bên phải
$(document).on('click', 'a.btn-remove', function () {
    $(this).closest('li').remove();
});

//  Giới hạn số lượng món ăn được chọn bên phải
$(document).on('change', '.input-sl-mon-an', function () {
    var value = $(this).val();
    if ((value !== '') && (value.indexOf('.') === -1)) {
        $(this).val(Math.max(Math.min(value, 50), 1));
    }
});