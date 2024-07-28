# Vendor
echo 'Cloning Vendor Tree...'
git clone -b fourteen https://codeberg.org/rifux/proprietary_vendor_xiaomi_socrates vendor/xiaomi/socrates

# Kernel
echo 'Cloning Kernel Tree...'
git clone -b lineage-21 https://github.com/danielml3/android_kernel_xiaomi_socrates kernel/xiaomi/socrates
git clone -b lineage-21 https://github.com/danielml3/android_kernel_xiaomi_socrates-modules kernel/xiaomi/socrates-modules
git clone -b lineage-21 https://github.com/danielml3/android_kernel_xiaomi_socrates-devicetrees kernel/xiaomi/socrates-devicetrees

# Hardware
#echo 'Cloning hardware/xiaomi...'
#rm -rf hardware/xiaomi && git clone -b lineage-21 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi