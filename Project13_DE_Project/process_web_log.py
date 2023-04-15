from datetime import timedelta
from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from airflow.utils.dates import days_ago

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
    dag_id='process_web_log',
    schedule_interval=timedelta(days=1),
    default_args=default_args,
    description='Process Web Log',
)

# Task definition
# A task to extract data from txt
extract_data = BashOperator(
    task_id='extract_data',
    bash_command='cut -d " " -f1 accesslog.txt > extracted_data.txt',
    dag=dag,
)

# A task to transform and load the data
transform_data = BashOperator(
    task_id='transform_data',
    bash_command='tr "198.46.149.143" " " < extracted_data.txt > transformed_data.txt',
    dag=dag,
)

# A task to load the data
load_data = BashOperator(
    task_id='transform_data',
    bash_command='tar -czf weblog.tar . < transformed_data.txt',
    dag=dag,
)

# Task pipeline
extract_data >> transform_data >> load_data

# Submit the DAG
# $ sudo cd process_web_log.py $AIRFLOW_HOME/dags

# Unpause the DAG
# $ airflow dags unpause process_web_log