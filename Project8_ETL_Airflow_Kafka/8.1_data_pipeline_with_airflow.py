from datetime import timedelta
from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from airflow.utils.dates import days_ago


# Build an ETL Pipeline using Airflow
# Later, save this file as ETL_toll_data.py

# DAG argument
default_args = {
    'owner': 'Ariane',
    'start_date': days_ago(0),
    'email': ['ariane@test.com'],
    'email_on_failure': True,
    'email_on_retry': True,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

# DAG definition
dag = DAG(
    dag_id='ETL_toll_data',
    schedule_interval=timedelta(days=1),
    default_args=default_args,
    description='Apache Airflow Final Assignment',
)

# Task definition

# A task to upzip data
unzip_data = BashOperator(
    task_id='upzip_data',
    bash_command='tar -xzf /home/project/airflow/dags/finalassignment/tolldata.tgz > fileformats.txt',
    dag=dag,
)

# A task to extract data from csv file
extract_data_from_csv = BashOperator(
    task_id='extract_data_from_csv',
    bash_command='cut -d"," -f1-4 vehicle-data.csv > csv_data.csv',
    dag=dag,
)

# A task to extract data from tsv file
extract_data_from_tsv = BashOperator(
    task_id='extract_data_from_tsv',
    bash_command='cut -f5-7 tollplaza-data.tsv | tar "\t" "," > tsv_data.csv',
    dag=dag,
)

# A task to extract data from fixed width file
extract_data_from_fixed_width = BashOperator(
    task_id='extract_data_from_fixed_width',
    bash_command='awk "NF{print $(NF-1),$NF}" OFS="," payment-data.txt > fixed_width_data.csv',
    dag=dag,
)

# A task to consolidate data extracted from previous tasks
consolidate_data = BashOperator(
    task_id='consolidate_data',
    bash_command='paste -d"," csv_data.csv tsv_data.csv fixed_width_data.csv > extracted_data.csv',
    dag=dag,
)

# A task to transform and load the data
transform_data = BashOperator(
    task_id='transform_data',
    bash_command='tr "[a-z]" "[A-Z]" < extracted_data.csv > transformed_data.csv',
    dag=dag,
)

# Task pipeline
unzip_data >> extract_data_from_csv >> extract_data_from_tsv >> extract_data_from_fixed_width >> consolidate_data >> transform_data


# Prepare for the environment and data
# sudo mkdir -p /home/project/airflow/dags/finalassignment/staging
# sudo cd /home/project/airflow/dags/finalassignment
# wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Final%20Assignment/tolldata.tgz
# cd staging

# Submit the DAG
# sudo cp ETL_toll_data.py $AIRFLOW_HOME/dags
# airflow dags list | grep ETL_toll_data
# airflow dags list-import-errors

# Unpause the DAG
# airflow dags unpause ETL_toll_data
