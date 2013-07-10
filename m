Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwt4N-0001jl-BR
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:00:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 13:59:56 +0200
Message-Id: <1373457601-7225-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
References: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] dma: apbh: add devicetree probe support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/apbh_dma.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index fa4dd34..89948bc 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -649,9 +649,22 @@ static struct platform_device_id apbh_ids[] = {
         },
 };
 
+static __maybe_unused struct of_device_id apbh_dt_ids[] = {
+	{
+		.compatible = "fsl,imx23-dma-apbh",
+		.data = (unsigned long)IMX23_DMA,
+	}, {
+		.compatible = "fsl,imx28-dma-apbh",
+		.data = (unsigned long)IMX28_DMA,
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d apbh_dma_driver = {
 	.name  = "dma-apbh",
 	.id_table = apbh_ids,
+	.of_compatible = DRV_OF_COMPAT(apbh_dt_ids),
 	.probe = apbh_dma_probe,
 };
 coredevice_platform_driver(apbh_dma_driver);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
