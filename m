Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvIo-0006Xt-G2
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:42:59 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 17:42:43 +0200
Message-Id: <20200928154247.15619-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200928154247.15619-1-a.fatoum@pengutronix.de>
References: <20200928154247.15619-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/7] dma: apbh: fix out-of-bounds write on 64-bit SoCs
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

i.MX8 MM & MN are both ARM64 SoCs with a device compatible
with "fsl,imx28-dma-apbh". Probing the barebox device driver on these
SoCs would invoke undefined behavior however, because of an
errant cast. Fix this.

This has a side-effect: Whereas before, probing devices matched by
driver name failed with -ENODEV, they are now considered to be
compatible to IMX23_DMA instead. As we don't depend on this, this
is deemed acceptable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/apbh_dma.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index 3bee89f78b85..186c69388c7f 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -596,9 +596,7 @@ static int apbh_dma_probe(struct device_d *dev)
 	enum mxs_dma_id id;
 	int ret, channel;
 
-	ret = dev_get_drvdata(dev, (const void **)&id);
-	if (ret)
-		return ret;
+	id = (enum mxs_dma_id)device_get_match_data(dev);
 
 	apbh_dma = apbh = xzalloc(sizeof(*apbh));
 	iores = dev_request_mem_resource(dev, 0);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
