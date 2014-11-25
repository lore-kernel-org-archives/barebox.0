Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtJWC-0002PF-IM
 for barebox@lists.infradead.org; Tue, 25 Nov 2014 17:03:13 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XtJVq-0000RL-T6
 for barebox@lists.infradead.org; Tue, 25 Nov 2014 18:02:50 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 25 Nov 2014 18:02:46 +0100
Message-Id: <1416934970-24929-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH v2 1/5] arm: imx: pca100: only try to enable USB if USB_ULPI
 is configured
To: barebox@lists.infradead.org

Avoids a build failure if the config does not include ULPI support.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/phytec-phycard-imx27/pca100.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
index 895a3a395777..9475bfafcaa7 100644
--- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
+++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
@@ -41,6 +41,7 @@
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
 
+#if defined(CONFIG_USB) && defined(CONFIG_USB_ULPI)
 static void pca100_usb_register(void)
 {
 	mdelay(10);
@@ -55,6 +56,9 @@ static void pca100_usb_register(void)
 	ulpi_setup((void *)(MX27_USB_OTG_BASE_ADDR + 0x570), 1);
 	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX27_USB_OTG_BASE_ADDR + 0x400, NULL);
 }
+#else
+static void pca100_usb_register(void) { };
+#endif
 
 static void pca100_usb_init(void)
 {
@@ -131,8 +135,7 @@ static int pca100_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
-	if (IS_ENABLED(CONFIG_USB))
-		pca100_usb_register();
+	pca100_usb_register();
 
 	imx_bbu_external_nand_register_handler("nand", "/dev/nand0.boot",
 			BBU_HANDLER_FLAG_DEFAULT);
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
