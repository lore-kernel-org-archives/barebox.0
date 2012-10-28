Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSGhu-0000Pl-Ps
 for barebox@lists.infradead.org; Sun, 28 Oct 2012 00:26:33 +0000
Received: from mail409.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id E755BFFA541
 for <barebox@lists.infradead.org>; Sun, 28 Oct 2012 02:33:29 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 28 Oct 2012 02:24:08 +0200
Message-Id: <1351383852-8488-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351383852-8488-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121028002134.GD28904@game.jcrosoft.org>
 <1351383852-8488-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/8] pm9g45: use w1 serial number to generate local mac address
To: barebox@lists.infradead.org

The OUI will be 'ron' => 72:6F:6E

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/pm9g45/init.c |   11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 907c6bb..f3764bb 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -36,6 +36,7 @@
 #include <mach/at91sam9_smc.h>
 #include <mach/sam9_smc.h>
 #include <linux/w1-gpio.h>
+#include <w1_mac_address.h>
 
 struct w1_gpio_platform_data w1_pdata = {
 	.pin = AT91_PIN_PA31,
@@ -128,6 +129,13 @@ static void pm9g45_phy_init(void)
 	at91_set_gpio_value(AT91_PIN_PD2, 1);
 }
 
+static void pm9g45_add_device_eth(void)
+{
+	w1_mac_address_register(0, true, "ron", "w1-1-0");
+	pm9g45_phy_init();
+	at91_add_device_eth(0, &macb_pdata);
+}
+
 static int pm9g45_mem_init(void)
 {
 	at91_add_device_sdram(128 * 1024 * 1024);
@@ -143,8 +151,7 @@ static int pm9g45_devices_init(void)
 
 	pm_add_device_nand();
 	pm9g45_add_device_mci();
-	pm9g45_phy_init();
-	at91_add_device_eth(0, &macb_pdata);
+	pm9g45_add_device_eth();
 	pm9g45_add_device_usbh();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
