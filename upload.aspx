<%
    Response.Write("Size: " & Request.Files("audio_data").ContentLength)        ' the size in bytes
    Response.Write(" , Type: " & Request.Files("audio_data").ContentType)       ' the type of file
    Response.Write(" , Name: " & Request.Files("audio_data").FileName)          ' letting the client control the filename is a rather bad idea
    Request.Files("audio_data").SaveAs(MapPath(Now.Ticks & ".wav"))             ' Save file using time ticks (you can use any name) +.WAV as type
    '                                                                           ' Note: There is NO temporary name that ASPX gave to the uploaded file directly
    '
    '                                                                           ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! 
    '                                                                           ! YOU NEED TO OPEN JS/APP.JS  AND CHANGE  upload.PHP  TO  upload.ASPX !
    '                                                                           ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! 

