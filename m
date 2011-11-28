Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RV9PQ-0007lw-In
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 22:10:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 23:10:07 +0100
Message-Id: <1322518209-2965-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
References: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/16] update configs and default envs for uncompress
To: barebox@lists.infradead.org

uncompress is the replacement for unlzo. Adjust environments
and defconfigs accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/env/bin/init_board |    2 +-
 arch/arm/boards/eukrea_cpuimx27/env/bin/init       |    2 +-
 arch/arm/boards/eukrea_cpuimx35/env/bin/init_board |    2 +-
 arch/arm/boards/eukrea_cpuimx51/env/bin/init_board |    2 +-
 arch/arm/configs/at91rm9200ek_defconfig            |    2 +-
 arch/arm/configs/at91sam9261ek_defconfig           |    2 +-
 arch/arm/configs/at91sam9g10ek_defconfig           |    2 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |    2 +-
 arch/arm/configs/cupid_defconfig                   |    2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx51_defconfig         |    2 +-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |    2 +-
 arch/arm/configs/freescale_mx53_loco_defconfig     |    2 +-
 arch/arm/configs/neso_defconfig                    |    2 +-
 arch/arm/configs/nhk8815_defconfig                 |    2 +-
 arch/arm/configs/omap3530_beagle_defconfig         |    2 +-
 arch/arm/configs/panda_defconfig                   |    2 +-
 arch/arm/configs/pca100_defconfig                  |    2 +-
 arch/arm/configs/pcm037_defconfig                  |    2 +-
 arch/arm/configs/pcm043_defconfig                  |    2 +-
 arch/arm/configs/pcm049_defconfig                  |    2 +-
 arch/arm/configs/pm9261_defconfig                  |    2 +-
 arch/arm/configs/pm9g45_defconfig                  |    2 +-
 arch/arm/configs/scb9328_defconfig                 |    2 +-
 arch/arm/configs/versatilepb_defconfig             |    2 +-
 arch/mips/configs/dlink-dir-320_defconfig          |    2 +-
 arch/mips/configs/qemu-malta_defconfig             |    2 +-
 defaultenv/bin/boot                                |    2 +-
 30 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/env/bin/init_board b/arch/arm/boards/eukrea_cpuimx25/env/bin/init_board
index 72b4ab3..2199b88 100644
--- a/arch/arm/boards/eukrea_cpuimx25/env/bin/init_board
+++ b/arch/arm/boards/eukrea_cpuimx25/env/bin/init_board
@@ -4,7 +4,7 @@ if [ -f /env/logo.bmp ]; then
 	bmp /env/logo.bmp
 	fb0.enable=1
 elif [ -f /env/logo.bmp.lzo ]; then
-	unlzo /env/logo.bmp.lzo /logo.bmp
+	uncompress /env/logo.bmp.lzo /logo.bmp
 	bmp /logo.bmp
 	fb0.enable=1
 fi
diff --git a/arch/arm/boards/eukrea_cpuimx27/env/bin/init b/arch/arm/boards/eukrea_cpuimx27/env/bin/init
index aefd67c..f84ace9 100644
--- a/arch/arm/boards/eukrea_cpuimx27/env/bin/init
+++ b/arch/arm/boards/eukrea_cpuimx27/env/bin/init
@@ -20,7 +20,7 @@ if [ -f /env/logo.bmp ]; then
 	bmp /env/logo.bmp
 	fb0.enable=1
 elif [ -f /env/logo.bmp.lzo ]; then
-	unlzo /env/logo.bmp.lzo /logo.bmp
+	uncompress /env/logo.bmp.lzo /logo.bmp
 	bmp /logo.bmp
 	fb0.enable=1
 fi
diff --git a/arch/arm/boards/eukrea_cpuimx35/env/bin/init_board b/arch/arm/boards/eukrea_cpuimx35/env/bin/init_board
index 173ecf9..cb624e5 100644
--- a/arch/arm/boards/eukrea_cpuimx35/env/bin/init_board
+++ b/arch/arm/boards/eukrea_cpuimx35/env/bin/init_board
@@ -5,7 +5,7 @@ if [ -f /env/logo.bmp ]; then
 	fb0.enable=1
 	gpio_set_value 1 1
 elif [ -f /env/logo.bmp.lzo ]; then
-	unlzo /env/logo.bmp.lzo /logo.bmp
+	uncompress /env/logo.bmp.lzo /logo.bmp
 	bmp /logo.bmp
 	fb0.enable=1
 	gpio_set_value 1 1
diff --git a/arch/arm/boards/eukrea_cpuimx51/env/bin/init_board b/arch/arm/boards/eukrea_cpuimx51/env/bin/init_board
index 173ecf9..cb624e5 100644
--- a/arch/arm/boards/eukrea_cpuimx51/env/bin/init_board
+++ b/arch/arm/boards/eukrea_cpuimx51/env/bin/init_board
@@ -5,7 +5,7 @@ if [ -f /env/logo.bmp ]; then
 	fb0.enable=1
 	gpio_set_value 1 1
 elif [ -f /env/logo.bmp.lzo ]; then
-	unlzo /env/logo.bmp.lzo /logo.bmp
+	uncompress /env/logo.bmp.lzo /logo.bmp
 	bmp /logo.bmp
 	fb0.enable=1
 	gpio_set_value 1 1
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index 0c10f88..584bfdf 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -33,7 +33,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 # CONFIG_SPI is not set
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_INTEL is not set
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index c753eb3..a4adee9 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -33,7 +33,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index d39639a..9271b68 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -27,7 +27,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 9699f5b..548fe6c 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -37,7 +37,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/arm/configs/cupid_defconfig b/arch/arm/configs/cupid_defconfig
index b842469..3f5038f 100644
--- a/arch/arm/configs/cupid_defconfig
+++ b/arch/arm/configs/cupid_defconfig
@@ -35,7 +35,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_BMP=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index 7fa2042..2a697be 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -35,7 +35,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_BMP=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index 75b849b..93de428 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -33,7 +33,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_BMP=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index 6964332..7bbe0d5 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -34,7 +34,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_BMP=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
diff --git a/arch/arm/configs/eukrea_cpuimx51_defconfig b/arch/arm/configs/eukrea_cpuimx51_defconfig
index a9fca84..39fe962 100644
--- a/arch/arm/configs/eukrea_cpuimx51_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx51_defconfig
@@ -32,7 +32,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
diff --git a/arch/arm/configs/freescale_mx35_3stack_defconfig b/arch/arm/configs/freescale_mx35_3stack_defconfig
index 2c0e513..c8d159f 100644
--- a/arch/arm/configs/freescale_mx35_3stack_defconfig
+++ b/arch/arm/configs/freescale_mx35_3stack_defconfig
@@ -29,7 +29,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_BMP=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
diff --git a/arch/arm/configs/freescale_mx53_loco_defconfig b/arch/arm/configs/freescale_mx53_loco_defconfig
index 8e4a7ce..cb07f85 100644
--- a/arch/arm/configs/freescale_mx53_loco_defconfig
+++ b/arch/arm/configs/freescale_mx53_loco_defconfig
@@ -33,7 +33,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
index 1b533df..dcc2f70 100644
--- a/arch/arm/configs/neso_defconfig
+++ b/arch/arm/configs/neso_defconfig
@@ -34,7 +34,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_BMP=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index b81afe2..597e9dd 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -34,7 +34,7 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index 8a12154..e0688ae 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -31,7 +31,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
index 3ea2466..27592e5 100644
--- a/arch/arm/configs/panda_defconfig
+++ b/arch/arm/configs/panda_defconfig
@@ -34,7 +34,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/arm/configs/pca100_defconfig b/arch/arm/configs/pca100_defconfig
index 88e7b9f..29e02c5 100644
--- a/arch/arm/configs/pca100_defconfig
+++ b/arch/arm/configs/pca100_defconfig
@@ -33,7 +33,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
diff --git a/arch/arm/configs/pcm037_defconfig b/arch/arm/configs/pcm037_defconfig
index d9525a2..ec43317 100644
--- a/arch/arm/configs/pcm037_defconfig
+++ b/arch/arm/configs/pcm037_defconfig
@@ -31,7 +31,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/arm/configs/pcm043_defconfig b/arch/arm/configs/pcm043_defconfig
index 3bf21c8..3c64805 100644
--- a/arch/arm/configs/pcm043_defconfig
+++ b/arch/arm/configs/pcm043_defconfig
@@ -35,7 +35,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/arm/configs/pcm049_defconfig b/arch/arm/configs/pcm049_defconfig
index ed20f1b..9b4c341 100644
--- a/arch/arm/configs/pcm049_defconfig
+++ b/arch/arm/configs/pcm049_defconfig
@@ -35,7 +35,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index 0bd9483..89aa033 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -34,7 +34,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 20bfd71..bf9af22 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -37,7 +37,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
index 73ef238..4955646 100644
--- a/arch/arm/configs/scb9328_defconfig
+++ b/arch/arm/configs/scb9328_defconfig
@@ -28,7 +28,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index 6ffdf28..1b51d91 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -32,7 +32,7 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/dlink-dir-320_defconfig
index dbce0b9..88c0e83 100644
--- a/arch/mips/configs/dlink-dir-320_defconfig
+++ b/arch/mips/configs/dlink-dir-320_defconfig
@@ -41,7 +41,7 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index b6f53ca..eac21e7 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -40,7 +40,7 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UNLZO=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 6761d84..90ebf9a 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -124,6 +124,6 @@ elif [ x$kernelimage_type = xraw ]; then
 	fi
 	bootu /dev/ram0.kernelraw
 elif [ x$kernelimage_type = xraw_lzo ]; then
-	unlzo $kdev /dev/ram0.kernelraw
+	uncompress $kdev /dev/ram0.kernelraw
 	bootu /dev/ram0.kernelraw
 fi
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
