Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THHnJ-0005aI-DF
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 17:22:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Sep 2012 19:22:25 +0200
Message-Id: <1348766546-21547-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348766546-21547-1-git-send-email-s.hauer@pengutronix.de>
References: <1348766546-21547-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] defconfig: Switch all defconfig to new tftp command
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/a9m2410_defconfig                 |    3 ++-
 arch/arm/configs/a9m2440_defconfig                 |    3 ++-
 arch/arm/configs/at91rm9200ek_defconfig            |    4 ++--
 arch/arm/configs/at91sam9260ek_defconfig           |    3 ++-
 arch/arm/configs/at91sam9261ek_defconfig           |    4 ++--
 arch/arm/configs/at91sam9263ek_defconfig           |    3 ++-
 arch/arm/configs/at91sam9g10ek_defconfig           |    4 ++--
 arch/arm/configs/at91sam9g20ek_defconfig           |    3 ++-
 arch/arm/configs/at91sam9m10g45ek_defconfig        |    4 ++--
 arch/arm/configs/at91sam9x5ek_defconfig            |    3 ++-
 arch/arm/configs/chumbyone_defconfig               |    4 ++--
 arch/arm/configs/cupid_defconfig                   |    4 ++--
 arch/arm/configs/dss11_defconfig                   |    4 ++--
 arch/arm/configs/edb93xx_defconfig                 |    3 ++-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    4 ++--
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    3 ++-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    4 ++--
 arch/arm/configs/eukrea_cpuimx51_defconfig         |    4 ++--
 arch/arm/configs/freescale-mx6-arm2_defconfig      |    4 ++--
 arch/arm/configs/freescale-mx6-sabrelite_defconfig |    3 +++
 arch/arm/configs/freescale_mx25_3stack_defconfig   |    3 ++-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |    3 ++-
 arch/arm/configs/freescale_mx53_loco_defconfig     |    4 ++--
 arch/arm/configs/freescale_mx53_smd_defconfig      |    4 ++--
 arch/arm/configs/friendlyarm_mini2440_defconfig    |    3 ++-
 arch/arm/configs/imx28evk_defconfig                |    3 ++-
 arch/arm/configs/mmccpu_defconfig                  |    3 ++-
 arch/arm/configs/mx21ads_defconfig                 |    3 ++-
 arch/arm/configs/mx27ads_defconfig                 |    3 ++-
 arch/arm/configs/neso_defconfig                    |    4 ++--
 arch/arm/configs/netx_nxdb500_defconfig            |    3 ++-
 arch/arm/configs/nhk8815_defconfig                 |    4 ++--
 arch/arm/configs/omap3530_beagle_defconfig         |    4 ++--
 arch/arm/configs/panda_defconfig                   |    4 ++--
 arch/arm/configs/pca100_defconfig                  |    4 ++--
 arch/arm/configs/pcm027_defconfig                  |    4 ++--
 arch/arm/configs/pcm037_defconfig                  |    4 ++--
 arch/arm/configs/pcm043_defconfig                  |    4 ++--
 arch/arm/configs/pcm049_defconfig                  |    4 ++--
 arch/arm/configs/phycard_a_l1_defconfig            |    4 ++--
 arch/arm/configs/phycard_a_xl2_defconfig           |    4 ++--
 arch/arm/configs/pm9261_defconfig                  |    4 ++--
 arch/arm/configs/pm9263_defconfig                  |    3 ++-
 arch/arm/configs/pm9g45_defconfig                  |    4 ++--
 arch/arm/configs/qil_a9260_128mib_defconfig        |    4 ++--
 arch/arm/configs/qil_a9260_defconfig               |    4 ++--
 arch/arm/configs/scb9328_defconfig                 |    4 ++--
 arch/arm/configs/tny_a9260_defconfig               |    3 ++-
 arch/arm/configs/tny_a9263_defconfig               |    3 ++-
 arch/arm/configs/tny_a9g20_defconfig               |    3 ++-
 arch/arm/configs/toshiba_ac100_defconfig           |    4 ++--
 arch/arm/configs/tx25stk5_defconfig                |    4 ++--
 arch/arm/configs/tx28stk5_defconfig                |    3 ++-
 arch/arm/configs/tx51stk5_defconfig                |    4 ++--
 arch/arm/configs/usb_a9260_defconfig               |    4 ++--
 arch/arm/configs/usb_a9263_128mib_defconfig        |    4 ++--
 arch/arm/configs/usb_a9263_defconfig               |    4 ++--
 arch/arm/configs/usb_a9g20_128mib_defconfig        |    4 ++--
 arch/arm/configs/usb_a9g20_defconfig               |    4 ++--
 arch/arm/configs/versatilepb_defconfig             |    4 ++--
 arch/blackfin/configs/ipe337_defconfig             |    3 ++-
 arch/mips/configs/dlink-dir-320_defconfig          |    4 ++--
 arch/mips/configs/qemu-malta_defconfig             |    4 ++--
 arch/ppc/configs/pcm030_defconfig                  |    3 ++-
 arch/sandbox/configs/sandbox_defconfig             |    3 ++-
 65 files changed, 131 insertions(+), 104 deletions(-)

diff --git a/arch/arm/configs/a9m2410_defconfig b/arch/arm/configs/a9m2410_defconfig
index 1955023..a69b0f9 100644
--- a/arch/arm/configs/a9m2410_defconfig
+++ b/arch/arm/configs/a9m2410_defconfig
@@ -29,6 +29,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/a9m2440_defconfig b/arch/arm/configs/a9m2440_defconfig
index ebdf64f..c4c4e1e 100644
--- a/arch/arm/configs/a9m2440_defconfig
+++ b/arch/arm/configs/a9m2440_defconfig
@@ -31,6 +31,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index 1c56787..6a105c6 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -45,8 +45,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_AT91_ETHER=y
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 9466c07..b746bc8 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -48,7 +48,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index 0fd31d6..5daa47b 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -47,8 +47,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index b91d2e2..5d44052 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -45,7 +45,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_DRIVER_CFI=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index 0cc37ac..b22969c 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -47,8 +47,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index c1c1ff7..af10c6c 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -49,7 +49,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 1fa37d6..0929f8e 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -53,8 +53,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index e67ebc9..cda360d 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -47,7 +47,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
index 1b03530..228a7b2 100644
--- a/arch/arm/configs/chumbyone_defconfig
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -36,8 +36,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_NET_USB=y
diff --git a/arch/arm/configs/cupid_defconfig b/arch/arm/configs/cupid_defconfig
index d7716ea..e2ad9c6 100644
--- a/arch/arm/configs/cupid_defconfig
+++ b/arch/arm/configs/cupid_defconfig
@@ -52,8 +52,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
diff --git a/arch/arm/configs/dss11_defconfig b/arch/arm/configs/dss11_defconfig
index 71143c9..b4fcf01 100644
--- a/arch/arm/configs/dss11_defconfig
+++ b/arch/arm/configs/dss11_defconfig
@@ -20,8 +20,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
diff --git a/arch/arm/configs/edb93xx_defconfig b/arch/arm/configs/edb93xx_defconfig
index 3b66384..363e511 100644
--- a/arch/arm/configs/edb93xx_defconfig
+++ b/arch/arm/configs/edb93xx_defconfig
@@ -26,7 +26,8 @@ CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_EP93XX=y
 # CONFIG_SPI is not set
 CONFIG_DRIVER_CFI=y
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index 5eb4ff3..c3537aa 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -53,8 +53,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index 2b95156..880941d 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -38,7 +38,8 @@ CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index 16ef4cc..f85e9a2 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -54,8 +54,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/eukrea_cpuimx51_defconfig b/arch/arm/configs/eukrea_cpuimx51_defconfig
index 7261796..e4ec7b0 100644
--- a/arch/arm/configs/eukrea_cpuimx51_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx51_defconfig
@@ -49,8 +49,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
diff --git a/arch/arm/configs/freescale-mx6-arm2_defconfig b/arch/arm/configs/freescale-mx6-arm2_defconfig
index c150cc7..d2812e4 100644
--- a/arch/arm/configs/freescale-mx6-arm2_defconfig
+++ b/arch/arm/configs/freescale-mx6-arm2_defconfig
@@ -48,8 +48,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_NET_USB=y
diff --git a/arch/arm/configs/freescale-mx6-sabrelite_defconfig b/arch/arm/configs/freescale-mx6-sabrelite_defconfig
index 7e6cfa1..be7919b 100644
--- a/arch/arm/configs/freescale-mx6-sabrelite_defconfig
+++ b/arch/arm/configs/freescale-mx6-sabrelite_defconfig
@@ -56,6 +56,9 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_RESOLV=y
+CONFIG_NET_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_MTD_M25P80=y
diff --git a/arch/arm/configs/freescale_mx25_3stack_defconfig b/arch/arm/configs/freescale_mx25_3stack_defconfig
index eac343f..888736a 100644
--- a/arch/arm/configs/freescale_mx25_3stack_defconfig
+++ b/arch/arm/configs/freescale_mx25_3stack_defconfig
@@ -49,7 +49,8 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
 CONFIG_USB=y
diff --git a/arch/arm/configs/freescale_mx35_3stack_defconfig b/arch/arm/configs/freescale_mx35_3stack_defconfig
index 4052325..2f45764 100644
--- a/arch/arm/configs/freescale_mx35_3stack_defconfig
+++ b/arch/arm/configs/freescale_mx35_3stack_defconfig
@@ -49,7 +49,8 @@ CONFIG_CMD_I2C=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/freescale_mx53_loco_defconfig b/arch/arm/configs/freescale_mx53_loco_defconfig
index 6cb4c17..37aa182 100644
--- a/arch/arm/configs/freescale_mx53_loco_defconfig
+++ b/arch/arm/configs/freescale_mx53_loco_defconfig
@@ -50,8 +50,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/freescale_mx53_smd_defconfig b/arch/arm/configs/freescale_mx53_smd_defconfig
index 1ede9ac..f18c436 100644
--- a/arch/arm/configs/freescale_mx53_smd_defconfig
+++ b/arch/arm/configs/freescale_mx53_smd_defconfig
@@ -51,8 +51,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/friendlyarm_mini2440_defconfig b/arch/arm/configs/friendlyarm_mini2440_defconfig
index 5551ffe..955e71b 100644
--- a/arch/arm/configs/friendlyarm_mini2440_defconfig
+++ b/arch/arm/configs/friendlyarm_mini2440_defconfig
@@ -32,7 +32,8 @@ CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
 CONFIG_USB=y
diff --git a/arch/arm/configs/imx28evk_defconfig b/arch/arm/configs/imx28evk_defconfig
index f4d4661..0cc269b 100644
--- a/arch/arm/configs/imx28evk_defconfig
+++ b/arch/arm/configs/imx28evk_defconfig
@@ -38,7 +38,8 @@ CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/mmccpu_defconfig b/arch/arm/configs/mmccpu_defconfig
index 3f1af6a..334c5e8 100644
--- a/arch/arm/configs/mmccpu_defconfig
+++ b/arch/arm/configs/mmccpu_defconfig
@@ -29,7 +29,8 @@ CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
diff --git a/arch/arm/configs/mx21ads_defconfig b/arch/arm/configs/mx21ads_defconfig
index e63a386..28ad013 100644
--- a/arch/arm/configs/mx21ads_defconfig
+++ b/arch/arm/configs/mx21ads_defconfig
@@ -31,7 +31,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_CS8900=y
 # CONFIG_SPI is not set
 CONFIG_DRIVER_CFI=y
diff --git a/arch/arm/configs/mx27ads_defconfig b/arch/arm/configs/mx27ads_defconfig
index 34fe81d..077e799 100644
--- a/arch/arm/configs/mx27ads_defconfig
+++ b/arch/arm/configs/mx27ads_defconfig
@@ -30,7 +30,8 @@ CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_INTEL is not set
diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
index 3ea6891..7e1cce8 100644
--- a/arch/arm/configs/neso_defconfig
+++ b/arch/arm/configs/neso_defconfig
@@ -52,8 +52,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
diff --git a/arch/arm/configs/netx_nxdb500_defconfig b/arch/arm/configs/netx_nxdb500_defconfig
index 179058b..6d32c56 100644
--- a/arch/arm/configs/netx_nxdb500_defconfig
+++ b/arch/arm/configs/netx_nxdb500_defconfig
@@ -23,7 +23,8 @@ CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_NETX=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index cec50d5..015b576 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -39,8 +39,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_SERIAL_AMBA_PL011=y
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index 621bd49..0d83a4f 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -37,8 +37,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_NET_USB=y
diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
index 0b2d423..5f53ff9 100644
--- a/arch/arm/configs/panda_defconfig
+++ b/arch/arm/configs/panda_defconfig
@@ -48,8 +48,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_NET_USB=y
diff --git a/arch/arm/configs/pca100_defconfig b/arch/arm/configs/pca100_defconfig
index 76039e2..db2b164 100644
--- a/arch/arm/configs/pca100_defconfig
+++ b/arch/arm/configs/pca100_defconfig
@@ -50,8 +50,8 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_NET_USB=y
diff --git a/arch/arm/configs/pcm027_defconfig b/arch/arm/configs/pcm027_defconfig
index 5a65a72..e08955b 100644
--- a/arch/arm/configs/pcm027_defconfig
+++ b/arch/arm/configs/pcm027_defconfig
@@ -49,8 +49,8 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_PXA=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/pcm037_defconfig b/arch/arm/configs/pcm037_defconfig
index 7705bcf..5a527d5 100644
--- a/arch/arm/configs/pcm037_defconfig
+++ b/arch/arm/configs/pcm037_defconfig
@@ -51,8 +51,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_NET_USB=y
diff --git a/arch/arm/configs/pcm043_defconfig b/arch/arm/configs/pcm043_defconfig
index 7f7a2d6..7c62193 100644
--- a/arch/arm/configs/pcm043_defconfig
+++ b/arch/arm/configs/pcm043_defconfig
@@ -54,8 +54,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/pcm049_defconfig b/arch/arm/configs/pcm049_defconfig
index cf1cf48..adb600f 100644
--- a/arch/arm/configs/pcm049_defconfig
+++ b/arch/arm/configs/pcm049_defconfig
@@ -50,8 +50,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_NET_SMC911X=y
diff --git a/arch/arm/configs/phycard_a_l1_defconfig b/arch/arm/configs/phycard_a_l1_defconfig
index 4cf2d21..5170722 100644
--- a/arch/arm/configs/phycard_a_l1_defconfig
+++ b/arch/arm/configs/phycard_a_l1_defconfig
@@ -128,8 +128,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/phycard_a_xl2_defconfig b/arch/arm/configs/phycard_a_xl2_defconfig
index 62ea5e9..f091b82 100644
--- a/arch/arm/configs/phycard_a_xl2_defconfig
+++ b/arch/arm/configs/phycard_a_xl2_defconfig
@@ -39,8 +39,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_NET_KS8851_MLL=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index 39f401f..1db16d5 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -39,8 +39,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index b76f201..8c92894 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -29,7 +29,8 @@ CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_DRIVER_CFI=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 3c9fa69..331f122 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -22,8 +22,8 @@ CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
diff --git a/arch/arm/configs/qil_a9260_128mib_defconfig b/arch/arm/configs/qil_a9260_128mib_defconfig
index cc2c6ac..8cd28f4 100644
--- a/arch/arm/configs/qil_a9260_128mib_defconfig
+++ b/arch/arm/configs/qil_a9260_128mib_defconfig
@@ -55,8 +55,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index 225f785..13460e8 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -54,8 +54,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
index 1a16999..818bbd0 100644
--- a/arch/arm/configs/scb9328_defconfig
+++ b/arch/arm/configs/scb9328_defconfig
@@ -47,8 +47,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index e525966..af22234 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -55,7 +55,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index 0a83b05..c199cca 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -55,7 +55,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index 8d606d1..cf5d4c5 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -55,7 +55,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
diff --git a/arch/arm/configs/toshiba_ac100_defconfig b/arch/arm/configs/toshiba_ac100_defconfig
index 053f53a..065189d 100644
--- a/arch/arm/configs/toshiba_ac100_defconfig
+++ b/arch/arm/configs/toshiba_ac100_defconfig
@@ -26,8 +26,8 @@ CONFIG_CMD_GO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_NET_USB=y
diff --git a/arch/arm/configs/tx25stk5_defconfig b/arch/arm/configs/tx25stk5_defconfig
index e098ef8..8ec5178 100644
--- a/arch/arm/configs/tx25stk5_defconfig
+++ b/arch/arm/configs/tx25stk5_defconfig
@@ -51,8 +51,8 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/tx28stk5_defconfig b/arch/arm/configs/tx28stk5_defconfig
index 49a0ab3..3cefa76 100644
--- a/arch/arm/configs/tx28stk5_defconfig
+++ b/arch/arm/configs/tx28stk5_defconfig
@@ -46,7 +46,8 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
index 2c83189..354e809 100644
--- a/arch/arm/configs/tx51stk5_defconfig
+++ b/arch/arm/configs/tx51stk5_defconfig
@@ -106,8 +106,8 @@ CONFIG_CMD_LED=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_IMX=y
 CONFIG_ARCH_HAS_FEC_IMX=y
 CONFIG_PHYLIB=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index 8fd2a18..5f78c56 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -58,8 +58,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
index efd68a8..87f708f 100644
--- a/arch/arm/configs/usb_a9263_128mib_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_defconfig
@@ -59,8 +59,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 9706d65..9bfb7e7 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -58,8 +58,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
index 026cbcc..4a6c933 100644
--- a/arch/arm/configs/usb_a9g20_128mib_defconfig
+++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
@@ -59,8 +59,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index f32593f..e851b9c 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -58,8 +58,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index 1b51d91..87aec4d 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -37,8 +37,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_SERIAL_AMBA_PL011=y
diff --git a/arch/blackfin/configs/ipe337_defconfig b/arch/blackfin/configs/ipe337_defconfig
index ffd144c..d01c7e7 100644
--- a/arch/blackfin/configs/ipe337_defconfig
+++ b/arch/blackfin/configs/ipe337_defconfig
@@ -22,7 +22,8 @@ CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/dlink-dir-320_defconfig
index 88c0e83..3cd16c9 100644
--- a/arch/mips/configs/dlink-dir-320_defconfig
+++ b/arch/mips/configs/dlink-dir-320_defconfig
@@ -46,8 +46,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 # CONFIG_SPI is not set
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 50e0dc4..7ade1aa 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -45,8 +45,8 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 # CONFIG_SPI is not set
diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index c037502..d2ff16c 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -31,7 +31,8 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_ARCH_MPC5XXX=y
 CONFIG_MACH_PHYCORE_MPC5200B_TINY=y
 CONFIG_DRIVER_NET_MPC5200=y
diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index d105584..2ee7f78 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -21,7 +21,8 @@ CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_TAP=y
 # CONFIG_SPI is not set
 CONFIG_FS_CRAMFS=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
