<%--/****DO-NoT-REMOVE-IT*#- ==============  START  ============== -#*/--%>
<%--
    Document   : assign
    Created on : Aug 17, 2016, 3:39:17 PM
    Author     : slt
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<div class="container module-list">
    <div class="page-header">
        <h3 class="cred-header">
            <span class="cred-title"><spring:message code="task.list"/></span>
            <span class="cred-name">${module.title}</span>

        </h3>
    </div>
    <div class="well well-act">
        <ul class="disabled-li margin-bottom xs-center-ul">
            <li class="tooltips " data-original-title="<spring:message code="module.list"/>" data-placement="bottom">
                <a href="${_url}/list" class="btn btn-default btn-block btn-act">
                    <i class="clip-list-2 light"></i>
                    <span class="title"></span>
                </a>
            </li>
        </ul>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" id="titleHandlerPlace">
            <i class="fa fa-external-link-square"></i>
            <div class="panel-tools">
                <a class="btn btn-xs btn-link panel-collapse collapses" href="javascript:void(0)"> </a>
            </div>
        </div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table dataTable table-striped table-hover" id="table_list_x" data-sort-index="0" data-sort-type="asc" data-display-len="-1">
                    <thead>
                    <tr>
                        <th><spring:message code="model.id"/></th>
                        <th><spring:message code="task.messageCode"/></th>
                        <th><spring:message code="task.url"/></th>
                        <th><spring:message code="task.importanceLevel"/></th>
                        <th><spring:message code="task.sensitivity"/></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${tlist}" var="myvar">
                        <tr>
                            <td>${myvar.id}</td>
                            <td>${myvar.title}</td>
                            <td dir="ltr">${myvar.url}</td>
                            <td>${myvar.importanceLevel.title}</td>
                            <td>${myvar.sensitivity.title}</td>
                            <td>
                                <a href="${_url}/task/config/${myvar.id}" class="btn btn-sm btn-l-assign tooltips " data-placement="top" data-original-title="پیکربندی">
                                    <i class="fa fa-bullseye"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>

<script type="text/javascript" src="${cp}/resources-p/plugins/dataTables/media/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/dataTables/media/js/DT_bootstrap.js"></script>

<script type="text/javascript" src="${cp}/resources-p/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/autosize/jquery.autosize.min.js"></script>
<script type="text/javascript" src="${cp}/resources-p/plugins/select2/select2.min.js"></script>
<script>
    jQuery(document).ready(function () {
        CustomJs.initTable();
        CustomJs.initSelect2();
    });
</script>
<%--/****DO-NoT-REMOVE-IT*#- ==============  END  ============== -#*/--%>
