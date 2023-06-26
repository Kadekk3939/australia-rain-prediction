# Build image first (from PowerShell)
# docker build -t biai-project .

# Set Execution Policy to run scripts

# Run container
Start-Job {
    Start-Sleep -Seconds 4
    Start-Process chrome '--start-fullscreen "http://localhost:8888"'
} -Name 'notebook'

docker run --rm -it -p 8888:8888 -v ${PWD}/working:/working --name biai-project-container biai-project
Get-Job
