Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RljTn-0001nb-HP
 for barebox@lists.infradead.org; Fri, 13 Jan 2012 15:55:49 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id C718910048CF
 for <barebox@lists.infradead.org>; Fri, 13 Jan 2012 16:57:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 13 Jan 2012 16:55:24 +0100
Message-Id: <1326470124-12717-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] atmel/mci: fix slot_b support
To: barebox@lists.infradead.org

in commit commit f60f6c58e
atmel_mci: check for device id we use to address the right slot

the driver use the dev_id to detect the slot which is wrong on 9263 as we have
2 devices with 2 slots

use slot_b paramter to specify the slot as done in linux

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boards/at91sam9260ek/init.c     |    3 +-
 arch/arm/boards/dss11/init.c             |    3 +-
 arch/arm/mach-at91/at91sam9260_devices.c |   24 ++++++------
 arch/arm/mach-at91/at91sam9263_devices.c |   61 +++++++++++++++++++++---------
 arch/arm/mach-at91/at91sam9g45_devices.c |    1 +
 arch/arm/mach-at91/include/mach/board.h  |    1 +
 drivers/mci/atmel_mci.c                  |    4 +-
 7 files changed, 64 insertions(+), 33 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 4bff35e..03abc0e 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -172,6 +172,7 @@ static void at91sam9260ek_phy_reset(void)
 #if defined(CONFIG_MCI_ATMEL)
 static struct atmel_mci_platform_data __initdata ek_mci_data = {
 	.bus_width	= 4,
+	.slot_b		= 1,
 };
 
 static void ek_usb_add_device_mci(void)
@@ -179,7 +180,7 @@ static void ek_usb_add_device_mci(void)
 	if (machine_is_at91sam9g20ek())
 		ek_mci_data.detect_pin = AT91_PIN_PC9;
 
-	at91_add_device_mci(1, &ek_mci_data);
+	at91_add_device_mci(0, &ek_mci_data);
 }
 #else
 static void ek_usb_add_device_mci(void) {}
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 96c4eef..722c0f6 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -110,6 +110,7 @@ static void dss11_phy_reset(void)
 }
 
 static struct atmel_mci_platform_data dss11_mci_data = {
+	.slot_b		= 1,
 	.bus_width	= 4,
 	.host_caps	= MMC_MODE_HS,
 };
@@ -131,7 +132,7 @@ static int dss11_devices_init(void)
 	dss11_add_device_nand();
 	dss11_phy_reset();
 	at91_add_device_eth(&macb_pdata);
-	at91_add_device_mci(1, &dss11_mci_data);
+	at91_add_device_mci(0, &dss11_mci_data);
 	at91_add_device_usbh_ohci(&dss11_usbh_data);
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index c8871f8..3ddd0cf 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -356,18 +356,7 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 	at91_set_A_periph(AT91_PIN_PA8, 0);
 
 
-	if (mmc_id == 0) {
-		/* CMD */
-		at91_set_A_periph(AT91_PIN_PA7, 1);
-
-		/* DAT0, maybe DAT1..DAT3 */
-		at91_set_A_periph(AT91_PIN_PA6, 1);
-		if (data->bus_width == 4) {
-			at91_set_A_periph(AT91_PIN_PA9, 1);
-			at91_set_A_periph(AT91_PIN_PA10, 1);
-			at91_set_A_periph(AT91_PIN_PA11, 1);
-		}
-	} else if (mmc_id == 1) {
+	if (data->slot_b) {
 		/* CMD */
 		at91_set_B_periph(AT91_PIN_PA1, 1);
 
@@ -378,6 +367,17 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 			at91_set_B_periph(AT91_PIN_PA4, 1);
 			at91_set_B_periph(AT91_PIN_PA5, 1);
 		}
+	} else {
+		/* CMD */
+		at91_set_A_periph(AT91_PIN_PA7, 1);
+
+		/* DAT0, maybe DAT1..DAT3 */
+		at91_set_A_periph(AT91_PIN_PA6, 1);
+		if (data->bus_width == 4) {
+			at91_set_A_periph(AT91_PIN_PA9, 1);
+			at91_set_A_periph(AT91_PIN_PA10, 1);
+			at91_set_A_periph(AT91_PIN_PA11, 1);
+		}
 	}
 
 	dev = add_generic_device("atmel_mci", mmc_id, NULL, AT91SAM9260_BASE_MCI, SZ_16K,
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 1811c12..fc7dc14 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -310,33 +310,58 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 
 	if (mmc_id == 0) {		/* MCI0 */
 		start = AT91SAM9263_BASE_MCI0;
+
 		/* CLK */
 		at91_set_A_periph(AT91_PIN_PA12, 0);
 
-		/* CMD */
-		at91_set_A_periph(AT91_PIN_PA1, 1);
+		if (data->slot_b) {
+			/* CMD */
+			at91_set_A_periph(AT91_PIN_PA16, 1);
+
+			/* DAT0, maybe DAT1..DAT3 */
+			at91_set_A_periph(AT91_PIN_PA17, 1);
+			if (data->bus_width == 4) {
+				at91_set_A_periph(AT91_PIN_PA18, 1);
+				at91_set_A_periph(AT91_PIN_PA19, 1);
+				at91_set_A_periph(AT91_PIN_PA20, 1);
+			}
+		} else {
+			/* CMD */
+			at91_set_A_periph(AT91_PIN_PA1, 1);
 
-		/* DAT0, maybe DAT1..DAT3 and maybe DAT4..DAT7 */
-		at91_set_A_periph(AT91_PIN_PA0, 1);
-		if (data->bus_width == 4) {
-			at91_set_A_periph(AT91_PIN_PA3, 1);
-			at91_set_A_periph(AT91_PIN_PA4, 1);
-			at91_set_A_periph(AT91_PIN_PA5, 1);
+			/* DAT0, maybe DAT1..DAT3 */
+			at91_set_A_periph(AT91_PIN_PA0, 1);
+			if (data->bus_width == 4) {
+				at91_set_A_periph(AT91_PIN_PA3, 1);
+				at91_set_A_periph(AT91_PIN_PA4, 1);
+				at91_set_A_periph(AT91_PIN_PA5, 1);
+			}
 		}
 	} else {			/* MCI1 */
 		start = AT91SAM9263_BASE_MCI1;
-		/* CLK */
-		at91_set_A_periph(AT91_PIN_PA6, 0);
 
-		/* CMD */
-		at91_set_A_periph(AT91_PIN_PA7, 1);
+		if (data->slot_b) {
+			/* CMD */
+			at91_set_A_periph(AT91_PIN_PA21, 1);
+
+			/* DAT0, maybe DAT1..DAT3 */
+			at91_set_A_periph(AT91_PIN_PA22, 1);
+			if (data->bus_width == 4) {
+				at91_set_A_periph(AT91_PIN_PA23, 1);
+				at91_set_A_periph(AT91_PIN_PA24, 1);
+				at91_set_A_periph(AT91_PIN_PA25, 1);
+			}
+		} else {
+			/* CMD */
+			at91_set_A_periph(AT91_PIN_PA7, 1);
 
-		/* DAT0, maybe DAT1..DAT3 */
-		at91_set_A_periph(AT91_PIN_PA8, 1);
-		if (data->bus_width == 4) {
-			at91_set_A_periph(AT91_PIN_PA9, 1);
-			at91_set_A_periph(AT91_PIN_PA10, 1);
-			at91_set_A_periph(AT91_PIN_PA11, 1);
+			/* DAT0, maybe DAT1..DAT3 */
+			at91_set_A_periph(AT91_PIN_PA8, 1);
+			if (data->bus_width == 4) {
+				at91_set_A_periph(AT91_PIN_PA9, 1);
+				at91_set_A_periph(AT91_PIN_PA10, 1);
+				at91_set_A_periph(AT91_PIN_PA11, 1);
+			}
 		}
 	}
 
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 9a24022..bb252bd 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -264,6 +264,7 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 			}
 		}
 	} else {			/* MCI1 */
+		data->slot_b = 1;
 		start = AT91SAM9G45_BASE_MCI1;
 		/* CLK */
 		at91_set_A_periph(AT91_PIN_PA31, 0);
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 738af87..755ddc8 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -87,6 +87,7 @@ void at91_register_uart(unsigned id, unsigned pins);
 
 /* Multimedia Card Interface */
 struct atmel_mci_platform_data {
+	unsigned slot_b;
 	unsigned bus_width;
 	unsigned host_caps; /* MCI_MODE_* from mci.h */
 	unsigned detect_pin;
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 15668fc..3c37747 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -36,6 +36,7 @@ struct atmel_mci_host {
 	u32			datasize;
 	struct mci_cmd		*cmd;
 	struct mci_data		*data;
+	unsigned		slot_b;
 };
 
 #define to_mci_host(mci)	container_of(mci, struct atmel_mci_host, mci)
@@ -370,7 +371,7 @@ static void mci_set_ios(struct mci_host *mci, struct device_d *mci_dev,
 		break;
 	}
 	atmel_mci_writel(host, AT91_MCI_SDCR, atmel_mci_readl(host, AT91_MCI_SDCR)
-		| host->hw_dev->id);
+		| host->slot_b);
 
 	if (clock) {
 		atmel_set_clk_rate(host, clock);
@@ -459,6 +460,7 @@ static int mci_probe(struct device_d *hw_dev)
 		host->mci.host_caps |= MMC_MODE_4BIT;
 	if (pd->bus_width == 8)
 		host->mci.host_caps |= MMC_MODE_8BIT;
+	host->slot_b = pd->slot_b;
 
 	host->base = dev_request_mem_region(hw_dev, 0);
 	host->hw_dev = hw_dev;
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
