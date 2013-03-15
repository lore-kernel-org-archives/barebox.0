Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UHyfy-0007fM-RV
 for barebox@lists.infradead.org; Tue, 19 Mar 2013 15:42:12 +0000
Received: from kryptos.localdomain (neo.teric.us [198.58.100.135])
 by eso.teric.us (Postfix) with ESMTPS id C1D0110C7F
 for <barebox@lists.infradead.org>; Tue, 19 Mar 2013 11:42:09 -0400 (EDT)
From: Josh Cartwright <joshc@eso.teric.us>
Date: Fri, 15 Mar 2013 18:26:00 -0500
Message-Id: <20130319154901.9111A25817@kryptos.localdomain>
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
Subject: [PATCH] macb: rename platform data
To: barebox@lists.infradead.org

The macb/gem core is used by the Zynq SoC.  In preparation of sharing
the macb driver between at91 and Zynq, rename the platform data to
'struct macb_platform_data', and move the definition to a common
location.

Signed-off-by: Josh Cartwright <joshc@eso.teric.us>
---
 arch/arm/boards/animeo_ip/init.c         |  2 +-
 arch/arm/boards/at91rm9200ek/init.c      |  2 +-
 arch/arm/boards/at91sam9260ek/init.c     |  2 +-
 arch/arm/boards/at91sam9263ek/init.c     |  2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c  |  2 +-
 arch/arm/boards/at91sam9m10ihd/init.c    |  2 +-
 arch/arm/boards/at91sam9x5ek/init.c      |  2 +-
 arch/arm/boards/dss11/init.c             |  2 +-
 arch/arm/boards/mmccpu/init.c            |  2 +-
 arch/arm/boards/pm9263/init.c            |  2 +-
 arch/arm/boards/pm9g45/init.c            |  2 +-
 arch/arm/boards/qil-a9260/init.c         |  2 +-
 arch/arm/boards/sama5d3xek/init.c        |  4 ++--
 arch/arm/boards/telit-evk-pro3/init.c    |  2 +-
 arch/arm/boards/tny-a926x/init.c         |  2 +-
 arch/arm/boards/usb-a926x/init.c         |  2 +-
 arch/arm/mach-at91/at91rm9200_devices.c  |  4 ++--
 arch/arm/mach-at91/at91sam9260_devices.c |  4 ++--
 arch/arm/mach-at91/at91sam9263_devices.c |  4 ++--
 arch/arm/mach-at91/at91sam9g45_devices.c |  4 ++--
 arch/arm/mach-at91/at91sam9x5_devices.c  |  4 ++--
 arch/arm/mach-at91/include/mach/board.h  | 11 ++---------
 arch/arm/mach-at91/sama5d3_devices.c     |  4 ++--
 drivers/net/at91_ether.c                 |  2 +-
 drivers/net/macb.c                       |  4 ++--
 include/platform_data/macb.h             | 30 ++++++++++++++++++++++++++++++
 26 files changed, 64 insertions(+), 41 deletions(-)
 create mode 100644 include/platform_data/macb.h

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index ada3bb0..07525b7 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -120,7 +120,7 @@ static void animeo_ip_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index eec71bb..30aaae2 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -32,7 +32,7 @@
 #include <mach/io.h>
 #include <spi/spi.h>
 
-static struct at91_ether_platform_data ether_pdata = {
+static struct macb_platform_data ether_pdata = {
 	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index dc2976a..4e4a69d 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -114,7 +114,7 @@ static void ek_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 90fdbec..a731d58 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -82,7 +82,7 @@ static void ek_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 0ae7171..f32215d 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -105,7 +105,7 @@ static void ek_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index df63a91..fe77b3a 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -79,7 +79,7 @@ static void ek_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 4e1e069..74cc7ab 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -105,7 +105,7 @@ static void ek_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 77ae46f..b33cd12 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -73,7 +73,7 @@ static void dss11_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_addr = 0,
 	.flags = AT91SAM_ETX2_ETX3_ALTERNATIVE,
 };
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 1e6bbab..b7a94cc 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -33,7 +33,7 @@
 #include <mach/gpio.h>
 #include <mach/io.h>
 
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_flags	= PHYLIB_FORCE_LINK,
 	.phy_addr	= 4,
 };
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 4afa095..ff405bd 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -88,7 +88,7 @@ static void pm_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = -1,
 };
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 69c66d5..c3886bb 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -112,7 +112,7 @@ static void __init pm9g45_add_device_usbh(void)
 static void __init pm9g45_add_device_usbh(void) {}
 #endif
 
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
diff --git a/arch/arm/boards/qil-a9260/init.c b/arch/arm/boards/qil-a9260/init.c
index e96204a..56b51c2 100644
--- a/arch/arm/boards/qil-a9260/init.c
+++ b/arch/arm/boards/qil-a9260/init.c
@@ -79,7 +79,7 @@ static void qil_a9260_add_device_mci(void) {}
 #endif
 
 #ifdef CONFIG_CALAO_MB_QIL_A9260
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_interface	= PHY_INTERFACE_MODE_RMII,
 	.phy_addr	= -1,
 };
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index d17e4c2..743b907 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -110,12 +110,12 @@ static void ek_add_device_nand(void) {}
 #endif
 
 #if defined(CONFIG_DRIVER_NET_MACB)
-static struct at91_ether_platform_data gmac_pdata = {
+static struct macb_platform_data gmac_pdata = {
 	.phy_interface = PHY_INTERFACE_MODE_RGMII,
 	.phy_addr = 7,
 };
 
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
index d5f1b3e..9900dd1 100644
--- a/arch/arm/boards/telit-evk-pro3/init.c
+++ b/arch/arm/boards/telit-evk-pro3/init.c
@@ -62,7 +62,7 @@ static void evk_add_device_nand(void)
 	at91_add_device_nand(&nand_pdata);
 }
 
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 5ea6c53..43c227b 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -112,7 +112,7 @@ static void tny_a9260_add_device_nand(void)
 }
 
 #ifdef CONFIG_DRIVER_NET_MACB
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_interface	= PHY_INTERFACE_MODE_RMII,
 	.phy_addr	= -1,
 };
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 7ae9020..0c89d39 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -117,7 +117,7 @@ static void usb_a9260_add_device_nand(void) {}
 #endif
 
 #if defined(CONFIG_DRIVER_NET_MACB)
-static struct at91_ether_platform_data macb_pdata = {
+static struct macb_platform_data macb_pdata = {
 	.phy_interface	= PHY_INTERFACE_MODE_RMII,
 	.phy_addr	= -1,
 };
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 82862d7..ee07848 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -86,7 +86,7 @@ void __init at91_add_device_udc(struct at91_udc_data *data) {}
  * -------------------------------------------------------------------- */
 
 #if defined(CONFIG_DRIVER_NET_AT91_ETHER)
-void __init at91_add_device_eth(int id, struct at91_ether_platform_data *data)
+void __init at91_add_device_eth(int id, struct macb_platform_data *data)
 {
 	if (!data)
 		return;
@@ -118,7 +118,7 @@ void __init at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 			   IORESOURCE_MEM, data);
 }
 #else
-void __init at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
+void __init at91_add_device_eth(int id, struct macb_platform_data *data) {}
 #endif
 
 /* --------------------------------------------------------------------
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 1c375ee..cff0d90 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -81,7 +81,7 @@ void __init at91_add_device_udc(struct at91_udc_data *data) {}
 #endif
 
 #if defined(CONFIG_DRIVER_NET_MACB)
-void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
+void at91_add_device_eth(int id, struct macb_platform_data *data)
 {
 	if (!data)
 		return;
@@ -118,7 +118,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 			   IORESOURCE_MEM, data);
 }
 #else
-void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
+void at91_add_device_eth(int id, struct macb_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index f47a5fe..a93220d 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -81,7 +81,7 @@ void __init at91_add_device_udc(struct at91_udc_data *data) {}
 #endif
 
 #if defined(CONFIG_DRIVER_NET_MACB)
-void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
+void at91_add_device_eth(int id, struct macb_platform_data *data)
 {
 	if (!data)
 		return;
@@ -112,7 +112,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 			   IORESOURCE_MEM, data);
 }
 #else
-void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
+void at91_add_device_eth(int id, struct macb_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index bde3429..68ed841 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -82,7 +82,7 @@ void __init at91_add_device_usbh_ehci(struct at91_usbh_data *data) {}
 #endif
 
 #if defined(CONFIG_DRIVER_NET_MACB)
-void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
+void at91_add_device_eth(int id, struct macb_platform_data *data)
 {
 	if (!data)
 		return;
@@ -114,7 +114,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 			   IORESOURCE_MEM, data);
 }
 #else
-void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
+void at91_add_device_eth(int id, struct macb_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_NAND_ATMEL)
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 9f211e3..d12ee57 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -83,7 +83,7 @@ void __init at91_add_device_usbh_ehci(struct at91_usbh_data *data) {}
 #endif
 
 #if defined(CONFIG_DRIVER_NET_MACB)
-void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
+void at91_add_device_eth(int id, struct macb_platform_data *data)
 {
 	resource_size_t start;
 
@@ -147,7 +147,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 			   IORESOURCE_MEM, data);
 }
 #else
-void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
+void at91_add_device_eth(int id, struct macb_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_MCI_ATMEL)
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 71267e1..3ecc603 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -28,6 +28,7 @@
 #include <video/atmel_lcdc.h>
 #include <mach/atmel_hlcdc.h>
 #include <linux/phy.h>
+#include <platform_data/macb.h>
 
  /* USB Host */
 struct at91_usbh_data {
@@ -72,15 +73,7 @@ void at91_add_device_nand(struct atmel_nand_data *data);
  /* Ethernet (EMAC & MACB) */
 #define AT91SAM_ETX2_ETX3_ALTERNATIVE	(1 << 0)
 
-struct at91_ether_platform_data {
-	unsigned int phy_flags;
-	unsigned int flags;
-	int phy_addr;
-	phy_interface_t phy_interface;
-	int (*get_ethaddr)(struct eth_device*, unsigned char *adr);
-};
-
-void at91_add_device_eth(int id, struct at91_ether_platform_data *data);
+void at91_add_device_eth(int id, struct macb_platform_data *data);
 
 void at91_add_device_i2c(short i2c_id, struct i2c_board_info *devices, int nr_devices);
 
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index 3e4531e..031168b 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -104,7 +104,7 @@ void __init at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
 #if defined(CONFIG_DRIVER_NET_MACB)
-void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
+void at91_add_device_eth(int id, struct macb_platform_data *data)
 {
 	if (!data)
 		return;
@@ -204,7 +204,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 
 }
 #else
-void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
+void at91_add_device_eth(int id, struct macb_platform_data *data) {}
 #endif
 
 #if defined(CONFIG_MCI_ATMEL)
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index dad7815..25924cf 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -298,7 +298,7 @@ static int at91_ether_probe(struct device_d *dev)
 	struct mii_bus *miibus;
 	unsigned long ether_hz;
 	struct clk *pclk;
-	struct at91_ether_platform_data *pdata;
+	struct macb_platform_data *pdata;
 
 	if (!dev->platform_data) {
 		printf("at91_ether: no platform_data\n");
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 8602437..524859c 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -43,7 +43,7 @@
 #include <init.h>
 #include <errno.h>
 #include <io.h>
-#include <mach/board.h>
+#include <platform_data/macb.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm/mmu.h>
@@ -585,7 +585,7 @@ static int macb_probe(struct device_d *dev)
 	struct eth_device *edev;
 	struct macb_device *macb;
 	u32 ncfgr;
-	struct at91_ether_platform_data *pdata;
+	struct macb_platform_data *pdata;
 
 	if (!dev->platform_data) {
 		dev_err(dev, "macb: no platform_data\n");
diff --git a/include/platform_data/macb.h b/include/platform_data/macb.h
new file mode 100644
index 0000000..9d71863
--- /dev/null
+++ b/include/platform_data/macb.h
@@ -0,0 +1,30 @@
+/*
+ * [origin Linux: arch/arm/mach-at91/include/mach/board.h]
+ *
+ *  Copyright (C) 2005 HP Labs
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#ifndef __MACB_H
+#define __MACB_H
+
+#include <linux/phy.h>
+
+struct macb_platform_data {
+	unsigned int phy_flags;
+	unsigned int flags;
+	int phy_addr;
+	phy_interface_t phy_interface;
+	int (*get_ethaddr)(struct eth_device*, unsigned char *adr);
+};
+
+#endif
-- 
1.8.1.5

From 0d51dc731ff3934e22e78405a992658a8d3bf1de Mon Sep 17 00:00:00 2001
From: Josh Cartwright <joshc@eso.teric.us>
Date: Tue, 19 Mar 2013 10:22:48 -0500
Subject: [PATCH] parameter: fix build warning when !CONFIG_PARAMETER
To: barebox@lists.infradead.org

Commit 51f2ded17c35c146488f6f3b697764bb2953a156 ("param: make return
value of param getter function const") made the parameter getter const,
but neglected to change the dev_add_param() function prototype in the
!CONFIG_PARAMETER case.

Fixes the following warning with CONFIG_NAND and !CONFIG_PARAMETER:

drivers/mtd/nand/nand_base.c: In function 'add_mtd_nand_device':
drivers/mtd/nand/nand_base.c:1720:2: warning: passing argument 4 of 'dev_add_param' from incompatible pointer type [enabled by default]
include/param.h:59:19: note: expected 'char * (*)(struct device_d *, struct param_d *)' but argument is of type 'const char * (*)(struct device_d *, struct param_d *)'

Signed-off-by: Josh Cartwright <joshc@eso.teric.us>
---
 include/param.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/param.h b/include/param.h
index 21f4f7d..3a585cd 100644
--- a/include/param.h
+++ b/include/param.h
@@ -58,7 +58,7 @@ static inline struct param_d *get_param_by_name(struct device_d *dev,
 
 static inline int dev_add_param(struct device_d *dev, char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
-		char *(*get)(struct device_d *, struct param_d *p),
+		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags)
 {
 	return 0;
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
