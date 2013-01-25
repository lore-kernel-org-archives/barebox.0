Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl3n-0007pm-6v
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:19:32 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 30BD9DC1D0B
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:29:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:17:46 +0100
Message-Id: <1359127067-30079-13-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130125151448.GD26329@game.jcrosoft.org>
 <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 13/14] atmel_mci: drop board host caps
To: barebox@lists.infradead.org

as it's handle by detecting the IP version and bus with

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9m10g45ek/init.c |    1 -
 arch/arm/boards/dss11/init.c            |    1 -
 arch/arm/mach-at91/include/mach/board.h |    1 -
 drivers/mci/atmel_mci.c                 |    1 -
 4 files changed, 4 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index d77b2bf..053c85b 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -113,7 +113,6 @@ static struct at91_ether_platform_data macb_pdata = {
 #if defined(CONFIG_MCI_ATMEL)
 static struct atmel_mci_platform_data ek_mci_data = {
 	.bus_width	= 4,
-	.host_caps	= MMC_MODE_HS,
 	.detect_pin	= AT91_PIN_PD10,
 };
 
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index a2e9825..2920d5e 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -113,7 +113,6 @@ static void dss11_phy_reset(void)
 static struct atmel_mci_platform_data dss11_mci_data = {
 	.slot_b		= 1,
 	.bus_width	= 4,
-	.host_caps	= MMC_MODE_HS,
 };
 
 static struct at91_usbh_data dss11_usbh_data = {
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index b18f1c0..9a72474 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -147,7 +147,6 @@ static inline struct device_d * at91_register_uart(unsigned id, unsigned pins)
 struct atmel_mci_platform_data {
 	unsigned slot_b;
 	unsigned bus_width;
-	unsigned host_caps; /* MCI_MODE_* from mci.h */
 	int detect_pin;
 	int wp_pin;
 };
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 8ad0e8a..647683b 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -540,7 +540,6 @@ static int atmci_probe(struct device_d *hw_dev)
 	host->mci.init = atmci_reset;
 	host->mci.hw_dev = hw_dev;
 
-	host->mci.host_caps = pd->host_caps;
 	if (pd->bus_width >= 4)
 		host->mci.host_caps |= MMC_MODE_4BIT;
 	if (pd->bus_width == 8)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
