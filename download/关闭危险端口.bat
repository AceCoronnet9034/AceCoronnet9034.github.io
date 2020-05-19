@echo off 
netsh ipsec static ^
add policy name=¹Ø±ÕÎ£ÏÕ¶Ë¿Ú
netsh ipsec static ^
add filteraction name=×èÖ¹¶Ë¿Ú action=block
netsh ipsec static ^
add filterlist name=Î£ÏÕ¶Ë¿Ú¹Ø±Õnetsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øTCP42¶Ë¿Ú dstport=42 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øTCP445¶Ë¿Ú dstport=445 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øUDP445¶Ë¿Ú dstport=445 protocol=udp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øTCP135¶Ë¿Ú dstport=135 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øUDP135¶Ë¿Ú dstport=135 protocol=udp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øTCP139¶Ë¿Ú dstport=139 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øTCP593¶Ë¿Ú dstport=593 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øTCP1025¶Ë¿Ú dstport=1025 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øTCP1433¶Ë¿Ú dstport=1433 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øTCP2531¶Ë¿Ú dstport=2531 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øTCP2745¶Ë¿Ú dstport=2745 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øTCP3127¶Ë¿Ú dstport=3127 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øTCP6129¶Ë¿Ú dstport=6129 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øUDP123¶Ë¿Ú dstport=123 protocol=udp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øUDP137¶Ë¿Ú dstport=137 protocol=udp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øUDP138¶Ë¿Ú dstport=138 protocol=udp mirrored=yes
netsh ipsec static ^
add filter filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ srcaddr=any dstaddr=me description=¾Ü¾øUDP1900¶Ë¿Ú dstport=1900 protocol=udp mirrored=yes
netsh ipsec static ^
add rule name=BlockAllAccess policy=¹Ø±ÕÎ£ÏÕ¶Ë¿Ú filterlist=Î£ÏÕ¶Ë¿Ú¹Ø±Õ filteraction=×èÖ¹¶Ë¿Ú
netsh ipsec static set policy name=¹Ø±ÕÎ£ÏÕ¶Ë¿Ú assign=y
exit