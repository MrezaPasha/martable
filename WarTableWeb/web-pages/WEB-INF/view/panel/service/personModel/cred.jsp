<%--
    Document   : edit
    Created on : Jun 2, 2016, 10:54:25 AM
    Author     : dev1
--%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<link rel="stylesheet" href="${cp}/resources-p/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">

<div class="container">
    <c:choose>
        <c:when test="${personModel.id!=0}">
            <h3 class="cred-header">
                <span class="cred-title"><spring:message code="T.p.service.personModel.edit"/></span>
                <span class="cred-name">[${personModel.name}]</span>
            </h3>
        </c:when>
        <c:otherwise>
            <h3 class="cred-header">
                <span class="cred-title"><spring:message code="T.p.service.personModel.create"/></span>
            </h3>
        </c:otherwise>
    </c:choose>
    <div class="tabbable">
        <div class="well well-act">
            <button type="submit" form="form" class="btn btn-p-create btn-p-act btn-animated btn-animated-right">
                <spring:message code="all.register"/>
                <i class="clip-plus-circle"></i>
            </button>
            <ul class="disabled-li margin-bottom xs-center-ul-4">
                 <li class="tooltips " data-original-title="<spring:message code="all.register.new"/>" data-placement="bottom">
                    <a href="${_url}/create" class="btn btn-default btn-block btn-act">
                        <i class="clip-add light"></i>
                        <span class="title"></span>
                    </a>
                </li>
                <li class="tooltips " data-original-title="<spring:message code="all.list"/>" data-placement="bottom">
                    <a href="${_url}/list" class="btn btn-default btn-block btn-act">
                        <i class="clip-list-2 light"></i>
                        <span class="title"></span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="tab-content tab-content-object">
            <form id="form" accept-charset="UTF-8" action="${action}" method="POST" enctype="multipart/form-data">
                <form:hidden id="personModel_id" path="personModel.id"/>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <c:set var="varName" value="personModel.name"/>
                            <form:label path="${varName}" cssClass="control-label">
                                <spring:message code="${varName}"/>
                                <span class="symbol required"></span>
                                <form:errors cssClass="form-validation-error" path="${varName}"/>
                            </form:label>
                            <form:input path="${varName}" cssClass="form-control string-required string-max-50"/>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <c:set var="varName" value="personModel.scale"/>
                            <form:label path="${varName}" cssClass="control-label">
                                <spring:message code="${varName}"/>
                                <span class="symbol required"></span>
                                <form:errors cssClass="form-validation-error" path="${varName}"/>
                            </form:label>
                            <form:input type="number" path="${varName}" cssClass="form-control number-format"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                        <div class="form-group">
                            <label class="control-label">
                                <spring:message code="personModel.fileName"/>
                            </label>
                            <div class="fileupload-new" data-provides="fileupload">
                                <div class="input-group">
                                    <div class="form-control uneditable-input">
                                        <i class="fa fa-file fileupload-exists"></i>
                                        <span class="fileupload-preview"><c:if test="${not empty personModel.fileName}">${personModel.fileName}</c:if></span>
                                    </div>
                                    <div class="input-group-btn">
                                        <div class="btn btn-light-grey btn-file">
                                            <span class="fileupload-new"><i class="fa fa-folder-open-o"></i><spring:message code="all.file.choose"/></span>
                                            <span class="fileupload-exists"><i class="fa fa-folder-open-o"></i><spring:message code="all.file.change"/></span>
                                            <input name="attachment" type="file" class="file-input" value="${personModel.fileName}">
                                        </div>
                                        <a href="#" class="btn btn-light-grey fileupload-exists" data-dismiss="fileupload">
                                            <i class="fa fa-times"></i><spring:message code="all.file.delete"/>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="three-container three-service-object"
                         i-three-mode="2"
                         i-three-name="${personModel.fileName}"
                         i-three-object="${objectPath}"
                         <%--i-three-object="${personModel.fileName}"--%>
                    <%--i-three-object="/resources-p/obj/car/car.obj"--%>
                    >
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript" src="${cp}/resources/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
<script type="text/javascript" src="${cp}/resources/js/form-validation.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/autosize/jquery.autosize.min.js"></script>
<script src="${cp}/resources-p/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/select2/select2.min.js"></script>


<script type="text/javascript" src="${cp}/resources-p/plugins/3d/three.min.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/3d/OBJLoader.js"></script>

<script type="text/javascript" src="${cp}/resources-p/plugins/3d/TrackballControls.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/3d/MTLLoader.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/3d/dat.gui.min.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/3d/LoaderSupport.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/3d/OBJLoader2.js"></script>


<script type="text/javascript" src="${cp}/resources-p/plugins/3d/inflate.min.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/3d/FBXLoader.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/3d/OrbitControls.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/3d/WebGL.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/3d/stats.min.js"></script>

<script>
    jQuery(document).ready(function () {
        CustomJs.initSelect2();
        FormValidator.init();
        CustomPanelJs.init3DxLoader();
    });
</script>
