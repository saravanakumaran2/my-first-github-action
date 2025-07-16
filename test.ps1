param(
    [string]$OutputFile = "test_output_windows.html",
    [string]$Url = "http://localhost"  # Change this to your WordPress URL if different
)

try {
    $response = Invoke-WebRequest -Uri $Url -UseBasicParsing -TimeoutSec 10
    if ($response.StatusCode -eq 200) {
        $result = "<html><body><h2>Application is up, test case passed</h2></body></html>"
    } else {
        $result = "<html><body><h2>Test failed: HTTP status code $($response.StatusCode)</h2></body></html>"
    }
} catch {
    $result = "<html><body><h2>Test failed: $($_.Exception.Message)</h2></body></html>"
}

Set-Content -Path $OutputFile -Value $result -Encoding UTF8
