Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjD7Y-0003uP-3w
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:26:17 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id A9333FFA5F0
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 18:26:36 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 18:09:09 +0200
Message-Id: <1311091752-9114-13-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110719160758.GK5727@game.jcrosoft.org>
References: <20110719160758.GK5727@game.jcrosoft.org>
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
Subject: [PATCH 13/16] spi i.MX: convert to struct resource
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 1857d6c..bbe2789 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -379,7 +379,7 @@ static int imx_spi_probe(struct device_d *dev)
 	imx->chipselect = spi_imx_devtype_data[version].chipselect;
 	imx->xchg_single = spi_imx_devtype_data[version].xchg_single;
 	imx->init = spi_imx_devtype_data[version].init;
-	imx->regs = (void __iomem *)dev->map_base;
+	imx->regs = dev_request_mem_region(dev, 0);
 
 	imx->init(imx);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
