@echo off 
netsh ipsec static ^
add policy name=�ر�Σ�ն˿�
netsh ipsec static ^
add filteraction name=��ֹ�˿� action=block
netsh ipsec static ^
add filterlist name=Σ�ն˿ڹر�netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�TCP42�˿� dstport=42 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�TCP445�˿� dstport=445 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�UDP445�˿� dstport=445 protocol=udp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�TCP135�˿� dstport=135 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�UDP135�˿� dstport=135 protocol=udp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�TCP139�˿� dstport=139 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�TCP593�˿� dstport=593 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�TCP1025�˿� dstport=1025 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�TCP1433�˿� dstport=1433 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�TCP2531�˿� dstport=2531 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�TCP2745�˿� dstport=2745 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�TCP3127�˿� dstport=3127 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�TCP6129�˿� dstport=6129 protocol=tcp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�UDP123�˿� dstport=123 protocol=udp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�UDP137�˿� dstport=137 protocol=udp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�UDP138�˿� dstport=138 protocol=udp mirrored=yes
netsh ipsec static ^
add filter filterlist=Σ�ն˿ڹر� srcaddr=any dstaddr=me description=�ܾ�UDP1900�˿� dstport=1900 protocol=udp mirrored=yes
netsh ipsec static ^
add rule name=BlockAllAccess policy=�ر�Σ�ն˿� filterlist=Σ�ն˿ڹر� filteraction=��ֹ�˿�
netsh ipsec static set policy name=�ر�Σ�ն˿� assign=y
exit