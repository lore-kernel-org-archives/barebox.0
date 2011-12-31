Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rh0qM-0000NU-UF
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 15:27:39 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 50E4DDC37D1
 for <barebox@lists.infradead.org>; Sat, 31 Dec 2011 16:28:28 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 31 Dec 2011 16:21:35 +0100
Message-Id: <1325344898-7076-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111231151655.GB945@game.jcrosoft.org>
References: <20111231151655.GB945@game.jcrosoft.org>
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
Subject: [PATCH 09/12] usb-a926x: add led support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/usb-a926x/init.c |   18 ++++++++++++++++++
 1 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 41daab8..469d98e 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -37,6 +37,7 @@
 #include <mach/at91sam9_smc.h>
 #include <mach/sam9_smc.h>
 #include <gpio.h>
+#include <led.h>
 #include <mach/io.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
@@ -182,6 +183,22 @@ static void __init ek_add_device_udc(void)
 	at91_add_device_udc(&ek_udc_data);
 }
 
+struct gpio_led led = {
+	.gpio = AT91_PIN_PB21,
+	.led = {
+		.name = "user_led",
+	},
+};
+
+static void __init ek_add_led(void)
+{
+	if (machine_is_usb_a9263())
+		led.active_low = 1;
+
+	at91_set_gpio_output(led.gpio, led.active_low);
+	led_gpio_register(&led);
+}
+
 static int usb_a9260_mem_init(void)
 {
 #ifdef CONFIG_AT91_HAVE_SRAM_128M
@@ -202,6 +219,7 @@ static int usb_a9260_devices_init(void)
 	usb_a9260_add_device_mci();
 	at91_add_device_usbh_ohci(&ek_usbh_data);
 	ek_add_device_udc();
+	ek_add_led();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	usb_a9260_set_board_type();
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
