
# Issues

- Remover o fstab do ramdisk não faz a imagem do boot.img ser regerada. (foi preciso deletar a imagem do boot.img para gerar a alteração)

## Fastboot problem

- https://android-review.googlesource.com/c/device/amlogic/yukawa/+/1855897


##

fastboot flash boot boot.img
fastboot flash super super.img
fastboot reboot

fastboot flash boot boot.img
fastboot flash super super.img
fastboot flash dtbo dtbo-unsigned.img
fastboot reboot
