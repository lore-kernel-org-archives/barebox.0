Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmNW7-0000y5-Hl
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:08:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 12:08:29 +0200
Message-Id: <1311847712-23515-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] net i.MX fec: make multi instance safe
To: barebox@lists.infradead.org

The driver uses a static int once variable to alloc the
rx packets. remove this to make the driver multi instance
safe. While at it, remove the crappy selfmade alignment.
dma_alloc_coherent returns sufficiently aligned memory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c |   34 ++++++++++++++++++++--------------
 1 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index fcb8cc5..552d281 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -200,25 +200,11 @@ static void imx28_fix_endianess_rd(uint32_t *buf, unsigned wlen)
 static int fec_rbd_init(struct fec_priv *fec, int count, int size)
 {
 	int ix;
-	static int once = 0;
-	unsigned long p = 0;
-
-	if (!once) {
-		/* reserve data memory and consider alignment */
-		p = (unsigned long)dma_alloc_coherent(size * count + DB_DATA_ALIGNMENT);
-		p += DB_DATA_ALIGNMENT - 1;
-		p &= ~(DB_DATA_ALIGNMENT - 1);
-	}
 
 	for (ix = 0; ix < count; ix++) {
-		if (!once) {
-			writel(virt_to_phys((void *)p), &fec->rbd_base[ix].data_pointer);
-			p += size;
-		}
 		writew(FEC_RBD_EMPTY, &fec->rbd_base[ix].status);
 		writew(0, &fec->rbd_base[ix].data_length);
 	}
-	once = 1;	/* malloc done now (and once) */
 	/*
 	 * mark the last RBD to close the ring
 	 */
@@ -592,6 +578,24 @@ static int fec_recv(struct eth_device *dev)
 	return len;
 }
 
+static int fec_alloc_receive_packets(struct fec_priv *fec, int count, int size)
+{
+	void *p;
+	int i;
+
+	/* reserve data memory and consider alignment */
+	p = dma_alloc_coherent(size * count);
+	if (!p)
+		return -ENOMEM;
+
+	for (i = 0; i < count; i++) {
+		writel(virt_to_phys(p), &fec->rbd_base[i].data_pointer);
+		p += size;
+	}
+
+	return 0;
+}
+
 static int fec_probe(struct device_d *dev)
 {
         struct fec_platform_data *pdata = (struct fec_platform_data *)dev->platform_data;
@@ -638,6 +642,8 @@ static int fec_probe(struct device_d *dev)
 	writel((uint32_t)virt_to_phys(fec->tbd_base), fec->regs + FEC_ETDSR);
 	writel((uint32_t)virt_to_phys(fec->rbd_base), fec->regs + FEC_ERDSR);
 
+	fec_alloc_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
+
 	fec->xcv_type = pdata->xcv_type;
 
 	if (fec->xcv_type != SEVENWIRE) {
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
