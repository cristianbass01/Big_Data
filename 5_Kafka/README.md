# Kafka Stream Processing with Faust  

This project demonstrates the use of Apache Kafka and Faust for real-time stream processing of subhourly temperature data from three weather stations. The data, sourced from the [NOAA USCRN Subhourly Data](https://www.ncei.noaa.gov/pub/data/uscrn/products/subhourly01/2021/), is processed to compute hourly mean temperatures, identify the station with the highest hourly temperature, and detect outliers in the data stream.  

## Project Overview  

The project involves setting up a Kafka-based data pipeline using Docker, implementing producers and consumers in Python, and leveraging the Faust library for stream processing. The processed data is written back to Kafka topics for further analysis or downstream applications.  

### Key Features  

1. **Data Ingestion**:  
  - Stream subhourly temperature data from three weather stations into Kafka topics using a Kafka producer.  

2. **Stream Processing**:  
  - Compute hourly mean temperatures for each station.  
  - Identify the station with the highest hourly temperature.  
  - Detect outliers in the temperature data stream using a custom algorithm.  

3. **Data Output**:  
  - Write the processed data (hourly temperature, highest temperature, and outliers) back to Kafka topics.  

4. **Containerized Setup**:  
  - Use Docker to set up Kafka and Zookeeper for a seamless development environment.  

## How to Run  

### Prerequisites  
- Docker and Docker Compose installed on your system.  
- Python installed with the required libraries (`confluent-kafka`, `kafka-python`, and `faust`).  

### Steps  

1. **Start Kafka and Zookeeper**:  
  - Use the provided `docker-compose.yml` file to start the Kafka and Zookeeper containers:  
    ```bash  
    docker-compose up -d  
    ```  

2. **Install Dependencies**:  
  - Access the Kafka container:  
    ```bash  
    docker exec -it kafka bash  
    ```  
  - Install the required Python libraries inside the container:  
    ```bash  
    pip install confluent-kafka kafka-python faust  
    ```  

4. **Run the Stream Processor**:  
  - Start the Faust application for stream processing:  
    ```bash  
    faust -A faust_app worker --loglevel=info  
    ```  

This project provides a practical example of integrating Kafka and Faust for real-time data processing, offering insights into building scalable and efficient data pipelines.