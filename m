Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TZPc6-0002N4-NC
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 17:22:02 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 3111CDC433B
 for <barebox@lists.infradead.org>; Fri, 16 Nov 2012 18:29:33 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 16 Nov 2012 18:19:53 +0100
Message-Id: <1353086393-16213-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353086393-16213-1-git-send-email-plagnioj@jcrosoft.com>
References: <1353086393-16213-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] macb/ether: split flags for drivers and phylib
To: barebox@lists.infradead.org

as in the kernel use is_rmii
flags for pinctrl
phy_flags for phylib flags

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/init.c      |    2 +-
 arch/arm/boards/at91sam9260ek/init.c     |    2 +-
 arch/arm/boards/at91sam9263ek/init.c     |    2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c  |    2 +-
 arch/arm/boards/at91sam9x5ek/init.c      |    2 +-
 arch/arm/boards/mmccpu/init.c            |    2 +-
 arch/arm/boards/pm9263/init.c            |    2 +-
 arch/arm/boards/pm9g45/init.c            |    2 +-
 arch/arm/boards/qil-a9260/init.c         |    2 +-
 arch/arm/boards/tny-a926x/init.c         |    2 +-
 arch/arm/boards/usb-a926x/init.c         |    2 +-
 arch/arm/mach-at91/at91rm9200_devices.c  |    2 +-
 arch/arm/mach-at91/at91sam9260_devices.c |    2 +-
 arch/arm/mach-at91/at91sam9263_devices.c |    2 +-
 arch/arm/mach-at91/at91sam9g45_devices.c |    2 +-
 arch/arm/mach-at91/at91sam9x5_devices.c  |    4 ++--
 arch/arm/mach-at91/include/mach/board.h  |    7 +++----
 drivers/net/at91_ether.c                 |    2 +-
 drivers/net/macb.c                       |    5 ++---
 19 files changed, 23 insertions(+), 25 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 439ee9e..f5d242f 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -33,7 +33,7 @@
 #include <spi/spi.h>
 
 static struct at91_ether_platform_data ether_pdata = {
-	.flags = AT91SAM_ETHER_RMII,
+	.is_rmii = 1,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index d0a8458..e9bfee6 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -128,7 +128,7 @@ static void ek_add_device_nand(void)
 }
 
 static struct at91_ether_platform_data macb_pdata = {
-	.flags    = AT91SAM_ETHER_RMII,
+	.is_rmii = 1,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index b577f4d..45a30fd 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -84,7 +84,7 @@ static void ek_add_device_nand(void)
 }
 
 static struct at91_ether_platform_data macb_pdata = {
-	.flags = AT91SAM_ETHER_RMII,
+	.is_rmii = 1,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index f1c43cc..0c03dea 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -107,7 +107,7 @@ static void ek_add_device_nand(void)
 }
 
 static struct at91_ether_platform_data macb_pdata = {
-	.flags = AT91SAM_ETHER_RMII,
+	.is_rmii = 1,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 5626577..ba5bc47 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -106,7 +106,7 @@ static void ek_add_device_nand(void)
 }
 
 static struct at91_ether_platform_data macb_pdata = {
-	.flags    = AT91SAM_ETHER_RMII,
+	.is_rmii = 1,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 97248b9..67bfcea 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -34,7 +34,7 @@
 #include <mach/io.h>
 
 static struct at91_ether_platform_data macb_pdata = {
-	.flags		= AT91SAM_ETHER_MII | AT91SAM_ETHER_FORCE_LINK,
+	.phy_flags	= PHYLIB_FORCE_LINK,
 	.phy_addr	= 4,
 };
 
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 14e821f..486df9a 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -90,7 +90,7 @@ static void pm_add_device_nand(void)
 }
 
 static struct at91_ether_platform_data macb_pdata = {
-	.flags = AT91SAM_ETHER_RMII,
+	.is_rmii = 1,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 675ebe8..a79b128 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -114,7 +114,7 @@ static void __init pm9g45_add_device_usbh(void) {}
 #endif
 
 static struct at91_ether_platform_data macb_pdata = {
-	.flags = AT91SAM_ETHER_RMII,
+	.is_rmii = 1,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/qil-a9260/init.c b/arch/arm/boards/qil-a9260/init.c
index 8a12b17..3bec4e2 100644
--- a/arch/arm/boards/qil-a9260/init.c
+++ b/arch/arm/boards/qil-a9260/init.c
@@ -79,7 +79,7 @@ static void qil_a9260_add_device_mci(void) {}
 
 #ifdef CONFIG_CALAO_MB_QIL_A9260
 static struct at91_ether_platform_data macb_pdata = {
-	.flags		= AT91SAM_ETHER_RMII,
+	.is_rmii	= 1,
 	.phy_addr	= -1,
 };
 
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 270becf..98f1d2b 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -114,7 +114,7 @@ static void tny_a9260_add_device_nand(void)
 
 #ifdef CONFIG_DRIVER_NET_MACB
 static struct at91_ether_platform_data macb_pdata = {
-	.flags		= AT91SAM_ETHER_RMII,
+	.is_rmii	= 1,
 	.phy_addr	= -1,
 };
 
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index e57591b..8f57aa4 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -114,7 +114,7 @@ static void usb_a9260_add_device_nand(void)
 }
 
 static struct at91_ether_platform_data macb_pdata = {
-	.flags		= AT91SAM_ETHER_RMII,
+	.is_rmii	= 1,
 	.phy_addr	= -1,
 };
 
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index a676436..4751664 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -91,7 +91,7 @@ void __init at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 	at91_set_A_periph(AT91_PIN_PA8, 0);	/* ETXEN */
 	at91_set_A_periph(AT91_PIN_PA7, 0);	/* ETXCK_EREFCK */
 
-	if (!(data->flags & AT91SAM_ETHER_RMII)) {
+	if (!data->is_rmii) {
 		at91_set_B_periph(AT91_PIN_PB19, 0);	/* ERXCK */
 		at91_set_B_periph(AT91_PIN_PB18, 0);	/* ECOL */
 		at91_set_B_periph(AT91_PIN_PB17, 0);	/* ERXDV */
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index eedb495..4e67126 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -90,7 +90,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 	at91_set_A_periph(AT91_PIN_PA21, 0);	/* EMDIO */
 	at91_set_A_periph(AT91_PIN_PA20, 0);	/* EMDC */
 
-	if (!(data->flags & AT91SAM_ETHER_RMII)) {
+	if (!data->is_rmii) {
 		at91_set_B_periph(AT91_PIN_PA28, 0);	/* ECRS */
 		at91_set_B_periph(AT91_PIN_PA29, 0);	/* ECOL */
 		at91_set_B_periph(AT91_PIN_PA25, 0);	/* ERX2 */
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 45fbb9b..be89bc6 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -97,7 +97,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 	at91_set_A_periph(AT91_PIN_PE30, 0);	/* EMDIO */
 	at91_set_A_periph(AT91_PIN_PE29, 0);	/* EMDC */
 
-	if (!(data->flags & AT91SAM_ETHER_RMII)) {
+	if (!data->is_rmii) {
 		at91_set_A_periph(AT91_PIN_PE22, 0);	/* ECRS */
 		at91_set_B_periph(AT91_PIN_PC26, 0);	/* ECOL */
 		at91_set_B_periph(AT91_PIN_PC22, 0);	/* ERX2 */
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 73bac9f..89d5689 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -73,7 +73,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 	at91_set_A_periph(AT91_PIN_PA19, 0);	/* EMDIO */
 	at91_set_A_periph(AT91_PIN_PA18, 0);	/* EMDC */
 
-	if (!(data->flags & AT91SAM_ETHER_RMII)) {
+	if (!data->is_rmii) {
 		at91_set_B_periph(AT91_PIN_PA29, 0);	/* ECRS */
 		at91_set_B_periph(AT91_PIN_PA30, 0);	/* ECOL */
 		at91_set_B_periph(AT91_PIN_PA8,  0);	/* ERX2 */
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 0909461..bfb22fd 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -85,7 +85,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 		at91_set_A_periph(AT91_PIN_PB5,  0);	/* EMDIO */
 		at91_set_A_periph(AT91_PIN_PB6,  0);	/* EMDC */
 
-		if (!(data->flags & AT91SAM_ETHER_RMII)) {
+		if (!data->is_rmii) {
 			at91_set_A_periph(AT91_PIN_PB16, 0);	/* ECRS */
 			at91_set_A_periph(AT91_PIN_PB17, 0);	/* ECOL */
 			at91_set_A_periph(AT91_PIN_PB13, 0);	/* ERX2 */
@@ -98,7 +98,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 		break;
 	case 1:
 		start = AT91SAM9X5_BASE_EMAC1;
-		if (!(data->flags & AT91SAM_ETHER_RMII))
+		if (!data->is_rmii)
 			pr_warn("AT91: Only RMII available on interface macb%d.\n", id);
 
 		/* Pins used for RMII */
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index dcea9f3..433915f 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -63,14 +63,13 @@ struct atmel_nand_data {
 void at91_add_device_nand(struct atmel_nand_data *data);
 
  /* Ethernet (EMAC & MACB) */
-#define AT91SAM_ETHER_MII		(0 << 0)
-#define AT91SAM_ETHER_RMII		(1 << 0)
-#define AT91SAM_ETHER_FORCE_LINK	(1 << 1)
-#define AT91SAM_ETX2_ETX3_ALTERNATIVE	(1 << 2)
+#define AT91SAM_ETX2_ETX3_ALTERNATIVE	(1 << 0)
 
 struct at91_ether_platform_data {
+	unsigned int phy_flags;
 	unsigned int flags;
 	int phy_addr;
+	int is_rmii;
 	int (*get_ethaddr)(struct eth_device*, unsigned char *adr);
 };
 
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 90fabab..f6ce0a1 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -346,7 +346,7 @@ static int at91_ether_probe(struct device_d *dev)
 
 	mac_cfg |= AT91_EMAC_CLK_DIV32 | AT91_EMAC_BIG;
 
-	if (pdata->flags & AT91SAM_ETHER_RMII) {
+	if (pdata->is_rmii) {
 		ether_dev->interface = PHY_INTERFACE_MODE_RGMII;
 		mac_cfg |= AT91_EMAC_RMII;
 	} else {
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index d25fb79..1d37251 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -444,13 +444,12 @@ static int macb_probe(struct device_d *dev)
 	macb->miibus.priv = macb;
 	macb->miibus.parent = dev;
 
-	if (pdata->flags & AT91SAM_ETHER_RMII)
+	if (pdata->is_rmii)
 		macb->interface = PHY_INTERFACE_MODE_RMII;
 	else
 		macb->interface = PHY_INTERFACE_MODE_MII;
 
-	macb->phy_flags = pdata->flags & AT91SAM_ETHER_FORCE_LINK ?
-					PHYLIB_FORCE_LINK : 0;
+	macb->phy_flags = pdata->phy_flags;
 
 	macb->rx_buffer = dma_alloc_coherent(CFG_MACB_RX_BUFFER_SIZE);
 	macb->rx_ring = dma_alloc_coherent(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
