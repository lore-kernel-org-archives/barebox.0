Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rh0qP-0000Nx-3P
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 15:27:41 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 696AFDC37C4
 for <barebox@lists.infradead.org>; Sat, 31 Dec 2011 16:28:30 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 31 Dec 2011 16:21:36 +0100
Message-Id: <1325344898-7076-10-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 10/12] usb-a926x: add dfu support
To: barebox@lists.infradead.org

detect it at boot time

if the user button is pressed 5s and the vbus is 1 start the dfu

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/usb-a926x/env/bin/init_board |   43 ++++++++++++++++++++++++++
 arch/arm/boards/usb-a926x/init.c             |    9 +++++
 2 files changed, 52 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/usb-a926x/env/bin/init_board

diff --git a/arch/arm/boards/usb-a926x/env/bin/init_board b/arch/arm/boards/usb-a926x/env/bin/init_board
new file mode 100644
index 0000000..77e5c1a
--- /dev/null
+++ b/arch/arm/boards/usb-a926x/env/bin/init_board
@@ -0,0 +1,43 @@
+#!/bin/sh
+
+button_name="dfu_bp"
+button_wait=5
+
+product_id=0x1234
+vendor_id=0x4321
+
+dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
+
+gpio_get_value ${dfu_button}
+if [ $? != 0 ]
+then
+	exit
+fi
+
+if [ $at91_udc0.vbus != 1 ]
+then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+echo "${button_name} pressed detected wait ${button_wait}s"
+timeout -s -a ${button_wait}
+
+gpio_get_value ${dfu_button}
+if [ $? != 0 ]
+then
+	echo "${button_name} released, normal boot"
+	exit
+fi
+
+if [ $at91_udc0.vbus != 1 ]
+then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+echo ""
+echo "Start DFU Mode"
+echo ""
+
+dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 469d98e..364c1ba 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -211,6 +211,14 @@ static int usb_a9260_mem_init(void)
 }
 mem_initcall(usb_a9260_mem_init);
 
+static void __init ek_add_device_button(void)
+{
+	at91_set_GPIO_periph(AT91_PIN_PB10, 1);	/* user push button, pull up enabled */
+	at91_set_deglitch(AT91_PIN_PB10, 1);
+
+	export_env_ull("dfu_button", AT91_PIN_PB10);
+}
+
 static int usb_a9260_devices_init(void)
 {
 	usb_a9260_add_device_nand();
@@ -220,6 +228,7 @@ static int usb_a9260_devices_init(void)
 	at91_add_device_usbh_ohci(&ek_usbh_data);
 	ek_add_device_udc();
 	ek_add_led();
+	ek_add_device_button();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	usb_a9260_set_board_type();
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
