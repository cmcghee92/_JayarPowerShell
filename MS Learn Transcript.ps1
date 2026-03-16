#This script will pull your Microsoft Learning Transcript. 
# you will need to use your share link from MS learn.
$transcriptID = "https://learn.microsoft.com/en-us/users/jayarloiselle-1091/transcript/dz309sy0lzqn1qk"

$apiUrl = "https://learn.microsoft.com/api/public/transcripts/dz309sy0lzqn1qk"

$response = Invoke-RestMethod -Uri $apiUrl

Write-Output $response 