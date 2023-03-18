# Binstaller
A BadUSB + Poweshell script that silently installs programs

## Usage
* Edit the payload.txt file according to comments
* Upload the script onto you rubberducky/flipper
* Plug it into your computer

## Adding your own programs
First, decide what the program name would be.
Let's take `Geany` as an example.

Then you would need to add two lines in the beginning of `main.ps1` file:
```powershell
$app<Name> = "<Setup file URL>"
$args<Name> = "<Setup arguments>"
```
for example,
```powershell
$appGeany = "https://download.geany.org/geany-1.38_setup.exe"
$argsGeany = "/S"
```
And you're done! Upload your script to pastebin and change the link in the payload.
