Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIG8-0007LG-Fi
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 15:49:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B24D727E0FF8
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2020 16:49:29 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 22 Jan 2020 16:49:05 +0100
Message-Id: <20200122154908.22635-5-jmaselbas@kalray.eu>
In-Reply-To: <20200122154908.22635-1-jmaselbas@kalray.eu>
References: <20200122154908.22635-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v2 4/7] usb: dwc2: host: Handle dma mapping errors
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/host.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 61c29910e..09cf04b46 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -153,6 +153,11 @@ static int transfer_chunk(struct dwc2 *dwc2, u8 hc,
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
