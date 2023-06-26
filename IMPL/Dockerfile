# Choose Python version
FROM python:3.7.9

# Install required libraries
COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt

# Set working directory
WORKDIR /working

# Expose the Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
