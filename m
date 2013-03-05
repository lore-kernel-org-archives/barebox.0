Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp36.i.mail.ru ([94.100.177.96])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCvOa-0007Sk-1g
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 17:11:21 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue,  5 Mar 2013 21:11:08 +0400
Message-Id: <1362503468-11451-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] usb: chipidea-imx: Fix usb initialization
To: barebox@lists.infradead.org

This patch fix chipidea-imx usb initialization.
"imx_chipidea_port_init" was moved before PORTSC setup in the
commit "USB i.MX chipidea: implement post init support". This
change breaks usb function with ULPI. Patch moves port initialization
back after PORTSC setup, so it works again.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/usb/imx/chipidea-imx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 483484e..1570f90 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -73,13 +73,13 @@ static int imx_chipidea_probe(struct device_d *dev)
 	data.post_init = imx_chipidea_port_post_init;
 	data.drvdata = dev;
 
-	imx_chipidea_port_init(dev);
-
 	portsc = readl(base + 0x184);
 	portsc &= ~MXC_EHCI_PORTSC_MASK;
 	portsc |= pdata->flags & MXC_EHCI_PORTSC_MASK;
 	writel(portsc, base + 0x184);
 
+	imx_chipidea_port_init(dev);
+
 	if ((pdata->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
 		dev_dbg(dev, "using ULPI phy\n");
 		if (IS_ENABLED(CONFIG_USB_ULPI)) {
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
