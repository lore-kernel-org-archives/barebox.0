Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0TkQ-0002ds-RI
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 10:19:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2014 11:18:34 +0100
Message-Id: <1389089916-2771-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389089916-2771-1-git-send-email-s.hauer@pengutronix.de>
References: <1389089916-2771-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] usb: chipidea i.MX: limit port init to HSIC mode
To: barebox@lists.infradead.org

imx_chipidea_port_init() will be called during startup from
the ehci driver. Calling it before setting up the PORTSC register
is only necessary in HSIC mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 2f290e1..c81c10d 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -161,7 +161,8 @@ static int imx_chipidea_probe(struct device_d *dev)
 	ci->data.post_init = imx_chipidea_port_post_init;
 	ci->data.drvdata = ci;
 
-	imx_chipidea_port_init(ci);
+	if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_HSIC)
+		imx_chipidea_port_init(ci);
 
 	portsc = readl(base + 0x184);
 	portsc &= ~MXC_EHCI_PORTSC_MASK;
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
