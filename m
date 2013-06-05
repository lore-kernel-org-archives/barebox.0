Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkKCW-00064D-GI
 for barebox@lists.infradead.org; Wed, 05 Jun 2013 20:20:58 +0000
Date: Wed, 5 Jun 2013 22:20:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130605202031.GU32299@pengutronix.de>
References: <1370438768-13729-1-git-send-email-l.stach@pengutronix.de>
 <1370439235.553989759@f166.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370439235.553989759@f166.mail.ru>
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
Subject: Re: [PATCH] Revert "usb: chipidea-imx: Fix usb initialization"
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, Jun 05, 2013 at 05:33:55PM +0400, Alexander Shiyan wrote:
> 
> 
> > This breaks HSIC and has no good justification why this would
> > be needed for ULPI.
> > 
> > This reverts commit 2e7d66f526217f6ff3167e4580aecb9548a0de33.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  drivers/usb/imx/chipidea-imx.c |    4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
> > index 928ebf3..4ee7610 100644
> > --- a/drivers/usb/imx/chipidea-imx.c
> > +++ b/drivers/usb/imx/chipidea-imx.c
> > @@ -148,13 +148,13 @@ static int imx_chipidea_probe(struct device_d *dev)
> >  	ci->data.post_init = imx_chipidea_port_post_init;
> >  	ci->data.drvdata = ci;
> >  
> > +	imx_chipidea_port_init(ci);
> > +
> >  	portsc = readl(base + 0x184);
> >  	portsc &= ~MXC_EHCI_PORTSC_MASK;
> >  	portsc |= ci->flags & MXC_EHCI_PORTSC_MASK;
> >  	writel(portsc, base + 0x184);
> >  
> > -	imx_chipidea_port_init(ci);
> > -
> >  	if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
> >  		dev_dbg(dev, "using ULPI phy\n");
> >  		if (IS_ENABLED(CONFIG_USB_ULPI)) {
> 
> This order was be before driver rework. Unfortunately I can not check right now,
> but when I test initial version, it was be a proper order, at least for pcm038 (imx27 module).

I just tried it here on our pcm038 board. With first stage USB2 never
works, no matter if this patch is reverted or not. if I start barebox
second stage it always works.

It helps to try a few more times to detect a phy. The first reads often
return wrong results. The following patch makes USB2 work here.

Sascha

8<-------------------------------------------------------

From 2d280e354b946a51ae394bcedd476800c8beabf7 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 5 Jun 2013 22:13:05 +0200
Subject: [PATCH] usb: ulpi: Try more often to detect a phy

Some boards need some more tries to successfully detect a phy. This
happens for example on the pcm038. Try up to four times to detect a
phy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/otg/ulpi.c | 38 ++++++++++++++++++++++++++------------
 1 file changed, 26 insertions(+), 12 deletions(-)

diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index 19f64e0..e0aa201 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -146,9 +146,9 @@ static struct ulpi_info ulpi_ids[] = {
 	ULPI_INFO(ULPI_ID(0x0424, 0x0006), "SMSC USB331x"),
 };
 
-int ulpi_probe(void __iomem *view)
+static int ulpi_read_id(void __iomem *view, int *vid, int *pid)
 {
-	int i, vid, pid, ret;
+	int i, ret;
 	uint32_t ulpi_id = 0;
 
 	for (i = 0; i < 4; i++) {
@@ -157,20 +157,34 @@ int ulpi_probe(void __iomem *view)
 			return ret;
 		ulpi_id = (ulpi_id << 8) | ret;
 	}
-	vid = ulpi_id & 0xffff;
-	pid = ulpi_id >> 16;
-
-	for (i = 0; i < ARRAY_SIZE(ulpi_ids); i++) {
-		if (ulpi_ids[i].id == ULPI_ID(vid, pid)) {
-			pr_info("Found %s ULPI transceiver (0x%04x:0x%04x).\n",
-			ulpi_ids[i].name, vid, pid);
-			return 0;
+
+	*vid = ulpi_id & 0xffff;
+	*pid = (ulpi_id >> 16) & 0xffff;
+
+	return 0;
+}
+
+int ulpi_probe(void __iomem *view)
+{
+	int i, j, vid, pid, ret;
+
+	for (i = 0; i < 4; i++) {
+		ret = ulpi_read_id(view, &vid, &pid);
+		if (ret)
+			return ret;
+
+		for (j = 0; j < ARRAY_SIZE(ulpi_ids); j++) {
+			if (ulpi_ids[j].id == ULPI_ID(vid, pid)) {
+				pr_info("Found %s ULPI transceiver (0x%04x:0x%04x).\n",
+				ulpi_ids[j].name, vid, pid);
+				return 0;
+			}
 		}
 	}
 
-	pr_err("No ULPI found.\n");
+	pr_err("No ULPI found. vid: 0x%04x pid: 0x%04x\n", vid, pid);
 
-	return -1;
+	return -ENODEV;
 }
 
 int ulpi_set_vbus(void __iomem *view, int on)
-- 
1.8.2.rc2


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
