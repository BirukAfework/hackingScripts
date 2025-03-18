# Some Bats

## Download Using Curl
````
@echo off
curl -L "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Flag_of_Ethiopia.svg/1200px-Flag_of_Ethiopia.svg.png" --output "Flag_of_Ethiopia.png"
exit
````
You can use curl to download a file directly from the command line without opening a browser or any popup.

Here's a batch script to download the image automatically using curl:
## Download and Open

````
@echo off
curl -L "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Flag_of_Ethiopia.svg/1200px-Flag_of_Ethiopia.svg.png" --output "Flag_of_Ethiopia.png"
start "" "Flag_of_Ethiopia.png"
exit
````
#Some Powershell

# Define the URL and output file path

````
$url = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Flag_of_Ethiopia.svg/1200px-Flag_of_Ethiopia.svg.png"
$outputFile = "Flag_of_Ethiopia.png"

````
# Download the image

````
Invoke-WebRequest -Uri $url -OutFile $outputFile

````
# Open the downloaded image

````
Start-Process $outputFile
````

````
$url = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Flag_of_Ethiopia.svg/1200px-Flag_of_Ethiopia.svg.png"
$outputFile = "Flag_of_Ethiopia.png"
Invoke-WebRequest -Uri $url -OutFile $outputFile
Start-Process $outputFile
````
