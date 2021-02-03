resource "aws_sqs_queue" "dlp_no1" {
  #bridgecrew:skip=BC_AWS_GENERAL_16:Ensure all Data Stored in the SQS Queue is Encrypted
  name                       = "${var.env}_${var.region}_pairs_dlp_no1"
  visibility_timeout_seconds = var.visibility_timeout_seconds
  delay_seconds              = var.delay_seconds
  max_message_size           = var.max_message_size
  message_retention_seconds  = var.message_retention_seconds
  receive_wait_time_seconds  = var.receive_wait_time_seconds
}

resource "aws_sqs_queue" "dlp_no2_normal" {
  #bridgecrew:skip=BC_AWS_GENERAL_16:Ensure all Data Stored in the SQS Queue is Encrypted
  name                       = "${var.env}_${var.region}_pairs_dlp_no2_normal"
  visibility_timeout_seconds = var.visibility_timeout_seconds
  delay_seconds              = var.delay_seconds
  max_message_size           = var.max_message_size
  message_retention_seconds  = var.message_retention_seconds
  receive_wait_time_seconds  = var.receive_wait_time_seconds
}

resource "aws_sqs_queue" "dlp_no2_bq" {
  #bridgecrew:skip=BC_AWS_GENERAL_16:Ensure all Data Stored in the SQS Queue is Encrypted
  name = "${var.env}_${var.region}_pairs_dlp_no2_bq"
  visibility_timeout_seconds = 900
  delay_seconds              = var.delay_seconds
  max_message_size           = var.max_message_size
  message_retention_seconds  = var.message_retention_seconds
  receive_wait_time_seconds  = var.receive_wait_time_seconds
}
