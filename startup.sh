sudo apt update -y &>/dev/null
sudo apt upgrade -y &>/dev/null
sudo apt install -qq curl -qq build-essential -qq gcc -qq make -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.profile
source ~/.cargo/env
rustc -V
echo "Install ready... Cloning gcp-rust"

git clone https://github.com/tomaspietravallo/gcp-rust.git

echo "Use the run-latest-compute to update the compute.rs file (git), build, and run"
