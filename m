Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WyyYU-0005ZQ-SX
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 07:20:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Jun 2014 09:20:19 +0200
Message-Id: <1403508019-17225-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] remove unused boot-menu-add-entry
To: barebox@lists.infradead.org

The boot-menu-add-entry script no longer exists. Remove it from
boot scripts.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/archosg9/env/boot/sd-card-android                    | 5 -----
 arch/arm/boards/archosg9/env/boot/sd-card-linux                      | 5 -----
 arch/arm/boards/archosg9/env/boot/usb-android                        | 5 -----
 arch/arm/boards/archosg9/env/boot/usb-linux                          | 5 -----
 arch/arm/boards/at91sam9m10ihd/env/boot/android                      | 5 -----
 arch/arm/boards/at91sam9m10ihd/env/boot/mmc                          | 5 -----
 arch/arm/boards/at91sam9m10ihd/env/boot/net                          | 5 -----
 arch/arm/boards/at91sam9m10ihd/env/boot/net-usb                      | 5 -----
 arch/arm/boards/beagle/env/boot/mmc                                  | 5 -----
 arch/arm/boards/beagle/env/boot/nand-ubi                             | 5 -----
 arch/arm/boards/beagle/env/boot/nand-ubi-dt                          | 5 -----
 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd             | 5 -----
 arch/arm/boards/ccxmx51/env/boot/nand                                | 5 -----
 arch/arm/boards/clep7212/env/boot/nor                                | 5 -----
 arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3              | 5 -----
 arch/arm/boards/datamodul-edm-qmx6/env/boot/mmc                      | 5 -----
 arch/arm/boards/delphi-poc20/env/boot/mmc                            | 5 -----
 arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal              | 5 -----
 arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left                 | 5 -----
 arch/arm/boards/friendlyarm-mini2440/env/boot/nand                   | 5 -----
 arch/arm/boards/guf-vincell/env/boot/nand-ubi                        | 5 -----
 arch/arm/boards/highbank/env/boot/ahci                               | 5 -----
 arch/arm/boards/highbank/env/boot/ahci-boot                          | 5 -----
 arch/arm/boards/highbank/env/boot/mmc                                | 5 -----
 arch/arm/boards/highbank/env/boot/mmc-boot                           | 5 -----
 arch/arm/boards/highbank/env/boot/net                                | 5 -----
 arch/arm/boards/highbank/env/boot/net-eth1                           | 5 -----
 arch/arm/boards/karo-tx25/env/boot/nand-ubi                          | 5 -----
 arch/arm/boards/mx31moboard/env/boot/nor                             | 5 -----
 arch/arm/boards/mx31moboard/env/boot/sd                              | 5 -----
 arch/arm/boards/mx31moboard/env/boot/usbmsd                          | 5 -----
 arch/arm/boards/panda/env/boot/mmc                                   | 5 -----
 arch/arm/boards/phytec-phycard-imx6/env/boot/nand                    | 5 -----
 arch/arm/boards/phytec-phycard-imx6/env/boot/sd-ext3                 | 5 -----
 .../boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/mmc  | 5 -----
 .../boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/nand | 5 -----
 .../boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/spi  | 5 -----
 arch/arm/boards/phytec-phycore-imx27/env/boot/nand-ubi               | 5 -----
 arch/arm/boards/phytec-phycore-imx31/env/boot/nand-ubi               | 5 -----
 arch/arm/boards/phytec-phycore-imx35/env/boot/nand-ubi               | 5 -----
 arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi                     | 5 -----
 defaultenv/defaultenv-2-base/boot/net                                | 5 -----
 defaultenv/defaultenv-2-base/data/boot-template                      | 5 -----
 defaultenv/defaultenv-2-dfu/boot/dfu                                 | 5 -----
 44 files changed, 220 deletions(-)

diff --git a/arch/arm/boards/archosg9/env/boot/sd-card-android b/arch/arm/boards/archosg9/env/boot/sd-card-android
index a10a763..bc2df69 100644
--- a/arch/arm/boards/archosg9/env/boot/sd-card-android
+++ b/arch/arm/boards/archosg9/env/boot/sd-card-android
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "Android from SD card"
-	exit
-fi
-
 path=/mnt/sd
 global.bootm.image=${path}/android
 global.bootm.initrd=${path}/initramfs.cpio.lzo
diff --git a/arch/arm/boards/archosg9/env/boot/sd-card-linux b/arch/arm/boards/archosg9/env/boot/sd-card-linux
index 2ba9b9e..b3eaa24 100644
--- a/arch/arm/boards/archosg9/env/boot/sd-card-linux
+++ b/arch/arm/boards/archosg9/env/boot/sd-card-linux
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "Linux from SD card"
-	exit
-fi
-
 path=/mnt/sd
 global.bootm.image=${path}/zImage
 initrd=${path}/initrd
diff --git a/arch/arm/boards/archosg9/env/boot/usb-android b/arch/arm/boards/archosg9/env/boot/usb-android
index a7ddabe..e97e0ad 100644
--- a/arch/arm/boards/archosg9/env/boot/usb-android
+++ b/arch/arm/boards/archosg9/env/boot/usb-android
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "Android over usb"
-	exit
-fi
-
 path=/mnt/usb
 global.bootm.image=${path}/android
 global.bootm.initrd=${path}/initramfs.cpio.lzo
diff --git a/arch/arm/boards/archosg9/env/boot/usb-linux b/arch/arm/boards/archosg9/env/boot/usb-linux
index 12ae638..a257138 100644
--- a/arch/arm/boards/archosg9/env/boot/usb-linux
+++ b/arch/arm/boards/archosg9/env/boot/usb-linux
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "Linux over usb"
-	exit
-fi
-
 path=/mnt/usb
 global.bootm.image=${path}/zImage
 initrd=${path}/initrd
diff --git a/arch/arm/boards/at91sam9m10ihd/env/boot/android b/arch/arm/boards/at91sam9m10ihd/env/boot/android
index e440f18..8492e41 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/boot/android
+++ b/arch/arm/boards/at91sam9m10ihd/env/boot/android
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "android (nand)"
-	exit
-fi
-
 global.bootm.image="/dev/nand0.kernel.bb"
 global.linux.bootargs.dyn.root="root=/dev/mtdblock1 rootfstype=jffs2 rw init=/init rootdelay=1"
 # clean the mtdparts otherwise android does not boot
diff --git a/arch/arm/boards/at91sam9m10ihd/env/boot/mmc b/arch/arm/boards/at91sam9m10ihd/env/boot/mmc
index 89c66ee..8aeace4 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/boot/mmc
+++ b/arch/arm/boards/at91sam9m10ihd/env/boot/mmc
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "MMC slot"
-	exit
-fi
-
 path="/mnt/mmc"
 
 global.bootm.image="${path}/zimage"
diff --git a/arch/arm/boards/at91sam9m10ihd/env/boot/net b/arch/arm/boards/at91sam9m10ihd/env/boot/net
index cdb2520..7acc831 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/boot/net
+++ b/arch/arm/boards/at91sam9m10ihd/env/boot/net
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "network (tftp, nfs) (macb)"
-	exit
-fi
-
 ethact eth0
 
 path="/mnt/tftp"
diff --git a/arch/arm/boards/at91sam9m10ihd/env/boot/net-usb b/arch/arm/boards/at91sam9m10ihd/env/boot/net-usb
index 6e341a0..7b791a9 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/boot/net-usb
+++ b/arch/arm/boards/at91sam9m10ihd/env/boot/net-usb
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "network (tftp, nfs) (usb ethernet)"
-	exit
-fi
-
 usb -f
 ethact eth1
 
diff --git a/arch/arm/boards/beagle/env/boot/mmc b/arch/arm/boards/beagle/env/boot/mmc
index 58bd557..db638f8 100644
--- a/arch/arm/boards/beagle/env/boot/mmc
+++ b/arch/arm/boards/beagle/env/boot/mmc
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "MMC (ext3)"
-	exit
-fi
-
 global.bootm.image="/boot/zImage"
 #global.bootm.oftree="/boot/oftree"
 global.linux.bootargs.dyn.root="root=mmcblk0p2 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/beagle/env/boot/nand-ubi b/arch/arm/boards/beagle/env/boot/nand-ubi
index 3037fd4..e0ef904 100644
--- a/arch/arm/boards/beagle/env/boot/nand-ubi
+++ b/arch/arm/boards/beagle/env/boot/nand-ubi
@@ -1,9 +1,4 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
-	exit
-fi
-
 global.bootm.image="/dev/nand0.kernel.bb"
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/beagle/env/boot/nand-ubi-dt b/arch/arm/boards/beagle/env/boot/nand-ubi-dt
index b7a1f19..5fc0a6c 100644
--- a/arch/arm/boards/beagle/env/boot/nand-ubi-dt
+++ b/arch/arm/boards/beagle/env/boot/nand-ubi-dt
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
-	exit
-fi
-
 global.bootm.image="/dev/nand0.kernel.bb"
 global.bootm.oftree="/dev/nand0.oftree.bb"
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
index dce0605..aa94b2f 100644
--- a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "kernel & rootfs on SD card"
-	exit
-fi
-
 global.bootm.image=/boot/uImage
 global.bootm.oftree=/boot/oftree
 #global.bootm.initrd=<path to initrd>
diff --git a/arch/arm/boards/ccxmx51/env/boot/nand b/arch/arm/boards/ccxmx51/env/boot/nand
index bb11465..d53f07e 100644
--- a/arch/arm/boards/ccxmx51/env/boot/nand
+++ b/arch/arm/boards/ccxmx51/env/boot/nand
@@ -1,9 +1,4 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "NAND Flash"
-	exit
-fi
-
 global.bootm.image="/dev/kernel"
 global.linux.bootargs.dyn.root="root=/dev/mtdblock3 ro"
diff --git a/arch/arm/boards/clep7212/env/boot/nor b/arch/arm/boards/clep7212/env/boot/nor
index df8c983..d53f07e 100644
--- a/arch/arm/boards/clep7212/env/boot/nor
+++ b/arch/arm/boards/clep7212/env/boot/nor
@@ -1,9 +1,4 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "NOR Flash"
-	exit
-fi
-
 global.bootm.image="/dev/kernel"
 global.linux.bootargs.dyn.root="root=/dev/mtdblock3 ro"
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3 b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
index 4d830ed..e71ad19 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "MMC (ext)"
-	exit
-fi
-
 global.bootm.image="/mnt/disk0.2/boot/zImage-${global.hostname}"
 global.bootm.oftree="/mnt/disk0.2/boot/oftree-${global.board.variant}"
 global.linux.bootargs.dyn.root="root=/dev/mmcblk0p3 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/datamodul-edm-qmx6/env/boot/mmc b/arch/arm/boards/datamodul-edm-qmx6/env/boot/mmc
index e311763..d5e202f 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/env/boot/mmc
+++ b/arch/arm/boards/datamodul-edm-qmx6/env/boot/mmc
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "MMC"
-	exit
-fi
-
 global.bootm.image="/mnt/mmc/zImage"
 global.bootm.oftree="/mnt/mmc/oftree"
 global.linux.bootargs.dyn.root="root=mmcblk0p2 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/delphi-poc20/env/boot/mmc b/arch/arm/boards/delphi-poc20/env/boot/mmc
index e311763..d5e202f 100644
--- a/arch/arm/boards/delphi-poc20/env/boot/mmc
+++ b/arch/arm/boards/delphi-poc20/env/boot/mmc
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "MMC"
-	exit
-fi
-
 global.bootm.image="/mnt/mmc/zImage"
 global.bootm.oftree="/mnt/mmc/oftree"
 global.linux.bootargs.dyn.root="root=mmcblk0p2 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal b/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
index ccd0f69..2233f14 100644
--- a/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
+++ b/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "internal harddisk"
-	exit
-fi
-
 path="/mnt/internal-hd0.0"
 
 global.bootm.image="${path}/linuximage"
diff --git a/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left b/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
index 21935c6..da7bc03 100644
--- a/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
+++ b/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "left MMC slot"
-	exit
-fi
-
 path="/mnt/mmc-left.0"
 
 global.bootm.image="${path}/linuximage"
diff --git a/arch/arm/boards/friendlyarm-mini2440/env/boot/nand b/arch/arm/boards/friendlyarm-mini2440/env/boot/nand
index 3037fd4..e0ef904 100644
--- a/arch/arm/boards/friendlyarm-mini2440/env/boot/nand
+++ b/arch/arm/boards/friendlyarm-mini2440/env/boot/nand
@@ -1,9 +1,4 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
-	exit
-fi
-
 global.bootm.image="/dev/nand0.kernel.bb"
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/guf-vincell/env/boot/nand-ubi b/arch/arm/boards/guf-vincell/env/boot/nand-ubi
index a3f748e..510ac11 100644
--- a/arch/arm/boards/guf-vincell/env/boot/nand-ubi
+++ b/arch/arm/boards/guf-vincell/env/boot/nand-ubi
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
-	exit
-fi
-
 global.bootm.image="/dev/nand0.kernel.bb"
 #global.bootm.oftree="/env/oftree"
 bootargs-root-ubi -r root -m nand0.root
diff --git a/arch/arm/boards/highbank/env/boot/ahci b/arch/arm/boards/highbank/env/boot/ahci
index 3bdb809..46a8c1b 100644
--- a/arch/arm/boards/highbank/env/boot/ahci
+++ b/arch/arm/boards/highbank/env/boot/ahci
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "AHCI"
-	exit
-fi
-
 path="/mnt/ahci"
 
 global.bootm.image="${path}/zImage"
diff --git a/arch/arm/boards/highbank/env/boot/ahci-boot b/arch/arm/boards/highbank/env/boot/ahci-boot
index 0064a46..919eac5 100644
--- a/arch/arm/boards/highbank/env/boot/ahci-boot
+++ b/arch/arm/boards/highbank/env/boot/ahci-boot
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "AHCI (UEFI boot partiton)"
-	exit
-fi
-
 path="/mnt/ahci-boot"
 
 global.bootm.image="${path}/zImage"
diff --git a/arch/arm/boards/highbank/env/boot/mmc b/arch/arm/boards/highbank/env/boot/mmc
index 43a04b5..0fff5b4 100644
--- a/arch/arm/boards/highbank/env/boot/mmc
+++ b/arch/arm/boards/highbank/env/boot/mmc
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "MMC slot"
-	exit
-fi
-
 path="/mnt/mmc"
 
 global.bootm.image="${path}/zimage"
diff --git a/arch/arm/boards/highbank/env/boot/mmc-boot b/arch/arm/boards/highbank/env/boot/mmc-boot
index 93cd99b..f3ae301 100644
--- a/arch/arm/boards/highbank/env/boot/mmc-boot
+++ b/arch/arm/boards/highbank/env/boot/mmc-boot
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "MMC slot (UEFI boot partiton)"
-	exit
-fi
-
 path="/mnt/mmc-boot"
 
 global.bootm.image="${path}/zimage"
diff --git a/arch/arm/boards/highbank/env/boot/net b/arch/arm/boards/highbank/env/boot/net
index 80862cd..6a70008 100644
--- a/arch/arm/boards/highbank/env/boot/net
+++ b/arch/arm/boards/highbank/env/boot/net
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "network (tftp, nfs) (eth0)"
-	exit
-fi
-
 ethact eth0
 
 path="/mnt/tftp"
diff --git a/arch/arm/boards/highbank/env/boot/net-eth1 b/arch/arm/boards/highbank/env/boot/net-eth1
index d9e9804..1c70bdf 100644
--- a/arch/arm/boards/highbank/env/boot/net-eth1
+++ b/arch/arm/boards/highbank/env/boot/net-eth1
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "network (tftp, nfs) (eth1)"
-	exit
-fi
-
 ethact eth1
 
 path="/mnt/tftp"
diff --git a/arch/arm/boards/karo-tx25/env/boot/nand-ubi b/arch/arm/boards/karo-tx25/env/boot/nand-ubi
index 67b0cb4..d555a53 100644
--- a/arch/arm/boards/karo-tx25/env/boot/nand-ubi
+++ b/arch/arm/boards/karo-tx25/env/boot/nand-ubi
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
-	exit
-fi
-
 global.bootm.image="/dev/nand0.kernel.bb"
 #global.bootm.oftree="/env/oftree"
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/mx31moboard/env/boot/nor b/arch/arm/boards/mx31moboard/env/boot/nor
index e36655c..f584307 100644
--- a/arch/arm/boards/mx31moboard/env/boot/nor
+++ b/arch/arm/boards/mx31moboard/env/boot/nor
@@ -1,9 +1,4 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-        boot-menu-add-entry "$0" "NOR Flash"
-        exit
-fi
-
 global.bootm.image="/dev/nor0.kernel"
 global.linux.bootargs.dyn.root="root=/dev/mtdblock3 ro"
diff --git a/arch/arm/boards/mx31moboard/env/boot/sd b/arch/arm/boards/mx31moboard/env/boot/sd
index 16e734d..a0c4da9 100644
--- a/arch/arm/boards/mx31moboard/env/boot/sd
+++ b/arch/arm/boards/mx31moboard/env/boot/sd
@@ -1,8 +1,3 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-        boot-menu-add-entry "$0" "SD Boot"
-        exit
-fi
-
 boot mci0
diff --git a/arch/arm/boards/mx31moboard/env/boot/usbmsd b/arch/arm/boards/mx31moboard/env/boot/usbmsd
index 6a16d3e..208921d 100644
--- a/arch/arm/boards/mx31moboard/env/boot/usbmsd
+++ b/arch/arm/boards/mx31moboard/env/boot/usbmsd
@@ -1,8 +1,3 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-        boot-menu-add-entry "$0" "USB Boot"
-        exit
-fi
-
 boot ehci0
diff --git a/arch/arm/boards/panda/env/boot/mmc b/arch/arm/boards/panda/env/boot/mmc
index 58bd557..db638f8 100644
--- a/arch/arm/boards/panda/env/boot/mmc
+++ b/arch/arm/boards/panda/env/boot/mmc
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "MMC (ext3)"
-	exit
-fi
-
 global.bootm.image="/boot/zImage"
 #global.bootm.oftree="/boot/oftree"
 global.linux.bootargs.dyn.root="root=mmcblk0p2 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/phytec-phycard-imx6/env/boot/nand b/arch/arm/boards/phytec-phycard-imx6/env/boot/nand
index a51da9e..cf3b25c 100644
--- a/arch/arm/boards/phytec-phycard-imx6/env/boot/nand
+++ b/arch/arm/boards/phytec-phycard-imx6/env/boot/nand
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-        boot-menu-add-entry "$0" "Kernel:nand;rootfs:nand"
-        exit
-fi
-
 global.bootm.image="/dev/nand0.kernel.bb"
 #global.bootm.oftree="/env/oftree"
 bootargs-ip
diff --git a/arch/arm/boards/phytec-phycard-imx6/env/boot/sd-ext3 b/arch/arm/boards/phytec-phycard-imx6/env/boot/sd-ext3
index fa1e9d6..4435633 100644
--- a/arch/arm/boards/phytec-phycard-imx6/env/boot/sd-ext3
+++ b/arch/arm/boards/phytec-phycard-imx6/env/boot/sd-ext3
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-        boot-menu-add-entry "$0" "MMC (ext3)"
-        exit
-fi
-
 global.bootm.image="/mnt/kernel/linuximage"
 #global.bootm.oftree="/boot/oftree"
 bootargs-ip
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/mmc b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/mmc
index 93a2357..32854d1 100644
--- a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/mmc
+++ b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/mmc
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "kernel & rootfs on SD card"
-	exit
-fi
-
 global.bootm.image=/boot/uImage
 #global.bootm.oftree=/boot/oftree
 global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/nand b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/nand
index 22d657e..cdfd93d 100644
--- a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/nand
+++ b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/nand
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
-	exit
-fi
-
 global.bootm.image="/dev/nand0.kernel.bb"
 #global.bootm.oftree="/env/oftree"
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root,2048 rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/spi b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/spi
index 2d10184..7a53d84 100644
--- a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/spi
+++ b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/boot/spi
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-        boot-menu-add-entry "$0" "SPI NOR Flash"
-        exit
-fi
-
 global.bootm.image="/dev/m25p0.kernel"
 
 # Use rootfs form NAND for now as rootfs partition < 4MB
diff --git a/arch/arm/boards/phytec-phycore-imx27/env/boot/nand-ubi b/arch/arm/boards/phytec-phycore-imx27/env/boot/nand-ubi
index 67b0cb4..d555a53 100644
--- a/arch/arm/boards/phytec-phycore-imx27/env/boot/nand-ubi
+++ b/arch/arm/boards/phytec-phycore-imx27/env/boot/nand-ubi
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
-	exit
-fi
-
 global.bootm.image="/dev/nand0.kernel.bb"
 #global.bootm.oftree="/env/oftree"
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-phycore-imx31/env/boot/nand-ubi b/arch/arm/boards/phytec-phycore-imx31/env/boot/nand-ubi
index 67b0cb4..d555a53 100644
--- a/arch/arm/boards/phytec-phycore-imx31/env/boot/nand-ubi
+++ b/arch/arm/boards/phytec-phycore-imx31/env/boot/nand-ubi
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
-	exit
-fi
-
 global.bootm.image="/dev/nand0.kernel.bb"
 #global.bootm.oftree="/env/oftree"
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-phycore-imx35/env/boot/nand-ubi b/arch/arm/boards/phytec-phycore-imx35/env/boot/nand-ubi
index 67b0cb4..d555a53 100644
--- a/arch/arm/boards/phytec-phycore-imx35/env/boot/nand-ubi
+++ b/arch/arm/boards/phytec-phycore-imx35/env/boot/nand-ubi
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
-	exit
-fi
-
 global.bootm.image="/dev/nand0.kernel.bb"
 #global.bootm.oftree="/env/oftree"
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi b/arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi
index 1987492..da7cbdd 100644
--- a/arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi
+++ b/arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
-	exit
-fi
-
 global.bootm.image="/dev/nand0.kernel.bb"
 #global.bootm.oftree="/env/oftree"
 global.linux.bootargs.dyn.root="root=ubi0:rootfs ubi.mtd=nand0.rootfs rootfstype=ubifs"
diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
index 05bb728..ced2fad 100644
--- a/defaultenv/defaultenv-2-base/boot/net
+++ b/defaultenv/defaultenv-2-base/boot/net
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "network (tftp, nfs)"
-	exit
-fi
-
 path="/mnt/tftp"
 
 global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
diff --git a/defaultenv/defaultenv-2-base/data/boot-template b/defaultenv/defaultenv-2-base/data/boot-template
index 9297499..689d98e 100644
--- a/defaultenv/defaultenv-2-base/data/boot-template
+++ b/defaultenv/defaultenv-2-base/data/boot-template
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "<menu text here>"
-	exit
-fi
-
 global.bootm.image=<path to image>
 #global.bootm.oftree=<path to oftree>
 #global.bootm.initrd=<path to initrd>
diff --git a/defaultenv/defaultenv-2-dfu/boot/dfu b/defaultenv/defaultenv-2-dfu/boot/dfu
index c9463b6..6820911 100644
--- a/defaultenv/defaultenv-2-dfu/boot/dfu
+++ b/defaultenv/defaultenv-2-dfu/boot/dfu
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "Device Firmware upgrade (DFU)"
-	exit
-fi
-
 if [ -d /dfutmp ]; then
 	rm -r /dfutmp
 fi
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
