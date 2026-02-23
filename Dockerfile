#  Base image (Python already installed)
FROM python:3.10-slim

#  Set working directory inside container
WORKDIR /app

#  Copy requirements file into container
COPY requirements.txt .

#  Install dependencies inside container
RUN pip install --no-cache-dir -r requirements.txt

#  Copy application code into container
COPY . .

# Command to run the app when container starts
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]