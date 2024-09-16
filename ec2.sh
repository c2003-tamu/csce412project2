aws ec2 run-instances \
    --image-id ami-0e86e20dae9224db8\
    --count 1 \
    --instance-type t2.micro \
    --key-name Laptop \
    --security-group-ids sg-03e3e8d621a2273b5\
    --associate-public-ip-address \

