Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZJke9-0007ae-HE
 for barebox@lists.infradead.org; Mon, 27 Jul 2015 15:48:59 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZJimP-0002c4-3G
 for barebox@lists.infradead.org; Mon, 27 Jul 2015 15:49:21 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 27 Jul 2015 17:48:32 +0200
Message-Id: <1438012113-27213-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1438012113-27213-1-git-send-email-l.stach@pengutronix.de>
References: <1438012113-27213-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: imx: guf-neso: only try to enable USB if USB_ULPI is
 configured
To: barebox@lists.infradead.org

Avoids a build failure if the config does not include ULPI support.
This is similar to what has been done to the PCA100 board.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/guf-neso/board.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 67fd50849d5f..f40f0d15914d 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -110,7 +110,7 @@ static struct imx_fb_platform_data neso_fb_data = {
 	.framebuffer_ovl = (void *)0xa7f00000,
 };
 
-#ifdef CONFIG_USB
+#if defined(CONFIG_USB) && defined(CONFIG_USB_ULPI)
 static void neso_usbh_init(void)
 {
 	uint32_t temp;
@@ -130,7 +130,11 @@ static void neso_usbh_init(void)
 	gpio_set_value(USBH2_PHY_CS_GPIO, 0);
 	mdelay(10);
 	ulpi_setup((void *)(MX27_USB_OTG_BASE_ADDR + 0x570), 1);
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC,
+				    MX27_USB_OTG_BASE_ADDR + 0x400, NULL);
 }
+#else
+static void neso_usbh_init(void) { }
 #endif
 
 static int neso_devices_init(void)
@@ -266,10 +270,7 @@ static int neso_devices_init(void)
 	imx27_add_nand(&nand_info);
 	imx27_add_fb(&neso_fb_data);
 
-#ifdef CONFIG_USB
 	neso_usbh_init();
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX27_USB_OTG_BASE_ADDR + 0x400, NULL);
-#endif
 
 	imx27_add_fec(&fec_info);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
