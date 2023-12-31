region = "us-west-2"

resource_grp_name = "friends-capstone-rds"

proj_name = "friends-capstone"

db_name = "friendscapstonerds"

publicly_accessible = false

db_allocated_storage = 20

db_instance_class = "db.t3.medium"

db_storage_type = "gp2"

db_engine = "mysql"

db_engine_version = "5.7" # use the tried and tested mysql:5.7

db_backup_window = "19:00-20:00"

db_maintenance_window = "mon:20:00-mon:21:00"

db_backup_retention_period = 7

db_monitoring_interval = 60 # seconds, min 60s

db_restore_from_latest_snapshot = true

# kms_key_id = "86bf82c9-5f64-479b-ac92-77b15fb90543" # AWS managed keys: aws/rds
kms_key_id = "17f3f911-3d85-4e77-b680-da10507c7849"

with_read_replica = false

snapshot_name = "friendscapstonerdsbackup27nov"
