Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OofJF-0006JC-CR
	for barebox@lists.infradead.org; Thu, 26 Aug 2010 16:28:19 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 26 Aug 2010 18:27:52 +0200
Message-Id: <1282840072-8005-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] net: rework the mii support
To: barebox@lists.infradead.org

this rework is done in order to add a phylib and allow to have phy driver support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/a9m2410_defconfig                 |    2 +-
 arch/arm/configs/a9m2440_defconfig                 |    2 +-
 arch/arm/configs/at91sam9260ek_defconfig           |    2 +-
 arch/arm/configs/at91sam9263ek_defconfig           |    2 +-
 arch/arm/configs/edb93xx_defconfig                 |    2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |    2 +-
 arch/arm/configs/freescale_mx25_3stack_defconfig   |    2 +-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |    2 +-
 arch/arm/configs/mmccpu_defconfig                  |    2 +-
 arch/arm/configs/neso_defconfig                    |    2 +-
 arch/arm/configs/netx_nxdb500_defconfig            |    2 +-
 arch/arm/configs/nhk8815_defconfig                 |    2 +-
 arch/arm/configs/omap3530_beagle_defconfig         |    2 +-
 arch/arm/configs/pca100_defconfig                  |    2 +-
 arch/arm/configs/pcm037_defconfig                  |    2 +-
 arch/arm/configs/pcm038_defconfig                  |    2 +-
 arch/arm/configs/pcm043_defconfig                  |    2 +-
 arch/arm/configs/pm9263_defconfig                  |    2 +-
 arch/arm/configs/scb9328_defconfig                 |    2 +-
 arch/blackfin/configs/ipe337_defconfig             |    2 +-
 .../m68k/configs/phycore_kpukdr1_5475num_defconfig |    2 +-
 arch/m68k/configs/phycore_mcf54xx_defconfig        |    2 +-
 arch/ppc/configs/pcm030_defconfig                  |    2 +-
 drivers/net/Kconfig                                |   18 +-
 drivers/net/Makefile                               |    2 +-
 drivers/net/at91_ether.c                           |   10 +-
 drivers/net/dm9000.c                               |   33 ++--
 drivers/net/ep93xx.c                               |   37 ++--
 drivers/net/ep93xx.h                               |    2 +-
 drivers/net/fec_imx.c                              |   33 ++--
 drivers/net/fec_imx.h                              |    2 +-
 drivers/net/fec_mpc5200.c                          |   35 ++--
 drivers/net/fec_mpc5200.h                          |    2 +-
 drivers/net/macb.c                                 |   33 ++--
 drivers/net/miidev.c                               |  228 +++++++++++++++++++
 drivers/net/miiphy.c                               |  224 -------------------
 drivers/net/netx_eth.c                             |   37 ++--
 drivers/net/smc91111.c                             |   32 ++--
 drivers/net/smc911x.c                              |   33 ++--
 drivers/net/usb/Kconfig                            |    2 +-
 drivers/net/usb/asix.c                             |   26 +--
 drivers/net/usb/usbnet.c                           |    6 +-
 include/linux/mii.h                                |  232 ++++++++++++++++++++
 include/miidev.h                                   |   62 ++++++
 include/miiphy.h                                   |  158 -------------
 include/usb/usbnet.h                               |    4 +-
 net/eth.c                                          |    2 +-
 49 files changed, 711 insertions(+), 592 deletions(-)
 create mode 100644 drivers/net/miidev.c
 delete mode 100644 drivers/net/miiphy.c
 create mode 100644 include/linux/mii.h
 create mode 100644 include/miidev.h
 delete mode 100644 include/miiphy.h

diff --git a/arch/arm/configs/a9m2410_defconfig b/arch/arm/configs/a9m2410_defconfig
index 9e888fc..e9fa74c 100644
--- a/arch/arm/configs/a9m2410_defconfig
+++ b/arch/arm/configs/a9m2410_defconfig
@@ -198,7 +198,7 @@ CONFIG_NET_TFTP=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
 CONFIG_DRIVER_SERIAL_S3C24X0=y
 # CONFIG_DRIVER_SERIAL_S3C24X0_AUTOSYNC is not set
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/a9m2440_defconfig b/arch/arm/configs/a9m2440_defconfig
index f69dcfd..b7a26bc 100644
--- a/arch/arm/configs/a9m2440_defconfig
+++ b/arch/arm/configs/a9m2440_defconfig
@@ -200,7 +200,7 @@ CONFIG_NET_TFTP=y
 CONFIG_DRIVER_SERIAL_S3C24X0=y
 # CONFIG_DRIVER_SERIAL_S3C24X0_AUTOSYNC is not set
 CONFIG_HAS_CS8900=y
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index b40485b..0387b71 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -185,7 +185,7 @@ CONFIG_NET_TFTP=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
 CONFIG_DRIVER_SERIAL_ATMEL=y
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index d423c2f..ae4006c 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -189,7 +189,7 @@ CONFIG_NET_TFTP=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
 CONFIG_DRIVER_SERIAL_ATMEL=y
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/edb93xx_defconfig b/arch/arm/configs/edb93xx_defconfig
index d8fe23f..936bd47 100644
--- a/arch/arm/configs/edb93xx_defconfig
+++ b/arch/arm/configs/edb93xx_defconfig
@@ -199,7 +199,7 @@ CONFIG_NET_TFTP=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
 CONFIG_DRIVER_SERIAL_PL010=y
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers               
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index 14f06c2..abafc72 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -211,7 +211,7 @@ CONFIG_NET_TFTP=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_IMX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers               
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index c7f6b78..13df567 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -219,7 +219,7 @@ CONFIG_NET_TFTP=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_IMX=y
 CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers               
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index 7c5b49a..77f5246 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -214,7 +214,7 @@ CONFIG_NET_TFTP=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_IMX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers               
diff --git a/arch/arm/configs/freescale_mx25_3stack_defconfig b/arch/arm/configs/freescale_mx25_3stack_defconfig
index fd7dd42..b45b995 100644
--- a/arch/arm/configs/freescale_mx25_3stack_defconfig
+++ b/arch/arm/configs/freescale_mx25_3stack_defconfig
@@ -201,7 +201,7 @@ CONFIG_NET_TFTP=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_IMX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/freescale_mx35_3stack_defconfig b/arch/arm/configs/freescale_mx35_3stack_defconfig
index 4321fbc..ff3ba6a 100644
--- a/arch/arm/configs/freescale_mx35_3stack_defconfig
+++ b/arch/arm/configs/freescale_mx35_3stack_defconfig
@@ -201,7 +201,7 @@ CONFIG_NET_TFTP=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_IMX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers               
diff --git a/arch/arm/configs/mmccpu_defconfig b/arch/arm/configs/mmccpu_defconfig
index a8c41e7..e196a0c 100644
--- a/arch/arm/configs/mmccpu_defconfig
+++ b/arch/arm/configs/mmccpu_defconfig
@@ -189,7 +189,7 @@ CONFIG_NET_TFTP=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
 CONFIG_DRIVER_SERIAL_ATMEL=y
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
index 3f2a978..03673f2 100644
--- a/arch/arm/configs/neso_defconfig
+++ b/arch/arm/configs/neso_defconfig
@@ -212,7 +212,7 @@ CONFIG_NET_RESOLV=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_IMX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/netx_nxdb500_defconfig b/arch/arm/configs/netx_nxdb500_defconfig
index 95afb5e..7047d6b 100644
--- a/arch/arm/configs/netx_nxdb500_defconfig
+++ b/arch/arm/configs/netx_nxdb500_defconfig
@@ -184,7 +184,7 @@ CONFIG_NET_TFTP=y
 CONFIG_DRIVER_SERIAL_NETX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
 CONFIG_HAS_NETX_ETHER=y
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index 1488838..21d596f 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -189,7 +189,7 @@ CONFIG_NET_TFTP=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_SERIAL_AMBA_PL011=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index 2383c63..41b8d87 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -202,7 +202,7 @@ CONFIG_NET_TFTP=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/pca100_defconfig b/arch/arm/configs/pca100_defconfig
index accc6ef..5053bf6 100644
--- a/arch/arm/configs/pca100_defconfig
+++ b/arch/arm/configs/pca100_defconfig
@@ -210,7 +210,7 @@ CONFIG_NET_NETCONSOLE=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_IMX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/pcm037_defconfig b/arch/arm/configs/pcm037_defconfig
index bb67995..bfee2b2 100644
--- a/arch/arm/configs/pcm037_defconfig
+++ b/arch/arm/configs/pcm037_defconfig
@@ -211,7 +211,7 @@ CONFIG_NET_NETCONSOLE=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_IMX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/pcm038_defconfig b/arch/arm/configs/pcm038_defconfig
index 2925c9c..a2b31f2 100644
--- a/arch/arm/configs/pcm038_defconfig
+++ b/arch/arm/configs/pcm038_defconfig
@@ -211,7 +211,7 @@ CONFIG_NET_NETCONSOLE=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_IMX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/pcm043_defconfig b/arch/arm/configs/pcm043_defconfig
index 31c65f1..b374c7c 100644
--- a/arch/arm/configs/pcm043_defconfig
+++ b/arch/arm/configs/pcm043_defconfig
@@ -213,7 +213,7 @@ CONFIG_NET_NETCONSOLE=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 CONFIG_DRIVER_SERIAL_IMX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index d5ee46a..da7a856 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -189,7 +189,7 @@ CONFIG_NET_TFTP=y
 # CONFIG_DRIVER_SERIAL_ARM_DCC is not set
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
 CONFIG_DRIVER_SERIAL_ATMEL=y
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
index 7dc56dd..eaf7bd4 100644
--- a/arch/arm/configs/scb9328_defconfig
+++ b/arch/arm/configs/scb9328_defconfig
@@ -201,7 +201,7 @@ CONFIG_NET_TFTP=y
 CONFIG_DRIVER_SERIAL_IMX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
 CONFIG_HAS_DM9000=y
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/blackfin/configs/ipe337_defconfig b/arch/blackfin/configs/ipe337_defconfig
index 33fd2fc..e5667dc 100644
--- a/arch/blackfin/configs/ipe337_defconfig
+++ b/arch/blackfin/configs/ipe337_defconfig
@@ -146,7 +146,7 @@ CONFIG_NET_TFTP=y
 #
 CONFIG_DRIVER_SERIAL_BLACKFIN=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers               
diff --git a/arch/m68k/configs/phycore_kpukdr1_5475num_defconfig b/arch/m68k/configs/phycore_kpukdr1_5475num_defconfig
index bb91152..d868808 100644
--- a/arch/m68k/configs/phycore_kpukdr1_5475num_defconfig
+++ b/arch/m68k/configs/phycore_kpukdr1_5475num_defconfig
@@ -163,7 +163,7 @@ CONFIG_NET_TFTP=y
 # serial drivers
 #
 CONFIG_DRIVER_SERIAL_MCFV4E=y
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers
diff --git a/arch/m68k/configs/phycore_mcf54xx_defconfig b/arch/m68k/configs/phycore_mcf54xx_defconfig
index f64ca8b..ca3387a 100644
--- a/arch/m68k/configs/phycore_mcf54xx_defconfig
+++ b/arch/m68k/configs/phycore_mcf54xx_defconfig
@@ -163,7 +163,7 @@ CONFIG_NET_TFTP=y
 # serial drivers                
 #
 CONFIG_DRIVER_SERIAL_MCFV4E=y
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers               
diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index efdfb52..56d8844 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -154,7 +154,7 @@ CONFIG_NET_TFTP=y
 #
 CONFIG_DRIVER_SERIAL_MPC5XXX=y
 # CONFIG_DRIVER_SERIAL_NS16550 is not set
-CONFIG_MIIPHY=y
+CONFIG_MIIDEV=y
 
 #
 # Network drivers               
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index a106a7b..69f3352 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -13,7 +13,7 @@ config HAS_AT91_ETHER
 config HAS_NETX_ETHER
 	bool
 
-config MIIPHY
+config MIIDEV
 	bool
 
 menu "Network drivers               "
@@ -25,7 +25,7 @@ config DRIVER_NET_CS8900
 
 config DRIVER_NET_SMC911X
 	bool "smc911x ethernet driver"
-	select MIIPHY
+	select MIIDEV
 	help
 	  This option enables support for the SMSC LAN9[12]1[567]
 	  ethernet chip.
@@ -38,7 +38,7 @@ config DRIVER_NET_SMC911X_ADDRESS_SHIFT
 
 config DRIVER_NET_SMC91111
 	bool "smc91111 ethernet driver"
-	select MIIPHY
+	select MIIDEV
 	help
 	  This option enables support for the SMSC LAN91C111
 	  ethernet chip.
@@ -46,12 +46,12 @@ config DRIVER_NET_SMC91111
 config DRIVER_NET_DM9000
 	bool "Davicom dm9000 ethernet driver"
 	depends on HAS_DM9000
-	select MIIPHY
+	select MIIDEV
 
 config DRIVER_NET_NETX
 	bool "Hilscher Netx ethernet driver"
 	depends on HAS_NETX_ETHER
-	select MIIPHY
+	select MIIDEV
 
 config DRIVER_NET_AT91_ETHER
 	bool "at91 ethernet driver"
@@ -60,22 +60,22 @@ config DRIVER_NET_AT91_ETHER
 config DRIVER_NET_MPC5200
 	bool "MPC5200 Ethernet driver"
 	depends on ARCH_MPC5200
-	select MIIPHY
+	select MIIDEV
 
 config DRIVER_NET_FEC_IMX
 	bool "i.MX FEC Ethernet driver"
 	depends on ARCH_HAS_FEC_IMX
-	select MIIPHY
+	select MIIDEV
 
 config DRIVER_NET_EP93XX
 	bool "EP93xx Ethernet driver"
 	depends on ARCH_EP93XX
-	select MIIPHY
+	select MIIDEV
 
 config DRIVER_NET_MACB
 	bool "macb Ethernet driver"
 	depends on HAS_MACB
-	select MIIPHY
+	select MIIDEV
 
 config DRIVER_NET_TAP
 	bool "tap Ethernet driver"
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 1b6f104..96d3d32 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -9,5 +9,5 @@ obj-$(CONFIG_DRIVER_NET_FEC_IMX)	+= fec_imx.o
 obj-$(CONFIG_DRIVER_NET_EP93XX)		+= ep93xx.o
 obj-$(CONFIG_DRIVER_NET_MACB)		+= macb.o
 obj-$(CONFIG_DRIVER_NET_TAP)		+= tap.o
-obj-$(CONFIG_MIIPHY)			+= miiphy.o
+obj-$(CONFIG_MIIDEV)			+= miidev.o
 obj-$(CONFIG_NET_USB)			+= usb/
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 3c4f4b0..4563ff3 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -24,7 +24,7 @@
 #include <at91rm9200_net.h>
 #include <init.h>
 #include <net.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include <malloc.h>
 #include <driver.h>
 
@@ -208,7 +208,7 @@ static void at91rm9200_eth_halt (struct eth_device *edev)
 };
 
 #if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
-int  at91rm9200_miiphy_read(char *devname, unsigned char addr,
+int  at91rm9200_miidev_read(char *devname, unsigned char addr,
 		unsigned char reg, unsigned short * value)
 {
 	at91rm9200_EmacEnableMDIO (p_mac);
@@ -217,7 +217,7 @@ int  at91rm9200_miiphy_read(char *devname, unsigned char addr,
 	return 0;
 }
 
-int  at91rm9200_miiphy_write(char *devname, unsigned char addr,
+int  at91rm9200_miidev_write(char *devname, unsigned char addr,
 		unsigned char reg, unsigned short value)
 {
 	at91rm9200_EmacEnableMDIO (p_mac);
@@ -228,10 +228,10 @@ int  at91rm9200_miiphy_write(char *devname, unsigned char addr,
 
 #endif	/* defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII) */
 
-int at91rm9200_miiphy_initialize(void)
+int at91rm9200_miidev_initialize(void)
 {
 #if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
-	miiphy_register("at91rm9200phy", at91rm9200_miiphy_read, at91rm9200_miiphy_write);
+	mii_register("at91rm9200phy", at91rm9200_miidev_read, at91rm9200_miidev_write);
 #endif
 	return 0;
 }
diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
index ab06735..c31cf1a 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -46,7 +46,7 @@
 #include <command.h>
 #include <driver.h>
 #include <clock.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include <malloc.h>
 #include <net.h>
 #include <init.h>
@@ -167,7 +167,7 @@
 struct dm9000_priv {
 	unsigned long iobase;
 	unsigned long iodata;
-	struct miiphy_device miiphy;
+	struct mii_device miidev;
 	int buswidth;
 };
 
@@ -200,9 +200,9 @@ static void DM9000_iow(struct dm9000_priv *priv, int reg, u8 value)
 	writeb(value, priv->iodata);
 }
 
-static int dm9000_phy_read(struct miiphy_device *mdev, uint8_t phy_addr,
-		uint8_t reg, uint16_t * val)
+static int dm9000_phy_read(struct mii_device *mdev, int addr, int reg)
 {
+	int val;
 	struct eth_device *edev = mdev->edev;
 	struct dm9000_priv *priv = edev->priv;
 
@@ -211,15 +211,14 @@ static int dm9000_phy_read(struct miiphy_device *mdev, uint8_t phy_addr,
 	DM9000_iow(priv, DM9000_EPCR, 0xc);	/* Issue phyxcer read command */
 	udelay(100);			/* Wait read complete */
 	DM9000_iow(priv, DM9000_EPCR, 0x0);	/* Clear phyxcer read command */
-	*val = (DM9000_ior(priv, DM9000_EPDRH) << 8) | DM9000_ior(priv, DM9000_EPDRL);
+	val = (DM9000_ior(priv, DM9000_EPDRH) << 8) | DM9000_ior(priv, DM9000_EPDRL);
 
 	/* The read data keeps on REG_0D & REG_0E */
 	debug("phy_read(%d): %d\n", reg, val);
-	return 0;
+	return val;
 }
 
-static int dm9000_phy_write(struct miiphy_device *mdev, uint8_t phy_addr,
-	uint8_t reg, uint16_t val)
+static int dm9000_phy_write(struct mii_device *mdev, int addr, int reg, int val)
 {
 	struct eth_device *edev = mdev->edev;
 	struct dm9000_priv *priv = edev->priv;
@@ -268,8 +267,8 @@ static int dm9000_eth_open(struct eth_device *edev)
 {
 	struct dm9000_priv *priv = (struct dm9000_priv *)edev->priv;
 
-	miiphy_wait_aneg(&priv->miiphy);
-	miiphy_print_status(&priv->miiphy);
+	miidev_wait_aneg(&priv->miidev);
+	miidev_print_status(&priv->miidev);
 	return 0;
 }
 
@@ -466,7 +465,7 @@ static int dm9000_init_dev(struct eth_device *edev)
 {
 	struct dm9000_priv *priv = (struct dm9000_priv *)edev->priv;
 
-	miiphy_restart_aneg(&priv->miiphy);
+	miidev_restart_aneg(&priv->miidev);
 	return 0;
 }
 
@@ -523,13 +522,13 @@ static int dm9000_probe(struct device_d *dev)
 	DM9000_iow(priv, DM9000_RCR, RCR_DIS_LONG | RCR_DIS_CRC | RCR_RXEN);	/* RX enable */
 	DM9000_iow(priv, DM9000_IMR, IMR_PAR);	/* Enable TX/RX interrupt mask */
 
-	priv->miiphy.read = dm9000_phy_read;
-	priv->miiphy.write = dm9000_phy_write;
-	priv->miiphy.address = 0;
-	priv->miiphy.flags = 0;
-	priv->miiphy.edev = edev;
+	priv->miidev.read = dm9000_phy_read;
+	priv->miidev.write = dm9000_phy_write;
+	priv->miidev.address = 0;
+	priv->miidev.flags = 0;
+	priv->miidev.edev = edev;
 
-	miiphy_register(&priv->miiphy);
+	mii_register(&priv->miidev);
 	eth_register(edev);
 
         return 0;
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index c6c4671..851f6af 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -34,16 +34,15 @@
 #include <command.h>
 #include <init.h>
 #include <malloc.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include <asm/io.h>
 #include <linux/types.h>
 #include <mach/ep93xx-regs.h>
 #include "ep93xx.h"
 
-static int ep93xx_phy_read(struct miiphy_device *mdev, uint8_t phy_addr,
-			uint8_t phy_reg, uint16_t *value);
-static int ep93xx_phy_write(struct miiphy_device *mdev, uint8_t phy_addr,
-			uint8_t phy_reg, uint16_t value);
+static int ep93xx_phy_read(struct mii_device *mdev, int phy_addr, int phy_reg);
+static int ep93xx_phy_write(struct mii_device *mdev, int phy_addr, int phy_reg,
+			    int value);
 
 static inline struct ep93xx_eth_priv *ep93xx_get_priv(struct eth_device *edev)
 {
@@ -497,10 +496,10 @@ static int ep93xx_eth_probe(struct device_d *dev)
 	edev->get_ethaddr = ep93xx_eth_get_ethaddr;
 	edev->set_ethaddr = ep93xx_eth_set_ethaddr;
 
-	priv->miiphy.read = ep93xx_phy_read;
-	priv->miiphy.write = ep93xx_phy_write;
-	priv->miiphy.address = 0;
-	priv->miiphy.flags = 0;
+	priv->miidev.read = ep93xx_phy_read;
+	priv->miidev.write = ep93xx_phy_write;
+	priv->miidev.address = 0;
+	priv->miidev.flags = 0;
 
 	priv->tx_dq.base = calloc(NUMTXDESC,
 				sizeof(struct tx_descriptor));
@@ -530,7 +529,7 @@ static int ep93xx_eth_probe(struct device_d *dev)
 		goto eth_probe_failed_3;
 	}
 
-	miiphy_register(&priv->miiphy);
+	mii_register(&priv->miidev);
 	eth_register(edev);
 
 	ret = 0;
@@ -573,11 +572,10 @@ eth_probe_done:
 /**
  * Read a 16-bit value from an MII register.
  */
-static int ep93xx_phy_read(struct miiphy_device *mdev, uint8_t phy_addr,
-			uint8_t phy_reg, uint16_t *value)
+static int ep93xx_phy_read(struct mii_device *mdev, int phy_addr, int phy_reg)
 {
 	struct mac_regs *regs = ep93xx_get_regs(mdev->edev);
-	int ret = -1;
+	int value = -1;
 	uint32_t self_ctl;
 
 	pr_debug("+ep93xx_phy_read\n");
@@ -604,26 +602,23 @@ static int ep93xx_phy_read(struct miiphy_device *mdev, uint8_t phy_addr,
 	while (readl(&regs->miists) & MIISTS_BUSY)
 		; /* noop */
 
-	*value = (unsigned short)readl(&regs->miidata);
+	value = (unsigned short)readl(&regs->miidata);
 
 	/* Restore the saved SelfCTL value and return. */
 	writel(self_ctl, &regs->selfctl);
 
-	ret = 0;
-
 	pr_debug("-ep93xx_phy_read\n");
 
-	return ret;
+	return value;
 }
 
 /**
  * Write a 16-bit value to an MII register.
  */
-static int ep93xx_phy_write(struct miiphy_device *mdev, uint8_t phy_addr,
+static int ep93xx_phy_write(struct mii_device *mdev, uint8_t phy_addr,
 			uint8_t phy_reg, uint16_t value)
 {
 	struct mac_regs *regs = ep93xx_get_regs(mdev->edev);
-	int ret = -1;
 	uint32_t self_ctl;
 
 	pr_debug("+ep93xx_phy_write\n");
@@ -651,11 +646,9 @@ static int ep93xx_phy_write(struct miiphy_device *mdev, uint8_t phy_addr,
 	/* Restore the saved SelfCTL value and return. */
 	writel(self_ctl, &regs->selfctl);
 
-	ret = 0;
-
 	pr_debug("-ep93xx_phy_write\n");
 
-	return ret;
+	return 0;
 }
 
 static struct driver_d ep93xx_eth_driver = {
diff --git a/drivers/net/ep93xx.h b/drivers/net/ep93xx.h
index ae45c54..875715f 100644
--- a/drivers/net/ep93xx.h
+++ b/drivers/net/ep93xx.h
@@ -141,7 +141,7 @@ struct ep93xx_eth_priv {
 	struct tx_descriptor_queue	tx_dq;
 	struct tx_status_queue		tx_sq;
 
-	struct miiphy_device miiphy;
+	struct mii_device miidev;
 };
 
 #endif
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 9e752f6..73b7a54 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -22,9 +22,9 @@
 #include <malloc.h>
 #include <net.h>
 #include <init.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include <driver.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include <fec.h>
 
 #include <asm/mmu.h>
@@ -47,8 +47,7 @@ struct fec_frame {
 /*
  * MII-interface related functions
  */
-static int fec_miiphy_read(struct miiphy_device *mdev, uint8_t phyAddr,
-	uint8_t regAddr, uint16_t * retVal)
+static int fec_miidev_read(struct mii_device *mdev, int phyAddr, int regAddr)
 {
 	struct eth_device *edev = mdev->edev;
 	struct fec_priv *fec = (struct fec_priv *)edev->priv;
@@ -88,13 +87,11 @@ static int fec_miiphy_read(struct miiphy_device *mdev, uint8_t phyAddr,
 	/*
 	 * it's now safe to read the PHY's register
 	 */
-	*retVal = readl(fec->regs + FEC_MII_DATA);
-
-	return 0;
+	return readl(fec->regs + FEC_MII_DATA);
 }
 
-static int fec_miiphy_write(struct miiphy_device *mdev, uint8_t phyAddr,
-	uint8_t regAddr, uint16_t data)
+static int fec_miidev_write(struct mii_device *mdev, int phyAddr,
+	int regAddr, int data)
 {
 	struct eth_device *edev = mdev->edev;
 	struct fec_priv *fec = (struct fec_priv *)edev->priv;
@@ -317,7 +314,7 @@ static int fec_init(struct eth_device *dev)
 	writel(FEC_MAX_PKT_SIZE, fec->regs + FEC_EMRBR);
 
 	if (fec->xcv_type != SEVENWIRE)
-		miiphy_restart_aneg(&fec->miiphy);
+		miidev_restart_aneg(&fec->miidev);
 
 	return 0;
 }
@@ -351,10 +348,10 @@ static int fec_open(struct eth_device *edev)
 	fec_rx_task_enable(fec);
 
 	if (fec->xcv_type != SEVENWIRE) {
-		ret = miiphy_wait_aneg(&fec->miiphy);
+		ret = miidev_wait_aneg(&fec->miidev);
 		if (ret)
 			return ret;
-		miiphy_print_status(&fec->miiphy);
+		miidev_print_status(&fec->miidev);
 	}
 
 	return 0;
@@ -583,13 +580,13 @@ static int fec_probe(struct device_d *dev)
 	fec->xcv_type = pdata->xcv_type;
 
 	if (fec->xcv_type != SEVENWIRE) {
-		fec->miiphy.read = fec_miiphy_read;
-		fec->miiphy.write = fec_miiphy_write;
-		fec->miiphy.address = pdata->phy_addr;
-		fec->miiphy.flags = pdata->xcv_type == MII10 ? MIIPHY_FORCE_10 : 0;
-		fec->miiphy.edev = edev;
+		fec->miidev.read = fec_miidev_read;
+		fec->miidev.write = fec_miidev_write;
+		fec->miidev.address = pdata->phy_addr;
+		fec->miidev.flags = pdata->xcv_type == MII10 ? MIIDEV_FORCE_10 : 0;
+		fec->miidev.edev = edev;
 
-		miiphy_register(&fec->miiphy);
+		mii_register(&fec->miidev);
 	}
 
 	eth_register(edev);
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 353799c..e1473a4 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -141,7 +141,7 @@ struct fec_priv {
 	int rbd_index;				/* next receive BD to read   */
 	struct buffer_descriptor *tbd_base;	/* TBD ring                  */
 	int tbd_index;				/* next transmit BD to write */
-	struct miiphy_device miiphy;
+	struct mii_device miidev;
 };
 
 /**
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index ce9a21d..f239c68 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -11,12 +11,12 @@
 #include <malloc.h>
 #include <net.h>
 #include <init.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include <driver.h>
 #include <mach/sdma.h>
 #include <mach/fec.h>
 #include <mach/clocks.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include "fec_mpc5200.h"
 
 #define CONFIG_PHY_ADDR 1 /* FIXME */
@@ -31,8 +31,7 @@ typedef struct {
 /*
  * MII-interface related functions
  */
-static int fec5xxx_miiphy_read(struct miiphy_device *mdev, uint8_t phyAddr,
-	uint8_t regAddr, uint16_t * retVal)
+static int fec5xxx_miidev_read(struct mii_device *mdev, int phyAddr, int regAddr)
 {
 	struct eth_device *edev = mdev->edev;
 	mpc5xxx_fec_priv *fec = (mpc5xxx_fec_priv *)edev->priv;
@@ -68,13 +67,11 @@ static int fec5xxx_miiphy_read(struct miiphy_device *mdev, uint8_t phyAddr,
 	/*
 	 * it's now safe to read the PHY's register
 	 */
-	*retVal = (uint16_t) fec->eth->mii_data;
-
-	return 0;
+	return fec->eth->mii_data;
 }
 
-static int fec5xxx_miiphy_write(struct miiphy_device *mdev, uint8_t phyAddr,
-	uint8_t regAddr, uint16_t data)
+static int fec5xxx_miidev_write(struct mii_device *mdev, int phyAddr,
+	int regAddr, int data)
 {
 	struct eth_device *edev = mdev->edev;
 	mpc5xxx_fec_priv *fec = (mpc5xxx_fec_priv *)edev->priv;
@@ -385,7 +382,7 @@ static int mpc5xxx_fec_init(struct eth_device *dev)
 	debug("mpc5xxx_fec_init... Done \n");
 
 	if (fec->xcv_type != SEVENWIRE)
-		miiphy_restart_aneg(&fec->miiphy);
+		miidev_restart_aneg(&fec->miidev);
 
 	return 0;
 }
@@ -416,8 +413,8 @@ static int mpc5xxx_fec_open(struct eth_device *edev)
 	SDMA_TASK_ENABLE(FEC_RECV_TASK_NO);
 
 	if (fec->xcv_type != SEVENWIRE) {
-		miiphy_wait_aneg(&fec->miiphy);
-		miiphy_print_status(&fec->miiphy);
+		miidev_wait_aneg(&fec->miidev);
+		miidev_print_status(&fec->miidev);
 	}
 
 	return 0;
@@ -559,7 +556,7 @@ static int mpc5xxx_fec_send(struct eth_device *dev, void *eth_data,
 	 */
 	if (fec->xcv_type != SEVENWIRE) {
 		uint16_t phyStatus;
-		fec5xxx_miiphy_read(&fec->miiphy, 0, 0x1, &phyStatus);
+		fec5xxx_miidev_read(&fec->miidev, 0, 0x1, &phyStatus);
 	}
 
 	/*
@@ -685,13 +682,13 @@ int mpc5xxx_fec_probe(struct device_d *dev)
 	loadtask(0, 2);
 
 	if (fec->xcv_type != SEVENWIRE) {
-		fec->miiphy.read = fec5xxx_miiphy_read;
-		fec->miiphy.write = fec5xxx_miiphy_write;
-		fec->miiphy.address = CONFIG_PHY_ADDR;
-		fec->miiphy.flags = pdata->xcv_type == MII10 ? MIIPHY_FORCE_10 : 0;
-		fec->miiphy.edev = edev;
+		fec->miidev.read = fec5xxx_miidev_read;
+		fec->miidev.write = fec5xxx_miidev_write;
+		fec->miidev.address = CONFIG_PHY_ADDR;
+		fec->miidev.flags = pdata->xcv_type == MII10 ? MIIDEV_FORCE_10 : 0;
+		fec->miidev.edev = edev;
 
-		miiphy_register(&fec->miiphy);
+		mii_register(&fec->miidev);
 	}
 
 	eth_register(edev);
diff --git a/drivers/net/fec_mpc5200.h b/drivers/net/fec_mpc5200.h
index 9eabc1e..f6da3e5 100644
--- a/drivers/net/fec_mpc5200.h
+++ b/drivers/net/fec_mpc5200.h
@@ -260,7 +260,7 @@ typedef struct {
 	uint16_t usedTbdIndex;		/* next transmit BD to clean */
 	uint16_t cleanTbdNum;		/* the number of available transmit BDs */
 
-	struct miiphy_device miiphy;
+	struct mii_device miidev;
 } mpc5xxx_fec_priv;
 
 /* Ethernet parameter area */
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 6864119..df3b6af 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -44,7 +44,7 @@
 #include <malloc.h>
 #include <xfuncs.h>
 #include <init.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include <errno.h>
 #include <asm/io.h>
 #include <mach/board.h>
@@ -98,7 +98,7 @@ struct macb_device {
 	const struct device	*dev;
 	struct eth_device	netdev;
 
-	struct miiphy_device	miiphy;
+	struct mii_device	miidev;
 
 	unsigned int		flags;
 };
@@ -214,8 +214,8 @@ static int macb_open(struct eth_device *edev)
 
 	debug("%s\n", __func__);
 
-	miiphy_wait_aneg(&macb->miiphy);
-	miiphy_print_status(&macb->miiphy);
+	miidev_wait_aneg(&macb->miidev);
+	miidev_print_status(&macb->miidev);
 
 	ncfgr = readl(macb->regs + MACB_NCFGR);
 	ncfgr &= ~(MACB_BIT(SPD) | MACB_BIT(FD));
@@ -293,8 +293,7 @@ static void macb_halt(struct eth_device *edev)
 	writel(MACB_BIT(CLRSTAT), macb->regs + MACB_NCR);
 }
 
-static int macb_phy_read(struct miiphy_device *mdev, uint8_t addr,
-		uint8_t reg, uint16_t * value)
+static int macb_phy_read(struct mii_device *mdev, int addr, int reg)
 {
 	struct eth_device *edev = mdev->edev;
 	struct macb_device *macb = edev->priv;
@@ -303,6 +302,7 @@ static int macb_phy_read(struct miiphy_device *mdev, uint8_t addr,
 	unsigned long netstat;
 	unsigned long frame;
 	int iflag;
+	int value;
 	uint64_t start;
 
 	debug("%s\n", __func__);
@@ -331,7 +331,7 @@ static int macb_phy_read(struct miiphy_device *mdev, uint8_t addr,
 	} while (!(netstat & MACB_BIT(IDLE)));
 
 	frame = readl(macb->regs + MACB_MAN);
-	*value = MACB_BFEXT(DATA, frame);
+	value = MACB_BFEXT(DATA, frame);
 
 	iflag = disable_interrupts();
 	netctl = readl(macb->regs + MACB_NCR);
@@ -340,11 +340,10 @@ static int macb_phy_read(struct miiphy_device *mdev, uint8_t addr,
 	if (iflag)
 		enable_interrupts();
 
-	return 0;
+	return value;
 }
 
-static int macb_phy_write(struct miiphy_device *mdev, uint8_t addr,
-	uint8_t reg, uint16_t value)
+static int macb_phy_write(struct mii_device *mdev, int addr, int reg, int value)
 {
 	struct eth_device *edev = mdev->edev;
 	struct macb_device *macb = edev->priv;
@@ -435,12 +434,12 @@ static int macb_probe(struct device_d *dev)
 	edev->get_ethaddr = macb_get_ethaddr;
 	edev->set_ethaddr = macb_set_ethaddr;
 
-	macb->miiphy.read = macb_phy_read;
-	macb->miiphy.write = macb_phy_write;
-	macb->miiphy.address = pdata->phy_addr;
-	macb->miiphy.flags = pdata->flags & AT91SAM_ETHER_FORCE_LINK ?
-		MIIPHY_FORCE_LINK : 0;
-	macb->miiphy.edev = edev;
+	macb->miidev.read = macb_phy_read;
+	macb->miidev.write = macb_phy_write;
+	macb->miidev.address = pdata->phy_addr;
+	macb->miidev.flags = pdata->flags & AT91SAM_ETHER_FORCE_LINK ?
+		MIIDEV_FORCE_LINK : 0;
+	macb->miidev.edev = edev;
 	macb->flags = pdata->flags;
 
 	macb->rx_buffer = xmalloc(CFG_MACB_RX_BUFFER_SIZE); 
@@ -471,7 +470,7 @@ static int macb_probe(struct device_d *dev)
 
 	writel(ncfgr, macb->regs + MACB_NCFGR);
 
-	miiphy_register(&macb->miiphy);
+	mii_register(&macb->miidev);
 	eth_register(edev);
 
 	return 0;
diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
new file mode 100644
index 0000000..343eb40
--- /dev/null
+++ b/drivers/net/miidev.c
@@ -0,0 +1,228 @@
+/*
+ * miidev.c - generic phy abstraction
+ *
+ * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <miidev.h>
+#include <clock.h>
+#include <net.h>
+#include <malloc.h>
+
+int miidev_restart_aneg(struct mii_device *mdev)
+{
+	uint16_t status;
+	int timeout;
+
+	/*
+	 * Reset PHY, then delay 300ns
+	 */
+	mii_write(mdev, mdev->address, MII_BMCR, BMCR_RESET);
+
+	if (mdev->flags & MIIDEV_FORCE_LINK)
+		return 0;
+
+	udelay(1000);
+
+	if (mdev->flags & MIIDEV_FORCE_10) {
+		printf("Forcing 10 Mbps ethernet link... ");
+		status = mii_read(mdev, mdev->address, MII_BMSR);
+		mii_write(mdev, mdev->address, MII_BMCR, BMCR_FULLDPLX | BMCR_CTST);
+
+		timeout = 20;
+		do {	/* wait for link status to go down */
+			udelay(10000);
+			if ((timeout--) == 0) {
+				debug("hmmm, should not have waited...");
+				break;
+			}
+			status = mii_read(mdev, mdev->address, MII_BMSR);
+		} while (status & BMSR_LSTATUS);
+
+	} else {	/* MII100 */
+		/*
+		 * Set the auto-negotiation advertisement register bits
+		 */
+		status = mii_read(mdev, mdev->address, MII_ADVERTISE);
+		status |= ADVERTISE_ALL;
+		mii_write(mdev, mdev->address, MII_ADVERTISE, status);
+
+		mii_write(mdev, mdev->address, MII_BMCR, BMCR_ANENABLE | BMCR_ANRESTART);
+	}
+
+	return 0;
+}
+
+int miidev_wait_aneg(struct mii_device *mdev)
+{
+	uint64_t start;
+	int status;
+
+	if (mdev->flags & MIIDEV_FORCE_LINK)
+		return 0;
+
+	/*
+	 * Wait for AN completion
+	 */
+	start = get_time_ns();
+	do {
+		if (is_timeout(start, 5 * SECOND)) {
+			printf("%s: Autonegotiation timeout\n", mdev->cdev.name);
+			return -1;
+		}
+
+		status = mii_read(mdev, mdev->address, MII_BMSR);
+		if (status < 0) {
+			printf("%s: Autonegotiation failed. status: 0x%04x\n", mdev->cdev.name, status);
+			return -1;
+		}
+	} while (!(status & BMSR_LSTATUS));
+
+	return 0;
+}
+
+int miidev_print_status(struct mii_device *mdev)
+{
+	int bmsr, bmcr, lpa;
+	char *duplex;
+	int speed;
+
+	if (mdev->flags & MIIDEV_FORCE_LINK) {
+		printf("Forcing link present...\n");
+		return 0;
+	}
+
+	bmsr = mii_read(mdev, mdev->address, MII_BMSR);
+	if (bmsr < 0)
+		goto err_out;
+	bmcr = mii_read(mdev, mdev->address, MII_BMCR);
+	if (bmcr < 0)
+		goto err_out;
+	lpa = mii_read(mdev, mdev->address, MII_LPA);
+	if (lpa < 0)
+		goto err_out;
+
+	printf("%s: Link is %s", mdev->cdev.name,
+			bmsr & BMSR_LSTATUS ? "up" : "down");
+
+	if (bmcr & BMCR_ANENABLE) {
+		duplex = lpa & LPA_DUPLEX ? "Full" : "Half";
+		speed = lpa & LPA_100 ? 100 : 10;
+	} else {
+		duplex = bmcr & BMCR_FULLDPLX ? "Full" : "Half";
+		speed = bmcr & BMCR_SPEED100 ? 100 : 10;
+	}
+
+	printf(" - %d/%s\n", speed, duplex);
+
+	return 0;
+err_out:
+	printf("%s: failed to read\n", mdev->cdev.name);
+	return -1;
+}
+
+static ssize_t miidev_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
+{
+	int i = count;
+	uint16_t *buf = _buf;
+	struct mii_device *mdev = cdev->priv;
+
+	while (i > 1) {
+		*buf = mii_read(mdev, mdev->address, offset);
+		buf++;
+		i -= 2;
+		offset++;
+	}
+
+	return count;
+}
+
+static ssize_t miidev_write(struct cdev *cdev, const void *_buf, size_t count, ulong offset, ulong flags)
+{
+	int i = count;
+	const uint16_t *buf = _buf;
+	struct mii_device *mdev = cdev->priv;
+
+	while (i > 1) {
+		mii_write(mdev, mdev->address, offset, *buf);
+		buf++;
+		i -= 2;
+		offset++;
+	}
+
+	return count;
+}
+
+static struct file_operations miidev_ops = {
+	.read  = miidev_read,
+	.write = miidev_write,
+	.lseek = dev_lseek_default,
+};
+
+static int miidev_probe(struct device_d *dev)
+{
+	struct mii_device *mdev = dev->priv;
+
+	mdev->cdev.name = asprintf("phy%d", dev->id);
+	mdev->cdev.size = 32;
+	mdev->cdev.ops = &miidev_ops;
+	mdev->cdev.priv = mdev;
+	mdev->cdev.dev = dev;
+	devfs_create(&mdev->cdev);
+	return 0;
+}
+
+static void miidev_remove(struct device_d *dev)
+{
+	struct mii_device *mdev = dev->priv;
+
+	free(mdev->cdev.name);
+	devfs_remove(&mdev->cdev);
+}
+
+static struct driver_d miidev_drv = {
+        .name  = "miidev",
+        .probe = miidev_probe,
+	.remove = miidev_remove,
+};
+
+int mii_register(struct mii_device *mdev)
+{
+	mdev->dev.priv = mdev;
+	strcpy(mdev->dev.name, "miidev");
+
+	return register_device(&mdev->dev);
+}
+
+void mii_unregister(struct mii_device *mdev)
+{
+	unregister_device(&mdev->dev);
+}
+
+static int miidev_init(void)
+{
+	register_driver(&miidev_drv);
+	return 0;
+}
+
+device_initcall(miidev_init);
+
diff --git a/drivers/net/miiphy.c b/drivers/net/miiphy.c
deleted file mode 100644
index 12aa7a6..0000000
--- a/drivers/net/miiphy.c
+++ /dev/null
@@ -1,224 +0,0 @@
-/*
- * miiphy.c - generic phy abstraction
- *
- * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <common.h>
-#include <driver.h>
-#include <init.h>
-#include <miiphy.h>
-#include <clock.h>
-#include <net.h>
-#include <malloc.h>
-
-int miiphy_restart_aneg(struct miiphy_device *mdev)
-{
-	uint16_t status;
-	int timeout;
-
-	/*
-	 * Reset PHY, then delay 300ns
-	 */
-	mdev->write(mdev, mdev->address, MII_BMCR, BMCR_RESET);
-
-	if (mdev->flags & MIIPHY_FORCE_LINK)
-		return 0;
-
-	udelay(1000);
-
-	if (mdev->flags & MIIPHY_FORCE_10) {
-		printf("Forcing 10 Mbps ethernet link... ");
-		mdev->read(mdev, mdev->address, MII_BMSR, &status);
-		mdev->write(mdev, mdev->address, MII_BMCR, BMCR_FULLDPLX | BMCR_CTST);
-
-		timeout = 20;
-		do {	/* wait for link status to go down */
-			udelay(10000);
-			if ((timeout--) == 0) {
-				debug("hmmm, should not have waited...");
-				break;
-			}
-			mdev->read(mdev, mdev->address, MII_BMSR, &status);
-		} while (status & BMSR_LSTATUS);
-
-	} else {	/* MII100 */
-		/*
-		 * Set the auto-negotiation advertisement register bits
-		 */
-		mdev->read(mdev, mdev->address, MII_ADVERTISE, &status);
-		status |= ADVERTISE_ALL;
-		mdev->write(mdev, mdev->address, MII_ADVERTISE, status);
-
-		mdev->write(mdev, mdev->address, MII_BMCR, BMCR_ANENABLE | BMCR_ANRESTART);
-	}
-
-	return 0;
-}
-
-int miiphy_wait_aneg(struct miiphy_device *mdev)
-{
-	uint64_t start;
-	uint16_t status;
-
-	if (mdev->flags & MIIPHY_FORCE_LINK)
-		return 0;
-
-	/*
-	 * Wait for AN completion
-	 */
-	start = get_time_ns();
-	do {
-		if (is_timeout(start, 5 * SECOND)) {
-			printf("%s: Autonegotiation timeout\n", mdev->cdev.name);
-			return -1;
-		}
-
-		if (mdev->read(mdev, mdev->address, MII_BMSR, &status)) {
-			printf("%s: Autonegotiation failed. status: 0x%04x\n", mdev->cdev.name, status);
-			return -1;
-		}
-	} while (!(status & BMSR_LSTATUS));
-
-	return 0;
-}
-
-int miiphy_print_status(struct miiphy_device *mdev)
-{
-	uint16_t bmsr, bmcr, lpa;
-	char *duplex;
-	int speed;
-
-	if (mdev->flags & MIIPHY_FORCE_LINK) {
-		printf("Forcing link present...\n");
-		return 0;
-	}
-
-	if (mdev->read(mdev, mdev->address, MII_BMSR, &bmsr) != 0)
-		goto err_out;
-	if (mdev->read(mdev, mdev->address, MII_BMCR, &bmcr) != 0)
-		goto err_out;
-	if (mdev->read(mdev, mdev->address, MII_LPA, &lpa) != 0)
-		goto err_out;
-
-	printf("%s: Link is %s", mdev->cdev.name,
-			bmsr & BMSR_LSTATUS ? "up" : "down");
-
-	if (bmcr & BMCR_ANENABLE) {
-		duplex = lpa & LPA_DUPLEX ? "Full" : "Half";
-		speed = lpa & LPA_100 ? 100 : 10;
-	} else {
-		duplex = bmcr & BMCR_FULLDPLX ? "Full" : "Half";
-		speed = bmcr & BMCR_SPEED100 ? 100 : 10;
-	}
-
-	printf(" - %d/%s\n", speed, duplex);
-
-	return 0;
-err_out:
-	printf("%s: failed to read\n", mdev->cdev.name);
-	return -1;
-}
-
-static ssize_t miiphy_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
-{
-	int i = count;
-	uint16_t *buf = _buf;
-	struct miiphy_device *mdev = cdev->priv;
-
-	while (i > 1) {
-		mdev->read(mdev, mdev->address, offset, buf);
-		buf++;
-		i -= 2;
-		offset++;
-	}
-
-	return count;
-}
-
-static ssize_t miiphy_write(struct cdev *cdev, const void *_buf, size_t count, ulong offset, ulong flags)
-{
-	int i = count;
-	const uint16_t *buf = _buf;
-	struct miiphy_device *mdev = cdev->priv;
-
-	while (i > 1) {
-		mdev->write(mdev, mdev->address, offset, *buf);
-		buf++;
-		i -= 2;
-		offset++;
-	}
-
-	return count;
-}
-
-static struct file_operations miiphy_ops = {
-	.read  = miiphy_read,
-	.write = miiphy_write,
-	.lseek = dev_lseek_default,
-};
-
-static int miiphy_probe(struct device_d *dev)
-{
-	struct miiphy_device *mdev = dev->priv;
-
-	mdev->cdev.name = asprintf("phy%d", dev->id);
-	mdev->cdev.size = 32;
-	mdev->cdev.ops = &miiphy_ops;
-	mdev->cdev.priv = mdev;
-	mdev->cdev.dev = dev;
-	devfs_create(&mdev->cdev);
-	return 0;
-}
-
-static void miiphy_remove(struct device_d *dev)
-{
-	struct miiphy_device *mdev = dev->priv;
-
-	free(mdev->cdev.name);
-	devfs_remove(&mdev->cdev);
-}
-
-static struct driver_d miiphy_drv = {
-        .name  = "miiphy",
-        .probe = miiphy_probe,
-	.remove = miiphy_remove,
-};
-
-int miiphy_register(struct miiphy_device *mdev)
-{
-	mdev->dev.priv = mdev;
-	strcpy(mdev->dev.name, "miiphy");
-
-	return register_device(&mdev->dev);
-}
-
-void miiphy_unregister(struct miiphy_device *mdev)
-{
-	unregister_device(&mdev->dev);
-}
-
-static int miiphy_init(void)
-{
-	register_driver(&miiphy_drv);
-	return 0;
-}
-
-device_initcall(miiphy_init);
-
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index f2d7b4a..c3083f7 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -2,12 +2,12 @@
 #include <command.h>
 #include <net.h>
 #include <asm/io.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include <mach/netx-xc.h>
 #include <mach/netx-eth.h>
 #include <mach/netx-regs.h>
 #include <xfuncs.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include <init.h>
 #include <driver.h>
 
@@ -48,7 +48,7 @@
 #define CON_FIFO_PORT_LO(xcno)  (6 + ((xcno) << 3))    /* Index of the FIFO where sent Data packages are confirmed */
 
 struct netx_eth_priv {
-	struct miiphy_device miiphy;
+	struct mii_device miidev;
 	int xcno;
 };
 
@@ -119,25 +119,28 @@ static int netx_eth_rx (struct eth_device *edev)
 	return 0;
 }
 
-static int netx_miiphy_read(struct miiphy_device *mdev, uint8_t phy_addr,
-		uint8_t reg, uint16_t * val)
+static int netx_miidev_read(struct mii_device *mdev, int phy_addr, int reg)
 {
+	int value;
+
 	MIIMU_REG = MIIMU_SNRDY | MIIMU_PREAMBLE | MIIMU_PHYADDR(phy_addr) |
 	            MIIMU_REGADDR(reg) | MIIMU_PHY_NRES;
 
 	while(MIIMU_REG & MIIMU_SNRDY);
 
-	*val = MIIMU_REG >> 16;
+	value = MIIMU_REG >> 16;
 
-/*	printf("%s: addr: 0x%02x reg: 0x%02x val: 0x%04x\n",__FUNCTION__,addr,reg,*value); */
+	debug("%s: addr: 0x%02x reg: 0x%02x val: 0x%04x\n", __FUNCTION__,
+	      addr, reg, value)
 
-	return 0;
+	return value;
 }
 
-static int netx_miiphy_write(struct miiphy_device *mdev, uint8_t phy_addr,
-	uint8_t reg, uint16_t val)
+static int netx_miidev_write(struct mii_device *mdev, int phy_addr,
+	int reg, int val)
 {
-/*	printf("%s: addr: 0x%02x reg: 0x%02x val: 0x%04x\n",__FUNCTION__,addr,reg,value); */
+	debug("%s: addr: 0x%02x reg: 0x%02x val: 0x%04x\n",__FUNCTION__,
+	      addr, reg, val);
 
 	MIIMU_REG = MIIMU_SNRDY | MIIMU_PREAMBLE | MIIMU_PHYADDR(phy_addr) |
 	            MIIMU_REGADDR(reg) | MIIMU_PHY_NRES | MIIMU_OPMODE_WRITE |
@@ -187,7 +190,7 @@ static int netx_eth_init_dev(struct eth_device *edev)
 	for (i = 2; i <= 18; i++)
 		PFIFO_REG( PFIFO_BASE(EMPTY_PTR_FIFO(xcno)) ) = FIFO_PTR_FRAMENO(i) | FIFO_PTR_SEGMENT(xcno);
 
-	miiphy_restart_aneg(&priv->miiphy);
+	miidev_restart_aneg(&priv->miidev);
 	return 0;
 }
 
@@ -257,13 +260,13 @@ static int netx_eth_probe(struct device_d *dev)
 	edev->get_ethaddr = netx_eth_get_ethaddr;
 	edev->set_ethaddr = netx_eth_set_ethaddr;
 
-	priv->miiphy.read = netx_miiphy_read;
-	priv->miiphy.write = netx_miiphy_write;
-	priv->miiphy.address = 0;
-	priv->miiphy.flags = 0;
+	priv->miidev.read = netx_miidev_read;
+	priv->miidev.write = netx_miidev_write;
+	priv->miidev.address = 0;
+	priv->miidev.flags = 0;
 
 	netx_eth_init_phy();
-	miiphy_register(&priv->miiphy);
+	mii_register(&priv->miidev);
 	eth_register(edev);
 
         return 0;
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 58ebaa9..605a7d8 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -67,7 +67,7 @@
 
 #include <command.h>
 #include <net.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include <malloc.h>
 #include <init.h>
 #include <xfuncs.h>
@@ -451,7 +451,7 @@ struct accessors {
 };
 
 struct smc91c111_priv {
-	struct miiphy_device miiphy;
+	struct mii_device miidev;
 	struct accessors a;
 	unsigned long base;
 };
@@ -621,8 +621,8 @@ static void smc_wait_mmu_release_complete(struct smc91c111_priv *priv)
 	}
 }
 
-static int smc91c111_phy_write(struct miiphy_device *mdev, uint8_t phyaddr,
-	uint8_t phyreg, uint16_t phydata)
+static int smc91c111_phy_write(struct mii_device *mdev, int phyaddr,
+	int phyreg, int phydata)
 {
 	struct eth_device *edev = mdev->edev;
 	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
@@ -723,8 +723,7 @@ static int smc91c111_phy_write(struct miiphy_device *mdev, uint8_t phyaddr,
 	return 0;
 }
 
-static int smc91c111_phy_read(struct miiphy_device *mdev, uint8_t phyaddr,
-		uint8_t phyreg, uint16_t * val)
+static int smc91c111_phy_read(struct mii_device *mdev, int phyaddr, int phyreg)
 {
 	struct eth_device *edev = mdev->edev;
 	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
@@ -827,8 +826,7 @@ static int smc91c111_phy_read(struct miiphy_device *mdev, uint8_t phyaddr,
 			phydata |= 0x0001;
 	}
 
-	*val = phydata;
-	return 0;
+	return phydata;
 }
 
 static void smc91c111_reset(struct eth_device *edev)
@@ -896,8 +894,8 @@ static int smc91c111_eth_open(struct eth_device *edev)
 	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
 	smc91c111_enable(edev);
 
-	miiphy_wait_aneg(&priv->miiphy);
-	miiphy_print_status(&priv->miiphy);
+	miidev_wait_aneg(&priv->miidev);
+	miidev_print_status(&priv->miidev);
 
 	return 0;
 }
@@ -1287,7 +1285,7 @@ static int smc91c111_init_dev(struct eth_device *edev)
 	SMC_SELECT_BANK(priv, 0);
 	SMC_outw(priv, RPC_DEFAULT, RPC_REG);
 
-	miiphy_restart_aneg(&priv->miiphy);
+	miidev_restart_aneg(&priv->miidev);
 
 	return 0;
 }
@@ -1314,16 +1312,16 @@ static int smc91c111_probe(struct device_d *dev)
 	edev->get_ethaddr = smc91c111_get_ethaddr;
 	edev->set_ethaddr = smc91c111_set_ethaddr;
 
-	priv->miiphy.read = smc91c111_phy_read;
-	priv->miiphy.write = smc91c111_phy_write;
-	priv->miiphy.address = 0;
-	priv->miiphy.flags = 0;
-	priv->miiphy.edev = edev;
+	priv->miidev.read = smc91c111_phy_read;
+	priv->miidev.write = smc91c111_phy_write;
+	priv->miidev.address = 0;
+	priv->miidev.flags = 0;
+	priv->miidev.edev = edev;
 	priv->base = dev->map_base;
 
 	smc91c111_reset(edev);
 
-	miiphy_register(&priv->miiphy);
+	mii_register(&priv->miidev);
 	eth_register(edev);
 
 	return 0;
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index ca320d5..b559590 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -30,7 +30,7 @@
 
 #include <command.h>
 #include <net.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include <malloc.h>
 #include <init.h>
 #include <xfuncs.h>
@@ -367,7 +367,7 @@
 #define CHIP_9218	0x118a
 
 struct smc911x_priv {
-	struct miiphy_device miiphy;
+	struct mii_device miidev;
 	unsigned long base;
 };
 
@@ -465,8 +465,7 @@ static int smc911x_set_ethaddr(struct eth_device *edev, unsigned char *m)
 	return 0;
 }
 
-static int smc911x_phy_read(struct miiphy_device *mdev, uint8_t phy_addr,
-		uint8_t reg, uint16_t * val)
+static int smc911x_phy_read(struct mii_device *mdev, int phy_addr, int reg)
 {
 	struct eth_device *edev = mdev->edev;
 
@@ -477,13 +476,11 @@ static int smc911x_phy_read(struct miiphy_device *mdev, uint8_t phy_addr,
 
 	while (smc911x_get_mac_csr(edev, MII_ACC) & MII_ACC_MII_BUSY);
 
-	*val = smc911x_get_mac_csr(edev, MII_DATA);
-
-	return 0;
+	return smc911x_get_mac_csr(edev, MII_DATA);
 }
 
-static int smc911x_phy_write(struct miiphy_device *mdev, uint8_t phy_addr,
-	uint8_t reg, uint16_t val)
+static int smc911x_phy_write(struct mii_device *mdev, int phy_addr,
+	int reg, int val)
 {
 	struct eth_device *edev = mdev->edev;
 
@@ -579,8 +576,8 @@ static int smc911x_eth_open(struct eth_device *edev)
 {
 	struct smc911x_priv *priv = (struct smc911x_priv *)edev->priv;
 
-	miiphy_wait_aneg(&priv->miiphy);
-	miiphy_print_status(&priv->miiphy);
+	miidev_wait_aneg(&priv->miidev);
+	miidev_print_status(&priv->miidev);
 
 	/* Turn on Tx + Rx */
 	smc911x_enable(edev);
@@ -681,7 +678,7 @@ static int smc911x_init_dev(struct eth_device *edev)
 	smc911x_set_mac_csr(edev, MAC_CR, MAC_CR_TXEN | MAC_CR_RXEN |
 			MAC_CR_HBDIS);
 
-	miiphy_restart_aneg(&priv->miiphy);
+	miidev_restart_aneg(&priv->miidev);
 
 	return 0;
 }
@@ -729,17 +726,17 @@ static int smc911x_probe(struct device_d *dev)
 	edev->get_ethaddr = smc911x_get_ethaddr;
 	edev->set_ethaddr = smc911x_set_ethaddr;
 
-	priv->miiphy.read = smc911x_phy_read;
-	priv->miiphy.write = smc911x_phy_write;
-	priv->miiphy.address = 1;
-	priv->miiphy.flags = 0;
-	priv->miiphy.edev = edev;
+	priv->miidev.read = smc911x_phy_read;
+	priv->miidev.write = smc911x_phy_write;
+	priv->miidev.address = 1;
+	priv->miidev.flags = 0;
+	priv->miidev.edev = edev;
 	priv->base = dev->map_base;
 
 	smc911x_reset(edev);
 	smc911x_phy_reset(edev);
 
-	miiphy_register(&priv->miiphy);
+	mii_register(&priv->miidev);
 	eth_register(edev);
 
         return 0;
diff --git a/drivers/net/usb/Kconfig b/drivers/net/usb/Kconfig
index 972fa40..6482626 100644
--- a/drivers/net/usb/Kconfig
+++ b/drivers/net/usb/Kconfig
@@ -5,7 +5,7 @@ menuconfig NET_USB
 if NET_USB
 
 config NET_USB_ASIX
-	select MIIPHY
+	select MIIDEV
 	bool "Asix compatible"
 
 endif
diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index ca71b34..d148925 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -1,7 +1,7 @@
 #include <common.h>
 #include <init.h>
 #include <net.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include <usb/usb.h>
 #include <usb/usbnet.h>
 #include <errno.h>
@@ -231,8 +231,7 @@ static inline int asix_set_hw_mii(struct usbnet *dev)
 	return ret;
 }
 
-static int asix_mdio_read(struct miiphy_device *mdev, uint8_t phy_id,
-		uint8_t loc, uint16_t *val)
+static int asix_mdio_read(struct mii_device *mdev, int phy_id, int loc)
 {
 	struct eth_device *eth = mdev->edev;
 	struct usbnet *dev = eth->priv;
@@ -246,13 +245,10 @@ static int asix_mdio_read(struct miiphy_device *mdev, uint8_t phy_id,
 	dev_dbg(&dev->edev.dev, "asix_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x",
 			phy_id, loc, le16_to_cpu(res));
 
-	*val = le16_to_cpu(res);
-
-	return 0;
+	return le16_to_cpu(res);
 }
 
-static int asix_mdio_write(struct miiphy_device *mdev, uint8_t phy_id,
-		uint8_t loc, uint16_t val)
+static int asix_mdio_write(struct mii_device *mdev, int phy_id, int loc, int val)
 {
 	struct eth_device *eth = mdev->edev;
 	struct usbnet *dev = eth->priv;
@@ -473,13 +469,13 @@ static int asix_tx_fixup(struct usbnet *dev,
 
 static int asix_init_mii(struct usbnet *dev)
 {
-	dev->miiphy.read = asix_mdio_read;
-	dev->miiphy.write = asix_mdio_write;
-	dev->miiphy.address = asix_get_phy_addr(dev);
-	dev->miiphy.flags = 0;
-	dev->miiphy.edev = &dev->edev;
+	dev->miidev.read = asix_mdio_read;
+	dev->miidev.write = asix_mdio_write;
+	dev->miidev.address = asix_get_phy_addr(dev);
+	dev->miidev.flags = 0;
+	dev->miidev.edev = &dev->edev;
 
-	return miiphy_register(&dev->miiphy);
+	return mii_register(&dev->miidev);
 }
 
 static int ax88172_link_reset(struct usbnet *dev)
@@ -634,7 +630,7 @@ out:
 
 static void asix_unbind(struct usbnet *dev)
 {
-	miiphy_unregister(&dev->miiphy);
+	mii_unregister(&dev->miidev);
 }
 
 static struct driver_info ax8817x_info = {
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index cc170f6..983d464 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -160,7 +160,7 @@ static int usbnet_init(struct eth_device *edev)
                 return ret;
         }
 
-	miiphy_restart_aneg(&dev->miiphy);
+	miidev_restart_aneg(&dev->miidev);
 
 	return 0;
 }
@@ -171,10 +171,10 @@ static int usbnet_open(struct eth_device *edev)
 
 	dev_dbg(&edev->dev, "%s\n",__func__);
 
-	if (miiphy_wait_aneg(&dev->miiphy))
+	if (miidev_wait_aneg(&dev->miidev))
 		return -1;
 
-	miiphy_print_status(&dev->miiphy);
+	miidev_print_status(&dev->miidev);
 
 	return 0;
 }
diff --git a/include/linux/mii.h b/include/linux/mii.h
new file mode 100644
index 0000000..7345172
--- /dev/null
+++ b/include/linux/mii.h
@@ -0,0 +1,232 @@
+/*
+ * linux/mii.h: definitions for MII-compatible transceivers
+ * Originally drivers/net/sunhme.h.
+ *
+ * Copyright (C) 1996, 1999, 2001 David S. Miller (davem@redhat.com)
+ */
+
+#ifndef __LINUX_MII_H__
+#define __LINUX_MII_H__
+
+/* Generic MII registers. */
+
+#define MII_BMCR            0x00        /* Basic mode control register */
+#define MII_BMSR            0x01        /* Basic mode status register  */
+#define MII_PHYSID1         0x02        /* PHYS ID 1                   */
+#define MII_PHYSID2         0x03        /* PHYS ID 2                   */
+#define MII_ADVERTISE       0x04        /* Advertisement control reg   */
+#define MII_LPA             0x05        /* Link partner ability reg    */
+#define MII_EXPANSION       0x06        /* Expansion register          */
+#define MII_CTRL1000        0x09        /* 1000BASE-T control          */
+#define MII_STAT1000        0x0a        /* 1000BASE-T status           */
+#define MII_ESTATUS	    0x0f	/* Extended Status */
+#define MII_DCOUNTER        0x12        /* Disconnect counter          */
+#define MII_FCSCOUNTER      0x13        /* False carrier counter       */
+#define MII_NWAYTEST        0x14        /* N-way auto-neg test reg     */
+#define MII_RERRCOUNTER     0x15        /* Receive error counter       */
+#define MII_SREVISION       0x16        /* Silicon revision            */
+#define MII_RESV1           0x17        /* Reserved...                 */
+#define MII_LBRERROR        0x18        /* Lpback, rx, bypass error    */
+#define MII_PHYADDR         0x19        /* PHY address                 */
+#define MII_RESV2           0x1a        /* Reserved...                 */
+#define MII_TPISTATUS       0x1b        /* TPI status for 10mbps       */
+#define MII_NCONFIG         0x1c        /* Network interface config    */
+
+/* Basic mode control register. */
+#define BMCR_SPEED_MASK		0x2040	/* 10/100/1000		       */
+#define BMCR_SPEED10		0x0000	/* Select 10Mbps	       */
+#define BMCR_RESV               0x003f  /* Unused...                   */
+#define BMCR_SPEED1000		0x0040  /* MSB of Speed (1000)         */
+#define BMCR_CTST               0x0080  /* Collision test              */
+#define BMCR_FULLDPLX           0x0100  /* Full duplex                 */
+#define BMCR_ANRESTART          0x0200  /* Auto negotiation restart    */
+#define BMCR_ISOLATE            0x0400  /* Disconnect DP83840 from MII */
+#define BMCR_PDOWN              0x0800  /* Powerdown the DP83840       */
+#define BMCR_ANENABLE           0x1000  /* Enable auto negotiation     */
+#define BMCR_SPEED100           0x2000  /* Select 100Mbps              */
+#define BMCR_LOOPBACK           0x4000  /* TXD loopback bits           */
+#define BMCR_RESET              0x8000  /* Reset the DP83840           */
+
+/* Basic mode status register. */
+#define BMSR_ERCAP              0x0001  /* Ext-reg capability          */
+#define BMSR_JCD                0x0002  /* Jabber detected             */
+#define BMSR_LSTATUS            0x0004  /* Link status                 */
+#define BMSR_ANEGCAPABLE        0x0008  /* Able to do auto-negotiation */
+#define BMSR_RFAULT             0x0010  /* Remote fault detected       */
+#define BMSR_ANEGCOMPLETE       0x0020  /* Auto-negotiation complete   */
+#define BMSR_RESV               0x00c0  /* Unused...                   */
+#define BMSR_ESTATEN		0x0100	/* Extended Status in R15 */
+#define BMSR_100HALF2           0x0200  /* Can do 100BASE-T2 HDX */
+#define BMSR_100FULL2           0x0400  /* Can do 100BASE-T2 FDX */
+#define BMSR_10HALF             0x0800  /* Can do 10mbps, half-duplex  */
+#define BMSR_10FULL             0x1000  /* Can do 10mbps, full-duplex  */
+#define BMSR_100HALF            0x2000  /* Can do 100mbps, half-duplex */
+#define BMSR_100FULL            0x4000  /* Can do 100mbps, full-duplex */
+#define BMSR_100BASE4           0x8000  /* Can do 100mbps, 4k packets  */
+
+/* Advertisement control register. */
+#define ADVERTISE_SLCT          0x001f  /* Selector bits               */
+#define ADVERTISE_CSMA          0x0001  /* Only selector supported     */
+#define ADVERTISE_10HALF        0x0020  /* Try for 10mbps half-duplex  */
+#define ADVERTISE_1000XFULL     0x0020  /* Try for 1000BASE-X full-duplex */
+#define ADVERTISE_10FULL        0x0040  /* Try for 10mbps full-duplex  */
+#define ADVERTISE_1000XHALF     0x0040  /* Try for 1000BASE-X half-duplex */
+#define ADVERTISE_100HALF       0x0080  /* Try for 100mbps half-duplex */
+#define ADVERTISE_1000XPAUSE    0x0080  /* Try for 1000BASE-X pause    */
+#define ADVERTISE_100FULL       0x0100  /* Try for 100mbps full-duplex */
+#define ADVERTISE_1000XPSE_ASYM 0x0100  /* Try for 1000BASE-X asym pause */
+#define ADVERTISE_100BASE4      0x0200  /* Try for 100mbps 4k packets  */
+#define ADVERTISE_PAUSE_CAP     0x0400  /* Try for pause               */
+#define ADVERTISE_PAUSE_ASYM    0x0800  /* Try for asymetric pause     */
+#define ADVERTISE_RESV          0x1000  /* Unused...                   */
+#define ADVERTISE_RFAULT        0x2000  /* Say we can detect faults    */
+#define ADVERTISE_LPACK         0x4000  /* Ack link partners response  */
+#define ADVERTISE_NPAGE         0x8000  /* Next page bit               */
+
+#define ADVERTISE_FULL (ADVERTISE_100FULL | ADVERTISE_10FULL | \
+			ADVERTISE_CSMA)
+#define ADVERTISE_ALL (ADVERTISE_10HALF | ADVERTISE_10FULL | \
+                       ADVERTISE_100HALF | ADVERTISE_100FULL)
+
+/* Link partner ability register. */
+#define LPA_SLCT                0x001f  /* Same as advertise selector  */
+#define LPA_10HALF              0x0020  /* Can do 10mbps half-duplex   */
+#define LPA_1000XFULL           0x0020  /* Can do 1000BASE-X full-duplex */
+#define LPA_10FULL              0x0040  /* Can do 10mbps full-duplex   */
+#define LPA_1000XHALF           0x0040  /* Can do 1000BASE-X half-duplex */
+#define LPA_100HALF             0x0080  /* Can do 100mbps half-duplex  */
+#define LPA_1000XPAUSE          0x0080  /* Can do 1000BASE-X pause     */
+#define LPA_100FULL             0x0100  /* Can do 100mbps full-duplex  */
+#define LPA_1000XPAUSE_ASYM     0x0100  /* Can do 1000BASE-X pause asym*/
+#define LPA_100BASE4            0x0200  /* Can do 100mbps 4k packets   */
+#define LPA_PAUSE_CAP           0x0400  /* Can pause                   */
+#define LPA_PAUSE_ASYM          0x0800  /* Can pause asymetrically     */
+#define LPA_RESV                0x1000  /* Unused...                   */
+#define LPA_RFAULT              0x2000  /* Link partner faulted        */
+#define LPA_LPACK               0x4000  /* Link partner acked us       */
+#define LPA_NPAGE               0x8000  /* Next page bit               */
+
+#define LPA_DUPLEX		(LPA_10FULL | LPA_100FULL)
+#define LPA_100			(LPA_100FULL | LPA_100HALF | LPA_100BASE4)
+
+/* Expansion register for auto-negotiation. */
+#define EXPANSION_NWAY          0x0001  /* Can do N-way auto-nego      */
+#define EXPANSION_LCWP          0x0002  /* Got new RX page code word   */
+#define EXPANSION_ENABLENPAGE   0x0004  /* This enables npage words    */
+#define EXPANSION_NPCAPABLE     0x0008  /* Link partner supports npage */
+#define EXPANSION_MFAULTS       0x0010  /* Multiple faults detected    */
+#define EXPANSION_RESV          0xffe0  /* Unused...                   */
+
+#define ESTATUS_1000_TFULL	0x2000	/* Can do 1000BT Full */
+#define ESTATUS_1000_THALF	0x1000	/* Can do 1000BT Half */
+
+/* N-way test register. */
+#define NWAYTEST_RESV1          0x00ff  /* Unused...                   */
+#define NWAYTEST_LOOPBACK       0x0100  /* Enable loopback for N-way   */
+#define NWAYTEST_RESV2          0xfe00  /* Unused...                   */
+
+/* 1000BASE-T Control register */
+#define ADVERTISE_1000FULL      0x0200  /* Advertise 1000BASE-T full duplex */
+#define ADVERTISE_1000HALF      0x0100  /* Advertise 1000BASE-T half duplex */
+
+/* 1000BASE-T Status register */
+#define LPA_1000LOCALRXOK       0x2000  /* Link partner local receiver status */
+#define LPA_1000REMRXOK         0x1000  /* Link partner remote receiver status */
+#define LPA_1000FULL            0x0800  /* Link partner 1000BASE-T full duplex */
+#define LPA_1000HALF            0x0400  /* Link partner 1000BASE-T half duplex */
+
+/* Flow control flags */
+#define FLOW_CTRL_TX		0x01
+#define FLOW_CTRL_RX		0x02
+
+/**
+ * mii_nway_result
+ * @negotiated: value of MII ANAR and'd with ANLPAR
+ *
+ * Given a set of MII abilities, check each bit and returns the
+ * currently supported media, in the priority order defined by
+ * IEEE 802.3u.  We use LPA_xxx constants but note this is not the
+ * value of LPA solely, as described above.
+ *
+ * The one exception to IEEE 802.3u is that 100baseT4 is placed
+ * between 100T-full and 100T-half.  If your phy does not support
+ * 100T4 this is fine.  If your phy places 100T4 elsewhere in the
+ * priority order, you will need to roll your own function.
+ */
+static inline unsigned int mii_nway_result (unsigned int negotiated)
+{
+	unsigned int ret;
+
+	if (negotiated & LPA_100FULL)
+		ret = LPA_100FULL;
+	else if (negotiated & LPA_100BASE4)
+		ret = LPA_100BASE4;
+	else if (negotiated & LPA_100HALF)
+		ret = LPA_100HALF;
+	else if (negotiated & LPA_10FULL)
+		ret = LPA_10FULL;
+	else
+		ret = LPA_10HALF;
+
+	return ret;
+}
+
+/**
+ * mii_duplex
+ * @duplex_lock: Non-zero if duplex is locked at full
+ * @negotiated: value of MII ANAR and'd with ANLPAR
+ *
+ * A small helper function for a common case.  Returns one
+ * if the media is operating or locked at full duplex, and
+ * returns zero otherwise.
+ */
+static inline unsigned int mii_duplex (unsigned int duplex_lock,
+				       unsigned int negotiated)
+{
+	if (duplex_lock)
+		return 1;
+	if (mii_nway_result(negotiated) & LPA_DUPLEX)
+		return 1;
+	return 0;
+}
+
+/**
+ * mii_advertise_flowctrl - get flow control advertisement flags
+ * @cap: Flow control capabilities (FLOW_CTRL_RX, FLOW_CTRL_TX or both)
+ */
+static inline u16 mii_advertise_flowctrl(int cap)
+{
+	u16 adv = 0;
+
+	if (cap & FLOW_CTRL_RX)
+		adv = ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM;
+	if (cap & FLOW_CTRL_TX)
+		adv ^= ADVERTISE_PAUSE_ASYM;
+
+	return adv;
+}
+
+/**
+ * mii_resolve_flowctrl_fdx
+ * @lcladv: value of MII ADVERTISE register
+ * @rmtadv: value of MII LPA register
+ *
+ * Resolve full duplex flow control as per IEEE 802.3-2005 table 28B-3
+ */
+static inline u8 mii_resolve_flowctrl_fdx(u16 lcladv, u16 rmtadv)
+{
+	u8 cap = 0;
+
+	if (lcladv & rmtadv & ADVERTISE_PAUSE_CAP) {
+		cap = FLOW_CTRL_TX | FLOW_CTRL_RX;
+	} else if (lcladv & rmtadv & ADVERTISE_PAUSE_ASYM) {
+		if (lcladv & ADVERTISE_PAUSE_CAP)
+			cap = FLOW_CTRL_RX;
+		else if (rmtadv & ADVERTISE_PAUSE_CAP)
+			cap = FLOW_CTRL_TX;
+	}
+
+	return cap;
+}
+
+#endif /* __LINUX_MII_H__ */
diff --git a/include/miidev.h b/include/miidev.h
new file mode 100644
index 0000000..6f653d9
--- /dev/null
+++ b/include/miidev.h
@@ -0,0 +1,62 @@
+/*
+ * (C) Copyright 2001
+ * Gerald Van Baren, Custom IDEAS, vanbaren@cideas.com.
+ *
+ * (C) Copyright 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+#ifndef __MIIDEV_H__
+#define __MIIDEV_H__
+
+#include <driver.h>
+#include <linux/mii.h>
+
+#define MIIDEV_FORCE_10		(1 << 0)
+#define MIIDEV_FORCE_LINK	(1 << 1)
+
+struct mii_device {
+	struct device_d dev;
+
+	int address;	/* The address the phy has on the bus */
+	int	(*read) (struct mii_device *dev, int addr, int reg);
+	int	(*write) (struct mii_device *dev, int addr, int reg, int value);
+
+	int flags;
+
+	struct eth_device *edev;
+	struct cdev cdev;
+};
+
+int mii_register(struct mii_device *dev);
+void mii_unregister(struct mii_device *mdev);
+int miidev_restart_aneg(struct mii_device *mdev);
+int miidev_wait_aneg(struct mii_device *mdev);
+int miidev_print_status(struct mii_device *mdev);
+
+static int inline mii_write(struct mii_device *dev, int addr, int reg, int value)
+{
+	return dev->write(dev, addr, reg, value);
+}
+
+static int inline mii_read(struct mii_device *dev, int addr, int reg)
+{
+	return dev->read(dev, addr, reg);
+}
+#endif /* __MIIDEV_H__ */
diff --git a/include/miiphy.h b/include/miiphy.h
deleted file mode 100644
index 67f1b1c..0000000
--- a/include/miiphy.h
+++ /dev/null
@@ -1,158 +0,0 @@
-/*
- * linux/mii.h: definitions for MII-compatible transceivers
- * Originally drivers/net/sunhme.h.
- *
- * Copyright (C) 1996, 1999, 2001 David S. Miller (davem@redhat.com)
- */
-
-#ifndef _MII_PHY_H_
-#define _MII_PHY_H_
-
-#include <driver.h>
-
-#define MIIPHY_FORCE_10		(1 << 0)
-#define MIIPHY_FORCE_LINK	(1 << 1)
-
-#define MII_BMCR            0x00        /* Basic mode control register */
-#define MII_BMSR            0x01        /* Basic mode status register  */
-#define MII_PHYSID1         0x02        /* PHYS ID 1                   */
-#define MII_PHYSID2         0x03        /* PHYS ID 2                   */
-#define MII_ADVERTISE       0x04        /* Advertisement control reg   */
-#define MII_LPA             0x05        /* Link partner ability reg    */
-#define MII_EXPANSION       0x06        /* Expansion register          */
-#define MII_CTRL1000        0x09        /* 1000BASE-T control          */
-#define MII_STAT1000        0x0a        /* 1000BASE-T status           */
-#define MII_ESTATUS	    0x0f	/* Extended Status             */
-#define MII_DCOUNTER        0x12        /* Disconnect counter          */
-#define MII_FCSCOUNTER      0x13        /* False carrier counter       */
-#define MII_NWAYTEST        0x14        /* N-way auto-neg test reg     */
-#define MII_RERRCOUNTER     0x15        /* Receive error counter       */
-#define MII_SREVISION       0x16        /* Silicon revision            */
-#define MII_RESV1           0x17        /* Reserved...                 */
-#define MII_LBRERROR        0x18        /* Lpback, rx, bypass error    */
-#define MII_PHYADDR         0x19        /* PHY address                 */
-#define MII_RESV2           0x1a        /* Reserved...                 */
-#define MII_TPISTATUS       0x1b        /* TPI status for 10mbps       */
-#define MII_NCONFIG         0x1c        /* Network interface config    */
-
-/* Basic mode control register. */
-#define BMCR_RESV               0x003f  /* Unused...                   */
-#define BMCR_SPEED1000		0x0040  /* MSB of Speed (1000)         */
-#define BMCR_CTST               0x0080  /* Collision test              */
-#define BMCR_FULLDPLX           0x0100  /* Full duplex                 */
-#define BMCR_ANRESTART          0x0200  /* Auto negotiation restart    */
-#define BMCR_ISOLATE            0x0400  /* Disconnect DP83840 from MII */
-#define BMCR_PDOWN              0x0800  /* Powerdown the DP83840       */
-#define BMCR_ANENABLE           0x1000  /* Enable auto negotiation     */
-#define BMCR_SPEED100           0x2000  /* Select 100Mbps              */
-#define BMCR_LOOPBACK           0x4000  /* TXD loopback bits           */
-#define BMCR_RESET              0x8000  /* Reset the DP83840           */
-
-/* Basic mode status register. */
-#define BMSR_ERCAP              0x0001  /* Ext-reg capability          */
-#define BMSR_JCD                0x0002  /* Jabber detected             */
-#define BMSR_LSTATUS            0x0004  /* Link status                 */
-#define BMSR_ANEGCAPABLE        0x0008  /* Able to do auto-negotiation */
-#define BMSR_RFAULT             0x0010  /* Remote fault detected       */
-#define BMSR_ANEGCOMPLETE       0x0020  /* Auto-negotiation complete   */
-#define BMSR_RESV               0x00c0  /* Unused...                   */
-#define BMSR_ESTATEN		0x0100	/* Extended Status in R15      */
-#define BMSR_100HALF2           0x0200  /* Can do 100BASE-T2 HDX       */
-#define BMSR_100FULL2           0x0400  /* Can do 100BASE-T2 FDX       */
-#define BMSR_10HALF             0x0800  /* Can do 10mbps, half-duplex  */
-#define BMSR_10FULL             0x1000  /* Can do 10mbps, full-duplex  */
-#define BMSR_100HALF            0x2000  /* Can do 100mbps, half-duplex */
-#define BMSR_100FULL            0x4000  /* Can do 100mbps, full-duplex */
-#define BMSR_100BASE4           0x8000  /* Can do 100mbps, 4k packets  */
-
-/* Advertisement control register. */
-#define ADVERTISE_SLCT          0x001f  /* Selector bits               */
-#define ADVERTISE_CSMA          0x0001  /* Only selector supported     */
-#define ADVERTISE_10HALF        0x0020  /* Try for 10mbps half-duplex  */
-#define ADVERTISE_1000XFULL     0x0020  /* Try for 1000BASE-X full-duplex */
-#define ADVERTISE_10FULL        0x0040  /* Try for 10mbps full-duplex  */
-#define ADVERTISE_1000XHALF     0x0040  /* Try for 1000BASE-X half-duplex */
-#define ADVERTISE_100HALF       0x0080  /* Try for 100mbps half-duplex */
-#define ADVERTISE_1000XPAUSE    0x0080  /* Try for 1000BASE-X pause    */
-#define ADVERTISE_100FULL       0x0100  /* Try for 100mbps full-duplex */
-#define ADVERTISE_1000XPSE_ASYM 0x0100  /* Try for 1000BASE-X asym pause */
-#define ADVERTISE_100BASE4      0x0200  /* Try for 100mbps 4k packets  */
-#define ADVERTISE_PAUSE_CAP     0x0400  /* Try for pause               */
-#define ADVERTISE_PAUSE_ASYM    0x0800  /* Try for asymetric pause     */
-#define ADVERTISE_RESV          0x1000  /* Unused...                   */
-#define ADVERTISE_RFAULT        0x2000  /* Say we can detect faults    */
-#define ADVERTISE_LPACK         0x4000  /* Ack link partners response  */
-#define ADVERTISE_NPAGE         0x8000  /* Next page bit               */
-
-#define ADVERTISE_FULL (ADVERTISE_100FULL | ADVERTISE_10FULL | \
-			ADVERTISE_CSMA)
-#define ADVERTISE_ALL (ADVERTISE_10HALF | ADVERTISE_10FULL | \
-                       ADVERTISE_100HALF | ADVERTISE_100FULL)
-
-/* Link partner ability register. */
-#define LPA_SLCT                0x001f  /* Same as advertise selector  */
-#define LPA_10HALF              0x0020  /* Can do 10mbps half-duplex   */
-#define LPA_1000XFULL           0x0020  /* Can do 1000BASE-X full-duplex */
-#define LPA_10FULL              0x0040  /* Can do 10mbps full-duplex   */
-#define LPA_1000XHALF           0x0040  /* Can do 1000BASE-X half-duplex */
-#define LPA_100HALF             0x0080  /* Can do 100mbps half-duplex  */
-#define LPA_1000XPAUSE          0x0080  /* Can do 1000BASE-X pause     */
-#define LPA_100FULL             0x0100  /* Can do 100mbps full-duplex  */
-#define LPA_1000XPAUSE_ASYM     0x0100  /* Can do 1000BASE-X pause asym*/
-#define LPA_100BASE4            0x0200  /* Can do 100mbps 4k packets   */
-#define LPA_PAUSE_CAP           0x0400  /* Can pause                   */
-#define LPA_PAUSE_ASYM          0x0800  /* Can pause asymetrically     */
-#define LPA_RESV                0x1000  /* Unused...                   */
-#define LPA_RFAULT              0x2000  /* Link partner faulted        */
-#define LPA_LPACK               0x4000  /* Link partner acked us       */
-#define LPA_NPAGE               0x8000  /* Next page bit               */
-
-#define LPA_DUPLEX		(LPA_10FULL | LPA_100FULL)
-#define LPA_100			(LPA_100FULL | LPA_100HALF | LPA_100BASE4)
-
-/* Expansion register for auto-negotiation. */
-#define EXPANSION_NWAY          0x0001  /* Can do N-way auto-nego      */
-#define EXPANSION_LCWP          0x0002  /* Got new RX page code word   */
-#define EXPANSION_ENABLENPAGE   0x0004  /* This enables npage words    */
-#define EXPANSION_NPCAPABLE     0x0008  /* Link partner supports npage */
-#define EXPANSION_MFAULTS       0x0010  /* Multiple faults detected    */
-#define EXPANSION_RESV          0xffe0  /* Unused...                   */
-
-#define ESTATUS_1000_TFULL	0x2000	/* Can do 1000BT Full */
-#define ESTATUS_1000_THALF	0x1000	/* Can do 1000BT Half */
-
-/* N-way test register. */
-#define NWAYTEST_RESV1          0x00ff  /* Unused...                   */
-#define NWAYTEST_LOOPBACK       0x0100  /* Enable loopback for N-way   */
-#define NWAYTEST_RESV2          0xfe00  /* Unused...                   */
-
-/* 1000BASE-T Control register */
-#define ADVERTISE_1000FULL      0x0200  /* Advertise 1000BASE-T full duplex */
-#define ADVERTISE_1000HALF      0x0100  /* Advertise 1000BASE-T half duplex */
-
-/* 1000BASE-T Status register */
-#define LPA_1000LOCALRXOK       0x2000  /* Link partner local receiver status */
-#define LPA_1000REMRXOK         0x1000  /* Link partner remote receiver status */
-#define LPA_1000FULL            0x0800  /* Link partner 1000BASE-T full duplex */
-#define LPA_1000HALF            0x0400  /* Link partner 1000BASE-T half duplex */
-
-struct miiphy_device {
-	struct device_d dev;
-
-	int address;	/* The address the phy has on the bus */
-	int (*read)(struct miiphy_device *mdev, uint8_t phy_addr, uint8_t reg_addr, uint16_t *value);
-	int (*write)(struct miiphy_device *mdev, uint8_t phy_addr, uint8_t reg_addr, uint16_t data);
-
-	int flags;
-
-	struct eth_device *edev;
-	struct cdev cdev;
-};
-
-int miiphy_register(struct miiphy_device *mdev);
-void miiphy_unregister(struct miiphy_device *mdev);
-int miiphy_restart_aneg(struct miiphy_device *mdev);
-int miiphy_wait_aneg(struct miiphy_device *mdev);
-int miiphy_print_status(struct miiphy_device *mdev);
-
-#endif
diff --git a/include/usb/usbnet.h b/include/usb/usbnet.h
index e3ea373..1609b2e 100644
--- a/include/usb/usbnet.h
+++ b/include/usb/usbnet.h
@@ -23,7 +23,7 @@
 #define	__LINUX_USB_USBNET_H
 
 #include <net.h>
-#include <miiphy.h>
+#include <miidev.h>
 
 /* interface from usbnet core to each USB networking link we handle */
 struct usbnet {
@@ -40,7 +40,7 @@ struct usbnet {
 
 	/* protocol/interface state */
 	struct eth_device	edev;
-	struct miiphy_device	miiphy;
+	struct mii_device	miidev;
 
 	int			msg_enable;
 	unsigned long		data [5];
diff --git a/net/eth.c b/net/eth.c
index 4d58191..cfb0fef 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -26,7 +26,7 @@
 #include <driver.h>
 #include <init.h>
 #include <net.h>
-#include <miiphy.h>
+#include <miidev.h>
 #include <errno.h>
 #include <malloc.h>
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
