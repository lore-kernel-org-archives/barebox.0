Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj5qk-0000eV-3q
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 08:40:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jul 2011 10:39:52 +0200
Message-Id: <1311064803-6305-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
References: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/19] serial i.MX: convert to struct resource
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_imx.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 984d7f2..8593efe 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -322,7 +322,7 @@ static int imx_serial_probe(struct device_d *dev)
 	priv = xmalloc(sizeof(*priv));
 	cdev = &priv->cdev;
 
-	priv->regs = (void __force __iomem *)dev->map_base;
+	priv->regs = dev_request_mem_region(dev, 0);
 	dev->type_data = cdev;
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
