Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Rg-00034L-KS
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:25:29 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 0AE77104EB7A
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:35:34 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:24:09 +0100
Message-Id: <1359905053-13109-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130203152218.GF18068@game.jcrosoft.org>
References: <20130203152218.GF18068@game.jcrosoft.org>
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
Subject: [PATCH 1/5] usb-a926x: only provide the resource if the driver is
 enable
To: barebox@lists.infradead.org

usefull for bootstrap

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/usb-a926x/init.c |    9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 0383280..e2da8ea 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -246,6 +246,15 @@ static struct at91_udc_data __initdata ek_udc_data = {
 	.pullup_pin	= -EINVAL,		/* pull-up driven by UDC */
 };
 
+static void usb_a9260_add_device_usb(void)
+{
+	at91_add_device_usbh_ohci(&ek_usbh_data);
+}
+#else
+static void usb_a9260_add_device_usb(void) {}
+#endif
+
+#ifdef CONFIG_USB_GADGET_DRIVER_AT91
 static void __init ek_add_device_udc(void)
 {
 	if (machine_is_usb_a9260() || machine_is_usb_a9g20())
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
