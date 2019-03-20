$password = ConvertTo-SecureString "password@123" -AsPlainText -Force

# Group new users are added to (default is Users)
$group = "Users"

# PowerShell array containing the users to be created
$users = @(
    "Andrea",
    "FrankS"

)

# Creates a new users for each entry in the $users array
foreach ($user in $users) {
	
    # Create and add user to Users group
    New-LocalUser -Name "$user" -Password $Password -Description "usergroup standard User" -PasswordNeverExpires:$true 
    Add-LocalGroupMember -Group "$group" -Member "$user"
}