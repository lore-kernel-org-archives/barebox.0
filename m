Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cltVw-0007PZ-39
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 08:33:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Mar 2017 09:33:06 +0100
Message-Id: <20170309083306.21101-2-s.hauer@pengutronix.de>
In-Reply-To: <20170309083306.21101-1-s.hauer@pengutronix.de>
References: <20170309083306.21101-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] usb: imx: Fix setting of dev->priv
To: Barebox List <barebox@lists.infradead.org>

Since fc10539f7d the usbmisc pointer must be stored in dev->priv,
but dev->priv has never been set. Fix this.

Fixes: fc10539f7d usb: imx: Make usb-misc multi instance safe

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/imx-usb-misc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index dc0de9e9e1..ef3892c220 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -640,7 +640,7 @@ static int imx_usbmisc_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct imx_usb_misc_data *devtype;
-	struct imx_usb_misc_priv *usbmisc = dev->priv;
+	struct imx_usb_misc_priv *usbmisc;
 	int ret;
 
 	ret = dev_get_drvdata(dev, (const void **)&devtype);
@@ -655,6 +655,8 @@ static int imx_usbmisc_probe(struct device_d *dev)
 	usbmisc->base = IOMEM(iores->start);
 	usbmisc->data = devtype;
 
+	dev->priv = usbmisc;
+
 	return 0;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
