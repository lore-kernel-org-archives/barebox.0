Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x232.google.com ([2a00:1450:4013:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk81D-0001zr-8M
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:25:03 +0000
Received: by mail-ee0-f50.google.com with SMTP id e51so128138eek.9
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:36 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:57 +0200
Message-Id: <1399969739-10355-18-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 17/19] commands: NET_DHCP -> CMD_DHCP
To: barebox@lists.infradead.org

* this compile option actually turns on a command, so name it
  accordingly
* also move the Kconfig definition into commands/Kconfig, thus
  placing getopt into the "Network commands" section
* while at it, improve Kconfig documention

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/arm/configs/a9m2410_defconfig                   |    2 +-
 arch/arm/configs/a9m2440_defconfig                   |    2 +-
 arch/arm/configs/am335x_beaglebone_defconfig         |    2 +-
 arch/arm/configs/animeo_ip_defconfig                 |    2 +-
 arch/arm/configs/archosg9_defconfig                  |    2 +-
 arch/arm/configs/at91rm9200ek_defconfig              |    2 +-
 arch/arm/configs/at91sam9260ek_defconfig             |    2 +-
 arch/arm/configs/at91sam9261ek_defconfig             |    2 +-
 arch/arm/configs/at91sam9261ek_first_stage_defconfig |    2 +-
 arch/arm/configs/at91sam9263ek_defconfig             |    2 +-
 arch/arm/configs/at91sam9g10ek_defconfig             |    2 +-
 arch/arm/configs/at91sam9g20ek_defconfig             |    2 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig          |    2 +-
 arch/arm/configs/at91sam9m10ihd_defconfig            |    2 +-
 arch/arm/configs/at91sam9n12ek_defconfig             |    2 +-
 arch/arm/configs/at91sam9x5ek_defconfig              |    2 +-
 arch/arm/configs/ccmx51_defconfig                    |    2 +-
 arch/arm/configs/chumbyone_defconfig                 |    2 +-
 arch/arm/configs/cupid_defconfig                     |    2 +-
 arch/arm/configs/datamodul-edm-qmx6_defconfig        |    2 +-
 arch/arm/configs/dss11_defconfig                     |    2 +-
 arch/arm/configs/edb93xx_defconfig                   |    2 +-
 arch/arm/configs/efika-mx-smartbook_defconfig        |    2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig           |    2 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig           |    2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig           |    2 +-
 arch/arm/configs/eukrea_cpuimx51_defconfig           |    2 +-
 arch/arm/configs/freescale-mx21-ads_defconfig        |    2 +-
 arch/arm/configs/freescale-mx25-3ds_defconfig        |    2 +-
 arch/arm/configs/freescale-mx27-ads_defconfig        |    2 +-
 arch/arm/configs/freescale-mx28-evk_defconfig        |    2 +-
 arch/arm/configs/freescale-mx35-3ds_defconfig        |    2 +-
 arch/arm/configs/freescale-mx51-babbage_defconfig    |    2 +-
 arch/arm/configs/freescale-mx53-qsb_defconfig        |    2 +-
 arch/arm/configs/freescale-mx53-smd_defconfig        |    2 +-
 arch/arm/configs/freescale-mx6-arm2_defconfig        |    2 +-
 arch/arm/configs/freescale-mx6-sabrelite_defconfig   |    2 +-
 arch/arm/configs/freescale-mx6-sabresd_defconfig     |    2 +-
 arch/arm/configs/friendlyarm_mini2440_defconfig      |    2 +-
 arch/arm/configs/friendlyarm_mini6410_defconfig      |    2 +-
 arch/arm/configs/friendlyarm_tiny6410_defconfig      |    2 +-
 arch/arm/configs/highbank_defconfig                  |    2 +-
 arch/arm/configs/imx233-olinuxino_defconfig          |    2 +-
 arch/arm/configs/imx_v7_defconfig                    |    2 +-
 arch/arm/configs/mmccpu_defconfig                    |    2 +-
 arch/arm/configs/neso_defconfig                      |    2 +-
 arch/arm/configs/netx_nxdb500_defconfig              |    2 +-
 arch/arm/configs/nhk8815_defconfig                   |    2 +-
 arch/arm/configs/omap3530_beagle_defconfig           |    2 +-
 arch/arm/configs/panda_defconfig                     |    2 +-
 arch/arm/configs/phytec-phycard-imx27_defconfig      |    2 +-
 arch/arm/configs/phytec-phycard-omap3_defconfig      |    2 +-
 arch/arm/configs/phytec-phycard-omap4_defconfig      |    2 +-
 arch/arm/configs/phytec-phycore-am335x_defconfig     |    2 +-
 arch/arm/configs/phytec-phycore-imx27_defconfig      |    2 +-
 arch/arm/configs/phytec-phycore-imx31_defconfig      |    2 +-
 arch/arm/configs/phytec-phycore-imx35_defconfig      |    2 +-
 arch/arm/configs/phytec-phycore-omap4460_defconfig   |    2 +-
 arch/arm/configs/phytec-phycore-pxa270_defconfig     |    2 +-
 arch/arm/configs/pm9261_defconfig                    |    2 +-
 arch/arm/configs/pm9263_defconfig                    |    2 +-
 arch/arm/configs/pm9g45_defconfig                    |    2 +-
 arch/arm/configs/qil_a9260_128mib_defconfig          |    2 +-
 arch/arm/configs/qil_a9260_defconfig                 |    2 +-
 arch/arm/configs/qil_a9g20_128mib_defconfig          |    2 +-
 arch/arm/configs/qil_a9g20_defconfig                 |    2 +-
 arch/arm/configs/rockchip_defconfig                  |    2 +-
 arch/arm/configs/sama5d3xek_defconfig                |    2 +-
 arch/arm/configs/scb9328_defconfig                   |    2 +-
 arch/arm/configs/socfpga_defconfig                   |    2 +-
 arch/arm/configs/telit_evk_pro3_defconfig            |    2 +-
 arch/arm/configs/tny_a9260_defconfig                 |    2 +-
 arch/arm/configs/tny_a9263_defconfig                 |    2 +-
 arch/arm/configs/tny_a9g20_defconfig                 |    2 +-
 arch/arm/configs/tqma53_defconfig                    |    2 +-
 arch/arm/configs/tx25stk5_defconfig                  |    2 +-
 arch/arm/configs/tx28stk5_defconfig                  |    2 +-
 arch/arm/configs/tx51stk5_defconfig                  |    2 +-
 arch/arm/configs/tx53stk5_defconfig                  |    2 +-
 arch/arm/configs/usb_a9260_defconfig                 |    2 +-
 arch/arm/configs/usb_a9263_128mib_defconfig          |    2 +-
 arch/arm/configs/usb_a9263_defconfig                 |    2 +-
 arch/arm/configs/usb_a9g20_128mib_defconfig          |    2 +-
 arch/arm/configs/usb_a9g20_defconfig                 |    2 +-
 arch/arm/configs/versatilepb_defconfig               |    2 +-
 arch/arm/configs/vexpress_ca9_defconfig              |    2 +-
 arch/arm/configs/vexpress_defconfig                  |    2 +-
 arch/arm/configs/vincell_defconfig                   |    2 +-
 arch/arm/configs/zedboard_defconfig                  |    2 +-
 arch/blackfin/configs/ipe337_defconfig               |    2 +-
 arch/mips/configs/dlink-dir-320_defconfig            |    2 +-
 arch/mips/configs/qemu-malta_defconfig               |    2 +-
 arch/openrisc/configs/generic_defconfig              |    2 +-
 arch/ppc/configs/pcm030_defconfig                    |    2 +-
 arch/sandbox/configs/sandbox_defconfig               |    2 +-
 commands/Kconfig                                     |   16 ++++++++++++++++
 net/Kconfig                                          |    4 ----
 net/Makefile                                         |    2 +-
 98 files changed, 112 insertions(+), 100 deletions(-)

diff --git a/arch/arm/configs/a9m2410_defconfig b/arch/arm/configs/a9m2410_defconfig
index c4cb564..d7b08f5 100644
--- a/arch/arm/configs/a9m2410_defconfig
+++ b/arch/arm/configs/a9m2410_defconfig
@@ -27,7 +27,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/a9m2440_defconfig b/arch/arm/configs/a9m2440_defconfig
index b46a847..59b16a8 100644
--- a/arch/arm/configs/a9m2440_defconfig
+++ b/arch/arm/configs/a9m2440_defconfig
@@ -29,7 +29,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/am335x_beaglebone_defconfig b/arch/arm/configs/am335x_beaglebone_defconfig
index 8adcd15..80c0ca5 100644
--- a/arch/arm/configs/am335x_beaglebone_defconfig
+++ b/arch/arm/configs/am335x_beaglebone_defconfig
@@ -61,7 +61,7 @@ CONFIG_CMD_I2C=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_DETECT=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index 31290bd..ca8d2f1 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -50,7 +50,7 @@ CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_WD=y
 CONFIG_CMD_WD_DEFAULT_TIMOUT=16
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_MICREL_PHY=y
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index a0bcc1f..0a6ad68 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -65,7 +65,7 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index 3593c14..6197b97 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -48,7 +48,7 @@ CONFIG_CMD_SPI=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 2486314..6e67f1f 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -46,7 +46,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index 25469a8..591b5fe 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -45,7 +45,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/at91sam9261ek_first_stage_defconfig b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
index 2b5162a..6071aea 100644
--- a/arch/arm/configs/at91sam9261ek_first_stage_defconfig
+++ b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
@@ -46,7 +46,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index f2a0aa5..d7d147a 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -43,7 +43,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index 3bb1e55..9c12ed4 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -44,7 +44,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index 1a69fec..0faa485 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -46,7 +46,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 0898410..b088976 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -54,7 +54,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
index 174039b..c3df023 100644
--- a/arch/arm/configs/at91sam9m10ihd_defconfig
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -56,7 +56,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_SPI=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index 132083d..03fb063 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -51,7 +51,7 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index 0af68f9..93975d4 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -49,7 +49,7 @@ CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/ccmx51_defconfig b/arch/arm/configs/ccmx51_defconfig
index ff201fd..cc2baa2 100644
--- a/arch/arm/configs/ccmx51_defconfig
+++ b/arch/arm/configs/ccmx51_defconfig
@@ -41,7 +41,7 @@ CONFIG_CMD_I2C=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_DRIVER_NET_FEC_IMX=y
diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
index 35c90e3..5eb5962 100644
--- a/arch/arm/configs/chumbyone_defconfig
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -33,7 +33,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/cupid_defconfig b/arch/arm/configs/cupid_defconfig
index a49df4b..6d5e3f5 100644
--- a/arch/arm/configs/cupid_defconfig
+++ b/arch/arm/configs/cupid_defconfig
@@ -49,7 +49,7 @@ CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/datamodul-edm-qmx6_defconfig b/arch/arm/configs/datamodul-edm-qmx6_defconfig
index bc39b74..1cbceca 100644
--- a/arch/arm/configs/datamodul-edm-qmx6_defconfig
+++ b/arch/arm/configs/datamodul-edm-qmx6_defconfig
@@ -67,7 +67,7 @@ CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
diff --git a/arch/arm/configs/dss11_defconfig b/arch/arm/configs/dss11_defconfig
index 9665c7c..0785b9a 100644
--- a/arch/arm/configs/dss11_defconfig
+++ b/arch/arm/configs/dss11_defconfig
@@ -17,7 +17,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_LED=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/edb93xx_defconfig b/arch/arm/configs/edb93xx_defconfig
index 1fa3257..89b3ca8 100644
--- a/arch/arm/configs/edb93xx_defconfig
+++ b/arch/arm/configs/edb93xx_defconfig
@@ -24,7 +24,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/efika-mx-smartbook_defconfig b/arch/arm/configs/efika-mx-smartbook_defconfig
index eb03a8e..753e9b6 100644
--- a/arch/arm/configs/efika-mx-smartbook_defconfig
+++ b/arch/arm/configs/efika-mx-smartbook_defconfig
@@ -71,7 +71,7 @@ CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index 172be3c..e81fb70 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -51,7 +51,7 @@ CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index 7d0d430..6580dcb 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -37,7 +37,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index b1d65bf..bec7336 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -52,7 +52,7 @@ CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/eukrea_cpuimx51_defconfig b/arch/arm/configs/eukrea_cpuimx51_defconfig
index fb53f40..66bee63 100644
--- a/arch/arm/configs/eukrea_cpuimx51_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx51_defconfig
@@ -46,7 +46,7 @@ CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/freescale-mx21-ads_defconfig b/arch/arm/configs/freescale-mx21-ads_defconfig
index c2a4933..73d99b9 100644
--- a/arch/arm/configs/freescale-mx21-ads_defconfig
+++ b/arch/arm/configs/freescale-mx21-ads_defconfig
@@ -25,7 +25,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_DRIVER_NET_CS8900=y
diff --git a/arch/arm/configs/freescale-mx25-3ds_defconfig b/arch/arm/configs/freescale-mx25-3ds_defconfig
index c5a3272..65d8f20 100644
--- a/arch/arm/configs/freescale-mx25-3ds_defconfig
+++ b/arch/arm/configs/freescale-mx25-3ds_defconfig
@@ -47,7 +47,7 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/freescale-mx27-ads_defconfig b/arch/arm/configs/freescale-mx27-ads_defconfig
index fb85181..a8995ee 100644
--- a/arch/arm/configs/freescale-mx27-ads_defconfig
+++ b/arch/arm/configs/freescale-mx27-ads_defconfig
@@ -28,7 +28,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/freescale-mx28-evk_defconfig b/arch/arm/configs/freescale-mx28-evk_defconfig
index ffbfd44..b6a6320 100644
--- a/arch/arm/configs/freescale-mx28-evk_defconfig
+++ b/arch/arm/configs/freescale-mx28-evk_defconfig
@@ -31,7 +31,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_AUART=y
diff --git a/arch/arm/configs/freescale-mx35-3ds_defconfig b/arch/arm/configs/freescale-mx35-3ds_defconfig
index f58ee87..66436b5 100644
--- a/arch/arm/configs/freescale-mx35-3ds_defconfig
+++ b/arch/arm/configs/freescale-mx35-3ds_defconfig
@@ -47,7 +47,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/freescale-mx51-babbage_defconfig b/arch/arm/configs/freescale-mx51-babbage_defconfig
index 8842952..708b564 100644
--- a/arch/arm/configs/freescale-mx51-babbage_defconfig
+++ b/arch/arm/configs/freescale-mx51-babbage_defconfig
@@ -58,7 +58,7 @@ CONFIG_CMD_SPI=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
diff --git a/arch/arm/configs/freescale-mx53-qsb_defconfig b/arch/arm/configs/freescale-mx53-qsb_defconfig
index 292a223..efcf284 100644
--- a/arch/arm/configs/freescale-mx53-qsb_defconfig
+++ b/arch/arm/configs/freescale-mx53-qsb_defconfig
@@ -77,7 +77,7 @@ CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/freescale-mx53-smd_defconfig b/arch/arm/configs/freescale-mx53-smd_defconfig
index b00cdfe..5ba62f5 100644
--- a/arch/arm/configs/freescale-mx53-smd_defconfig
+++ b/arch/arm/configs/freescale-mx53-smd_defconfig
@@ -48,7 +48,7 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/freescale-mx6-arm2_defconfig b/arch/arm/configs/freescale-mx6-arm2_defconfig
index c336fbf..7489c47 100644
--- a/arch/arm/configs/freescale-mx6-arm2_defconfig
+++ b/arch/arm/configs/freescale-mx6-arm2_defconfig
@@ -45,7 +45,7 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/freescale-mx6-sabrelite_defconfig b/arch/arm/configs/freescale-mx6-sabrelite_defconfig
index 20d9e98..48d1ed2 100644
--- a/arch/arm/configs/freescale-mx6-sabrelite_defconfig
+++ b/arch/arm/configs/freescale-mx6-sabrelite_defconfig
@@ -62,7 +62,7 @@ CONFIG_CMD_SPI=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/freescale-mx6-sabresd_defconfig b/arch/arm/configs/freescale-mx6-sabresd_defconfig
index 1b7b9e5..0ad7cc9 100644
--- a/arch/arm/configs/freescale-mx6-sabresd_defconfig
+++ b/arch/arm/configs/freescale-mx6-sabresd_defconfig
@@ -52,7 +52,7 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/friendlyarm_mini2440_defconfig b/arch/arm/configs/friendlyarm_mini2440_defconfig
index e0fe43a..ed11014 100644
--- a/arch/arm/configs/friendlyarm_mini2440_defconfig
+++ b/arch/arm/configs/friendlyarm_mini2440_defconfig
@@ -30,7 +30,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/friendlyarm_mini6410_defconfig b/arch/arm/configs/friendlyarm_mini6410_defconfig
index ca0ff91..0d3f3e3 100644
--- a/arch/arm/configs/friendlyarm_mini6410_defconfig
+++ b/arch/arm/configs/friendlyarm_mini6410_defconfig
@@ -30,7 +30,7 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_TFTP=y
 CONFIG_DRIVER_NET_DM9K=y
diff --git a/arch/arm/configs/friendlyarm_tiny6410_defconfig b/arch/arm/configs/friendlyarm_tiny6410_defconfig
index 864405e..1ab8c08 100644
--- a/arch/arm/configs/friendlyarm_tiny6410_defconfig
+++ b/arch/arm/configs/friendlyarm_tiny6410_defconfig
@@ -31,7 +31,7 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_TFTP=y
 CONFIG_DRIVER_NET_DM9K=y
diff --git a/arch/arm/configs/highbank_defconfig b/arch/arm/configs/highbank_defconfig
index 6793dba..3e02c2e 100644
--- a/arch/arm/configs/highbank_defconfig
+++ b/arch/arm/configs/highbank_defconfig
@@ -46,7 +46,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/imx233-olinuxino_defconfig b/arch/arm/configs/imx233-olinuxino_defconfig
index aebf89b..3f444f1 100644
--- a/arch/arm/configs/imx233-olinuxino_defconfig
+++ b/arch/arm/configs/imx233-olinuxino_defconfig
@@ -37,7 +37,7 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_TFTP=y
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 75bcb48..0c32d7d 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -95,7 +95,7 @@ CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/mmccpu_defconfig b/arch/arm/configs/mmccpu_defconfig
index b6b4dfa..6390b56 100644
--- a/arch/arm/configs/mmccpu_defconfig
+++ b/arch/arm/configs/mmccpu_defconfig
@@ -27,7 +27,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
index f7f065c..846eca0 100644
--- a/arch/arm/configs/neso_defconfig
+++ b/arch/arm/configs/neso_defconfig
@@ -49,7 +49,7 @@ CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/netx_nxdb500_defconfig b/arch/arm/configs/netx_nxdb500_defconfig
index abf20ff..745afc1 100644
--- a/arch/arm/configs/netx_nxdb500_defconfig
+++ b/arch/arm/configs/netx_nxdb500_defconfig
@@ -21,7 +21,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index f5331ae..f86b59c 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -36,7 +36,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index d0acb87..1ef4825 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -57,7 +57,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
index 727afd1..dab407c 100644
--- a/arch/arm/configs/panda_defconfig
+++ b/arch/arm/configs/panda_defconfig
@@ -58,7 +58,7 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/phytec-phycard-imx27_defconfig b/arch/arm/configs/phytec-phycard-imx27_defconfig
index 8694cb2..0d81544 100644
--- a/arch/arm/configs/phytec-phycard-imx27_defconfig
+++ b/arch/arm/configs/phytec-phycard-imx27_defconfig
@@ -60,7 +60,7 @@ CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index fcd5471..daff7ad 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -121,7 +121,7 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_DEVINFO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/phytec-phycard-omap4_defconfig b/arch/arm/configs/phytec-phycard-omap4_defconfig
index 0c25829..cd9310e 100644
--- a/arch/arm/configs/phytec-phycard-omap4_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap4_defconfig
@@ -36,7 +36,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNLZO=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/phytec-phycore-am335x_defconfig b/arch/arm/configs/phytec-phycore-am335x_defconfig
index f18e460..edf204f 100644
--- a/arch/arm/configs/phytec-phycore-am335x_defconfig
+++ b/arch/arm/configs/phytec-phycore-am335x_defconfig
@@ -61,7 +61,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_DETECT=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_OFDEVICE=y
diff --git a/arch/arm/configs/phytec-phycore-imx27_defconfig b/arch/arm/configs/phytec-phycore-imx27_defconfig
index 77e8377..5cb9202 100644
--- a/arch/arm/configs/phytec-phycore-imx27_defconfig
+++ b/arch/arm/configs/phytec-phycore-imx27_defconfig
@@ -49,7 +49,7 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/phytec-phycore-imx31_defconfig b/arch/arm/configs/phytec-phycore-imx31_defconfig
index 6bec9a5..7f19b4a 100644
--- a/arch/arm/configs/phytec-phycore-imx31_defconfig
+++ b/arch/arm/configs/phytec-phycore-imx31_defconfig
@@ -63,7 +63,7 @@ CONFIG_CMD_SPI=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/phytec-phycore-imx35_defconfig b/arch/arm/configs/phytec-phycore-imx35_defconfig
index 26e5725..91fab09 100644
--- a/arch/arm/configs/phytec-phycore-imx35_defconfig
+++ b/arch/arm/configs/phytec-phycore-imx35_defconfig
@@ -68,7 +68,7 @@ CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460_defconfig b/arch/arm/configs/phytec-phycore-omap4460_defconfig
index 80563f5..8d5543f 100644
--- a/arch/arm/configs/phytec-phycore-omap4460_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460_defconfig
@@ -47,7 +47,7 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/phytec-phycore-pxa270_defconfig b/arch/arm/configs/phytec-phycore-pxa270_defconfig
index b67f6a7..b7bf190 100644
--- a/arch/arm/configs/phytec-phycore-pxa270_defconfig
+++ b/arch/arm/configs/phytec-phycore-pxa270_defconfig
@@ -47,7 +47,7 @@ CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index c523473..682c65f 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -36,7 +36,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index cc5af5b..53e4a62 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -27,7 +27,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 692aa8d..2079bcf 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -35,7 +35,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/qil_a9260_128mib_defconfig b/arch/arm/configs/qil_a9260_128mib_defconfig
index 4292845..c735bad 100644
--- a/arch/arm/configs/qil_a9260_128mib_defconfig
+++ b/arch/arm/configs/qil_a9260_128mib_defconfig
@@ -51,7 +51,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index 3bc1e17..8aa7528 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -50,7 +50,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/qil_a9g20_128mib_defconfig b/arch/arm/configs/qil_a9g20_128mib_defconfig
index 88ea874..1892399 100644
--- a/arch/arm/configs/qil_a9g20_128mib_defconfig
+++ b/arch/arm/configs/qil_a9g20_128mib_defconfig
@@ -51,7 +51,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/qil_a9g20_defconfig b/arch/arm/configs/qil_a9g20_defconfig
index 05e6cdf..2ec9b6e 100644
--- a/arch/arm/configs/qil_a9g20_defconfig
+++ b/arch/arm/configs/qil_a9g20_defconfig
@@ -50,7 +50,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/rockchip_defconfig b/arch/arm/configs/rockchip_defconfig
index e8067ca..40442ac 100644
--- a/arch/arm/configs/rockchip_defconfig
+++ b/arch/arm/configs/rockchip_defconfig
@@ -44,7 +44,7 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
diff --git a/arch/arm/configs/sama5d3xek_defconfig b/arch/arm/configs/sama5d3xek_defconfig
index 030cb1f..c1cb0f6 100644
--- a/arch/arm/configs/sama5d3xek_defconfig
+++ b/arch/arm/configs/sama5d3xek_defconfig
@@ -53,7 +53,7 @@ CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
index 0e90302..f037a00 100644
--- a/arch/arm/configs/scb9328_defconfig
+++ b/arch/arm/configs/scb9328_defconfig
@@ -44,7 +44,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index 0758561..ca54a1a 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -63,7 +63,7 @@ CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/telit_evk_pro3_defconfig b/arch/arm/configs/telit_evk_pro3_defconfig
index 62e779b..5924449 100644
--- a/arch/arm/configs/telit_evk_pro3_defconfig
+++ b/arch/arm/configs/telit_evk_pro3_defconfig
@@ -45,7 +45,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index a3611be..30b675f 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -52,7 +52,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index 5554eb1..94d6c10 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -52,7 +52,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index 2995ce8..6e7ae23 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -53,7 +53,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_SPI=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/tqma53_defconfig b/arch/arm/configs/tqma53_defconfig
index 2d36bc0..f163b7c 100644
--- a/arch/arm/configs/tqma53_defconfig
+++ b/arch/arm/configs/tqma53_defconfig
@@ -56,7 +56,7 @@ CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
diff --git a/arch/arm/configs/tx25stk5_defconfig b/arch/arm/configs/tx25stk5_defconfig
index 67620d3..3bd896d 100644
--- a/arch/arm/configs/tx25stk5_defconfig
+++ b/arch/arm/configs/tx25stk5_defconfig
@@ -61,7 +61,7 @@ CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
diff --git a/arch/arm/configs/tx28stk5_defconfig b/arch/arm/configs/tx28stk5_defconfig
index 3cefa76..fe80d98 100644
--- a/arch/arm/configs/tx28stk5_defconfig
+++ b/arch/arm/configs/tx28stk5_defconfig
@@ -45,7 +45,7 @@ CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
index 4f9a345..3dc6372 100644
--- a/arch/arm/configs/tx51stk5_defconfig
+++ b/arch/arm/configs/tx51stk5_defconfig
@@ -104,7 +104,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LED=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/tx53stk5_defconfig b/arch/arm/configs/tx53stk5_defconfig
index d9444d8..fc6a9a6 100644
--- a/arch/arm/configs/tx53stk5_defconfig
+++ b/arch/arm/configs/tx53stk5_defconfig
@@ -57,7 +57,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LED=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_MTD=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index c3a5c31..b6cb61c 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -55,7 +55,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
index c9f8f56..81c502d 100644
--- a/arch/arm/configs/usb_a9263_128mib_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_defconfig
@@ -56,7 +56,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 522aaff..78fb26c 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -55,7 +55,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
index 1e73e8f..11ca9ee 100644
--- a/arch/arm/configs/usb_a9g20_128mib_defconfig
+++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
@@ -57,7 +57,7 @@ CONFIG_CMD_SPI=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index 3e5f2c4..2934b21 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -56,7 +56,7 @@ CONFIG_CMD_SPI=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index 7fe30f7..423e8cd 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -36,7 +36,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/arm/configs/vexpress_ca9_defconfig b/arch/arm/configs/vexpress_ca9_defconfig
index ba1aaf5..1da3779 100644
--- a/arch/arm/configs/vexpress_ca9_defconfig
+++ b/arch/arm/configs/vexpress_ca9_defconfig
@@ -44,7 +44,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
index 1b8e4ad..6ad2c8a 100644
--- a/arch/arm/configs/vexpress_defconfig
+++ b/arch/arm/configs/vexpress_defconfig
@@ -43,7 +43,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/vincell_defconfig b/arch/arm/configs/vincell_defconfig
index f788992..11f61ee 100644
--- a/arch/arm/configs/vincell_defconfig
+++ b/arch/arm/configs/vincell_defconfig
@@ -57,7 +57,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/zedboard_defconfig b/arch/arm/configs/zedboard_defconfig
index 773177c..7368418 100644
--- a/arch/arm/configs/zedboard_defconfig
+++ b/arch/arm/configs/zedboard_defconfig
@@ -42,7 +42,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 # CONFIG_SPI is not set
 CONFIG_FS_TFTP=y
 CONFIG_DIGEST=y
diff --git a/arch/blackfin/configs/ipe337_defconfig b/arch/blackfin/configs/ipe337_defconfig
index 881aa83..501c59a 100644
--- a/arch/blackfin/configs/ipe337_defconfig
+++ b/arch/blackfin/configs/ipe337_defconfig
@@ -20,7 +20,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/dlink-dir-320_defconfig
index e9276aa..52ab295 100644
--- a/arch/mips/configs/dlink-dir-320_defconfig
+++ b/arch/mips/configs/dlink-dir-320_defconfig
@@ -43,7 +43,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 0643e3d..ba5fa96 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -48,7 +48,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/openrisc/configs/generic_defconfig b/arch/openrisc/configs/generic_defconfig
index 03242bb..deaef2a 100644
--- a/arch/openrisc/configs/generic_defconfig
+++ b/arch/openrisc/configs/generic_defconfig
@@ -19,7 +19,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index da82fad..204f946 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -29,7 +29,7 @@ CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index e651838..7ce2569 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -21,7 +21,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
-CONFIG_NET_DHCP=y
+CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_DRIVER_NET_TAP=y
 # CONFIG_SPI is not set
diff --git a/commands/Kconfig b/commands/Kconfig
index c4e1d97..fa2e37a 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1052,6 +1052,22 @@ if NET
 
 menu "Network"
 
+config CMD_DHCP
+	bool
+	prompt "dhcp"
+	help
+	  DHCP client to obtain IP or boot params
+
+	  Usage: dhcp [-HvcuUr]
+
+	  Options:
+	          -H HOSTNAME     hostname to send to the DHCP server
+	          -v ID           DHCP Vendor ID (code 60) submitted in DHCP requests
+	          -c ID           DHCP Client ID (code 61) submitted in DHCP requests
+	          -u UUID         DHCP Client UUID (code 97) submitted in DHCP requests
+	          -U CLASS        DHCP User class (code 77) submitted in DHCP requests
+	          -r RETRY        retry limit (default 20)#
+
 config CMD_HOST
 	tristate
 	select NET_RESOLV
diff --git a/net/Kconfig b/net/Kconfig
index e1acd3c..d09ddee 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -3,10 +3,6 @@ menuconfig NET
 
 if NET
 
-config NET_DHCP
-	bool
-	prompt "dhcp support"
-
 config NET_NFS
 	bool
 	prompt "nfs support"
diff --git a/net/Makefile b/net/Makefile
index e0bb6bb..907dc28 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -1,7 +1,7 @@
-obj-$(CONFIG_NET_DHCP)	+= dhcp.o
 obj-$(CONFIG_NET)	+= eth.o
 obj-$(CONFIG_NET)	+= net.o
 obj-$(CONFIG_NET_NFS)	+= nfs.o
+obj-$(CONFIG_CMD_DHCP)	+= dhcp.o
 obj-$(CONFIG_CMD_PING)	+= ping.o
 obj-$(CONFIG_NET_RESOLV)+= dns.o
 obj-$(CONFIG_NET_NETCONSOLE) += netconsole.o
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
