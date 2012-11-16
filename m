Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TZQAm-0007W9-DA
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 17:57:49 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E9F43DC4556
 for <barebox@lists.infradead.org>; Fri, 16 Nov 2012 19:05:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 16 Nov 2012 18:55:41 +0100
Message-Id: <1353088545-19406-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353088545-19406-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121116175355.GB8327@game.jcrosoft.org>
 <1353088545-19406-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/7] at91sam9260/9g20: add wathdog support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9260_devices.c |   12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 9c9534e..e781de0 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -10,6 +10,7 @@
  *
  */
 #include <common.h>
+#include <init.h>
 #include <sizes.h>
 #include <asm/armlinux.h>
 #include <asm/hardware.h>
@@ -356,3 +357,14 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 #else
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
 #endif
+
+#ifdef CONFIG_WATCHDOG_AT91SAM9X
+static int at91_add_device_watchdog(void)
+{
+	add_generic_device("at91sam9_wdt", DEVICE_ID_SINGLE, NULL,
+		AT91_WDT + AT91_BASE_SYS, 16, IORESOURCE_MEM, NULL);
+
+	return 0;
+}
+coredevice_initcall(at91_add_device_watchdog);
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
