Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtzCm-00070a-Hz
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 13:33:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2014 14:33:26 +0100
Message-Id: <1417095207-24272-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417095207-24272-1-git-send-email-s.hauer@pengutronix.de>
References: <1417095207-24272-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] command: passwd: depend on CMD_LOGIN rather than
 selecting it
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/at91rm9200ek_defconfig              | 1 +
 arch/arm/configs/at91sam9261ek_defconfig             | 1 +
 arch/arm/configs/at91sam9261ek_first_stage_defconfig | 1 +
 arch/arm/configs/at91sam9g10ek_defconfig             | 1 +
 arch/arm/configs/at91sam9m10g45ek_defconfig          | 1 +
 arch/arm/configs/at91sam9m10ihd_defconfig            | 1 +
 arch/arm/configs/highbank_defconfig                  | 1 +
 arch/arm/configs/mioa701_defconfig                   | 1 +
 arch/arm/configs/nhk8815_defconfig                   | 1 +
 arch/arm/configs/phytec-phycard-omap3_defconfig      | 1 +
 arch/arm/configs/pm9261_defconfig                    | 1 +
 arch/arm/configs/rpi_defconfig                       | 1 +
 arch/arm/configs/tny_a9260_defconfig                 | 1 +
 arch/arm/configs/tny_a9263_defconfig                 | 1 +
 arch/arm/configs/tny_a9g20_defconfig                 | 1 +
 arch/arm/configs/usb_a9260_defconfig                 | 1 +
 arch/arm/configs/usb_a9263_128mib_defconfig          | 1 +
 arch/arm/configs/usb_a9263_defconfig                 | 1 +
 arch/arm/configs/usb_a9g20_128mib_defconfig          | 1 +
 arch/arm/configs/usb_a9g20_defconfig                 | 1 +
 arch/arm/configs/versatilepb_defconfig               | 1 +
 arch/arm/configs/vexpress_ca9_defconfig              | 1 +
 arch/arm/configs/vexpress_defconfig                  | 1 +
 arch/mips/configs/dlink-dir-320_defconfig            | 1 +
 arch/mips/configs/qemu-malta_defconfig               | 1 +
 commands/Kconfig                                     | 2 +-
 26 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index 6197b97..54e3b1d 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -22,6 +22,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index 591b5fe..59953d7 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -26,6 +26,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/at91sam9261ek_first_stage_defconfig b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
index 6071aea..465f167 100644
--- a/arch/arm/configs/at91sam9261ek_first_stage_defconfig
+++ b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
@@ -27,6 +27,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index 9c12ed4..862d709 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -26,6 +26,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 02bb983..292b507 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -27,6 +27,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
index cc40850..a39282d 100644
--- a/arch/arm/configs/at91sam9m10ihd_defconfig
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -26,6 +26,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
diff --git a/arch/arm/configs/highbank_defconfig b/arch/arm/configs/highbank_defconfig
index 3e02c2e..cf42d29 100644
--- a/arch/arm/configs/highbank_defconfig
+++ b/arch/arm/configs/highbank_defconfig
@@ -22,6 +22,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
diff --git a/arch/arm/configs/mioa701_defconfig b/arch/arm/configs/mioa701_defconfig
index 2046880..20f71e9 100644
--- a/arch/arm/configs/mioa701_defconfig
+++ b/arch/arm/configs/mioa701_defconfig
@@ -32,6 +32,7 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_LET=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_GLOBAL=y
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index f86b59c..dcb00c0 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -21,6 +21,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index e4e441a..aefc78d 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -73,6 +73,7 @@ CONFIG_CMD_FALSE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_LOGIN=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_PASSWD_MODE_STAR=y
 CONFIG_CMD_TIME=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index 682c65f..c6df91a 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -20,6 +20,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index 76029d0..05c0136 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -24,6 +24,7 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_LET=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_LN=y
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index 30b675f..7615d22 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -29,6 +29,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index 94d6c10..757584a 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -29,6 +29,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index 6e7ae23..e25d134 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -29,6 +29,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index b6cb61c..5a2ed02 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -29,6 +29,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
index 81c502d..b9222e4 100644
--- a/arch/arm/configs/usb_a9263_128mib_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_defconfig
@@ -30,6 +30,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 78fb26c..da62f48 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -29,6 +29,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
index 11ca9ee..122e0f6 100644
--- a/arch/arm/configs/usb_a9g20_128mib_defconfig
+++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
@@ -30,6 +30,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index 2934b21..cc99659 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -29,6 +29,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index a447f93..9f7e0e5 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -32,6 +32,7 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
diff --git a/arch/arm/configs/vexpress_ca9_defconfig b/arch/arm/configs/vexpress_ca9_defconfig
index 1da3779..84171c4 100644
--- a/arch/arm/configs/vexpress_ca9_defconfig
+++ b/arch/arm/configs/vexpress_ca9_defconfig
@@ -22,6 +22,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
index 6ad2c8a..c7928c4 100644
--- a/arch/arm/configs/vexpress_defconfig
+++ b/arch/arm/configs/vexpress_defconfig
@@ -21,6 +21,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/dlink-dir-320_defconfig
index ab29cf3..4c9a06f 100644
--- a/arch/mips/configs/dlink-dir-320_defconfig
+++ b/arch/mips/configs/dlink-dir-320_defconfig
@@ -37,6 +37,7 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 5a1ca36..a5af258 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -40,6 +40,7 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_LOGIN=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
diff --git a/commands/Kconfig b/commands/Kconfig
index 0c11209..8dfd826 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1371,7 +1371,7 @@ config CMD_MENUTREE
 
 config CMD_PASSWD
 	tristate
-	select CMD_LOGIN
+	depends on CMD_LOGIN
 	prompt "passwd"
 	help
 	  Set password
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
