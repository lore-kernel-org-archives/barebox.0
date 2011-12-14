Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rar6Y-0000mc-Lg
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 15:50:51 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 52222FFBA25
 for <barebox@lists.infradead.org>; Wed, 14 Dec 2011 16:51:02 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 14 Dec 2011 16:46:12 +0100
Message-Id: <1323877574-10276-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] usb-a926x: fix mem init
To: barebox@lists.infradead.org

move mem init to mem_initcall

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/usb-a926x/init.c |   17 ++++++++++++-----
 1 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 686f638..20af4b0 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -181,6 +181,18 @@ static void __init ek_add_device_udc(void)
 	at91_add_device_udc(&ek_udc_data);
 }
 
+static int usb_a9260_mem_init(void)
+{
+#ifdef CONFIG_AT91_HAVE_SRAM_128M
+	at91_add_device_sdram(128 * 1024 * 1024);
+#else
+	at91_add_device_sdram(64 * 1024 * 1024);
+#endif
+
+	return 0;
+}
+mem_initcall(usb_a9260_mem_init);
+
 static int usb_a9260_devices_init(void)
 {
 	usb_a9260_add_device_nand();
@@ -190,11 +202,6 @@ static int usb_a9260_devices_init(void)
 	at91_add_device_usbh_ohci(&ek_usbh_data);
 	ek_add_device_udc();
 
-#ifdef CONFIG_AT91_HAVE_SRAM_128M
-	at91_add_device_sdram(128 * 1024 * 1024);
-#else
-	at91_add_device_sdram(64 * 1024 * 1024);
-#endif
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	usb_a9260_set_board_type();
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
