#!/bin/bash

cat > index.html <<EOF
<html>
  <h1>MySQL Database Info</h1>
  <p>DB address: ${db_address}</p>
  <p>DB port: ${db_port}</p>

  <style type="text/css">
  .tg  {border-collapse:collapse;border-spacing:0;}
  .tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
    overflow:hidden;padding:10px 5px;word-break:normal;}
  .tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
    font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
  .tg .tg-fgy3{font-family:"Courier New", Courier, monospace !important;text-align:left;vertical-align:top}
  .tg .tg-0lax{text-align:left;vertical-align:top}
  </style>

  <table class="tg">
  <thead>
    <tr>
      <th class="tg-0lax"><span style="font-weight:bold">Property</span><br></th>
      <th class="tg-0lax"><span style="font-weight:bold">Value</span></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="tg-0lax">DB Address<br></td>
      <td class="tg-fgy3">${db_address}</td>
    </tr>
    <tr>
      <td class="tg-0lax">DB Port</td>
      <td class="tg-fgy3">${db_port}<br></td>
    </tr>
  </tbody>
  </table>
</html>
EOF

nohup busybox httpd -f -p ${server_port} &
