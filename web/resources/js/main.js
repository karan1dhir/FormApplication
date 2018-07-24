/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
     $(document).ready( function () {
            $('#table_id').DataTable({
            responsive: true,
            "pageLength": 50,
            dom: 'Bfrtip',
            buttons: [
                            { extend: 'copy', className: 'copy-Button'},
                            { extend: 'csv', className: 'download-Button'},
                            { extend: 'excel', className: 'download-Button'},                    
                            { extend: 'pdf', className: 'download-Button'},
                            { extend: 'print', className: 'print-Button'},
                            {
                               text: 'Add',
                               className:"add-Button",
                               action:function(){ 
                                location="userDetails";
                              }
                    }  
            ]
        });
    });
