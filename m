Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj5qg-0006l4-5h
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 08:40:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jul 2011 10:39:58 +0200
Message-Id: <1311064803-6305-15-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/19] video i.MX ipu: convert to struct resource
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-fb.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index d9e1e21..5ae8c4b 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -858,7 +858,7 @@ static int imxfb_probe(struct device_d *dev)
 	fbi = xzalloc(sizeof(*fbi));
 	info = &fbi->info;
 
-	fbi->regs = (void *)dev->map_base;
+	fbi->regs = dev_request_mem_region(dev, 0);
 	fbi->dev = dev;
 	info->priv = fbi;
 	info->fbops = &imxfb_ops;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
