data "aws_vpc" "selected" {
       filter{
          name = "tag:name"
          values = ["DevOps-Candidate-Lambda-Role"]
         
         }
       
}
