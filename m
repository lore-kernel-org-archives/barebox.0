Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x229.google.com ([2a00:1450:4013:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBB9A-0004zd-55
 for barebox@lists.infradead.org; Wed, 05 Feb 2014 22:40:48 +0000
Received: by mail-ea0-f169.google.com with SMTP id h10so544088eak.0
 for <barebox@lists.infradead.org>; Wed, 05 Feb 2014 14:40:19 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed,  5 Feb 2014 23:40:04 +0100
Message-Id: <1391640009-3399-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 1/6] net: reorder Kconfig and Makefile alphabetically
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

This reorders Kconfig and Makefile for drivers/net alphabetically.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 drivers/net/Kconfig  | 139 +++++++++++++++++++++++++--------------------------
 drivers/net/Makefile |  27 +++++-----
 2 files changed, 83 insertions(+), 83 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index bc341c139ced..a5216ec69082 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -1,22 +1,22 @@
-config HAS_CS8900
+config ARCH_HAS_FEC_IMX
 	bool
 
-config HAS_DM9000
+config HAS_AT91_ETHER
 	bool
 
-config HAS_MACB
+config HAS_CS8900
 	bool
 
-config HAS_AT91_ETHER
+config HAS_DESIGNWARE_ETH
 	bool
 
-config HAS_NETX_ETHER
+config HAS_DM9000
 	bool
 
-config HAS_DESIGNWARE_ETH
+config HAS_MACB
 	bool
 
-config ARCH_HAS_FEC_IMX
+config HAS_NETX_ETHER
 	bool
 
 config PHYLIB
@@ -25,8 +25,6 @@ config PHYLIB
 menu "Network drivers"
 	depends on NET
 
-source "drivers/net/phy/Kconfig"
-
 config DRIVER_NET_AR231X
 	bool "AR231X Ethernet support"
 	depends on MACH_MIPS_AR231X
@@ -34,6 +32,11 @@ config DRIVER_NET_AR231X
 	help
 	  Support for the AR231x/531x ethernet controller
 
+config DRIVER_NET_AT91_ETHER
+	bool "at91 ethernet driver"
+	depends on HAS_AT91_ETHER
+	select PHYLIB
+
 config DRIVER_NET_CALXEDA_XGMAC
 	bool "Calxeda xgmac"
 
@@ -46,60 +49,87 @@ config DRIVER_NET_CPSW
 	depends on ARCH_OMAP
 	select PHYLIB
 
-config DRIVER_NET_SMC911X
-	bool "smc911x ethernet driver"
-	select PHYLIB
-	help
-	  This option enables support for the SMSC LAN9[12]1[567]
-	  ethernet chip.
-
-config DRIVER_NET_SMC91111
-	bool "smc91111 ethernet driver"
-	select PHYLIB
-	help
-	  This option enables support for the SMSC LAN91C111
-	  ethernet chip.
-
 config DRIVER_NET_DAVINCI_EMAC
 	bool "TI Davinci/OMAP EMAC ethernet driver"
 	depends on ARCH_OMAP3
 	select PHYLIB
 
+config DRIVER_NET_DESIGNWARE
+	bool "Designware Universal MAC ethernet driver"
+	select PHYLIB
+	help
+	  This option enables support for the Synopsys
+	  Designware Core Univesal MAC 10M/100M/1G ethernet IP.
+
 config DRIVER_NET_DM9K
 	bool "Davicom dm9k[E|A|B] ethernet driver"
 	depends on HAS_DM9000
 	select PHYLIB
 
-config DRIVER_NET_NETX
-	bool "Hilscher Netx ethernet driver"
-	depends on HAS_NETX_ETHER
-	select PHYLIB
-
-config DRIVER_NET_AT91_ETHER
-	bool "at91 ethernet driver"
-	depends on HAS_AT91_ETHER
+config DRIVER_NET_EP93XX
+	bool "EP93xx Ethernet driver"
+	depends on ARCH_EP93XX
 	select PHYLIB
 
-config DRIVER_NET_MPC5200
-	bool "MPC5200 Ethernet driver"
-	depends on ARCH_MPC5200
-	select PHYLIB
+config DRIVER_NET_ETHOC
+	bool "OpenCores ethernet MAC driver"
+	help
+	  This option enables support for the OpenCores 10/100 Mbps
+	  Ethernet MAC core.
 
 config DRIVER_NET_FEC_IMX
 	bool "i.MX FEC Ethernet driver"
 	depends on ARCH_HAS_FEC_IMX
 	select PHYLIB
 
-config DRIVER_NET_EP93XX
-	bool "EP93xx Ethernet driver"
-	depends on ARCH_EP93XX
+config DRIVER_NET_GIANFAR
+	bool "Gianfar Ethernet"
+	depends on ARCH_MPC85XX
 	select PHYLIB
 
+config DRIVER_NET_KS8851_MLL
+	bool "ks8851 mll ethernet driver"
+	select PHYLIB
+	help
+	  This option enables support for the Micrel KS8851 MLL
+	  ethernet chip.
+
 config DRIVER_NET_MACB
 	bool "macb Ethernet driver"
 	depends on HAS_MACB
 	select PHYLIB
 
+config DRIVER_NET_MICREL
+	depends on SPI
+	bool "Micrel KSZ8864RMN Ethernet Switch driver"
+	help
+	  This option enables support for enabling the Micrel
+	  KSZ8864RMN Ethernet Switch over SPI.
+
+config DRIVER_NET_MPC5200
+	bool "MPC5200 Ethernet driver"
+	depends on ARCH_MPC5200
+	select PHYLIB
+
+config DRIVER_NET_NETX
+	bool "Hilscher Netx ethernet driver"
+	depends on HAS_NETX_ETHER
+	select PHYLIB
+
+config DRIVER_NET_SMC911X
+	bool "smc911x ethernet driver"
+	select PHYLIB
+	help
+	  This option enables support for the SMSC LAN9[12]1[567]
+	  ethernet chip.
+
+config DRIVER_NET_SMC91111
+	bool "smc91111 ethernet driver"
+	select PHYLIB
+	help
+	  This option enables support for the SMSC LAN91C111
+	  ethernet chip.
+
 config DRIVER_NET_TAP
 	bool "tap Ethernet driver"
 	depends on LINUX
@@ -120,39 +150,8 @@ config TSE_USE_DEDICATED_DESC_MEM
 	  reserved with a malloc but directly mapped to the memory
 	  address (defined in config.h)
 
-config DRIVER_NET_KS8851_MLL
-	bool "ks8851 mll ethernet driver"
-	select PHYLIB
-	help
-	  This option enables support for the Micrel KS8851 MLL
-	  ethernet chip.
-
-config DRIVER_NET_DESIGNWARE
-	bool "Designware Universal MAC ethernet driver"
-	select PHYLIB
-	help
-	  This option enables support for the Synopsys
-	  Designware Core Univesal MAC 10M/100M/1G ethernet IP.
-
-config DRIVER_NET_GIANFAR
-	bool "Gianfar Ethernet"
-	depends on ARCH_MPC85XX
-	select PHYLIB
-
-config DRIVER_NET_ETHOC
-	bool "OpenCores ethernet MAC driver"
-	help
-	  This option enables support for the OpenCores 10/100 Mbps
-	  Ethernet MAC core.
-
+source "drivers/net/phy/Kconfig"
 source "drivers/net/usb/Kconfig"
 
-config DRIVER_NET_MICREL
-	depends on SPI
-	bool "Micrel KSZ8864RMN Ethernet Switch driver"
-	help
-	  This option enables support for enabling the Micrel
-	  KSZ8864RMN Ethernet Switch over SPI.
-
 endmenu
 
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index ffb40ae56ff8..c485716e9ace 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -1,23 +1,24 @@
+obj-$(CONFIG_PHYLIB)			+= phy/
+obj-$(CONFIG_NET_USB)			+= usb/
+
 obj-$(CONFIG_DRIVER_NET_AR231X)		+= ar231x.o
+obj-$(CONFIG_DRIVER_NET_AT91_ETHER)	+= at91_ether.o
 obj-$(CONFIG_DRIVER_NET_CALXEDA_XGMAC)	+= xgmac.o
 obj-$(CONFIG_DRIVER_NET_CS8900)		+= cs8900.o
 obj-$(CONFIG_DRIVER_NET_CPSW)		+= cpsw.o
-obj-$(CONFIG_DRIVER_NET_SMC911X)	+= smc911x.o
-obj-$(CONFIG_DRIVER_NET_SMC91111)	+= smc91111.o
 obj-$(CONFIG_DRIVER_NET_DAVINCI_EMAC)	+= davinci_emac.o
+obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
 obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
-obj-$(CONFIG_DRIVER_NET_NETX)		+= netx_eth.o
-obj-$(CONFIG_DRIVER_NET_AT91_ETHER)	+= at91_ether.o
-obj-$(CONFIG_DRIVER_NET_MPC5200)	+= fec_mpc5200.o
-obj-$(CONFIG_DRIVER_NET_FEC_IMX)	+= fec_imx.o
 obj-$(CONFIG_DRIVER_NET_EP93XX)		+= ep93xx.o
+obj-$(CONFIG_DRIVER_NET_ETHOC)		+= ethoc.o
+obj-$(CONFIG_DRIVER_NET_FEC_IMX)	+= fec_imx.o
+obj-$(CONFIG_DRIVER_NET_GIANFAR)	+= gianfar.o
+obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
 obj-$(CONFIG_DRIVER_NET_MACB)		+= macb.o
+obj-$(CONFIG_DRIVER_NET_MICREL)		+= ksz8864rmn.o
+obj-$(CONFIG_DRIVER_NET_MPC5200)	+= fec_mpc5200.o
+obj-$(CONFIG_DRIVER_NET_NETX)		+= netx_eth.o
+obj-$(CONFIG_DRIVER_NET_SMC911X)	+= smc911x.o
+obj-$(CONFIG_DRIVER_NET_SMC91111)	+= smc91111.o
 obj-$(CONFIG_DRIVER_NET_TAP)		+= tap.o
-obj-$(CONFIG_PHYLIB)			+= phy/
-obj-$(CONFIG_NET_USB)			+= usb/
 obj-$(CONFIG_DRIVER_NET_TSE)		+= altera_tse.o
-obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
-obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
-obj-$(CONFIG_DRIVER_NET_GIANFAR)	+= gianfar.o
-obj-$(CONFIG_DRIVER_NET_MICREL)		+= ksz8864rmn.o
-obj-$(CONFIG_DRIVER_NET_ETHOC)		+= ethoc.o
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
