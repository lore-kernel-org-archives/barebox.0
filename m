Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ66H-0005p1-5W
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 09:51:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Oct 2020 11:50:54 +0200
Message-Id: <20201007095058.22950-3-a.fatoum@pengutronix.de>
In-Reply-To: <20201007095058.22950-1-a.fatoum@pengutronix.de>
References: <20201007095058.22950-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH v2 3/7] dma: apbh: fix out-of-bounds write on 64-bit SoCs
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

i.MX8 MM & MN are both ARM64 SoCs with a device compatible
with "fsl,imx28-dma-apbh". Probing the barebox device driver on these
SoCs would invoke undefined behavior however, because of an
errant cast. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/apbh_dma.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index 3bee89f78b85..0e4961f6cbde 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -50,6 +50,7 @@
 static struct mxs_dma_chan mxs_dma_channels[MXS_MAX_DMA_CHANNELS];
 
 enum mxs_dma_id {
+	UNKNOWN_DMA_ID,
 	IMX23_DMA,
 	IMX28_DMA,
 };
@@ -596,9 +597,9 @@ static int apbh_dma_probe(struct device_d *dev)
 	enum mxs_dma_id id;
 	int ret, channel;
 
-	ret = dev_get_drvdata(dev, (const void **)&id);
-	if (ret)
-		return ret;
+	id = (enum mxs_dma_id)device_get_match_data(dev);
+	if (id == UNKNOWN_DMA_ID)
+		return -ENODEV;
 
 	apbh_dma = apbh = xzalloc(sizeof(*apbh));
 	iores = dev_request_mem_resource(dev, 0);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
