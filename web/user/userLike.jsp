<%--
  Created by IntelliJ IDEA.
  User: CHEN JX
  Date: 2017/8/30
  Time: 20:16
  To change this template use File | Settings | File Templates.
  用户点赞
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>所有点赞</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="<%=path%>/public/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="<%=path%>/public/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path%>/public/css/animate.min.css" rel="stylesheet">
    <link href="<%=path%>/public/css/style.min862f.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <tbody>所有点赞</tbody>
                            <tr>
                                <th>楼盘名称</th>
                                <th>点赞时间</th>
                                <th>点赞</th>
                            </tr>
                            <c:forEach items="${sessionScope.likes}" var="like" varStatus="status">
                            <tr>
                                <td>

                                    <a >
                                        <i  title="${like.buildingsPrice.id}" class="buildingId" >${like.buildingsPrice.name}</i>
                                    </a>


                                </td>
                                <td>
                                    ${like.created_time}
                                </td>
                                <td>
                                    <a href="<%=path%>/like/updateLike?like.id=${like.id}" class="btn btn-danger">取消点赞</a>
                                </td>
                            </tr>

                            </c:forEach>
                        </table>

                    </div>


                </div>

            </div>
            <div class="row">
                <div class="col-sm-12">
                    <nav aria-label="Page navigation" class="form-group">
                        <a href="<%=path %>/like/good?page=1">首页</a>
                        <a href="<%=path %>/like/good?page=${requestScope.page - 1}">上一页</a>
                        <a href="<%=path %>/like/good?page=${requestScope.page + 1}">下一页</a>
                        <a href="<%=path %>/like/good?page=${requestScope.pageCount}">尾页（当前第${requestScope.page}页，共${requestScope.pageCount}页）</a>

                    </nav>
                </div>
            </div>
        </div>

    </div>
</div>
<%--
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">


            <div class="modal-body">
                <form class="form-horizontal" id="com">
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label">楼盘名称：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="name" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.name}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="area" class="col-sm-3 control-label">所属区域：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="area" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.area}" readonly>
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="address" class="col-sm-3 control-label">地&nbsp;&nbsp;&nbsp;&nbsp;址：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="address" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.address}" readonly>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="floor_area" class="col-sm-3 control-label">占地面积：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="floor_area" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.floor_area}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="building_area" class="col-sm-3 control-label">建筑面积：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="building_area" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.building_area}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="house_type" class="col-sm-3 control-label">房源类型：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="house_type" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.house_type}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="building_type" class="col-sm-3 control-label">建筑类型：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="building_type" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.building_type}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="latitude" class="col-sm-3 control-label">经&nbsp;&nbsp;&nbsp;&nbsp;度：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="latitude" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.longitude}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="longitude" class="col-sm-3 control-label">纬&nbsp;&nbsp;&nbsp;&nbsp;度：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="longitude" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.latitude}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="avg_price" class="col-sm-3 control-label">楼盘均价：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="avg_price" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.avg_price}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="company" class="col-sm-3 control-label">开发公司：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="company" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.company}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="open_date" class="col-sm-3 control-label">开盘时间：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="open_date" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.open_date}" readonly>
                        </div>
                    </div>



                    <div class="form-group">
                        <label for="total_rooms" class="col-sm-3 control-label">总套数：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="total_rooms" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.total_rooms}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="reception_address" class="col-sm-3 control-label">接待地址：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="reception_address" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.reception_address}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="tel" class="col-sm-3 control-label">售楼电话：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="tel" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.tel}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="green_ratio" class="col-sm-3 control-label">绿化率：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="green_ratio" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.green_ratio}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="property_company" class="col-sm-3 control-label">物业公司：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="property_company" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.property_company}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="property_fee" class="col-sm-3 control-label">物业费：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="property_fee" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.property_fee}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="car_station" class="col-sm-3 control-label">车位数：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="car_station" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.car_station}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="traffic" class="col-sm-3 control-label">交通状况：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="traffic" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.traffic}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="equipments" class="col-sm-3 control-label">楼盘简介：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="equipments" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.intro}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="created_time" class="col-sm-3 control-label">创建时间：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="created_time" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.created_time}" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="status" class="col-sm-3 control-label">销售状态：</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="status" style="background:rgba(0, 0, 0, 0);" value="${like.buildingsPrice.status}" readonly>
                        </div>
                    </div>

                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>--%>
<script src="<%=path%>/public/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=path%>/public/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=path%>/public/js/plugins/peity/jquery.peity.min.js"></script>
<script src="<%=path%>/public/js/content.min.js?v=1.0.0"></script>
<script src="<%=path%>/public/js/plugins/iCheck/icheck.min.js"></script>
<script src="<%=path%>/public/js/demo/peity-demo.min.js"></script>
</body>

<script>
    $(document).ready(function(){
        $(".buildingId").click(function(){
            /*alert($(this).attr("title"));*/
            $.ajax({
                url: "<%=path%>/buildings/buildingsDetail",  //请求的url地址
                dataType: "json",   //返回格式为json
                async: true,//请求是否异步，默认为异步，这也是ajax重要特性
                data: {"buildings.id": $(this).attr("title")}, //参数值
                type: "post",   //请求方式
                success: function (data) {
                    $("#myModal").modal("show");
                    $("#name").val(data.buildings.name);
                    $("#area").val(data.buildings.area);
                    $("#address").val(data.buildings.address );
                    $("#floor_area").val(data.buildings.floor_area );
                    $("#building_area").val(data.buildings.building_area );
                    $("#house_type").val(data.buildings.house_type );
                    $("#building_type").val(data.buildings.building_type );
                    $("#latitude").val(data.buildings.latitude );
                    $("#longitude").val(data.buildings.longitude );
                    $("#avg_price").val(data.buildings.avg_price );
                    $("#company").val(data.buildings.company );
                    $("#open_date").val(data.buildings.open_date );
                    $("#total_rooms").val(data.buildings.total_rooms );
                    $("#reception_address").val(data.buildings.reception_address );
                    $("#tel").val(data.buildings.tel );
                    $("#green_ratio").val(data.buildings.green_ratio );
                    $("#property_company").val(data.buildings.property_company );
                    $("#property_fee").val(data.buildings.property_fee );
                    $("#car_station").val(data.buildings.car_station );
                    $("#traffic").val(data.buildings.traffic );
                    $("#equipments").val(data.buildings.equipments );
                    $("#car_station").val(data.buildings.car_station );
                    $("#created_time").val(data.buildings.created_time );
                    $("#status").val(data.buildings.status );

                }
            });

        })
    })
</script>

</html>
