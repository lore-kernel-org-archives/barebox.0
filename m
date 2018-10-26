Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFyV6-0000mo-Qc
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 09:33:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2018 11:33:37 +0200
Message-Id: <20181026093338.22751-8-s.hauer@pengutronix.de>
In-Reply-To: <20181026093338.22751-1-s.hauer@pengutronix.de>
References: <20181026093338.22751-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 7/8] usb: imx: unregister ehci controller on device removal
To: Barebox List <barebox@lists.infradead.org>

ehci does DMA and hence must be properly quiesced before we leave
barebox. Call ehci_unregister() on device removal when we previously
registered a ehci controller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 321a8ada3f..7bf2ef76c5 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -364,6 +364,11 @@ static int imx_chipidea_probe(struct device_d *dev)
 
 static void imx_chipidea_remove(struct device_d *dev)
 {
+	struct imx_chipidea *ci = dev->priv;
+
+	if (ci->ehci)
+		ehci_unregister(ci->ehci);
+
 	if (IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC))
 		ci_udc_unregister();
 }
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
