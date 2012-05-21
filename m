Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWPsb-0005IH-97
 for barebox@lists.infradead.org; Mon, 21 May 2012 10:30:22 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id q4LAUIg8009266
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 05:30:19 -0500
Received: from DBDE71.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q4LAUH0I022753
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 16:00:17 +0530 (IST)
From: Anand Gadiyar <gadiyar@ti.com>
Date: Mon, 21 May 2012 16:00:12 +0530
Message-ID: <1337596213-15239-4-git-send-email-gadiyar@ti.com>
In-Reply-To: <1337596213-15239-1-git-send-email-gadiyar@ti.com>
References: <1337596213-15239-1-git-send-email-gadiyar@ti.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] panda: add LED support
To: barebox@lists.infradead.org
Cc: Anand Gadiyar <gadiyar@ti.com>

Register GPIO7 as heartbeat LED, same as in the linux kernel.

Signed-off-by: Anand Gadiyar <gadiyar@ti.com>
---
 arch/arm/boards/panda/board.c |   19 +++++++++++++++++++
 1 files changed, 19 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index fcca5dd..84b4ecd 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -21,6 +21,8 @@
 #include <environment.h>
 #include <mach/xload.h>
 #include <i2c/i2c.h>
+#include <gpio.h>
+#include <led.h>
 
 static int board_revision;
 
@@ -113,6 +115,22 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
+struct gpio_led panda_leds[] = {
+	{
+		.gpio = 7,
+		.led = {
+			.name = "heartbeat",
+		},
+	},
+};
+
+static void panda_led_init(void)
+{
+	gpio_direction_output(7, 0);
+	led_gpio_register(&panda_leds[0]);
+	led_set_trigger(LED_TRIGGER_HEARTBEAT, &panda_leds[0].led);
+}
+
 static int panda_devices_init(void)
 {
 	panda_boardrev_init();
@@ -151,6 +169,7 @@ static int panda_devices_init(void)
 			   IORESOURCE_MEM, NULL);
 	panda_ehci_init();
 
+	panda_led_init();
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_OMAP4_PANDA);
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
