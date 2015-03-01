Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YS3m7-0007iW-4H
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 13:19:18 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 5D89C26C2018
 for <barebox@lists.infradead.org>; Sun,  1 Mar 2015 14:17:33 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  1 Mar 2015 14:17:21 +0100
Message-Id: <1425215842-6982-24-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425215842-6982-1-git-send-email-dev@lynxeye.de>
References: <1425215842-6982-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 23/24] ARM: bcm2835: mbox: convert to streaming DMA ops
To: barebox@lists.infradead.org

Move to the common streaming DMA ops in order to get rid of
the direct usage of the ARM MMU functions for the cache
maintenance.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-bcm2835/mbox.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-bcm2835/mbox.c b/arch/arm/mach-bcm2835/mbox.c
index 1a80771..9d69bc8 100644
--- a/arch/arm/mach-bcm2835/mbox.c
+++ b/arch/arm/mach-bcm2835/mbox.c
@@ -7,9 +7,9 @@
  */
 
 #include <asm/io.h>
-#include <asm/mmu.h>
 #include <common.h>
 #include <clock.h>
+#include <dma.h>
 
 #include <mach/mbox.h>
 
@@ -55,7 +55,8 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 	/* Send the request */
 	val = BCM2835_MBOX_PACK(chan, send);
 	debug("mbox: TX raw: 0x%08x\n", val);
-	dma_flush_range(send, send + buffer->buf_size);
+	dma_sync_single_for_device((unsigned long)send, buffer->buf_size,
+				   DMA_BIDIRECTIONAL);
 	writel(val, &regs->write);
 
 	/* Wait for the response */
@@ -72,7 +73,8 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 	/* Read the response */
 	val = readl(&regs->read);
 	debug("mbox: RX raw: 0x%08x\n", val);
-	dma_inv_range(send, send + buffer->buf_size);
+	dma_sync_single_for_cpu((unsigned long)send, buffer->buf_size,
+				DMA_BIDIRECTIONAL);
 
 	/* Validate the response */
 	if (BCM2835_MBOX_UNPACK_CHAN(val) != chan) {
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
