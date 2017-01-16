Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4su-0002kB-0U
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2017 11:50:51 +0100
Message-Id: <20170116105108.13617-7-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/23] mci: imx-esdhc: Enable clock
To: Barebox List <barebox@lists.infradead.org>

For architectures which do not enable all clocks during initialization.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 951ac4501..c845187a5 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -630,6 +630,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host->clk = clk_get(dev, "per");
 	if (IS_ERR(host->clk))
 		return PTR_ERR(host->clk);
+	clk_enable(host->clk);
 
 	host->dev = dev;
 	iores = dev_request_mem_resource(dev, 0);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
