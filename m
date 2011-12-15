Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8ah-0004Em-Ol
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:31:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:30:34 +0100
Message-Id: <1323945034-19687-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
References: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 12/12] defaultenv: simplify boot
To: barebox@lists.infradead.org

Now that we have a bootm command which boots everything we can
simplify the defaultenvironment. We can call bootm on every
image type and can remove the kernelimage_type variables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91rm9200ek/env/config           |    5 --
 arch/arm/boards/at91sam9261ek/env/config          |    5 --
 arch/arm/boards/at91sam9263ek/env/config          |    5 --
 arch/arm/boards/at91sam9m10g45ek/env/config       |    5 --
 arch/arm/boards/chumby_falconwing/env/bin/boot    |    9 +----
 arch/arm/boards/chumby_falconwing/env/config      |    2 -
 arch/arm/boards/dss11/env/config                  |    5 --
 arch/arm/boards/eukrea_cpuimx25/env/config        |    1 -
 arch/arm/boards/eukrea_cpuimx35/env/config        |    1 -
 arch/arm/boards/eukrea_cpuimx51/env/config        |    1 -
 arch/arm/boards/freescale-mx35-3-stack/env/config |    5 --
 arch/arm/boards/freescale-mx51-pdk/env/config     |    5 --
 arch/arm/boards/freescale-mx53-loco/env/config    |    5 --
 arch/arm/boards/freescale-mx53-smd/env/config     |    5 --
 arch/arm/boards/guf-cupid/env/config              |    5 --
 arch/arm/boards/guf-neso/env/config               |    5 --
 arch/arm/boards/karo-tx25/env/config              |    5 --
 arch/arm/boards/karo-tx28/env/config              |    5 --
 arch/arm/boards/mini2440/env/config               |    5 --
 arch/arm/boards/nhk8815/env/config                |    5 --
 arch/arm/boards/panda/env/config                  |    5 --
 arch/arm/boards/pcm037/env/config                 |    5 --
 arch/arm/boards/pcm038/env/config                 |    5 --
 arch/arm/boards/pcm043/env/config                 |    5 --
 arch/arm/boards/pcm049/env/config                 |    5 --
 arch/arm/boards/phycard-i.MX27/env/config         |    5 --
 arch/arm/boards/pm9261/env/config                 |    5 --
 arch/arm/boards/pm9g45/env/config                 |    5 --
 arch/arm/boards/scb9328/env/config                |    5 --
 arch/arm/boards/usb-a926x/env/config              |    5 --
 arch/arm/boards/versatile/env/config              |    5 --
 arch/nios2/boards/generic/env/config              |    1 -
 defaultenv/bin/boot                               |   43 ++-------------------
 defaultenv/config                                 |    5 --
 34 files changed, 5 insertions(+), 188 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/env/config b/arch/arm/boards/at91rm9200ek/env/config
index 1b56b25..12655c2 100644
--- a/arch/arm/boards/at91rm9200ek/env/config
+++ b/arch/arm/boards/at91rm9200ek/env/config
@@ -19,14 +19,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-#kernelimage_type=zimage
 #kernelimage=zImage
-kernelimage_type=uimage
 kernelimage=uImage
-#kernelimage_type=raw
 #kernelimage=Image
-#kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
 nor_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/env/config
index 733326d..d6eeea4 100644
--- a/arch/arm/boards/at91sam9261ek/env/config
+++ b/arch/arm/boards/at91sam9261ek/env/config
@@ -19,14 +19,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-#kernelimage_type=zimage
 #kernelimage=zImage
-kernelimage_type=uimage
 kernelimage=uImage
-#kernelimage_type=raw
 #kernelimage=Image
-#kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
diff --git a/arch/arm/boards/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
index 4e29232..bd771ac 100644
--- a/arch/arm/boards/at91sam9263ek/env/config
+++ b/arch/arm/boards/at91sam9263ek/env/config
@@ -19,14 +19,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-#kernelimage_type=zimage
 #kernelimage=zImage
-kernelimage_type=uimage
 kernelimage=uImage
-#kernelimage_type=raw
 #kernelimage=Image
-#kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/config b/arch/arm/boards/at91sam9m10g45ek/env/config
index b8ca18d..3dea724 100644
--- a/arch/arm/boards/at91sam9m10g45ek/env/config
+++ b/arch/arm/boards/at91sam9m10g45ek/env/config
@@ -19,14 +19,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-#kernelimage_type=zimage
 #kernelimage=zImage
-kernelimage_type=uimage
 kernelimage=uImage
-#kernelimage_type=raw
 #kernelimage=Image
-#kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
diff --git a/arch/arm/boards/chumby_falconwing/env/bin/boot b/arch/arm/boards/chumby_falconwing/env/bin/boot
index 981a387..999170c 100644
--- a/arch/arm/boards/chumby_falconwing/env/bin/boot
+++ b/arch/arm/boards/chumby_falconwing/env/bin/boot
@@ -26,13 +26,6 @@ elif [ x$rootfs_loc = xinitrd ]; then
 	bootargs="$bootargs root=/dev/ram0 rdinit=/sbin/init"
 fi
 
-if [ x$kernelimage_type = xuimage ]; then
-	bootm /dev/$kernel_part
-elif [ x$kernelimage_type = xzimage ]; then
-	bootz /dev/$kernel_part
-else
-	echo "Booting failed. Correct setup of 'kernelimage_type'?"
-	exit
-fi
+bootm /dev/$kernel_part
 
 echo "Booting failed. Correct setup of 'kernel_part'?"
diff --git a/arch/arm/boards/chumby_falconwing/env/config b/arch/arm/boards/chumby_falconwing/env/config
index 1e61dce..1419161 100644
--- a/arch/arm/boards/chumby_falconwing/env/config
+++ b/arch/arm/boards/chumby_falconwing/env/config
@@ -25,8 +25,6 @@ rootfs_part=mmcblk0p4
 # Where is the rootfs in case of 'rootfs_loc=net'
 nfsroot=FIXME
 
-# The image type of the kernel. Can be uimage, zimage
-kernelimage_type=uimage
 # Where to get the kernel image in case of 'kernel_loc=disk'
 kernel_part=disk0.2
 
diff --git a/arch/arm/boards/dss11/env/config b/arch/arm/boards/dss11/env/config
index 5c9be7d..adf3af5 100644
--- a/arch/arm/boards/dss11/env/config
+++ b/arch/arm/boards/dss11/env/config
@@ -19,14 +19,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-#kernelimage_type=zimage
 #kernelimage=zImage
-kernelimage_type=uimage
 kernelimage=uImage
-#kernelimage_type=raw
 #kernelimage=Image
-#kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
diff --git a/arch/arm/boards/eukrea_cpuimx25/env/config b/arch/arm/boards/eukrea_cpuimx25/env/config
index 5cedbf8..bc1cfd5 100644
--- a/arch/arm/boards/eukrea_cpuimx25/env/config
+++ b/arch/arm/boards/eukrea_cpuimx25/env/config
@@ -25,7 +25,6 @@ rootfs_type=ubifs
 rootfsimage=$machine/rootfs.$rootfs_type
 
 # kernel
-kernelimage_type=uimage
 kernelimage=$machine/uImage-${machine}.bin
 
 # barebox and it's env
diff --git a/arch/arm/boards/eukrea_cpuimx35/env/config b/arch/arm/boards/eukrea_cpuimx35/env/config
index 776d19a..8f64ba0 100644
--- a/arch/arm/boards/eukrea_cpuimx35/env/config
+++ b/arch/arm/boards/eukrea_cpuimx35/env/config
@@ -25,7 +25,6 @@ rootfs_type=ubifs
 rootfsimage=$machine/rootfs.$rootfs_type
 
 # kernel
-kernelimage_type=uimage
 kernelimage=$machine/uImage-${machine}.bin
 
 # barebox and it's env
diff --git a/arch/arm/boards/eukrea_cpuimx51/env/config b/arch/arm/boards/eukrea_cpuimx51/env/config
index 91a2671..1b57b29 100644
--- a/arch/arm/boards/eukrea_cpuimx51/env/config
+++ b/arch/arm/boards/eukrea_cpuimx51/env/config
@@ -28,7 +28,6 @@ rootfs_type=ubifs
 rootfsimage=$machine/rootfs.$rootfs_type
 
 # kernel
-kernelimage_type=uimage
 kernelimage=$machine/uImage-${machine}.bin
 
 # barebox and it's env
diff --git a/arch/arm/boards/freescale-mx35-3-stack/env/config b/arch/arm/boards/freescale-mx35-3-stack/env/config
index ee9bd07..17b1e31 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/env/config
+++ b/arch/arm/boards/freescale-mx35-3-stack/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-$machine.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/freescale-mx51-pdk/env/config b/arch/arm/boards/freescale-mx51-pdk/env/config
index 8e6b34e..10690c9 100644
--- a/arch/arm/boards/freescale-mx51-pdk/env/config
+++ b/arch/arm/boards/freescale-mx51-pdk/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-$machine.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/freescale-mx53-loco/env/config b/arch/arm/boards/freescale-mx53-loco/env/config
index 3659a62..fd238a6 100644
--- a/arch/arm/boards/freescale-mx53-loco/env/config
+++ b/arch/arm/boards/freescale-mx53-loco/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-$machine.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/freescale-mx53-smd/env/config b/arch/arm/boards/freescale-mx53-smd/env/config
index 3659a62..fd238a6 100644
--- a/arch/arm/boards/freescale-mx53-smd/env/config
+++ b/arch/arm/boards/freescale-mx53-smd/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-$machine.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/guf-cupid/env/config b/arch/arm/boards/guf-cupid/env/config
index cd11eb1..930a97d 100644
--- a/arch/arm/boards/guf-cupid/env/config
+++ b/arch/arm/boards/guf-cupid/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-$machine.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/guf-neso/env/config b/arch/arm/boards/guf-neso/env/config
index 162488f..9b675b5 100644
--- a/arch/arm/boards/guf-neso/env/config
+++ b/arch/arm/boards/guf-neso/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-$machine.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/karo-tx25/env/config b/arch/arm/boards/karo-tx25/env/config
index 9113a87..69f2c26 100644
--- a/arch/arm/boards/karo-tx25/env/config
+++ b/arch/arm/boards/karo-tx25/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-$machine.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/karo-tx28/env/config b/arch/arm/boards/karo-tx28/env/config
index fdf57ea..ed361eb 100644
--- a/arch/arm/boards/karo-tx28/env/config
+++ b/arch/arm/boards/karo-tx28/env/config
@@ -24,14 +24,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-$machine.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/mini2440/env/config b/arch/arm/boards/mini2440/env/config
index ff6f1ea..ac8c32a 100644
--- a/arch/arm/boards/mini2440/env/config
+++ b/arch/arm/boards/mini2440/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-${machine}.${rootfs_type}
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-${machine}
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/nhk8815/env/config b/arch/arm/boards/nhk8815/env/config
index 7428c43..c05ed27 100644
--- a/arch/arm/boards/nhk8815/env/config
+++ b/arch/arm/boards/nhk8815/env/config
@@ -19,14 +19,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-#kernelimage_type=zimage
 #kernelimage=zImage
-kernelimage_type=uimage
 kernelimage=uImage
-#kernelimage_type=raw
 #kernelimage=Image
-#kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
 # Partition			Size	Start
diff --git a/arch/arm/boards/panda/env/config b/arch/arm/boards/panda/env/config
index 363208e..29672be 100644
--- a/arch/arm/boards/panda/env/config
+++ b/arch/arm/boards/panda/env/config
@@ -18,14 +18,9 @@ kernel_loc=tftp
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-${machine}.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/pcm037/env/config b/arch/arm/boards/pcm037/env/config
index 3748cc4..d67d319 100644
--- a/arch/arm/boards/pcm037/env/config
+++ b/arch/arm/boards/pcm037/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-$machine.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/pcm038/env/config b/arch/arm/boards/pcm038/env/config
index 9e28f5d..eb0f9c1 100644
--- a/arch/arm/boards/pcm038/env/config
+++ b/arch/arm/boards/pcm038/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-$machine.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/pcm043/env/config b/arch/arm/boards/pcm043/env/config
index e7f94f8..2a355e6 100644
--- a/arch/arm/boards/pcm043/env/config
+++ b/arch/arm/boards/pcm043/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-$machine.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/pcm049/env/config b/arch/arm/boards/pcm049/env/config
index 54b2e3d..f348714 100644
--- a/arch/arm/boards/pcm049/env/config
+++ b/arch/arm/boards/pcm049/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-${machine}.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-${machine}.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/phycard-i.MX27/env/config b/arch/arm/boards/phycard-i.MX27/env/config
index 0e20b48..5db33d0 100644
--- a/arch/arm/boards/phycard-i.MX27/env/config
+++ b/arch/arm/boards/phycard-i.MX27/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-$machine.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/pm9261/env/config b/arch/arm/boards/pm9261/env/config
index 7933379..bdc2d38 100644
--- a/arch/arm/boards/pm9261/env/config
+++ b/arch/arm/boards/pm9261/env/config
@@ -19,14 +19,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-#kernelimage_type=zimage
 #kernelimage=zImage
-kernelimage_type=uimage
 kernelimage=uImage
-#kernelimage_type=raw
 #kernelimage=Image
-#kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
 nor_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
diff --git a/arch/arm/boards/pm9g45/env/config b/arch/arm/boards/pm9g45/env/config
index b8ca18d..3dea724 100644
--- a/arch/arm/boards/pm9g45/env/config
+++ b/arch/arm/boards/pm9g45/env/config
@@ -19,14 +19,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-#kernelimage_type=zimage
 #kernelimage=zImage
-kernelimage_type=uimage
 kernelimage=uImage
-#kernelimage_type=raw
 #kernelimage=Image
-#kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
diff --git a/arch/arm/boards/scb9328/env/config b/arch/arm/boards/scb9328/env/config
index d0f3f25..e1c5807 100644
--- a/arch/arm/boards/scb9328/env/config
+++ b/arch/arm/boards/scb9328/env/config
@@ -23,14 +23,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root-$machine.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/usb-a926x/env/config b/arch/arm/boards/usb-a926x/env/config
index d77f678..96a4524 100644
--- a/arch/arm/boards/usb-a926x/env/config
+++ b/arch/arm/boards/usb-a926x/env/config
@@ -19,14 +19,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-#kernelimage_type=zimage
 #kernelimage=zImage
-kernelimage_type=uimage
 kernelimage=uImage
-#kernelimage_type=raw
 #kernelimage=Image
-#kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
diff --git a/arch/arm/boards/versatile/env/config b/arch/arm/boards/versatile/env/config
index 9c5ce61..667dce3 100644
--- a/arch/arm/boards/versatile/env/config
+++ b/arch/arm/boards/versatile/env/config
@@ -19,14 +19,9 @@ rootfs_loc=initrd
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-#kernelimage_type=zimage
 #kernelimage=zImage
-kernelimage_type=uimage
 kernelimage=uImage
-#kernelimage_type=raw
 #kernelimage=Image
-#kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
 nfsroot="$eth0.serverip:/opt/work/busybox/arm9/rootfs_arm"
diff --git a/arch/nios2/boards/generic/env/config b/arch/nios2/boards/generic/env/config
index 5d23098..16adc49 100644
--- a/arch/nios2/boards/generic/env/config
+++ b/arch/nios2/boards/generic/env/config
@@ -5,7 +5,6 @@ kernel=flash
 root=flash
 
 kernel_loc=nor
-kernelimage_type=uimage
 
 # use 'dhcp' todo dhcp in barebox and in kernel
 ip=none
diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 90ebf9a..1120757 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -72,35 +72,12 @@ if [ -n $mtdparts ]; then
 	bootargs="${bootargs} mtdparts=${mtdparts}"
 fi
 
-if [ ! -e /dev/ram0.kernelraw ]; then
-	# arm raw kernel images are usually located at sdram start + 0x8000
-	addpart /dev/ram0 8M@0x8000(kernelraw)
-fi
-
-if [ ! -e /dev/ram0.kernel ]; then
-	# Here we can safely put the kernel without risking of overwriting it
-	# while extracting
-	addpart /dev/ram0 8M@8M(kernel)
-fi
-
 if [ x$kernel_loc = xnfs -o x$kernel_loc = xtftp ]; then
 	if [ x$ip = xdhcp ]; then
 		dhcp
 	fi
-	if [ $kernelimage_type = uimage ]; then
-		netload="/dev/ram0.kernel"
-	elif [ $kernelimage_type = zimage ]; then
-		netload="/dev/ram0.kernel"
-	elif [ $kernelimage_type = raw ]; then
-		netload="/dev/ram0.kernelraw"
-	elif [ $kernelimage_type = raw_lzo ]; then
-		netload="/dev/ram0.kernel"
-	else
-		echo "error: set kernelimage_type to one of 'uimage', 'zimage', 'raw' or 'raw_lzo'"
-		exit 1
-	fi
-	$kernel_loc $kernelimage $netload || exit 1
-	kdev="$netload"
+	kdev=/image
+	$kernel_loc $kernelimage $kdev || exit 1
 elif [ x$kernel_loc = xnor ]; then
 	kdev="/dev/nor0.kernel"
 elif [ x$kernel_loc = xnand ]; then
@@ -112,18 +89,6 @@ else
 	exit 1
 fi
 
-echo "booting kernel of type $kernelimage_type from $kdev"
+echo "booting kernel from $kdev"
 
-if [ x$kernelimage_type = xuimage ]; then
-	bootm $bootm_opt $kdev
-elif [ x$kernelimage_type = xzimage ]; then
-	bootz $kdev
-elif [ x$kernelimage_type = xraw ]; then
-	if [ $kernel_loc != net ]; then
-		cp $kdev /dev/ram0.kernelraw
-	fi
-	bootu /dev/ram0.kernelraw
-elif [ x$kernelimage_type = xraw_lzo ]; then
-	uncompress $kdev /dev/ram0.kernelraw
-	bootu /dev/ram0.kernelraw
-fi
+bootm $bootm_opt $kdev
diff --git a/defaultenv/config b/defaultenv/config
index 0aaead5..9866273 100644
--- a/defaultenv/config
+++ b/defaultenv/config
@@ -31,14 +31,9 @@ rootfsimage=rootfs-${machine}.$rootfs_type
 # where is the kernel image in case of 'kernel_loc=disk'
 kernel_part=disk0.2
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-$machine
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 bareboximage=barebox-${machine}.bin
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
