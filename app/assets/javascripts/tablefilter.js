function goFilterT(){
  var wTable = document.getElementById("Table");
  var wSelect = document.getElementById("SelectT");
  var value  = wSelect.options[wSelect.selectedIndex ].value;
  // var valueUTF = 　encodeURIComponent(value)
  // debugger
  if(value == 'all'){
    wTable.className = '';
  }else{
    wTable.className = 'allNoDisplay ' + value;
  }
}

function goFilterS(){
  var wTable = document.getElementById("sampleTable");
  var wSelect = document.getElementById("sampleSelectS");
  var value  = wSelect.options[wSelect.selectedIndex ].value;
  debugger
  if(value == 'all'){
    wTable.className = '';
  }else{
    wTable.className = 'allNoDisplay ' + value;
  }
}

function goFilterW(){
  var wTable = document.getElementById("sampleTable");
  var wSelect = document.getElementById("sampleSelectW");
  var value  = wSelect.options[wSelect.selectedIndex ].value;
  debugger
  if(value == 'all'){
    wTable.className = '';
  }else{
    wTable.className = 'allNoDisplay ' + value;
  }
}
