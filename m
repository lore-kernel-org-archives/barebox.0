Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yn3Kz-0005fL-KZ
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 11:06:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Apr 2015 13:05:33 +0200
Message-Id: <1430219137-8294-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1430219137-8294-1-git-send-email-s.hauer@pengutronix.de>
References: <1430219137-8294-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] usb: musb: dsps: Do not use priv pointer
To: Barebox List <barebox@lists.infradead.org>

Use container_of instead of dev->priv pointer. dev->priv is
used by the musb core layer (which maybe should not be the
case, but using container_of is good anyway).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/musb/musb_dsps.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index 36a316a..7bad1f8 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -129,14 +129,17 @@ struct dsps_glue {
 	struct musb_hdrc_platform_data pdata;
 };
 
+static struct dsps_glue *to_dsps_glue(struct musb *musb)
+{
+	return container_of(musb, struct dsps_glue, musb);
+}
+
 /**
  * dsps_musb_enable - enable interrupts
  */
 static void dsps_musb_enable(struct musb *musb)
 {
-	struct device_d *dev = musb->controller;
-	struct device_d *pdev = dev;
-	struct dsps_glue *glue = pdev->priv;
+	struct dsps_glue *glue = to_dsps_glue(musb);
 	const struct dsps_musb_wrapper *wrp = glue->wrp;
 	void __iomem *reg_base = musb->ctrl_base;
 	u32 epmask, coremask;
@@ -158,9 +161,7 @@ static void dsps_musb_enable(struct musb *musb)
  */
 static void dsps_musb_disable(struct musb *musb)
 {
-	struct device_d *dev = musb->controller;
-	struct device_d *pdev = dev;
-	struct dsps_glue *glue = pdev->priv;
+	struct dsps_glue *glue = to_dsps_glue(musb);
 	const struct dsps_musb_wrapper *wrp = glue->wrp;
 	void __iomem *reg_base = musb->ctrl_base;
 
@@ -173,8 +174,7 @@ static void dsps_musb_disable(struct musb *musb)
 static irqreturn_t dsps_interrupt(struct musb *musb)
 {
 	void __iomem *reg_base = musb->ctrl_base;
-	struct device_d *dev = musb->controller;
-	struct dsps_glue *glue = dev->priv;
+	struct dsps_glue *glue = to_dsps_glue(musb);
 	const struct dsps_musb_wrapper *wrp = glue->wrp;
 	unsigned long flags;
 	irqreturn_t ret = IRQ_NONE;
@@ -213,8 +213,7 @@ out:
 
 static int dsps_musb_init(struct musb *musb)
 {
-	struct device_d *dev = musb->controller;
-	struct dsps_glue *glue = dev->priv;
+	struct dsps_glue *glue = to_dsps_glue(musb);
 	const struct dsps_musb_wrapper *wrp = glue->wrp;
 	u32 rev, val, mode;
 
@@ -377,8 +376,6 @@ static int dsps_probe(struct device_d *dev)
 	glue->dev = dev;
 	glue->wrp = wrp;
 
-	dev->priv = glue;
-
 	pdata = &glue->pdata;
 
 	glue->musb.mregs = dev_request_mem_region(dev, 0);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
