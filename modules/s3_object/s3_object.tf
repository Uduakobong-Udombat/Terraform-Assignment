resource "aws_s3_object" "upload" {
  for_each    = fileset("modules/s3_object/personal/", "**/*.*")
  bucket      = "uduakudombat"
  key         = each.value
  source      = "modules/s3_object/personal/${each.value}"
  content_type = "html"

}