Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxr2V-0007Bh-2D
 for barebox@lists.infradead.org; Tue, 21 Jul 2020 12:06:33 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 21 Jul 2020 14:05:52 +0200
Message-Id: <20200721120600.15114-7-jmaselbas@kalray.eu>
In-Reply-To: <20200721120600.15114-1-jmaselbas@kalray.eu>
References: <20200721120600.15114-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v3 06/14] usb: dwc2: host: Handle dma mapping errors
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/host.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index b32b47867..40fc84599 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -157,6 +157,11 @@ static int transfer_chunk(struct dwc2 *dwc2, u8 hc,
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
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
