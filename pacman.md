# Update system

sudo pacman -Syyu

# List unused packages

sudo pacman -Qtdq

# Remove unused packages

sudo pacman -Rns $(pacman -Qtdq)

# Install a package

sudo pacman -S package_name

# Remove a package

sudo pacman -S package_name
