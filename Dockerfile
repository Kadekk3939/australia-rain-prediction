FROM python

WORKDIR /working

# Install required libraries
RUN pip install scikit-learn keras numpy matplotlib pandas jupyter seaborn

# Expose the Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
