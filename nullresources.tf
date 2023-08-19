resource "null_resource" "cowsay" {
 provisioner "local-exec" {
 command = "cowsay Hello Outcomer. Good Luck on the Quiz!"
 }
 provisioner "local-exec" {
 when = destroy
 command = "cowsay -d Goodbye Outcomer. Sure you enjoyed the challenge and you did well :) !"
 }
}
