Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra7GZ-0001Gw-OT
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 14:54:09 +0000
Received: from mail240.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0D800DC7FDF
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2011 15:52:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 12 Dec 2011 15:46:57 +0100
Message-Id: <1323701217-26236-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1323701217-26236-1-git-send-email-plagnioj@jcrosoft.com>
References: <1323701217-26236-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] usb-a926x: add usb device support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Gregory HERMANT <gregory.hermant@calao-systems.com>
---
 arch/arm/boards/usb-a926x/init.c |   17 +++++++++++++++++
 1 files changed, 17 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 5354582..686f638 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -165,6 +165,22 @@ static struct at91_usbh_data ek_usbh_data = {
 	.ports		= 2,
 };
 
+/*
+ * USB Device port
+ */
+static struct at91_udc_data __initdata ek_udc_data = {
+	.vbus_pin	= AT91_PIN_PB11,
+	.pullup_pin	= -EINVAL,		/* pull-up driven by UDC */
+};
+
+static void __init ek_add_device_udc(void)
+{
+	if (machine_is_usb_a9260() || machine_is_usb_a9g20())
+		ek_udc_data.vbus_pin = AT91_PIN_PC5;
+
+	at91_add_device_udc(&ek_udc_data);
+}
+
 static int usb_a9260_devices_init(void)
 {
 	usb_a9260_add_device_nand();
@@ -172,6 +188,7 @@ static int usb_a9260_devices_init(void)
 	at91_add_device_eth(&macb_pdata);
 	usb_a9260_add_device_mci();
 	at91_add_device_usbh_ohci(&ek_usbh_data);
+	ek_add_device_udc();
 
 #ifdef CONFIG_AT91_HAVE_SRAM_128M
 	at91_add_device_sdram(128 * 1024 * 1024);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
