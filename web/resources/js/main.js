/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    var dataTable = $('#table_id').DataTable({
 
        dom: 'Bfrtip',
        buttons: [
            {extend: 'copy', className: 'copy-Button'},
            {extend: 'csv', className: 'download-Button'},
            {extend: 'excel', className: 'download-Button'},
            {extend: 'pdf', className: 'download-Button'},
            {extend: 'print', className: 'print-Button'},
            {
                text: 'Add',
                className: "add-Button",
                action: function () {
                    location = "userDetails";
                }
            },
            {
                text: 'Edit',
                className: "edit-Button",
                action: function () {
                    
                  var dataItem=dataTable.rows('.selected').data()[0];
                  var id=dataItem[0];
                  location = "editUser?id="+id;
                }
            },
            {  
                 text:'Delete',
                 className:"delete-Button",
                 action:function(){
                  
                  var dataItem=dataTable.rows('.selected').data()[0];
                  var id=dataItem[0];
                  location = "deleteUser?id="+id;   
                }
            }
        ]
    });
    $('#table_id tbody').on('click', 'tr', function () {
        if ($(this).hasClass('selected')) {
            $(this).removeClass('selected');
        } else {
            dataTable.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    });   
});
