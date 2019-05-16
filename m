Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR8hg-0007ak-C1
 for barebox@lists.infradead.org; Thu, 16 May 2019 05:13:18 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 16 May 2019 14:12:54 +0900
Message-Id: <20190516051254.9309-1-yamada.masahiro@socionext.com>
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
Subject: [PATCH] treewide: replace '---help---' with 'help' in Kconfig files
To: barebox@lists.infradead.org

In Linux, '---help---' was deprecated in favor of 'help', and
this is checked by the recent checkpatch.pl

See Linux commit 84af7a6194e493fae312a2b7fa5a3b51f76d9282

The number of '---help---' is gradually decreasing in Linux, but there
are still lots. However, '---help---' will be completely killed when
the time comes.

Fortunately, there are only some in Barebox. Replacing them is not hard.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/mips/Kconfig           |  2 +-
 drivers/mtd/devices/Kconfig |  2 +-
 drivers/net/Kconfig         |  4 ++--
 drivers/net/phy/Kconfig     | 26 +++++++++++++-------------
 drivers/nvme/host/Kconfig   |  2 +-
 drivers/w1/Kconfig          |  4 ++--
 6 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 5901930a7..936e56fa2 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -35,7 +35,7 @@ config MIPS_RELOCATION_TABLE_SIZE
 	hex "Relocation table size"
 	range 0x100 0x10000
 	default "0x8000"
-	---help---
+	help
 	  A table of relocation data will be appended to the Barebox binary
 	  and parsed in relocate_code() to fix up all offsets in the relocated
 	  Barebox.
diff --git a/drivers/mtd/devices/Kconfig b/drivers/mtd/devices/Kconfig
index 25db10a9b..47296cf51 100644
--- a/drivers/mtd/devices/Kconfig
+++ b/drivers/mtd/devices/Kconfig
@@ -52,7 +52,7 @@ config MTD_DOCG3
 	bool "M-Systems Disk-On-Chip G3"
 	select BCH
 	select BITREV
-	---help---
+	help
 	  This provides an MTD device driver for the M-Systems DiskOnChip
 	  G3 devices.
 
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 3e3de5a97..beeb4b822 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -108,13 +108,13 @@ config DRIVER_NET_ENC28J60
 	bool "ENC28J60 support"
 	depends on SPI
 	select PHYLIB
-	---help---
+	help
 	  Support for the Microchip EN28J60 ethernet chip.
 
 config DRIVER_NET_ENC28J60_WRITEVERIFY
 	bool "Enable write verify"
 	depends on DRIVER_NET_ENC28J60
-	---help---
+	help
 	  Enable the verify after the buffer write useful for debugging purpose.
 	  If unsure, say N.
 
diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index c08b8257a..2806af376 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -10,52 +10,52 @@ comment "MII PHY device drivers"
 
 config AR8327N_PHY
 	bool "Driver for QCA AR8327N PHYs"
-	---help---
+	help
 	  Currently supports the AR8327N PHY.
 
 config AT803X_PHY
 	bool "Driver for Atheros AT803X PHYs"
-	---help---
+	help
 	  Currently supports the AT8030, AT8031 and AT8035 PHYs.
 
 config DAVICOM_PHY
 	bool "Driver for Davicom PHYs"
-	---help---
+	help
 	  Currently supports dm9161e and dm9131
 
 config DP83867_PHY
 	tristate "Texas Instruments DP83867 Gigabit PHY"
-	---help---
+	help
 	  Currently supports the DP83867 PHY.
 
 config LXT_PHY
 	bool "Driver for the Intel LXT PHYs"
-	---help---
+	help
 	  Currently supports the lxt971 PHY.
 
 config MARVELL_PHY
 	tristate "Drivers for Marvell PHYs"
-	---help---
+	help
 	  Add support for various Marvell PHYs (e.g. 88E1121R).
 
 config MICREL_PHY
 	bool "Driver for Micrel PHYs"
-	---help---
+	help
 	  Supports the KSZ9021, VSC8201, KS8001 PHYs.
 
 config NATIONAL_PHY
 	bool "Driver for National Semiconductor PHYs"
-	---help---
+	help
 	  Currently supports the DP83865 PHY.
 
 config REALTEK_PHY
 	bool "Driver for Realtek PHYs"
-	---help---
+	help
 	  Supports the Realtek 821x PHY.
 
 config SMSC_PHY
 	bool "Drivers for SMSC PHYs"
-	---help---
+	help
 	  Currently supports the LAN83C185, LAN8187 and LAN8700 PHYs
 
 config NET_DSA_MV88E6XXX
@@ -69,12 +69,12 @@ comment "MII bus device drivers"
 config MDIO_MVEBU
 	bool "Driver for MVEBU SoC MDIO bus"
 	depends on ARCH_MVEBU
-	---help---
+	help
 	  Driver for the MDIO bus found on Marvell EBU SoCs.
 
 config MDIO_BITBANG
         bool "Support for bitbanged MDIO buses"
-	---help---
+	help
           This module implements the MDIO bus protocol in software,
           for use by low level drivers that export the ability to
           drive the relevant pins.
@@ -84,7 +84,7 @@ config MDIO_BITBANG
 config MDIO_GPIO
 	bool "Support for GPIO lib-based bitbanged MDIO buses"
 	depends on MDIO_BITBANG && GPIOLIB
-	---help---
+	help
 	  Supports GPIO lib-based MDIO busses.
 
 config MDIO_BUS_MUX
diff --git a/drivers/nvme/host/Kconfig b/drivers/nvme/host/Kconfig
index 8888c8900..5499f97d7 100644
--- a/drivers/nvme/host/Kconfig
+++ b/drivers/nvme/host/Kconfig
@@ -5,7 +5,7 @@ config BLK_DEV_NVME
 	bool "NVM Express block device"
 	depends on PCI && BLOCK
 	select NVME_CORE
-	---help---
+	help
 	  The NVM Express driver is for solid state drives directly
 	  connected to the PCI or PCI Express bus.  If you know you
 	  don't have one of these, it is safe to answer N.
diff --git a/drivers/w1/Kconfig b/drivers/w1/Kconfig
index 4a16197c6..6299f6e16 100644
--- a/drivers/w1/Kconfig
+++ b/drivers/w1/Kconfig
@@ -1,6 +1,6 @@
 menuconfig W1
 	bool "Dallas's 1-wire support"
-	---help---
+	help
 	  Dallas' 1-wire bus is useful to connect slow 1-pin devices
 	  such as iButtons and thermal sensors.
 
@@ -13,7 +13,7 @@ source "drivers/w1/slaves/Kconfig"
 
 config W1_DUAL_SEARCH
 	bool "dual search"
-	---help---
+	help
 	  Some device need to be searched twice to be detected
 
 endif # W1
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
