# Build image first (from PowerShell)
# docker build -t biai-project .

# Set Execution Policy to run scripts

# Copy /DATA to /IMPL/working
Copy-Item -Path "../DATA/weatherAUS.csv" -Destination "working/weatherAUS.csv" -Force

# Late notebook opening
Start-Job {
    Start-Sleep -Seconds 4
    Start-Process chrome '--start-fullscreen "http://localhost:8888"'
} -Name 'notebook'

# Run container
docker run --rm -it -p 8888:8888 -v ${PWD}/working:/working --name biai-project-container biai-project

# Run notebook
Get-Job
