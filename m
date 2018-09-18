Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28Sz-0000BF-KE
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:22:50 +0000
Received: by mail-pl1-x643.google.com with SMTP id u11-v6so397905plq.5
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:22:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:21:22 -0700
Message-Id: <20180918052122.12248-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180918052122.12248-1-andrew.smirnov@gmail.com>
References: <20180918052122.12248-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/7] net: fec_imx: Do not use DMA coherent memory for Rx
 buffers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Trying to do unaligned access of coherent memory on AArch64 will lead
to an abort and some parts of our IP stack will do exactly that with
received packet buffer by using memcpy() to extracts parts of it.

Convert the driver to use regular memory for received data buffers to
prevent the issue from happening.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 29 +++++++++++++++++++++++++----
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 33f2da84a..d304b94c5 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -558,6 +558,14 @@ static int fec_recv(struct eth_device *dev)
 
 		if (data_length - 4 > 14) {
 			void *frame = phys_to_virt(readl(&rbd->data_pointer));
+			/*
+			 * Sync the data for CPU so that endianness
+			 * fixup and net_receive below would get
+			 * proper data
+			 */
+			dma_sync_single_for_cpu((unsigned long)frame,
+						data_length,
+						DMA_FROM_DEVICE);
 			if (fec_is_imx28(fec))
 				imx28_fix_endianess_rd(frame,
 						       (data_length + 3) >> 2);
@@ -567,6 +575,9 @@ static int fec_recv(struct eth_device *dev)
 			 */
 			len = data_length - 4;
 			net_receive(dev, frame, len);
+			dma_sync_single_for_device((unsigned long)frame,
+						   data_length,
+						   DMA_FROM_DEVICE);
 		}
 	}
 	/*
@@ -585,13 +596,23 @@ static int fec_alloc_receive_packets(struct fec_priv *fec, int count, int size)
 	void *p;
 	int i;
 
-	/* reserve data memory and consider alignment */
-	p = dma_alloc_coherent(size * count, DMA_ADDRESS_BROKEN);
+
+	p = dma_alloc(size * count);
 	if (!p)
 		return -ENOMEM;
 
 	for (i = 0; i < count; i++) {
-		writel(virt_to_phys(p), &fec->rbd_base[i].data_pointer);
+		dma_addr_t dma;
+		/*
+		 * Make sure there are no outstanding writes to the
+		 * region of memory we are going to use as receive
+		 * buffers as well as check that DMA mapping is valid
+		 */
+		dma = dma_map_single(fec->dev, p, size, DMA_FROM_DEVICE);
+		if (dma_mapping_error(fec->dev, dma))
+			return -EFAULT;
+
+		writel(dma, &fec->rbd_base[i].data_pointer);
 		p += size;
 	}
 
@@ -601,7 +622,7 @@ static int fec_alloc_receive_packets(struct fec_priv *fec, int count, int size)
 static void fec_free_receive_packets(struct fec_priv *fec, int count, int size)
 {
 	void *p = phys_to_virt(fec->rbd_base[0].data_pointer);
-	dma_free_coherent(p, 0, size * count);
+	dma_free(p);
 }
 
 #ifdef CONFIG_OFDEVICE
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
