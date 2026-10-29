#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archlinux-custom"
iso_label="ARCH_$(date +%Y%m)"
iso_publisher="Custom Arch <https://archlinux.org>"
iso_application="Arch Linux Live/Rescue Medium"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '15')

declare -A file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
)
