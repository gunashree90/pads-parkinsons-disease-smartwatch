# pads-parkinsons-disease-smartwatch
PADS Parkinson’s Disease Smartwatch Dataset Analysis – Includes data extraction from JSON, SQL data transformation and cleaning, ERD design, and insights for tremor pattern analysis using wearable sensor data.

# PADS Parkinson's Tremor Analysis Dashboard

## 1. Executive Summary

This project provides an end-to-end analytical pipeline for the PADS (Parkinson's Disease Smartwatch) dataset. By processing high-frequency accelerometer and gyroscope signals, we identify objective biomarkers for tremor severity, bridging the gap between raw sensor data and clinical insights.

---

## 2. Dataset

Download dataset from this link:

:link: **Dataset Access:** [PADS - Parkinson's Disease Smartwatch dataset v1.0.0](https://physionet.org/content/parkinsons-disease-smartwatch/1.0.0/movement/)

---

## 3. Technical Architecture

### Key Metrics Calculated

- **RMS (Root Mean Square):** Measures the physical intensity and magnitude of the tremor.
- **Dominant Frequency:** Identifies the "speed" of the tremor in Hz.
- **Categorical Rating:** Classifies tremors based on clinical thresholds.

### Tool Stack

- **Python:** Primary engine for signal processing and data extraction.
- **PostgreSQL:** Handles data relational integrity and de-identification.
- **Power BI:** Delivers multi-dimensional visualizations across Axis, Sensor, and Demographics.

---

## 4. Repository Structure

- :file_folder: **Data Extraction/** – `DataDetectives03_Extract_JSON.ipynb` (The core Python logic)
- :file_folder: **Data Transformation/** – `DataDetectives03_DataTransformation_SQL.sql` (Create table script and restore data)
- :file_folder: **Data Cleaning/** – `DataDetectives03_CleanedData.sql` (DDL and DML scripts for PostgreSQL cleaning)

---

## 5. Deployment Guide

1. **Dataset:** Download the PADS dataset.
2. **Processing:** Execute the Jupyter Notebook to transform raw signals into summary features.
3. **Database:** Import the resulting CSVs into your PostgreSQL environment using our SQL scripts.physionet.orgPADS - Parkinsons Disease Smartwatch dataset v1.0.0The PADS dataset contains smartwatch-based records from interactive neurological assessments of Parkinsons disease patients, differential diagnoses and healthy controls. The data is complemented with non-motor symptoms and medical history information
