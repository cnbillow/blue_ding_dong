$(document).ready(function () {

    'use strict';

    var businessForm = $('#business_form');
    var nameInput = $("input[name='name']");
    var phoneInput = $("input[name='phone']");
    var addressInput = $("input[name='address']");
    var selectAddress = $("#select_address");
    var selectAddressDialog = $('#select_address_dialog');
    var selectedButton = $('#selected_button');
    var province = $('#province');
    var city = $('#city');
    var district = $('#district');
    var $distpicker = $('#distpicker');
    var phoneReg = /^[1][3,4,5,6,7,8][0-9]{9}$/;

    $distpicker.distpicker({
        province: '广东省',
        city: '中山市',
        district: '东区'
    });

    selectAddress.click(function () {
        selectAddressDialog.modal({
            show: true
        });
    });

    selectedButton.click(function () {
        addressInput.val(province.val() + city.val() + district.val());
    });

    addressInput.focus(function () {
        selectAddressDialog.modal({
            show: true
        });
    });

    businessForm.submit(function () {
        if (nameInput.val().trim() === '') {
            alert('请填写名字');
            nameInput.focus();
            return false;
        }
        if (phoneInput.val().trim() === '') {
            alert('请填写联系方式');
            phoneInput.focus();
            return false;
        }
        if (!(phoneReg.test(phoneInput.val().trim()))){
            alert('手机号码不正确，请重新输入');
            phoneInput.focus();
            return false;
        }
        if (addressInput.val().trim() === '') {
            alert('请选择你所在的区域');
            selectAddressDialog.modal({
                show: true
            });
            return false;
        }
    })
});