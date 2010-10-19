Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj6-0005rG-Gq
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:00 +0200
Message-Id: <1287492930-15716-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/42] fec_imx: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c |    8 ++++----
 drivers/net/fec_imx.h |    6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 73b7a54..9c8de77 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -216,7 +216,7 @@ static void fec_tbd_init(struct fec_priv *fec)
  * @param[in] last 1 if this is the last buffer descriptor in the chain, else 0
  * @param[in] pRbd buffer descriptor to mark free again
  */
-static void fec_rbd_clean(int last, struct buffer_descriptor *pRbd)
+static void fec_rbd_clean(int last, struct buffer_descriptor __iomem *pRbd)
 {
 	/*
 	 * Reset buffer descriptor as empty
@@ -464,7 +464,7 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 static int fec_recv(struct eth_device *dev)
 {
 	struct fec_priv *fec = (struct fec_priv *)dev->priv;
-	struct buffer_descriptor *rbd = &fec->rbd_base[fec->rbd_index];
+	struct buffer_descriptor __iomem *rbd = &fec->rbd_base[fec->rbd_index];
 	unsigned long ievent;
 	int frame_length, len = 0;
 	struct fec_frame *frame;
@@ -568,11 +568,11 @@ static int fec_probe(struct device_d *dev)
 			sizeof(struct buffer_descriptor) + 2 * DB_ALIGNMENT);
 	base += (DB_ALIGNMENT - 1);
 	base &= ~(DB_ALIGNMENT - 1);
-	fec->rbd_base = (struct buffer_descriptor *)base;
+	fec->rbd_base = (struct buffer_descriptor __force __iomem *)base;
 	base += FEC_RBD_NUM * sizeof (struct buffer_descriptor) +
 		(DB_ALIGNMENT - 1);
 	base &= ~(DB_ALIGNMENT - 1);
-	fec->tbd_base = (struct buffer_descriptor *)base;
+	fec->tbd_base = (struct buffer_descriptor __force __iomem *)base;
 
 	writel((uint32_t)virt_to_phys(fec->tbd_base), fec->regs + FEC_ETDSR);
 	writel((uint32_t)virt_to_phys(fec->rbd_base), fec->regs + FEC_ERDSR);
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index e1473a4..ce0fd89 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -135,11 +135,11 @@ struct buffer_descriptor {
  * @brief i.MX27-FEC private structure
  */
 struct fec_priv {
-	void *regs;
+	void __iomem *regs;
 	xceiver_type xcv_type;			/* transceiver type          */
-	struct buffer_descriptor *rbd_base;	/* RBD ring                  */
+	struct buffer_descriptor __iomem *rbd_base;	/* RBD ring                  */
 	int rbd_index;				/* next receive BD to read   */
-	struct buffer_descriptor *tbd_base;	/* TBD ring                  */
+	struct buffer_descriptor __iomem *tbd_base;	/* TBD ring                  */
 	int tbd_index;				/* next transmit BD to write */
 	struct mii_device miidev;
 };
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
