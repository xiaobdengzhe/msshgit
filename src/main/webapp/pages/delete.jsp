<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Aligning Columns in DataGrid - jQuery EasyUI Demo</title>


    <link href="http://www.cnblogs.com/Resources/easyui/css/default.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" type="text/css" href="easyui/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyui/icon.css">
    <link rel="stylesheet" type="text/css" href="easyui/demo.css">

    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="easyui/easyui-lang-zh_CN.js"></script>


</head>
<body>
<h2>Aligning Columns in DataGrid</h2>
<p>Use align and halign properties to set the alignment of the columns and their header.</p>
<div style="margin:20px 0;"></div>
<table id="rktTable" class="easyui-datagrid" style="width:700px;height:250px "
       data-options="singleSelect:true,collapsible:true,url:'/accept',method:'get'"
       toolbar="#tb"
>
    <thead>
    <tr>
    <th data-options="field:'id',width:100,halign:'center'">id</th>
    <th data-options="field:'username',width:100,halign:'center'">username</th>
    </tr>
    </thead>
</table>
<div id="tb">
    <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="$('#addDialog').dialog('open')">Add</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true" onclick="edit()">Edit</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true" onclick="del()">Delete</a>
    <%--<a href="/delete?id=${u.id }">del</a>--%>
</div>
<div id="addDialog" class="easyui-dialog" title="Complex Toolbar on Dialog" style="width:400px;height:200px;padding:10px"
     data-options="
				iconCls: 'icon-save',
				toolbar: '#dlg-toolbar',
				buttons: '#dlg-buttons'
			">
    <form action="/addUser" method="post">
        username:<input type="text" name="username"><br/>
        <input type="submit" value="submit">
    </form>

</div>
<div id="editDialog" class="easyui-dialog" title="Complex Toolbar on Dialog" style="width:400px;height:200px;padding:10px"
     data-options="
				iconCls: 'icon-save',
				toolbar: '#dlg-toolbar',
				buttons: '#dlg-buttons'
			">
    <form action="/edit" method="post">
        <%--<a href="javascript:void(0)" class="easyui-linkbutton" onclick="getSelect()">Save</a><br/>--%>
        <input type="hidden" id="id" name="id" value="">
        username:<input type="text" id="username" name="username" value=""><br/>
        <input type="submit" value="edit">
    </form>

</div>
<div id="delDialog" class="easyui-dialog" title="Complex Toolbar on Dialog" style="width:400px;height:200px;padding:10px"
     data-options="
				iconCls: 'icon-save',
				toolbar: '#dlg-toolbar',
				buttons: '#dlg-buttons'
			">
    <form action="/del" method="post">
        <input type="hidden" id="delId" name="id" value="">
        <input type="submit" value="sure?">
    </form>

</div>
<div id="dlg-buttons">
    <%--<a href="javascript:void(0)" class="easyui-linkbutton" onclick="javascript:alert('save')">Save</a>--%>
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="javascript:$('#dlg').dialog('close')">Close</a>
</div>

<script>
    $(document).ready(function () {
        $('#editDialog').dialog('close')
        $('#addDialog').dialog('close')
        $('#delDialog').dialog('close')
    })

    function edit() {
        $('#editDialog').dialog('open')
        $("#id").val($('#rktTable').datagrid('getSelected').id)
        $("#username").val($('#rktTable').datagrid('getSelected').username)
    }

    function del() {
        $('#delDialog').dialog('open')
        $("#delId").val($('#rktTable').datagrid('getSelected').id)
    }

</script>
</body>


