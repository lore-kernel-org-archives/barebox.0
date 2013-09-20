Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMtRi-0008Er-2O
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 05:40:03 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1A3B7DC8519
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2013 07:39:41 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 20 Sep 2013 07:40:49 +0200
Message-Id: <1379655650-23221-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379655650-23221-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130920053940.GC1137@ns203013.ovh.net>
 <1379655650-23221-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] animeo_ip: ensure the phy is reset correctly
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/animeo_ip/init.c | 38 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 37 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index e99acd0..c98493f 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -19,6 +19,7 @@
 #include <nand.h>
 #include <sizes.h>
 #include <linux/mtd/nand.h>
+#include <linux/clk.h>
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
 #include <gpio.h>
@@ -226,12 +227,45 @@ static void animeo_ip_power_control(void)
 	animeo_export_gpio_out(AT91_PIN_PC4, "power_save");
 }
 
+static void animeo_ip_phy_reset(void)
+{
+	unsigned long rstc;
+	int i;
+	struct clk *clk = clk_get(NULL, "macb_clk");
+
+	clk_enable(clk);
+
+	for (i = AT91_PIN_PA12; i <= AT91_PIN_PA29; i++)
+		at91_set_gpio_input(i, 0);
+
+	rstc = at91_sys_read(AT91_RSTC_MR) & AT91_RSTC_ERSTL;
+
+	/* Need to reset PHY -> 500ms reset */
+	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
+				     (AT91_RSTC_ERSTL & (0x0d << 8)) |
+				     AT91_RSTC_URSTEN);
+
+	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
+
+	/* Wait for end hardware reset */
+	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL))
+		;
+
+	/* Restore NRST value */
+	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY | (rstc) | AT91_RSTC_URSTEN);
+}
+
+static void animeo_ip_add_device_eth(void)
+{
+	animeo_ip_phy_reset();
+	at91_add_device_eth(0, &macb_pdata);
+}
+
 static int animeo_ip_devices_init(void)
 {
 	animeo_ip_detect_version();
 	animeo_ip_power_control();
 	animeo_ip_add_device_nand();
-	at91_add_device_eth(0, &macb_pdata);
 	animeo_ip_add_device_usb();
 	animeo_ip_add_device_mci();
 	animeo_ip_add_device_buttons();
@@ -251,6 +285,8 @@ static int animeo_ip_devices_init(void)
 	devfs_add_partition("nand0", SZ_256K + SZ_32K, SZ_32K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
+	animeo_ip_add_device_eth();
+
 	return 0;
 }
 
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
