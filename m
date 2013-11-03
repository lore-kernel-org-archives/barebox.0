Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo6.mail-out.ovh.net ([178.33.253.26]
 helo=mo6.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vcrkj-0000B0-7K
 for barebox@lists.infradead.org; Sun, 03 Nov 2013 07:05:42 +0000
Received: from mail425.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 38174FFA655
 for <barebox@lists.infradead.org>; Sun,  3 Nov 2013 08:06:00 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Nov 2013 08:07:08 +0100
Message-Id: <1383462428-19259-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] bcm2835: move mci register at board level
To: barebox@lists.infradead.org

not all board have a SD coard

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/raspberry-pi/rpi.c        | 1 +
 arch/arm/mach-bcm2835/core.c              | 1 -
 arch/arm/mach-bcm2835/include/mach/core.h | 8 ++++++++
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
index d4912cc..a3ff746 100644
--- a/arch/arm/boards/raspberry-pi/rpi.c
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -39,6 +39,7 @@ console_initcall(rpi_console_init);
 
 static int rpi_devices_init(void)
 {
+	bcm2835_register_mci();
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
 	armlinux_set_bootparams((void *)(0x00000100));
 	return 0;
diff --git a/arch/arm/mach-bcm2835/core.c b/arch/arm/mach-bcm2835/core.c
index 906e434..f44ecd5 100644
--- a/arch/arm/mach-bcm2835/core.c
+++ b/arch/arm/mach-bcm2835/core.c
@@ -70,7 +70,6 @@ static int bcm2835_dev_init(void)
 {
 	add_generic_device("bcm2835-gpio", 0, NULL, BCM2835_GPIO_BASE, 0xB0, IORESOURCE_MEM, NULL);
 	add_generic_device("bcm2835-cs", DEVICE_ID_SINGLE, NULL, BCM2835_ST_BASE, 0x1C, IORESOURCE_MEM, NULL);
-	add_generic_device("bcm2835_mci", 0, NULL, BCM2835_EMMC_BASE, 0xFC, IORESOURCE_MEM, NULL);
 	return 0;
 }
 coredevice_initcall(bcm2835_dev_init);
diff --git a/arch/arm/mach-bcm2835/include/mach/core.h b/arch/arm/mach-bcm2835/include/mach/core.h
index 9379af2..a095db8 100644
--- a/arch/arm/mach-bcm2835/include/mach/core.h
+++ b/arch/arm/mach-bcm2835/include/mach/core.h
@@ -16,7 +16,15 @@
 #ifndef __BCM2835_CORE_H__
 #define __BCM2835_CORE_H__
 
+#include <mach/platform.h>
+
 void bcm2835_register_uart(void);
 void bcm2835_add_device_sdram(u32 size);
 
+static void inline bcm2835_register_mci(void)
+{
+	add_generic_device("bcm2835_mci", 0, NULL, BCM2835_EMMC_BASE, 0xFC,
+			IORESOURCE_MEM, NULL);
+}
+
 #endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
