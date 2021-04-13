//output "instance_ip_addr" {
//  value = aws_instance.Bastion.public_ip
//}
resource "local_file" "AnsibleInventory" {
  content = templatefile("inventory.tmpl",
  {
    bastion-ip = aws_instance.Bastion.public_ip,
    private-ip = aws_instance.instanceApp.private_ip
  }
  )
  filename = "inventory"
}