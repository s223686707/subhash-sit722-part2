FROM python:3.10-slim

WORKDIR /app

# Copy the entire project directory
COPY . .

# Install the dependencies
RUN pip install --no-cache-dir -r book_catalog/requirements.txt

# Set the Python path to include the book_catalog directory
ENV PYTHONPATH=/app/book_catalog

# Expose port 8000
EXPOSE 8000

# Run the FastAPI app with uvicorn
CMD ["uvicorn", "book_catalog.main:app", "--host", "0.0.0.0", "--port", "8000"]