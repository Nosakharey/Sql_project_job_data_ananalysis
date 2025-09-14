--- Delete this lat
WITH top_paying_jobs AS
(
SELECT
    job_id,
    job_title,
    salary_year_avg,
    name AS company_name

FROM
    job_postings_fact

LEFT JOIN company_dim ON job_postings_fact.company_id= company_dim.company_id
WHERE job_title_short = 'Data Engineer' AND job_location = 'Anywhere' AND
salary_year_avg is NOT NULL 

ORDER BY
    salary_year_avg DESC
LIMIT 10
)

SELECT 
    top_paying_jobs.*,
    skills AS skills_name

FROM top_paying_jobs

INNER JOIN 
    skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN 
    skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

ORDER BY
     salary_year_avg DESC
/*
Top 10 Technical Skills for Data Engineering (2023 Job Postings)
Python – Dominates as the primary language for scripting, ETL, and data pipeline development
SQL – Essential for querying, transforming, and managing structured data
Apache Spark – Widely used for big data processing and distributed computing
AWS (Amazon Web Services) – Cloud infrastructure expertise is in high demand
Apache Kafka – Key for real-time data streaming and event-driven architectures
Snowflake – Popular cloud data warehouse for scalable analytics
Airflow – Standard tool for workflow orchestration and pipeline scheduling
Databricks – Increasingly favored for collaborative data engineering and ML workflows
Scala – Often paired with Spark for high-performance data applications
Docker – Crucial for containerizing applications and ensuring portability across environments

[
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "python"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "spark"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "pandas"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "numpy"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "pyspark"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "hadoop"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "kafka"
  },
  {
    "job_id": 21321,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "kubernetes"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "python"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "spark"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "pandas"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "numpy"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "pyspark"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "hadoop"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "kafka"
  },
  {
    "job_id": 157003,
    "job_title": "Data Engineer",
    "salary_year_avg": "325000.0",
    "company_name": "Engtal",
    "skills_name": "kubernetes"
  },
  {
    "job_id": 270455,
    "job_title": "Data Engineer",
    "salary_year_avg": "300000.0",
    "company_name": "Durlston Partners",
    "skills_name": "sql"
  },
  {
    "job_id": 270455,
    "job_title": "Data Engineer",
    "salary_year_avg": "300000.0",
    "company_name": "Durlston Partners",
    "skills_name": "python"
  },
  {
    "job_id": 230458,
    "job_title": "Director of Engineering - Data Platform",
    "salary_year_avg": "251000.0",
    "company_name": "Twitch",
    "skills_name": "spark"
  },
  {
    "job_id": 230458,
    "job_title": "Director of Engineering - Data Platform",
    "salary_year_avg": "251000.0",
    "company_name": "Twitch",
    "skills_name": "hadoop"
  },
  {
    "job_id": 230458,
    "job_title": "Director of Engineering - Data Platform",
    "salary_year_avg": "251000.0",
    "company_name": "Twitch",
    "skills_name": "kafka"
  },
  {
    "job_id": 230458,
    "job_title": "Director of Engineering - Data Platform",
    "salary_year_avg": "251000.0",
    "company_name": "Twitch",
    "skills_name": "tensorflow"
  },
  {
    "job_id": 230458,
    "job_title": "Director of Engineering - Data Platform",
    "salary_year_avg": "251000.0",
    "company_name": "Twitch",
    "skills_name": "keras"
  },
  {
    "job_id": 230458,
    "job_title": "Director of Engineering - Data Platform",
    "salary_year_avg": "251000.0",
    "company_name": "Twitch",
    "skills_name": "pytorch"
  },
  {
    "job_id": 543728,
    "job_title": "Staff Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "Signify Technology",
    "skills_name": "python"
  },
  {
    "job_id": 543728,
    "job_title": "Staff Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "Signify Technology",
    "skills_name": "scala"
  },
  {
    "job_id": 543728,
    "job_title": "Staff Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "Signify Technology",
    "skills_name": "databricks"
  },
  {
    "job_id": 543728,
    "job_title": "Staff Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "Signify Technology",
    "skills_name": "spark"
  },
  {
    "job_id": 561728,
    "job_title": "Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "AI Startup",
    "skills_name": "python"
  },
  {
    "job_id": 561728,
    "job_title": "Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "AI Startup",
    "skills_name": "scala"
  },
  {
    "job_id": 561728,
    "job_title": "Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "AI Startup",
    "skills_name": "r"
  },
  {
    "job_id": 561728,
    "job_title": "Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "AI Startup",
    "skills_name": "azure"
  },
  {
    "job_id": 595768,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "Signify Technology",
    "skills_name": "python"
  },
  {
    "job_id": 595768,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "Signify Technology",
    "skills_name": "scala"
  },
  {
    "job_id": 595768,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "Signify Technology",
    "skills_name": "databricks"
  },
  {
    "job_id": 595768,
    "job_title": "Principal Data Engineer",
    "salary_year_avg": "250000.0",
    "company_name": "Signify Technology",
    "skills_name": "spark"
  },
  {
    "job_id": 204320,
    "job_title": "Staff Data Engineer",
    "salary_year_avg": "245000.0",
    "company_name": "Handshake",
    "skills_name": "go"
  },
  {
    "job_id": 151972,
    "job_title": "Principal Data Engineer (Remote)",
    "salary_year_avg": "245000.0",
    "company_name": "Movable Ink",
    "skills_name": "nosql"
  },
  {
    "job_id": 151972,
    "job_title": "Principal Data Engineer (Remote)",
    "salary_year_avg": "245000.0",
    "company_name": "Movable Ink",
    "skills_name": "aws"
  },
  {
    "job_id": 151972,
    "job_title": "Principal Data Engineer (Remote)",
    "salary_year_avg": "245000.0",
    "company_name": "Movable Ink",
    "skills_name": "gcp"
  },
  {
    "job_id": 609418,
    "job_title": "Data Engineering Manager",
    "salary_year_avg": "242000.0",
    "company_name": "Meta",
    "skills_name": "sql"
  },
  {
    "job_id": 609418,
    "job_title": "Data Engineering Manager",
    "salary_year_avg": "242000.0",
    "company_name": "Meta",
    "skills_name": "python"
  },
  {
    "job_id": 609418,
    "job_title": "Data Engineering Manager",
    "salary_year_avg": "242000.0",
    "company_name": "Meta",
    "skills_name": "java"
  },
  {
    "job_id": 609418,
    "job_title": "Data Engineering Manager",
    "salary_year_avg": "242000.0",
    "company_name": "Meta",
    "skills_name": "perl"
  }
]
*/