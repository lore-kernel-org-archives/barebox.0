Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOITu-0005qt-OG
 for barebox@lists.infradead.org; Wed, 08 May 2019 09:03:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 May 2019 11:03:06 +0200
Message-Id: <20190508090307.17729-10-s.hauer@pengutronix.de>
In-Reply-To: <20190508090307.17729-1-s.hauer@pengutronix.de>
References: <20190508090307.17729-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] net: fsl-fman: Sync rx buffers for device initially
To: Barebox List <barebox@lists.infradead.org>

The rx buffers must be given to the device initially to work properly.
Otherwise the first packets are corrupted.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fsl-fman.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 1a11ca4926..4e6bb2ecfd 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -640,6 +640,8 @@ static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
 					i * MAX_RXBUF_LEN));
 		buf_lo = lower_32_bits(virt_to_phys(rx_buf_pool +
 					i * MAX_RXBUF_LEN));
+		dma_sync_single_for_device((unsigned long)rx_buf_pool + i * MAX_RXBUF_LEN,
+					   MAX_RXBUF_LEN, DMA_FROM_DEVICE);
 		muram_writew(&rxbd->buf_ptr_hi, (u16)buf_hi);
 		out_be32(&rxbd->buf_ptr_lo, buf_lo);
 		rxbd++;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
