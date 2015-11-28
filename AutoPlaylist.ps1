$dynamiclist = $(get-childitem -rec | where { ! $_.PSIsContainer }) | foreach {'"' + $_.FullName + '"'}
$dynamiclist = $dynamiclist -notmatch '^*AutoPlaylist.ps1*|^*jpg*|^*jpeg*|^*png*|^*nfo*|^*tbn*|^*xml*'
Start-Process -FilePath "C:\Program Files\VideoLAN\VLC\vlc.exe" -ArgumentList $([string]::Join(" ","$dynamiclist"))
