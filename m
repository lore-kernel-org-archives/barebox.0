Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22b.google.com ([2a00:1450:4013:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk819-0001yB-FV
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:59 +0000
Received: by mail-ee0-f43.google.com with SMTP id d17so124308eek.30
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:34 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:56 +0200
Message-Id: <1399969739-10355-17-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 16/19] commands: NET_PING -> CMD_PING
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
 arch/blackfin/configs/ipe337_defconfig               |    2 +-
 arch/mips/configs/dlink-dir-320_defconfig            |    2 +-
 arch/mips/configs/qemu-malta_defconfig               |    2 +-
 arch/nios2/configs/generic_defconfig                 |    2 +-
 arch/openrisc/configs/generic_defconfig              |    2 +-
 arch/ppc/configs/da923rc_defconfig                   |    2 +-
 arch/ppc/configs/p1022ds_defconfig                   |    2 +-
 arch/ppc/configs/p2020rdb_defconfig                  |    2 +-
 arch/ppc/configs/pcm030_defconfig                    |    2 +-
 arch/sandbox/configs/sandbox_defconfig               |    2 +-
 commands/Kconfig                                     |    8 ++++++++
 net/Kconfig                                          |    4 ----
 net/Makefile                                         |    2 +-
 100 files changed, 106 insertions(+), 102 deletions(-)

diff --git a/arch/arm/configs/a9m2410_defconfig b/arch/arm/configs/a9m2410_defconfig
index a69b0f9..c4cb564 100644
--- a/arch/arm/configs/a9m2410_defconfig
+++ b/arch/arm/configs/a9m2410_defconfig
@@ -28,7 +28,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_SMC91111=y
diff --git a/arch/arm/configs/a9m2440_defconfig b/arch/arm/configs/a9m2440_defconfig
index c4c4e1e..b46a847 100644
--- a/arch/arm/configs/a9m2440_defconfig
+++ b/arch/arm/configs/a9m2440_defconfig
@@ -30,7 +30,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_SMC91111=y
diff --git a/arch/arm/configs/am335x_beaglebone_defconfig b/arch/arm/configs/am335x_beaglebone_defconfig
index 857b89c..8adcd15 100644
--- a/arch/arm/configs/am335x_beaglebone_defconfig
+++ b/arch/arm/configs/am335x_beaglebone_defconfig
@@ -62,7 +62,7 @@ CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_DETECT=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index e076162..31290bd 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -52,7 +52,7 @@ CONFIG_CMD_WD_DEFAULT_TIMOUT=16
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_MICREL_PHY=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_NET_USB=y
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index 40e4433..a0bcc1f 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -66,7 +66,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index cc63445..3593c14 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -50,7 +50,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 9c5c7d5..2486314 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -48,7 +48,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index ac5c663..25469a8 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -47,7 +47,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/at91sam9261ek_first_stage_defconfig b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
index c4bc207..2b5162a 100644
--- a/arch/arm/configs/at91sam9261ek_first_stage_defconfig
+++ b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
@@ -48,7 +48,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
 CONFIG_DRIVER_SPI_ATMEL=y
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index e78849a..f2a0aa5 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -45,7 +45,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index b22969c..3bb1e55 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -46,7 +46,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index af10c6c..1a69fec 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -48,7 +48,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 7e05e95..0898410 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -56,7 +56,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
index 2faaa68..174039b 100644
--- a/arch/arm/configs/at91sam9m10ihd_defconfig
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -58,7 +58,7 @@ CONFIG_CMD_SPI=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index 55cf5bc..132083d 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -53,7 +53,7 @@ CONFIG_CMD_MIITOOL=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_KS8851_MLL=y
 CONFIG_DRIVER_SPI_ATMEL=y
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index d2cdaf2..0af68f9 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -51,7 +51,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_NET_USB=y
diff --git a/arch/arm/configs/ccmx51_defconfig b/arch/arm/configs/ccmx51_defconfig
index b406686..ff201fd 100644
--- a/arch/arm/configs/ccmx51_defconfig
+++ b/arch/arm/configs/ccmx51_defconfig
@@ -42,7 +42,7 @@ CONFIG_CMD_SPI=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_I2C=y
diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
index f73ff8d..35c90e3 100644
--- a/arch/arm/configs/chumbyone_defconfig
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -35,7 +35,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/cupid_defconfig b/arch/arm/configs/cupid_defconfig
index e2ad9c6..a49df4b 100644
--- a/arch/arm/configs/cupid_defconfig
+++ b/arch/arm/configs/cupid_defconfig
@@ -51,7 +51,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/datamodul-edm-qmx6_defconfig b/arch/arm/configs/datamodul-edm-qmx6_defconfig
index 30e5a53..bc39b74 100644
--- a/arch/arm/configs/datamodul-edm-qmx6_defconfig
+++ b/arch/arm/configs/datamodul-edm-qmx6_defconfig
@@ -68,7 +68,7 @@ CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
diff --git a/arch/arm/configs/dss11_defconfig b/arch/arm/configs/dss11_defconfig
index b4fcf01..9665c7c 100644
--- a/arch/arm/configs/dss11_defconfig
+++ b/arch/arm/configs/dss11_defconfig
@@ -19,7 +19,7 @@ CONFIG_CMD_LED=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/edb93xx_defconfig b/arch/arm/configs/edb93xx_defconfig
index 86b1040..1fa3257 100644
--- a/arch/arm/configs/edb93xx_defconfig
+++ b/arch/arm/configs/edb93xx_defconfig
@@ -25,7 +25,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_EP93XX=y
diff --git a/arch/arm/configs/efika-mx-smartbook_defconfig b/arch/arm/configs/efika-mx-smartbook_defconfig
index f436d0d..eb03a8e 100644
--- a/arch/arm/configs/efika-mx-smartbook_defconfig
+++ b/arch/arm/configs/efika-mx-smartbook_defconfig
@@ -73,7 +73,7 @@ CONFIG_CMD_WD=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index 4f8a95c..172be3c 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -53,7 +53,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index 97b4291..7d0d430 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -38,7 +38,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index 88e1e3d..b1d65bf 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -54,7 +54,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/eukrea_cpuimx51_defconfig b/arch/arm/configs/eukrea_cpuimx51_defconfig
index 3f5d817..fb53f40 100644
--- a/arch/arm/configs/eukrea_cpuimx51_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx51_defconfig
@@ -48,7 +48,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/freescale-mx21-ads_defconfig b/arch/arm/configs/freescale-mx21-ads_defconfig
index 05f21d3..c2a4933 100644
--- a/arch/arm/configs/freescale-mx21-ads_defconfig
+++ b/arch/arm/configs/freescale-mx21-ads_defconfig
@@ -27,7 +27,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_DRIVER_NET_CS8900=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
diff --git a/arch/arm/configs/freescale-mx25-3ds_defconfig b/arch/arm/configs/freescale-mx25-3ds_defconfig
index 57d3465..c5a3272 100644
--- a/arch/arm/configs/freescale-mx25-3ds_defconfig
+++ b/arch/arm/configs/freescale-mx25-3ds_defconfig
@@ -48,7 +48,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_FEC_IMX=y
diff --git a/arch/arm/configs/freescale-mx27-ads_defconfig b/arch/arm/configs/freescale-mx27-ads_defconfig
index d374582..fb85181 100644
--- a/arch/arm/configs/freescale-mx27-ads_defconfig
+++ b/arch/arm/configs/freescale-mx27-ads_defconfig
@@ -29,7 +29,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SPI_IMX=y
diff --git a/arch/arm/configs/freescale-mx28-evk_defconfig b/arch/arm/configs/freescale-mx28-evk_defconfig
index d06bac8..ffbfd44 100644
--- a/arch/arm/configs/freescale-mx28-evk_defconfig
+++ b/arch/arm/configs/freescale-mx28-evk_defconfig
@@ -32,7 +32,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_AUART=y
 CONFIG_DRIVER_NET_FEC_IMX=y
diff --git a/arch/arm/configs/freescale-mx35-3ds_defconfig b/arch/arm/configs/freescale-mx35-3ds_defconfig
index e3f3262..f58ee87 100644
--- a/arch/arm/configs/freescale-mx35-3ds_defconfig
+++ b/arch/arm/configs/freescale-mx35-3ds_defconfig
@@ -48,7 +48,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_SMC911X=y
diff --git a/arch/arm/configs/freescale-mx51-babbage_defconfig b/arch/arm/configs/freescale-mx51-babbage_defconfig
index 3d1ad31..8842952 100644
--- a/arch/arm/configs/freescale-mx51-babbage_defconfig
+++ b/arch/arm/configs/freescale-mx51-babbage_defconfig
@@ -59,7 +59,7 @@ CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
diff --git a/arch/arm/configs/freescale-mx53-qsb_defconfig b/arch/arm/configs/freescale-mx53-qsb_defconfig
index 8365234..292a223 100644
--- a/arch/arm/configs/freescale-mx53-qsb_defconfig
+++ b/arch/arm/configs/freescale-mx53-qsb_defconfig
@@ -79,7 +79,7 @@ CONFIG_CMD_WD=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
diff --git a/arch/arm/configs/freescale-mx53-smd_defconfig b/arch/arm/configs/freescale-mx53-smd_defconfig
index f18c436..b00cdfe 100644
--- a/arch/arm/configs/freescale-mx53-smd_defconfig
+++ b/arch/arm/configs/freescale-mx53-smd_defconfig
@@ -50,7 +50,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/freescale-mx6-arm2_defconfig b/arch/arm/configs/freescale-mx6-arm2_defconfig
index e071d1b..c336fbf 100644
--- a/arch/arm/configs/freescale-mx6-arm2_defconfig
+++ b/arch/arm/configs/freescale-mx6-arm2_defconfig
@@ -47,7 +47,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_NET_USB=y
diff --git a/arch/arm/configs/freescale-mx6-sabrelite_defconfig b/arch/arm/configs/freescale-mx6-sabrelite_defconfig
index 520c31a..20d9e98 100644
--- a/arch/arm/configs/freescale-mx6-sabrelite_defconfig
+++ b/arch/arm/configs/freescale-mx6-sabrelite_defconfig
@@ -63,7 +63,7 @@ CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
diff --git a/arch/arm/configs/freescale-mx6-sabresd_defconfig b/arch/arm/configs/freescale-mx6-sabresd_defconfig
index 4f31cb7..1b7b9e5 100644
--- a/arch/arm/configs/freescale-mx6-sabresd_defconfig
+++ b/arch/arm/configs/freescale-mx6-sabresd_defconfig
@@ -53,7 +53,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
diff --git a/arch/arm/configs/friendlyarm_mini2440_defconfig b/arch/arm/configs/friendlyarm_mini2440_defconfig
index 955e71b..e0fe43a 100644
--- a/arch/arm/configs/friendlyarm_mini2440_defconfig
+++ b/arch/arm/configs/friendlyarm_mini2440_defconfig
@@ -31,7 +31,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_DM9K=y
diff --git a/arch/arm/configs/friendlyarm_mini6410_defconfig b/arch/arm/configs/friendlyarm_mini6410_defconfig
index b80f8fb..ca0ff91 100644
--- a/arch/arm/configs/friendlyarm_mini6410_defconfig
+++ b/arch/arm/configs/friendlyarm_mini6410_defconfig
@@ -31,7 +31,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_TFTP=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/friendlyarm_tiny6410_defconfig b/arch/arm/configs/friendlyarm_tiny6410_defconfig
index 5246196..864405e 100644
--- a/arch/arm/configs/friendlyarm_tiny6410_defconfig
+++ b/arch/arm/configs/friendlyarm_tiny6410_defconfig
@@ -32,7 +32,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_TFTP=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/highbank_defconfig b/arch/arm/configs/highbank_defconfig
index b034ed1..6793dba 100644
--- a/arch/arm/configs/highbank_defconfig
+++ b/arch/arm/configs/highbank_defconfig
@@ -48,7 +48,7 @@ CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_SERIAL_AMBA_PL011=y
diff --git a/arch/arm/configs/imx233-olinuxino_defconfig b/arch/arm/configs/imx233-olinuxino_defconfig
index 40b7e1d..aebf89b 100644
--- a/arch/arm/configs/imx233-olinuxino_defconfig
+++ b/arch/arm/configs/imx233-olinuxino_defconfig
@@ -39,7 +39,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_TFTP=y
 CONFIG_NET_TFTP_PUSH=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index b3157e3..75bcb48 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -96,7 +96,7 @@ CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
diff --git a/arch/arm/configs/mmccpu_defconfig b/arch/arm/configs/mmccpu_defconfig
index 0e6914f..b6b4dfa 100644
--- a/arch/arm/configs/mmccpu_defconfig
+++ b/arch/arm/configs/mmccpu_defconfig
@@ -28,7 +28,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
index 7e1cce8..f7f065c 100644
--- a/arch/arm/configs/neso_defconfig
+++ b/arch/arm/configs/neso_defconfig
@@ -51,7 +51,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/netx_nxdb500_defconfig b/arch/arm/configs/netx_nxdb500_defconfig
index 8e7a0b3..abf20ff 100644
--- a/arch/arm/configs/netx_nxdb500_defconfig
+++ b/arch/arm/configs/netx_nxdb500_defconfig
@@ -22,7 +22,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_NETX=y
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index 015b576..f5331ae 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -38,7 +38,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index e3eee8d..d0acb87 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -59,7 +59,7 @@ CONFIG_CMD_MIITOOL=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
index c42140a..727afd1 100644
--- a/arch/arm/configs/panda_defconfig
+++ b/arch/arm/configs/panda_defconfig
@@ -59,7 +59,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/phytec-phycard-imx27_defconfig b/arch/arm/configs/phytec-phycard-imx27_defconfig
index 6e3a3ad..8694cb2 100644
--- a/arch/arm/configs/phytec-phycard-imx27_defconfig
+++ b/arch/arm/configs/phytec-phycard-imx27_defconfig
@@ -61,7 +61,7 @@ CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index 12bfd26..fcd5471 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -123,7 +123,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/phytec-phycard-omap4_defconfig b/arch/arm/configs/phytec-phycard-omap4_defconfig
index e3e7688..0c25829 100644
--- a/arch/arm/configs/phytec-phycard-omap4_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap4_defconfig
@@ -38,7 +38,7 @@ CONFIG_CMD_UNLZO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/phytec-phycore-am335x_defconfig b/arch/arm/configs/phytec-phycore-am335x_defconfig
index c74116b..f18e460 100644
--- a/arch/arm/configs/phytec-phycore-am335x_defconfig
+++ b/arch/arm/configs/phytec-phycore-am335x_defconfig
@@ -63,7 +63,7 @@ CONFIG_CMD_DETECT=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/phytec-phycore-imx27_defconfig b/arch/arm/configs/phytec-phycore-imx27_defconfig
index 07751ea..77e8377 100644
--- a/arch/arm/configs/phytec-phycore-imx27_defconfig
+++ b/arch/arm/configs/phytec-phycore-imx27_defconfig
@@ -50,7 +50,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
diff --git a/arch/arm/configs/phytec-phycore-imx31_defconfig b/arch/arm/configs/phytec-phycore-imx31_defconfig
index 2aa87fe..6bec9a5 100644
--- a/arch/arm/configs/phytec-phycore-imx31_defconfig
+++ b/arch/arm/configs/phytec-phycore-imx31_defconfig
@@ -64,7 +64,7 @@ CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_SMC911X=y
diff --git a/arch/arm/configs/phytec-phycore-imx35_defconfig b/arch/arm/configs/phytec-phycore-imx35_defconfig
index 6674015..26e5725 100644
--- a/arch/arm/configs/phytec-phycore-imx35_defconfig
+++ b/arch/arm/configs/phytec-phycore-imx35_defconfig
@@ -70,7 +70,7 @@ CONFIG_CMD_WD=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/phytec-phycore-omap4460_defconfig b/arch/arm/configs/phytec-phycore-omap4460_defconfig
index 906dfea..80563f5 100644
--- a/arch/arm/configs/phytec-phycore-omap4460_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460_defconfig
@@ -49,7 +49,7 @@ CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_SMSC_PHY=y
diff --git a/arch/arm/configs/phytec-phycore-pxa270_defconfig b/arch/arm/configs/phytec-phycore-pxa270_defconfig
index 0e8d1b3..b67f6a7 100644
--- a/arch/arm/configs/phytec-phycore-pxa270_defconfig
+++ b/arch/arm/configs/phytec-phycore-pxa270_defconfig
@@ -48,7 +48,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_PXA=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index 0aea2c9..c523473 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -38,7 +38,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index c9a7141..cc5af5b 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -28,7 +28,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index d242bdc..692aa8d 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -37,7 +37,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/qil_a9260_128mib_defconfig b/arch/arm/configs/qil_a9260_128mib_defconfig
index a19e083..4292845 100644
--- a/arch/arm/configs/qil_a9260_128mib_defconfig
+++ b/arch/arm/configs/qil_a9260_128mib_defconfig
@@ -53,7 +53,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index 67ca804..3bc1e17 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -52,7 +52,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/qil_a9g20_128mib_defconfig b/arch/arm/configs/qil_a9g20_128mib_defconfig
index 2c4a160..88ea874 100644
--- a/arch/arm/configs/qil_a9g20_128mib_defconfig
+++ b/arch/arm/configs/qil_a9g20_128mib_defconfig
@@ -53,7 +53,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/qil_a9g20_defconfig b/arch/arm/configs/qil_a9g20_defconfig
index 5b2e9ef..05e6cdf 100644
--- a/arch/arm/configs/qil_a9g20_defconfig
+++ b/arch/arm/configs/qil_a9g20_defconfig
@@ -52,7 +52,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/rockchip_defconfig b/arch/arm/configs/rockchip_defconfig
index 3bc4a80..e8067ca 100644
--- a/arch/arm/configs/rockchip_defconfig
+++ b/arch/arm/configs/rockchip_defconfig
@@ -45,7 +45,7 @@ CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/sama5d3xek_defconfig b/arch/arm/configs/sama5d3xek_defconfig
index 970ded5..030cb1f 100644
--- a/arch/arm/configs/sama5d3xek_defconfig
+++ b/arch/arm/configs/sama5d3xek_defconfig
@@ -55,7 +55,7 @@ CONFIG_CMD_MIITOOL=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_MICREL_PHY=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
index 21a2571..0e90302 100644
--- a/arch/arm/configs/scb9328_defconfig
+++ b/arch/arm/configs/scb9328_defconfig
@@ -46,7 +46,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index 0c5a6a7..0758561 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -64,7 +64,7 @@ CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
diff --git a/arch/arm/configs/telit_evk_pro3_defconfig b/arch/arm/configs/telit_evk_pro3_defconfig
index 050d176..62e779b 100644
--- a/arch/arm/configs/telit_evk_pro3_defconfig
+++ b/arch/arm/configs/telit_evk_pro3_defconfig
@@ -47,7 +47,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index af22234..a3611be 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -54,7 +54,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index 652fd3d..5554eb1 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -54,7 +54,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index a84e90f..2995ce8 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -55,7 +55,7 @@ CONFIG_CMD_SPI=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/tqma53_defconfig b/arch/arm/configs/tqma53_defconfig
index 26e6b28..2d36bc0 100644
--- a/arch/arm/configs/tqma53_defconfig
+++ b/arch/arm/configs/tqma53_defconfig
@@ -57,7 +57,7 @@ CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
diff --git a/arch/arm/configs/tx25stk5_defconfig b/arch/arm/configs/tx25stk5_defconfig
index b499b5d..67620d3 100644
--- a/arch/arm/configs/tx25stk5_defconfig
+++ b/arch/arm/configs/tx25stk5_defconfig
@@ -62,7 +62,7 @@ CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
index 5c7c489..4f9a345 100644
--- a/arch/arm/configs/tx51stk5_defconfig
+++ b/arch/arm/configs/tx51stk5_defconfig
@@ -105,7 +105,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LED=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_IMX=y
diff --git a/arch/arm/configs/tx53stk5_defconfig b/arch/arm/configs/tx53stk5_defconfig
index e0ab9c8..d9444d8 100644
--- a/arch/arm/configs/tx53stk5_defconfig
+++ b/arch/arm/configs/tx53stk5_defconfig
@@ -58,7 +58,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LED=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_MTD=y
 CONFIG_NAND=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index 5f78c56..c3a5c31 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -57,7 +57,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
index 71774f9..c9f8f56 100644
--- a/arch/arm/configs/usb_a9263_128mib_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_defconfig
@@ -58,7 +58,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 251c654..522aaff 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -57,7 +57,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
index f4d412c..1e73e8f 100644
--- a/arch/arm/configs/usb_a9g20_128mib_defconfig
+++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
@@ -59,7 +59,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index 3062fb4..3e5f2c4 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -58,7 +58,7 @@ CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index 8daf9ae..7fe30f7 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -38,7 +38,7 @@ CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/arm/configs/vexpress_ca9_defconfig b/arch/arm/configs/vexpress_ca9_defconfig
index f16a8ca..ba1aaf5 100644
--- a/arch/arm/configs/vexpress_ca9_defconfig
+++ b/arch/arm/configs/vexpress_ca9_defconfig
@@ -46,7 +46,7 @@ CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_SERIAL_AMBA_PL011=y
diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
index e166078..1b8e4ad 100644
--- a/arch/arm/configs/vexpress_defconfig
+++ b/arch/arm/configs/vexpress_defconfig
@@ -45,7 +45,7 @@ CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_SERIAL_AMBA_PL011=y
diff --git a/arch/arm/configs/vincell_defconfig b/arch/arm/configs/vincell_defconfig
index ac1f877..f788992 100644
--- a/arch/arm/configs/vincell_defconfig
+++ b/arch/arm/configs/vincell_defconfig
@@ -59,7 +59,7 @@ CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
diff --git a/arch/blackfin/configs/ipe337_defconfig b/arch/blackfin/configs/ipe337_defconfig
index 086a971..881aa83 100644
--- a/arch/blackfin/configs/ipe337_defconfig
+++ b/arch/blackfin/configs/ipe337_defconfig
@@ -21,7 +21,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_SMC911X=y
diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/dlink-dir-320_defconfig
index c35ea18..e9276aa 100644
--- a/arch/mips/configs/dlink-dir-320_defconfig
+++ b/arch/mips/configs/dlink-dir-320_defconfig
@@ -45,7 +45,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 3206222..0643e3d 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -50,7 +50,7 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
diff --git a/arch/nios2/configs/generic_defconfig b/arch/nios2/configs/generic_defconfig
index 4189990..9f9c85e 100644
--- a/arch/nios2/configs/generic_defconfig
+++ b/arch/nios2/configs/generic_defconfig
@@ -25,7 +25,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_DRIVER_NET_TSE=y
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
diff --git a/arch/openrisc/configs/generic_defconfig b/arch/openrisc/configs/generic_defconfig
index 53ff671..03242bb 100644
--- a/arch/openrisc/configs/generic_defconfig
+++ b/arch/openrisc/configs/generic_defconfig
@@ -20,7 +20,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_ETHOC=y
diff --git a/arch/ppc/configs/da923rc_defconfig b/arch/ppc/configs/da923rc_defconfig
index cdcc10e..a6d38fd 100644
--- a/arch/ppc/configs/da923rc_defconfig
+++ b/arch/ppc/configs/da923rc_defconfig
@@ -28,7 +28,7 @@ CONFIG_CMD_SLEEP=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_NET_TFTP=y
 CONFIG_NET_TFTP_PUSH=y
 CONFIG_FS_TFTP=y
diff --git a/arch/ppc/configs/p1022ds_defconfig b/arch/ppc/configs/p1022ds_defconfig
index 878286b..c517336 100644
--- a/arch/ppc/configs/p1022ds_defconfig
+++ b/arch/ppc/configs/p1022ds_defconfig
@@ -35,7 +35,7 @@ CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_RELOCATABLE=y
 CONFIG_DRIVER_NET_GIANFAR=y
 CONFIG_NET=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_TFTP=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/ppc/configs/p2020rdb_defconfig
index c34e48d..817c9a0 100644
--- a/arch/ppc/configs/p2020rdb_defconfig
+++ b/arch/ppc/configs/p2020rdb_defconfig
@@ -38,7 +38,7 @@ CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_RELOCATABLE=y
 CONFIG_DRIVER_NET_GIANFAR=y
 CONFIG_NET=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_TFTP=y
 CONFIG_CMD_TFTP=y
diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index 9743841..da82fad 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -30,7 +30,7 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_ARCH_MPC5XXX=y
diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 2ef8fa4..e651838 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -22,7 +22,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_PING=y
+CONFIG_CMD_PING=y
 CONFIG_DRIVER_NET_TAP=y
 # CONFIG_SPI is not set
 CONFIG_FS_CRAMFS=y
diff --git a/commands/Kconfig b/commands/Kconfig
index 966d5fd..c4e1d97 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1072,6 +1072,14 @@ config CMD_MIITOOL
 	  detailed MII status information, such as MII capabilities,
 	  current advertising mode, and link partner capabilities.
 
+config CMD_PING
+	tristate
+	prompt "ping"
+	help
+	  Send ICMP echo requests.
+
+	  Usage: ping DESTINATION
+
 config CMD_TFTP
 	depends on FS_TFTP
 	tristate
diff --git a/net/Kconfig b/net/Kconfig
index 59b6417..e1acd3c 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -11,10 +11,6 @@ config NET_NFS
 	bool
 	prompt "nfs support"
 
-config NET_PING
-	bool
-	prompt "ping support"
-
 config NET_NETCONSOLE
 	bool
 	depends on !CONSOLE_NONE
diff --git a/net/Makefile b/net/Makefile
index fabb17e..e0bb6bb 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -2,7 +2,7 @@ obj-$(CONFIG_NET_DHCP)	+= dhcp.o
 obj-$(CONFIG_NET)	+= eth.o
 obj-$(CONFIG_NET)	+= net.o
 obj-$(CONFIG_NET_NFS)	+= nfs.o
-obj-$(CONFIG_NET_PING)	+= ping.o
+obj-$(CONFIG_CMD_PING)	+= ping.o
 obj-$(CONFIG_NET_RESOLV)+= dns.o
 obj-$(CONFIG_NET_NETCONSOLE) += netconsole.o
 obj-$(CONFIG_NET_IFUP)	+= ifup.o
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
