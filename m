Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzxC2-00056r-Ie
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 22:28:48 +0000
Received: from mail606.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B6443DC1C36
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2013 23:38:40 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 28 Jan 2013 23:27:27 +0100
Message-Id: <1359412047-30677-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359412047-30677-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130128222510.GS26329@game.jcrosoft.org>
 <1359412047-30677-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] macb: allow to pass the phy interface
To: barebox@lists.infradead.org

as we will add later the GMAC IP verion support (GEM)

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/init.c      |    2 +-
 arch/arm/boards/at91sam9260ek/init.c     |    2 +-
 arch/arm/boards/at91sam9263ek/init.c     |    2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c  |    2 +-
 arch/arm/boards/at91sam9x5ek/init.c      |    2 +-
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
 arch/arm/mach-at91/include/mach/board.h  |    3 ++-
 drivers/net/at91_ether.c                 |    2 +-
 drivers/net/macb.c                       |    6 +++---
 18 files changed, 22 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 66ea6b7..eec71bb 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -33,7 +33,7 @@
 #include <spi/spi.h>
 
 static struct at91_ether_platform_data ether_pdata = {
-	.is_rmii = 1,
+	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 7bd0279..2d52f5a 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -127,7 +127,7 @@ static void ek_add_device_nand(void)
 }
 
 static struct at91_ether_platform_data macb_pdata = {
-	.is_rmii = 1,
+	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 6db6a5b..90fdbec 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -83,7 +83,7 @@ static void ek_add_device_nand(void)
 }
 
 static struct at91_ether_platform_data macb_pdata = {
-	.is_rmii = 1,
+	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index bae5924..5b5e31b 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -106,7 +106,7 @@ static void ek_add_device_nand(void)
 }
 
 static struct at91_ether_platform_data macb_pdata = {
-	.is_rmii = 1,
+	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 02c3b30..9c45d31 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -106,7 +106,7 @@ static void ek_add_device_nand(void)
 }
 
 static struct at91_ether_platform_data macb_pdata = {
-	.is_rmii = 1,
+	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 0be5cf5..4afa095 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -89,7 +89,7 @@ static void pm_add_device_nand(void)
 }
 
 static struct at91_ether_platform_data macb_pdata = {
-	.is_rmii = 1,
+	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = -1,
 };
 
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index db1c551..720099b 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -113,7 +113,7 @@ static void __init pm9g45_add_device_usbh(void) {}
 #endif
 
 static struct at91_ether_platform_data macb_pdata = {
-	.is_rmii = 1,
+	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
 };
 
diff --git a/arch/arm/boards/qil-a9260/init.c b/arch/arm/boards/qil-a9260/init.c
index 4977d3b..2e131fe 100644
--- a/arch/arm/boards/qil-a9260/init.c
+++ b/arch/arm/boards/qil-a9260/init.c
@@ -78,7 +78,7 @@ static void qil_a9260_add_device_mci(void) {}
 
 #ifdef CONFIG_CALAO_MB_QIL_A9260
 static struct at91_ether_platform_data macb_pdata = {
-	.is_rmii	= 1,
+	.phy_interface	= PHY_INTERFACE_MODE_RMII,
 	.phy_addr	= -1,
 };
 
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 027186a..4228254 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -113,7 +113,7 @@ static void tny_a9260_add_device_nand(void)
 
 #ifdef CONFIG_DRIVER_NET_MACB
 static struct at91_ether_platform_data macb_pdata = {
-	.is_rmii	= 1,
+	.phy_interface	= PHY_INTERFACE_MODE_RMII,
 	.phy_addr	= -1,
 };
 
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 95ac6a8..a5beeed 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -113,7 +113,7 @@ static void usb_a9260_add_device_nand(void)
 }
 
 static struct at91_ether_platform_data macb_pdata = {
-	.is_rmii	= 1,
+	.phy_interface	= PHY_INTERFACE_MODE_RMII,
 	.phy_addr	= -1,
 };
 
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 0f2ec1f..82862d7 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -103,7 +103,7 @@ void __init at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 	at91_set_A_periph(AT91_PIN_PA8, 0);	/* ETXEN */
 	at91_set_A_periph(AT91_PIN_PA7, 0);	/* ETXCK_EREFCK */
 
-	if (!data->is_rmii) {
+	if (data->phy_interface != PHY_INTERFACE_MODE_RMII) {
 		at91_set_B_periph(AT91_PIN_PB19, 0);	/* ERXCK */
 		at91_set_B_periph(AT91_PIN_PB18, 0);	/* ECOL */
 		at91_set_B_periph(AT91_PIN_PB17, 0);	/* ERXDV */
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 5ee0b11..6e8c37b 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -98,7 +98,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 	at91_set_A_periph(AT91_PIN_PA21, 0);	/* EMDIO */
 	at91_set_A_periph(AT91_PIN_PA20, 0);	/* EMDC */
 
-	if (!data->is_rmii) {
+	if (data->phy_interface != PHY_INTERFACE_MODE_RMII) {
 		at91_set_B_periph(AT91_PIN_PA28, 0);	/* ECRS */
 		at91_set_B_periph(AT91_PIN_PA29, 0);	/* ECOL */
 		at91_set_B_periph(AT91_PIN_PA25, 0);	/* ERX2 */
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 8f06821..528a07b 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -97,7 +97,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 	at91_set_A_periph(AT91_PIN_PE30, 0);	/* EMDIO */
 	at91_set_A_periph(AT91_PIN_PE29, 0);	/* EMDC */
 
-	if (!data->is_rmii) {
+	if (data->phy_interface != PHY_INTERFACE_MODE_RMII) {
 		at91_set_A_periph(AT91_PIN_PE22, 0);	/* ECRS */
 		at91_set_B_periph(AT91_PIN_PC26, 0);	/* ECOL */
 		at91_set_B_periph(AT91_PIN_PC22, 0);	/* ERX2 */
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index d3de348..bde3429 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -99,7 +99,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 	at91_set_A_periph(AT91_PIN_PA19, 0);	/* EMDIO */
 	at91_set_A_periph(AT91_PIN_PA18, 0);	/* EMDC */
 
-	if (!data->is_rmii) {
+	if (data->phy_interface != PHY_INTERFACE_MODE_RMII) {
 		at91_set_B_periph(AT91_PIN_PA29, 0);	/* ECRS */
 		at91_set_B_periph(AT91_PIN_PA30, 0);	/* ECOL */
 		at91_set_B_periph(AT91_PIN_PA8,  0);	/* ERX2 */
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 90d8756..21aead9 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -111,7 +111,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 		at91_set_A_periph(AT91_PIN_PB5,  0);	/* EMDIO */
 		at91_set_A_periph(AT91_PIN_PB6,  0);	/* EMDC */
 
-		if (!data->is_rmii) {
+		if (data->phy_interface != PHY_INTERFACE_MODE_RMII) {
 			at91_set_A_periph(AT91_PIN_PB16, 0);	/* ECRS */
 			at91_set_A_periph(AT91_PIN_PB17, 0);	/* ECOL */
 			at91_set_A_periph(AT91_PIN_PB13, 0);	/* ERX2 */
@@ -124,7 +124,7 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 		break;
 	case 1:
 		start = AT91SAM9X5_BASE_EMAC1;
-		if (!data->is_rmii)
+		if (data->phy_interface != PHY_INTERFACE_MODE_RMII)
 			pr_warn("AT91: Only RMII available on interface macb%d.\n", id);
 
 		/* Pins used for RMII */
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 1ad412b..e7b1171 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -26,6 +26,7 @@
 #include <linux/mtd/mtd.h>
 #include <fb.h>
 #include <video/atmel_lcdc.h>
+#include <linux/phy.h>
 
  /* USB Host */
 struct at91_usbh_data {
@@ -74,7 +75,7 @@ struct at91_ether_platform_data {
 	unsigned int phy_flags;
 	unsigned int flags;
 	int phy_addr;
-	int is_rmii;
+	phy_interface_t phy_interface;
 	int (*get_ethaddr)(struct eth_device*, unsigned char *adr);
 };
 
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 2e3a271..a0854df 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -342,7 +342,7 @@ static int at91_ether_probe(struct device_d *dev)
 
 	mac_cfg |= AT91_EMAC_CLK_DIV32 | AT91_EMAC_BIG;
 
-	if (pdata->is_rmii) {
+	if (pdata->phy_interface == PHY_INTERFACE_MODE_RMII) {
 		ether_dev->interface = PHY_INTERFACE_MODE_RGMII;
 		mac_cfg |= AT91_EMAC_RMII;
 	} else {
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index cd977c1..18ac3f8 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -436,10 +436,10 @@ static int macb_probe(struct device_d *dev)
 	macb->miibus.priv = macb;
 	macb->miibus.parent = dev;
 
-	if (pdata->is_rmii)
-		macb->interface = PHY_INTERFACE_MODE_RMII;
-	else
+	if (pdata->phy_interface == PHY_INTERFACE_MODE_NA)
 		macb->interface = PHY_INTERFACE_MODE_MII;
+	else
+		macb->interface = pdata->phy_interface;
 
 	macb->phy_flags = pdata->phy_flags;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
