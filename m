Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irM8s-0002Le-0Z
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 13:22:02 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 14 Jan 2020 14:21:07 +0100
Message-Id: <20200114132112.4119-3-jmaselbas@kalray.eu>
In-Reply-To: <20200114132112.4119-1-jmaselbas@kalray.eu>
References: <20191220143232.28354-10-s.hauer@pengutronix.de>
 <20200114132112.4119-1-jmaselbas@kalray.eu>
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
Subject: [RFC PATCH 2/7] usb: dwc2: host: Handle dma mapping errors
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/host.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 4137dd3cb..a1f2e3ea1 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -154,6 +154,11 @@ static int transfer_chunk(struct dwc2 *dwc2, u8 hc,
 	dma_addr = dma_map_single(dwc2->dev, buffer, xfer_len,
 				  in ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
 
+	if (dma_mapping_error(dwc2->dev, dma_addr)) {
+		dwc2_err(dwc2, "Failed to map buffer@0x%p for dma\n", buffer);
+		return -EFAULT;
+	}
+
 	dwc2_dbg(dwc2, "chunk: pid=%d xfer_len=%u pkts=%u dma_addr=%llx\n",
 			*pid, xfer_len, num_packets, dma_addr);
 
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
