Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmNW7-0000y6-Hk
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:08:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 12:08:30 +0200
Message-Id: <1311847712-23515-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311847712-23515-1-git-send-email-s.hauer@pengutronix.de>
References: <1311847712-23515-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] net i.MX fec: remove unnecessary alignment
To: barebox@lists.infradead.org

dma_alloc_coherent returns sufficiently aligned memory. While
at it, remove some unnecessary casts.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c |   22 +++++++++-------------
 1 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 552d281..6886ccc 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -601,7 +601,7 @@ static int fec_probe(struct device_d *dev)
         struct fec_platform_data *pdata = (struct fec_platform_data *)dev->platform_data;
         struct eth_device *edev;
 	struct fec_priv *fec;
-	uint32_t base;
+	void *base;
 #ifdef CONFIG_ARCH_IMX27
 	PCCR0 |= PCCR0_FEC_EN;
 #endif
@@ -629,18 +629,14 @@ static int fec_probe(struct device_d *dev)
 	 * reserve memory for both buffer descriptor chains at once
 	 * Datasheet forces the startaddress of each chain is 16 byte aligned
 	 */
-	base = (uint32_t)dma_alloc_coherent((2 + FEC_RBD_NUM) *
-			sizeof(struct buffer_descriptor) + 2 * DB_ALIGNMENT);
-	base += (DB_ALIGNMENT - 1);
-	base &= ~(DB_ALIGNMENT - 1);
-	fec->rbd_base = (struct buffer_descriptor __force __iomem *)base;
-	base += FEC_RBD_NUM * sizeof (struct buffer_descriptor) +
-		(DB_ALIGNMENT - 1);
-	base &= ~(DB_ALIGNMENT - 1);
-	fec->tbd_base = (struct buffer_descriptor __force __iomem *)base;
-
-	writel((uint32_t)virt_to_phys(fec->tbd_base), fec->regs + FEC_ETDSR);
-	writel((uint32_t)virt_to_phys(fec->rbd_base), fec->regs + FEC_ERDSR);
+	base = dma_alloc_coherent((2 + FEC_RBD_NUM) *
+			sizeof(struct buffer_descriptor));
+	fec->rbd_base = base;
+	base += FEC_RBD_NUM * sizeof(struct buffer_descriptor);
+	fec->tbd_base = base;
+
+	writel(virt_to_phys(fec->tbd_base), fec->regs + FEC_ETDSR);
+	writel(virt_to_phys(fec->rbd_base), fec->regs + FEC_ERDSR);
 
 	fec_alloc_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
