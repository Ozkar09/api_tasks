tasksIndex = function(){
  $("body").on("click", ".row",function(){

     id_task = $(this).attr("id")
     estado = $(this).parent().attr("id")
     $row = $(this)

     if (estado  === "to_do"){
       estado_task = true
     } else {
       estado_task = false
     }

     task = {
          "done": estado_task
      }

     $.ajax({
      url: 'http://localhost:3000/api/v1/tasks/' + id_task,
      type: 'PUT',
      data: JSON.stringify(task),
      contentType: "application/json",
      dataType: "json",
      success: function(data){
        console.log("FUNCIONA");
        // if ($row.parent().attr("id") === done) {
        //   $("#to_do").append($row)
        //   $row.remove()
        // }
      },
      error: function(){
          console.log("ERROR")
      }
    });

  })
}
