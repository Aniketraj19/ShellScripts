################### User Management:
########################Create a shell script that interacts with user accounts. It should be able to:

######################## Create a new user with a specified username.
####################### Delete an existing user.
####################### Check if a user exists on the system.

#!/bin/bash

# Create a new user
new_user="$1"
useradd "$new_user"

# Delete an existing user
existing_user="$2"
userdel "$existing_user"

# Check if a user exists
check_user="$3"
if id "$check_user" &>/dev/null; then
    echo "$check_user exists."
else
    echo "$check_user does not exist."
fi
