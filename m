Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TZPLs-0007YD-1a
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 17:05:15 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 56691DC2CB1
 for <barebox@lists.infradead.org>; Fri, 16 Nov 2012 18:12:47 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 16 Nov 2012 18:03:04 +0100
Message-Id: <1353085385-14090-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353085385-14090-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121116165729.GA8327@game.jcrosoft.org>
 <1353085385-14090-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/7] at91sam9g45: add wathdog support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9g45_devices.c |   12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 22b455e..38593fc 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -10,6 +10,7 @@
  *
  */
 #include <common.h>
+#include <init.h>
 #include <sizes.h>
 #include <asm/armlinux.h>
 #include <asm/hardware.h>
@@ -324,3 +325,14 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 #else
 void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
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
