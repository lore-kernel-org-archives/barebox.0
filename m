Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkDlM-0003Zu-J5
 for barebox@lists.infradead.org; Wed, 05 Jun 2013 13:28:29 +0000
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  5 Jun 2013 15:26:08 +0200
Message-Id: <1370438768-13729-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] Revert "usb: chipidea-imx: Fix usb initialization"
To: barebox@lists.infradead.org

This breaks HSIC and has no good justification why this would
be needed for ULPI.

This reverts commit 2e7d66f526217f6ff3167e4580aecb9548a0de33.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 928ebf3..4ee7610 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -148,13 +148,13 @@ static int imx_chipidea_probe(struct device_d *dev)
 	ci->data.post_init = imx_chipidea_port_post_init;
 	ci->data.drvdata = ci;
 
+	imx_chipidea_port_init(ci);
+
 	portsc = readl(base + 0x184);
 	portsc &= ~MXC_EHCI_PORTSC_MASK;
 	portsc |= ci->flags & MXC_EHCI_PORTSC_MASK;
 	writel(portsc, base + 0x184);
 
-	imx_chipidea_port_init(ci);
-
 	if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
 		dev_dbg(dev, "using ULPI phy\n");
 		if (IS_ENABLED(CONFIG_USB_ULPI)) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
