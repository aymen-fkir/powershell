$url = Read-Host -Prompt "enter your URL"

$req = Invoke-WebRequest -Uri $url

$images = $req.Images.src
$wc = New-Object System.Net.WebClient
$count = 0
# make sure to create the reposetry images
foreach($image in $images){
    $wc.DownloadFile($image,".\images\$count.jpg")
    $count +=1
}
