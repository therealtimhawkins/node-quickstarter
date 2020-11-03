echo "Adding terraform script..."

mkdir -p terraform
cp scripts/terraform/main.txt terraform/main.tf

sed -i -e "s/%CLUSTER_NAME%/\"${PWD##*/}_cluster\"/g" terraform/main.tf
sed -i -e "s/%LOAD_BALANCER_NAME%/\"${PWD##*/}_lb\"/g" terraform/main.tf
sed -i -e "s/%TASK_NAME%/\"${PWD##*/}_task\"/g" terraform/main.tf

rm -rf terraform/main.tf-e

echo "Terraform added."
