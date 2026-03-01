Add-Type -AssemblyName System.Drawing
$imgPath = "C:\codebase\easy-gates\workhealth\src-tauri\icons\icon.png"
$img = [System.Drawing.Image]::FromFile($imgPath)

$bmp180 = New-Object System.Drawing.Bitmap($img, 180, 180)
$bmp180.Save("C:\codebase\easy-gates\workhealth-site\apple-touch-icon.png", [System.Drawing.Imaging.ImageFormat]::Png)
$bmp180.Dispose()

$bmp192 = New-Object System.Drawing.Bitmap($img, 192, 192)
$bmp192.Save("C:\codebase\easy-gates\workhealth-site\android-chrome-192x192.png", [System.Drawing.Imaging.ImageFormat]::Png)
$bmp192.Dispose()

$img.Dispose()

Copy-Item "C:\codebase\easy-gates\workhealth\src-tauri\icons\icon.ico" "C:\codebase\easy-gates\workhealth-site\favicon.ico" -Force
Copy-Item "C:\codebase\easy-gates\workhealth\src-tauri\icons\32x32.png" "C:\codebase\easy-gates\workhealth-site\favicon-32x32.png" -Force
