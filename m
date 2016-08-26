Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bd9pC-0000ky-He
 for barebox@lists.infradead.org; Fri, 26 Aug 2016 05:37:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Aug 2016 07:36:42 +0200
Message-Id: <1472189802-13765-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1472189802-13765-1-git-send-email-s.hauer@pengutronix.de>
References: <1472189802-13765-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] defaultenv-2: remove unused *-menu-add-entry calls
To: Barebox List <barebox@lists.infradead.org>

The *-menu-add-entry functions no longer exist in defaultenv-2, so
remove the calls to these functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/afi-gf/defaultenv-gf/boot/sd                         | 5 -----
 arch/arm/boards/afi-gf/defaultenv-gf/init/automount                  | 5 -----
 arch/arm/boards/at91sam9m10ihd/env/init/automount                    | 5 -----
 arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand            | 5 -----
 arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80          | 5 -----
 arch/arm/boards/beagle/defaultenv-beagle/init/mtdparts-nand          | 5 -----
 arch/arm/boards/ccxmx51/env/init/mtdparts-nand                       | 5 -----
 arch/arm/boards/clep7212/defaultenv-clep7212/init/mtdparts-nor       | 5 -----
 arch/arm/boards/crystalfontz-cfa10036/env/init/automount             | 5 -----
 arch/arm/boards/datamodul-edm-qmx6/env/init/automount                | 5 -----
 arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount | 5 -----
 arch/arm/boards/friendlyarm-mini2440/env/init/mtdparts-nand          | 5 -----
 arch/arm/boards/highbank/env/init/automount                          | 5 -----
 arch/arm/boards/karo-tx25/env/init/mtdparts-nand                     | 5 -----
 arch/arm/boards/lubbock/env/init/mtdparts-nor                        | 5 -----
 arch/arm/boards/mainstone/env/init/mtdparts-nor                      | 5 -----
 arch/arm/boards/mx31moboard/env/init/mtdparts-nor                    | 5 -----
 arch/arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nor      | 5 -----
 arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nand          | 5 -----
 arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nor           | 5 -----
 arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nand          | 5 -----
 arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nor           | 5 -----
 arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor          | 5 -----
 .../phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount    | 5 -----
 .../arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount | 5 -----
 arch/arm/boards/raspberry-pi/env/init/bootargs-base                  | 5 -----
 arch/arm/boards/telit-evk-pro3/env/init/mtdparts-nand                | 5 -----
 arch/arm/boards/versatile/env/boot/nor                               | 5 -----
 arch/arm/boards/versatile/env/boot/nor-update                        | 5 -----
 arch/arm/boards/versatile/env/init/automount                         | 5 -----
 arch/arm/boards/versatile/env/init/mtdparts-nor                      | 5 -----
 arch/arm/boards/zylonite/env/init/mtdparts-nand                      | 5 -----
 arch/ppc/boards/pcm030/env/init/mtdparts-nor                         | 5 -----
 defaultenv/defaultenv-2-base/init/automount                          | 5 -----
 34 files changed, 170 deletions(-)

diff --git a/arch/arm/boards/afi-gf/defaultenv-gf/boot/sd b/arch/arm/boards/afi-gf/defaultenv-gf/boot/sd
index dce0605..aa94b2f 100644
--- a/arch/arm/boards/afi-gf/defaultenv-gf/boot/sd
+++ b/arch/arm/boards/afi-gf/defaultenv-gf/boot/sd
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
diff --git a/arch/arm/boards/afi-gf/defaultenv-gf/init/automount b/arch/arm/boards/afi-gf/defaultenv-gf/init/automount
index c67bd1b..560bdb7 100644
--- a/arch/arm/boards/afi-gf/defaultenv-gf/init/automount
+++ b/arch/arm/boards/afi-gf/defaultenv-gf/init/automount
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-        init-menu-add-entry "$0" "Automountpoints"
-        exit
-fi
-
 # automount tftp server based on $eth1.serverip
 
 mkdir -p /mnt/tftp
diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/automount b/arch/arm/boards/at91sam9m10ihd/env/init/automount
index 5bb63cc..96ffa70 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/init/automount
+++ b/arch/arm/boards/at91sam9m10ihd/env/init/automount
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Automountpoints"
-	exit
-fi
-
 # automount tftp server based on $eth0.serverip
 
 mkdir -p /mnt/tftp
diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand b/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand
index ac516d8..433bc88 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand
+++ b/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-001-nand
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NAND partitions"
-	exit
-fi
-
 mtdparts="128k(nand0.at91bootstrap),256k(nand0.barebox)ro,128k(nand0.bareboxenv),128k(nand0.bareboxenv2),128k(nand0.oftree),1280k(nand0.free),3M(nand0.kernel),195M(nand0.rootfs),300M(nand0.userdata),-(nand0.cache)"
 kernelname="atmel_nand"
 
diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80 b/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80
index 44198c8..5457e4e 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80
+++ b/arch/arm/boards/at91sam9m10ihd/env/init/mtdparts-002-m25p80
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "SPI NOR partitions"
-	exit
-fi
-
 mtdparts="32k(m25p0.at91bootstrap)ro,256k(m25p0.barebox),128k(m25p0.bareboxenv),128k(m25p0.bareboxenv2),128k(m25p0.oftree),-(m25p0.kernel)"
 kernelname="m25p0"
 
diff --git a/arch/arm/boards/beagle/defaultenv-beagle/init/mtdparts-nand b/arch/arm/boards/beagle/defaultenv-beagle/init/mtdparts-nand
index 9335bb1..48c1c5d 100644
--- a/arch/arm/boards/beagle/defaultenv-beagle/init/mtdparts-nand
+++ b/arch/arm/boards/beagle/defaultenv-beagle/init/mtdparts-nand
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NAND partitions"
-	exit
-fi
-
 mtdparts="128k(nand0.xload),256k(nand0.barebox)ro,128k(nand0.bareboxenv),128k(nand0.oftree),4M(nand0.kernel),120M(nand0.rootfs),-(nand0.data)"
 kernelname="omap2-nand"
 
diff --git a/arch/arm/boards/ccxmx51/env/init/mtdparts-nand b/arch/arm/boards/ccxmx51/env/init/mtdparts-nand
index 5ea35d2..27ed38a 100644
--- a/arch/arm/boards/ccxmx51/env/init/mtdparts-nand
+++ b/arch/arm/boards/ccxmx51/env/init/mtdparts-nand
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NAND partitions"
-	exit
-fi
-
 mtdparts="512k(barebox)ro,256k(bareboxenv),3328k(kernel),-(root)"
 kernelname="mxc_nand"
 
diff --git a/arch/arm/boards/clep7212/defaultenv-clep7212/init/mtdparts-nor b/arch/arm/boards/clep7212/defaultenv-clep7212/init/mtdparts-nor
index 8702b40..39777f9 100644
--- a/arch/arm/boards/clep7212/defaultenv-clep7212/init/mtdparts-nor
+++ b/arch/arm/boards/clep7212/defaultenv-clep7212/init/mtdparts-nor
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NOR partitions"
-	exit
-fi
-
 mtdparts="256k(boot),256k(env),3584k(kernel),-(root)"
 kernelname="physmap-flash.0"
 
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/automount b/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
index 8fdca7c..6f85c27 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
@@ -1,9 +1,4 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Automountpoints"
-	exit
-fi
-
 mkdir -p /mnt/disk0.2
 automount -d /mnt/disk0.2 '[ -e /dev/disk0.2 ] && mount /dev/disk0.2 /mnt/disk0.2'
diff --git a/arch/arm/boards/datamodul-edm-qmx6/env/init/automount b/arch/arm/boards/datamodul-edm-qmx6/env/init/automount
index 2ce37c7..e786b82 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/env/init/automount
+++ b/arch/arm/boards/datamodul-edm-qmx6/env/init/automount
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-        init-menu-add-entry "$0" "Automountpoints"
-        exit
-fi
-
 # automount tftp server based on $eth0.serverip
 
 mkdir -p /mnt/tftp
diff --git a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount
index 8cb5eaf..71dfd95 100644
--- a/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount
+++ b/arch/arm/boards/efika-mx-smartbook/defaultenv-efikasb/init/automount
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Automountpoints"
-	exit
-fi
-
 # automount tftp server based on $eth0.serverip
 
 mkdir -p /mnt/tftp
diff --git a/arch/arm/boards/friendlyarm-mini2440/env/init/mtdparts-nand b/arch/arm/boards/friendlyarm-mini2440/env/init/mtdparts-nand
index 7271341..b51104a 100644
--- a/arch/arm/boards/friendlyarm-mini2440/env/init/mtdparts-nand
+++ b/arch/arm/boards/friendlyarm-mini2440/env/init/mtdparts-nand
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NAND partitions"
-	exit
-fi
-
 mtdparts="256k(nand0.barebox),128k(nand0.bareboxenv),1536k(nand0.kernel),-(nand0.root)"
 kernelname="nand"
 
diff --git a/arch/arm/boards/highbank/env/init/automount b/arch/arm/boards/highbank/env/init/automount
index 2c283c6..eb5c07a 100644
--- a/arch/arm/boards/highbank/env/init/automount
+++ b/arch/arm/boards/highbank/env/init/automount
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Automountpoints"
-	exit
-fi
-
 # automount tftp server based on $eth0.serverip
 
 mkdir -p /mnt/tftp
diff --git a/arch/arm/boards/karo-tx25/env/init/mtdparts-nand b/arch/arm/boards/karo-tx25/env/init/mtdparts-nand
index e2dcfab..0288163 100644
--- a/arch/arm/boards/karo-tx25/env/init/mtdparts-nand
+++ b/arch/arm/boards/karo-tx25/env/init/mtdparts-nand
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NAND partitions"
-	exit
-fi
-
 mtdparts="512k(nand0.barebox),512k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
 kernelname="mxc_nand"
 
diff --git a/arch/arm/boards/lubbock/env/init/mtdparts-nor b/arch/arm/boards/lubbock/env/init/mtdparts-nor
index 3307596..b5c4e32 100644
--- a/arch/arm/boards/lubbock/env/init/mtdparts-nor
+++ b/arch/arm/boards/lubbock/env/init/mtdparts-nor
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-        init-menu-add-entry "$0" "NOR partitions"
-        exit
-fi
-
 mtdparts="2048k@0(nor0.barebox)ro,256k(nor0.barebox-env),256k(nor0.barebox-logo),256k(nor0.barebox-logo2),5120k(nor0.kernel),-(nor0.root)"
 kernelname="application-flash"
 
diff --git a/arch/arm/boards/mainstone/env/init/mtdparts-nor b/arch/arm/boards/mainstone/env/init/mtdparts-nor
index 3307596..b5c4e32 100644
--- a/arch/arm/boards/mainstone/env/init/mtdparts-nor
+++ b/arch/arm/boards/mainstone/env/init/mtdparts-nor
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-        init-menu-add-entry "$0" "NOR partitions"
-        exit
-fi
-
 mtdparts="2048k@0(nor0.barebox)ro,256k(nor0.barebox-env),256k(nor0.barebox-logo),256k(nor0.barebox-logo2),5120k(nor0.kernel),-(nor0.root)"
 kernelname="application-flash"
 
diff --git a/arch/arm/boards/mx31moboard/env/init/mtdparts-nor b/arch/arm/boards/mx31moboard/env/init/mtdparts-nor
index f09a9cc..ab5b175 100644
--- a/arch/arm/boards/mx31moboard/env/init/mtdparts-nor
+++ b/arch/arm/boards/mx31moboard/env/init/mtdparts-nor
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NOR partitions"
-	exit
-fi
-
 mtdparts="512k(nor0.barebox)ro,256k(nor0.bareboxenv),4M(nor0.kernel),-(nor0.root)"
 kernelname="physmap-flash.0"
 
diff --git a/arch/arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nor b/arch/arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nor
index 0d10584..f584307 100644
--- a/arch/arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nor
+++ b/arch/arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nor
@@ -1,9 +1,4 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nor"
-	exit
-fi
-
 global.bootm.image="/dev/nor0.kernel"
 global.linux.bootargs.dyn.root="root=/dev/mtdblock3 ro"
diff --git a/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nand b/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nand
index 84220b7..540277c 100644
--- a/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nand
+++ b/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nand
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NAND partitions"
-	exit
-fi
-
 mtdparts="512k(nand0.barebox)ro,128k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
 kernelname="mxc_nand"
 
diff --git a/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nor b/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nor
index 2ef6ead..940eb86 100644
--- a/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nor
+++ b/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nor
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NOR partitions"
-	exit
-fi
-
 mtdparts="256k(nor0.barebox)ro,128k(nor0.bareboxenv),4M(nor0.kernel),-(nor0.root)"
 kernelname="physmap-flash.0"
 
diff --git a/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nand b/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nand
index 8a41f62..c7185db 100644
--- a/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nand
+++ b/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nand
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NAND partitions"
-	exit
-fi
-
 mtdparts="512k(nand0.barebox),256k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
 kernelname="mxc_nand"
 
diff --git a/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nor b/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nor
index f787f28..09c3ba9 100644
--- a/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nor
+++ b/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nor
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NOR partitions"
-	exit
-fi
-
 mtdparts="512k(nor0.barebox),128k(nor0.bareboxenv),4M(nor0.kernel),-(nor0.root)"
 kernelname="physmap-flash.0"
 
diff --git a/arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor b/arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor
index e617cba..4423943 100644
--- a/arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor
+++ b/arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-        init-menu-add-entry "$0" "NOR partitions"
-        exit
-fi
-
 mtdparts="512k(nor0.barebox),256k(nor0.bareboxenv),4M(nor0.kernel),-(nor0.root)"
 kernelname="physmap-flash.0"
 
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount
index a059e19..91ded44 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Automountpoints"
-	exit
-fi
-
 # automount tftp server based on $eth0.serverip
 
 mkdir -p /mnt/tftp
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
index 49d99bd..4b223d8 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Automountpoints"
-	exit
-fi
-
 # automount tftp server based on $eth0.serverip
 
 mkdir -p /mnt/tftp
diff --git a/arch/arm/boards/raspberry-pi/env/init/bootargs-base b/arch/arm/boards/raspberry-pi/env/init/bootargs-base
index 4dda550..416dc8a 100644
--- a/arch/arm/boards/raspberry-pi/env/init/bootargs-base
+++ b/arch/arm/boards/raspberry-pi/env/init/bootargs-base
@@ -1,8 +1,3 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Base bootargs"
-	exit
-fi
-
 global.linux.bootargs.base="console=ttyAMA0,115200"
diff --git a/arch/arm/boards/telit-evk-pro3/env/init/mtdparts-nand b/arch/arm/boards/telit-evk-pro3/env/init/mtdparts-nand
index 58e859b..42907ae 100644
--- a/arch/arm/boards/telit-evk-pro3/env/init/mtdparts-nand
+++ b/arch/arm/boards/telit-evk-pro3/env/init/mtdparts-nand
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NAND partitions"
-	exit
-fi
-
 mtdparts="0xC0000(nand0.bootstrap),256k(nand0.barebox)ro,128k(nand0.bareboxenv),3M(nand0.kernel),-(nand0.rootfs)"
 kernelname="atmel_nand"
 
diff --git a/arch/arm/boards/versatile/env/boot/nor b/arch/arm/boards/versatile/env/boot/nor
index 3f31605..f90bcc3 100644
--- a/arch/arm/boards/versatile/env/boot/nor
+++ b/arch/arm/boards/versatile/env/boot/nor
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nor"
-	exit
-fi
-
 global.bootm.image="/dev/nor0.kernel"
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=5 rootfstype=ubifs"
 
diff --git a/arch/arm/boards/versatile/env/boot/nor-update b/arch/arm/boards/versatile/env/boot/nor-update
index 728889d..5799ed6 100644
--- a/arch/arm/boards/versatile/env/boot/nor-update
+++ b/arch/arm/boards/versatile/env/boot/nor-update
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nor update"
-	exit
-fi
-
 global.bootm.image="/dev/nor0.update"
 
 dtb=/dev/nor0.dtb
diff --git a/arch/arm/boards/versatile/env/init/automount b/arch/arm/boards/versatile/env/init/automount
index 53f9196..d08990b 100644
--- a/arch/arm/boards/versatile/env/init/automount
+++ b/arch/arm/boards/versatile/env/init/automount
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Automountpoints"
-	exit
-fi
-
 # automount tftp server based on $eth0.serverip
 
 mkdir -p /mnt/tftp
diff --git a/arch/arm/boards/versatile/env/init/mtdparts-nor b/arch/arm/boards/versatile/env/init/mtdparts-nor
index 9079d48..20c2b99 100644
--- a/arch/arm/boards/versatile/env/init/mtdparts-nor
+++ b/arch/arm/boards/versatile/env/init/mtdparts-nor
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "NOR partitions"
-	exit
-fi
-
 mtdparts="512k(nor0.barebox)ro,512k(nor0.bareboxenv),4864k(nor0.kernel),256k(nor0.dtb),3M(nor0.update),-(nor0.root)"
 kernelname="physmap-flash.0"
 
diff --git a/arch/arm/boards/zylonite/env/init/mtdparts-nand b/arch/arm/boards/zylonite/env/init/mtdparts-nand
index 9db4652..749318b 100644
--- a/arch/arm/boards/zylonite/env/init/mtdparts-nand
+++ b/arch/arm/boards/zylonite/env/init/mtdparts-nand
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-        init-menu-add-entry "$0" "NAND partitions"
-        exit
-fi
-
 mtdparts="128k@0(TIMH)ro,128k@128k(OBMI)ro,768k@256k(barebox),256k@1024k(barebox-env),12M@1280k(kernel),38016k@13568k(root)"
 kernelname="pxa3xx_nand-0"
 
diff --git a/arch/ppc/boards/pcm030/env/init/mtdparts-nor b/arch/ppc/boards/pcm030/env/init/mtdparts-nor
index e900a3b..44c07ea 100644
--- a/arch/ppc/boards/pcm030/env/init/mtdparts-nor
+++ b/arch/ppc/boards/pcm030/env/init/mtdparts-nor
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-        init-menu-add-entry "$0" "NOR partitions"
-        exit
-fi
-
 mtdparts="512k(nor0.bareboxlow),4M(nor0.kernel),512k(nor0.oftree),26M(nor0.root),512k(nor0.barebox),512k(nor0.bareboxenv)"
 kernelname="physmap-flash.0"
 
diff --git a/defaultenv/defaultenv-2-base/init/automount b/defaultenv/defaultenv-2-base/init/automount
index fd1f5a6..959b2c1 100644
--- a/defaultenv/defaultenv-2-base/init/automount
+++ b/defaultenv/defaultenv-2-base/init/automount
@@ -1,10 +1,5 @@
 #!/bin/sh
 
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Automountpoints"
-	exit
-fi
-
 # automount tftp server based on $eth0.serverip
 
 mkdir -p /mnt/tftp
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
