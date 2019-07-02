Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiI2k-0007qh-0C
 for barebox@lists.infradead.org; Tue, 02 Jul 2019 12:37:57 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 2 Jul 2019 14:37:43 +0200
Message-Id: <1562071065-367410-6-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1562071065-367410-1-git-send-email-s.riedmueller@phytec.de>
References: <1562071065-367410-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 6/8] ARM: phytec-som-imx: imx6ul: Add eMMC support
To: barebox@lists.infradead.org

Add initial support for phyCORE-i.MX 6UL/ULL with eMMC. Including board
code and default environment.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/board.c                | 18 +++++++++++++++---
 .../defaultenv-physom-imx6ul-phycore/boot/emmc         |  5 +++++
 .../defaultenv-physom-imx6ul-phycore/boot/mmc          |  5 +++++
 .../defaultenv-physom-imx6ul-phycore/init/automount    |  5 +++++
 .../defaultenv-physom-imx6ul-phycore/init/bootsource   | 17 +++++++++++++++++
 5 files changed, 47 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/boot/emmc
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/boot/mmc
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/init/bootsource

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index cf50ad99b2fc..730115702bb0 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -190,7 +190,8 @@ static int physom_imx6_devices_init(void)
 		default_environment_path = "/chosen/environment-spinor";
 		default_envdev = "SPI NOR flash";
 
-	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063-nand")) {
+	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063-nand")
+		|| of_machine_is_compatible("phytec,imx6ul-pcl063-emmc")) {
 		barebox_set_hostname("phyCORE-i.MX6UL");
 		default_environment_path = "/chosen/environment-nand";
 		default_envdev = "NAND flash";
@@ -236,6 +237,10 @@ static int physom_imx6_devices_init(void)
 		imx6_bbu_internal_mmc_register_handler("mmc3",
 						"/dev/mmc3",
 						BBU_HANDLER_FLAG_DEFAULT);
+	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063-emmc")) {
+		imx6_bbu_internal_mmc_register_handler("mmc1",
+						"/dev/mmc1",
+						BBU_HANDLER_FLAG_DEFAULT);
 	} else {
 		imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
 	}
@@ -243,13 +248,20 @@ static int physom_imx6_devices_init(void)
 	defaultenv_append_directory(defaultenv_physom_imx6);
 
 	/* Overwrite file /env/init/automount */
-	if (of_machine_is_compatible("phytec,imx6qp-pcm058-nand")
+	if (of_machine_is_compatible("phytec,imx6q-pfla02")
+		|| of_machine_is_compatible("phytec,imx6dl-pfla02")
+		|| of_machine_is_compatible("phytec,imx6s-pfla02")
+		|| of_machine_is_compatible("phytec,imx6q-pcaaxl3")) {
+		defaultenv_append_directory(defaultenv_physom_imx6);
+	} else if (of_machine_is_compatible("phytec,imx6qp-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6q-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")
 		|| of_machine_is_compatible("phytec,imx6dl-pcm058-emmc")) {
+		defaultenv_append_directory(defaultenv_physom_imx6);
 		defaultenv_append_directory(defaultenv_physom_imx6_phycore);
-	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063-nand")) {
+	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063-nand")
+		|| of_machine_is_compatible("phytec,imx6ul-pcl063-emmc")) {
 		defaultenv_append_directory(defaultenv_physom_imx6ul_phycore);
 	}
 
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/boot/emmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/boot/emmc
new file mode 100644
index 000000000000..15cba6f5ac1b
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/boot/emmc
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+global.bootm.image="/mnt/emmc/zImage"
+global.bootm.oftree="/mnt/emmc/oftree"
+global.linux.bootargs.dyn.root="root=/dev/mmcblk1p2 rootflags='discard,data=journal'"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/boot/mmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/boot/mmc
new file mode 100644
index 000000000000..8de2efa997d9
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/boot/mmc
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+global.bootm.image="/mnt/mmc/zImage"
+global.bootm.oftree="/mnt/mmc/oftree"
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootflags='data=journal'"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/init/automount
index 71d9086582d0..36759de7c679 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/init/automount
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/init/automount
@@ -7,3 +7,8 @@ automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
 
 mkdir -p /mnt/mmc
 automount -d /mnt/mmc 'mmc0.probe=1 && [ -e /dev/mmc0.0 ] && mount /dev/mmc0.0 /mnt/mmc'
+
+if [ -e /dev/mmc1 ]; then
+	mkdir -p /mnt/emmc
+	automount -d /mnt/emmc 'mmc1.probe=1 && [ -e /dev/mmc1.0 ] && mount /dev/mmc1.0 /mnt/emmc'
+fi
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/init/bootsource b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/init/bootsource
new file mode 100644
index 000000000000..beb7afe9c28e
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6ul-phycore/init/bootsource
@@ -0,0 +1,17 @@
+#!/bin/sh
+
+if [ -n "$nv.boot.default" ]; then
+	exit
+fi
+
+if [ $bootsource = mmc ]; then
+	if [ $bootsource_instance = 0 ]; then
+		global.boot.default="mmc emmc nand spi net"
+	elif [ $bootsource_instance = 1 ]; then
+		global.boot.default="emmc mmc nand spi net"
+	fi
+elif [ $bootsource = nand ]; then
+	global.boot.default="nand spi mmc net"
+elif [ $bootsource = net ]; then
+	global.boot.default="net nand spi mmc"
+fi
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
