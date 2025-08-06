resource "aws_iam_user" "testuser" {
  name = "jon"

}

resource "aws_iam_user_policy" "jon-policy" {
  name = "test-policy"
  user = aws_iam_user.testuser.name

  policy = file("./iam-user-policy.json")
}