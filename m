Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo4.mail-out.ovh.net ([46.105.41.16]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjOQj-0002PE-6D
 for barebox@lists.infradead.org; Thu, 21 Nov 2013 07:12:02 +0000
Received: from mail629.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D282AFFA74B
 for <barebox@lists.infradead.org>; Thu, 21 Nov 2013 08:13:53 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 21 Nov 2013 08:13:55 +0100
Message-Id: <1385018035-26300-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1385018035-26300-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131121071216.GE7965@ns203013.ovh.net>
 <1385018035-26300-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] AT91: usb-a926x: switch to machine description
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/usb-a926x/init.c | 39 ++++++++++++++++++++++++++++++++-------
 1 file changed, 32 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index fd2603f..48c27cf 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -19,6 +19,7 @@
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -32,6 +33,7 @@
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
 #include <mach/at91sam9_sdramc.h>
+#include <mach/cpu.h>
 #include <gpio.h>
 #include <led.h>
 #include <mach/io.h>
@@ -391,7 +393,7 @@ static void usb_a9260_device_dab_mmx(void)
 static void usb_a9260_device_dab_mmx(void) {}
 #endif
 
-static int usb_a9260_devices_init(void)
+static void usb_a9260_devices_init(void)
 {
 	usb_a9260_add_device_nand();
 	usb_a9260_add_device_mci();
@@ -414,13 +416,10 @@ static int usb_a9260_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
 	dev_add_bb_dev("env_raw1", "env1");
-
-	return 0;
 }
-device_initcall(usb_a9260_devices_init);
 
 #ifndef CONFIG_CONSOLE_NONE
-static int usb_a9260_console_init(void)
+static void usb_a9260_console_init(void)
 {
 	struct device_d *dev;
 
@@ -443,15 +442,41 @@ static int usb_a9260_console_init(void)
 		dev = at91_register_uart(4, 0);
 		dev_set_param(dev, "active", "");
 	}
+}
+#endif
+
+static int usb_a9260_machine_detect(void)
+{
+	if (cpu_is_at91sam9g20())
+		arm_set_machine(MACH_TYPE_USB_A9G20);
+	else if (cpu_is_at91sam9263())
+		arm_set_machine(MACH_TYPE_USB_A9263);
+	else
+		arm_set_machine(MACH_TYPE_USB_A9260);
 
 	return 0;
 }
-console_initcall(usb_a9260_console_init);
-#endif
+postcore_initcall(usb_a9260_machine_detect);
 
 static int usb_a9260_main_clock(void)
 {
 	at91_set_main_clock(12000000);
+
 	return 0;
 }
 pure_initcall(usb_a9260_main_clock);
+
+MACHINE_START(USB_A9260, "Calao USB-A9260")
+	.init_console = usb_a9260_console_init,
+	.init_machine = usb_a9260_devices_init,
+MACHINE_END
+
+MACHINE_START(USB_A9263, "Calao USB-A9263")
+	.init_console = usb_a9260_console_init,
+	.init_machine = usb_a9260_devices_init,
+MACHINE_END
+
+MACHINE_START(USB_A9G20, "Calao USB-A9G20")
+	.init_console = usb_a9260_console_init,
+	.init_machine = usb_a9260_devices_init,
+MACHINE_END
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
