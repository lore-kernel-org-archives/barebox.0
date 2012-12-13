Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjC9R-0001nf-4J
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 17:00:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 18:00:43 +0100
Message-Id: <1355418044-27452-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
References: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] fixup! USB i.MX: Add chipidea driver support
To: barebox@lists.infradead.org

---
 drivers/usb/imx/chipidea-imx.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 66eb1ad..5b4c081 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -52,7 +52,7 @@ static int imx_chipidea_probe(struct device_d *dev)
 
 	if ((pdata->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
 		dev_dbg(dev, "using ULPI phy\n");
-		if (IS_ENABLED(CONFIG_USB_ULPPI)) {
+		if (IS_ENABLED(CONFIG_USB_ULPI)) {
 			ret = ulpi_setup(base + 0x170, 1);
 		} else {
 			dev_err(dev, "no ULPI support available\n");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
