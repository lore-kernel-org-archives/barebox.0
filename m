Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTIxJ-0008W2-FM
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 21:02:40 +0000
Received: from mail643.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id B0B27104E86D
 for <barebox@lists.infradead.org>; Tue, 30 Oct 2012 22:09:38 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 30 Oct 2012 22:00:20 +0100
Message-Id: <1351630822-20803-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351630822-20803-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121030205459.GE29599@game.jcrosoft.org>
 <1351630822-20803-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/8] pm9263: use w1 serial number to generate local mac address
To: barebox@lists.infradead.org

The OUI will be 'ron' => 72:6F:6E

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/pm9263/init.c |   29 ++++++++++++++++++++---------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 1d13e03..14e821f 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -37,6 +37,7 @@
 #include <mach/at91sam9_smc.h>
 #include <mach/sam9_smc.h>
 #include <linux/w1-gpio.h>
+#include <w1_mac_address.h>
 
 struct w1_gpio_platform_data w1_pdata = {
 	.pin = AT91_PIN_PB31,
@@ -93,6 +94,24 @@ static struct at91_ether_platform_data macb_pdata = {
 	.phy_addr = 0,
 };
 
+static void pm9263_phy_init(void)
+{
+	/*
+	 * PB27 enables the 50MHz oscillator for Ethernet PHY
+	 * 1 - enable
+	 * 0 - disable
+	 */
+	at91_set_gpio_output(AT91_PIN_PB27, 1);
+	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
+}
+
+static void pm9263_add_device_eth(void)
+{
+	w1_local_mac_address_register(0, "ron", "w1-1-0");
+	pm9263_phy_init();
+	at91_add_device_eth(0, &macb_pdata);
+}
+
 static int pm9263_mem_init(void)
 {
 	at91_add_device_sdram(64 * 1024 * 1024);
@@ -106,16 +125,8 @@ static int pm9263_devices_init(void)
 	at91_set_gpio_input(w1_pdata.pin, 0);
 	add_generic_device_res("w1-gpio", DEVICE_ID_SINGLE, NULL, 0, &w1_pdata);
 
-	/*
-	 * PB27 enables the 50MHz oscillator for Ethernet PHY
-	 * 1 - enable
-	 * 0 - disable
-	 */
-	at91_set_gpio_output(AT91_PIN_PB27, 1);
-	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
-
 	pm_add_device_nand();
-	at91_add_device_eth(0, &macb_pdata);
+	pm9263_add_device_eth();
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 4 * 1024 * 1024, 0);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
