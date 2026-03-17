----- Created Tables----
---- First_Table_Demographics----
CREATE TABLE Demographics_raw (
    resource_type TEXT,
    id TEXT,
    study_id TEXT,
    condition TEXT,
    disease_comment TEXT,
    age_at_diagnosis INT,
    age INT,
    height INT,
    weight INT,
    gender TEXT,
    handedness TEXT,
    appearance_in_kinship BOOLEAN,
    appearance_in_first_grade_kinship BOOLEAN,
    effect_of_alcohol_on_tremor TEXT
);

Select * from Demographics_raw

COPY Demographics_raw
FROM 'C:\Users\BharGunaAdhVid\Downloads\pads-parkinsons-disease-smartwatch-dataset\Patients.csv'
DELIMITER ','
CSV HEADER;

------Second_Table_Questionarrie------

CREATE TABLE questionnaire_responses_raw(
    resource_type TEXT,
    subject_id TEXT,
    study_id TEXT,
    questionnaire_id TEXT,
    questionnaire_name TEXT,
    link_id TEXT,
    question TEXT,
    answer TEXT
);



COPY questionnaire_responses_raw
FROM 'C:\Users\BharGunaAdhVid\Downloads\pads-parkinsons-disease-smartwatch-dataset\questionnaire_responses.csv'
DELIMITER ','
CSV HEADER;

Select * from questionnaire_responses_raw


----- Third_Table_Movement_Timeseries-----
CREATE TABLE movement_sensor_raw (
    subject_id INTEGER,
    study_id TEXT,
    device_id TEXT,
    record_id TEXT,
    record_name TEXT,
    device_location TEXT,
	file_name TEXT,

    time_mean DOUBLE PRECISION,

    accelerometer_x_mean DOUBLE PRECISION,
    accelerometer_x_std DOUBLE PRECISION,
    accelerometer_x_range DOUBLE PRECISION,
    accelerometer_x_rms DOUBLE PRECISION,

    accelerometer_y_mean DOUBLE PRECISION,
    accelerometer_y_std DOUBLE PRECISION,
    accelerometer_y_range DOUBLE PRECISION,
    accelerometer_y_rms DOUBLE PRECISION,

    accelerometer_z_mean DOUBLE PRECISION,
    accelerometer_z_std DOUBLE PRECISION,
    accelerometer_z_range DOUBLE PRECISION,
    accelerometer_z_rms DOUBLE PRECISION,

    gyroscope_x_mean DOUBLE PRECISION,
    gyroscope_x_std DOUBLE PRECISION,
    gyroscope_x_range DOUBLE PRECISION,
    gyroscope_x_rms DOUBLE PRECISION,

    gyroscope_y_mean DOUBLE PRECISION,
    gyroscope_y_std DOUBLE PRECISION,
    gyroscope_y_range DOUBLE PRECISION,
    gyroscope_y_rms DOUBLE PRECISION,

    gyroscope_z_mean DOUBLE PRECISION,
    gyroscope_z_std DOUBLE PRECISION,
    gyroscope_z_range DOUBLE PRECISION,
    gyroscope_z_rms DOUBLE PRECISION
);

COPY movement_sensor_raw
FROM 'C:\Users\BharGunaAdhVid\Downloads\pads-parkinsons-disease-smartwatch-dataset\movement_timeseries_summary.csv'
DELIMITER ','
CSV HEADER;

Select * from movement_sensor_raw
