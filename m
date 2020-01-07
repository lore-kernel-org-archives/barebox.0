Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolxf-0004ss-Fp
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 10:19:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2020 11:19:30 +0100
Message-Id: <20200107101931.4535-3-s.hauer@pengutronix.de>
In-Reply-To: <20200107101931.4535-1-s.hauer@pengutronix.de>
References: <20200107101931.4535-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: bcm2835 mbox: use pr_* to print messages
To: Barebox List <barebox@lists.infradead.org>

To give the user an idea where the messages come from.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-bcm283x/mbox.c | 36 +++++++++++++++++++-----------------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-bcm283x/mbox.c b/arch/arm/mach-bcm283x/mbox.c
index 4405efaffd..1b1981f7cb 100644
--- a/arch/arm/mach-bcm283x/mbox.c
+++ b/arch/arm/mach-bcm283x/mbox.c
@@ -6,6 +6,8 @@
  * SPDX-License-Identifier:	GPL-2.0+
  */
 
+#define pr_fmt(fmt) "rpi-mbox: " fmt
+
 #include <clock.h>
 #include <common.h>
 #include <dma.h>
@@ -26,7 +28,7 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 	u32 val;
 
 	if (send & BCM2835_CHAN_MASK) {
-		printf("mbox: Illegal mbox data 0x%08x\n", send);
+		pr_err("mbox: Illegal mbox data 0x%08x\n", send);
 		return -EINVAL;
 	}
 
@@ -36,7 +38,7 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 		if (val & BCM2835_MBOX_STATUS_RD_EMPTY)
 			break;
 		if (is_timeout(starttime, TIMEOUT)) {
-			printf("mbox: Timeout draining stale responses\n");
+			pr_err("mbox: Timeout draining stale responses\n");
 			return -ETIMEDOUT;
 		}
 		val = readl(mbox_base + MAIL0_RD);
@@ -48,14 +50,14 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 		if (!(val & BCM2835_MBOX_STATUS_WR_FULL))
 			break;
 		if (is_timeout(starttime, TIMEOUT)) {
-			printf("mbox: Timeout waiting for send space\n");
+			pr_err("mbox: Timeout waiting for send space\n");
 			return -ETIMEDOUT;
 		}
 	}
 
 	/* Send the request */
 	val = BCM2835_MBOX_PACK(chan, send);
-	debug("mbox: TX raw: 0x%08x\n", val);
+	pr_debug("mbox: TX raw: 0x%08x\n", val);
 	dma_sync_single_for_device((unsigned long)send, buffer->buf_size,
 				   DMA_BIDIRECTIONAL);
 	writel(val, mbox_base + MAIL1_WRT);
@@ -66,20 +68,20 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 		if (!(val & BCM2835_MBOX_STATUS_RD_EMPTY))
 			break;
 		if (is_timeout(starttime, TIMEOUT)) {
-			printf("mbox: Timeout waiting for response\n");
+			pr_err("mbox: Timeout waiting for response\n");
 			return -ETIMEDOUT;
 		}
 	}
 
 	/* Read the response */
 	val = readl(mbox_base + MAIL0_RD);
-	debug("mbox: RX raw: 0x%08x\n", val);
+	pr_debug("mbox: RX raw: 0x%08x\n", val);
 	dma_sync_single_for_cpu((unsigned long)send, buffer->buf_size,
 				DMA_BIDIRECTIONAL);
 
 	/* Validate the response */
 	if (BCM2835_MBOX_UNPACK_CHAN(val) != chan) {
-		printf("mbox: Response channel mismatch\n");
+		pr_err("mbox: Response channel mismatch\n");
 		return -EIO;
 	}
 
@@ -89,7 +91,7 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 }
 
 #ifdef DEBUG
-void dump_buf(struct bcm2835_mbox_hdr *buffer)
+static void dump_buf(struct bcm2835_mbox_hdr *buffer)
 {
 	u32 *p;
 	u32 words;
@@ -98,7 +100,11 @@ void dump_buf(struct bcm2835_mbox_hdr *buffer)
 	p = (u32 *)buffer;
 	words = buffer->buf_size / 4;
 	for (i = 0; i < words; i++)
-		printf("    0x%04x: 0x%08x\n", i * 4, p[i]);
+		pr_debug("    0x%04x: 0x%08x\n", i * 4, p[i]);
+}
+#else
+static void dump_buf(struct bcm2835_mbox_hdr *buffer)
+{
 }
 #endif
 
@@ -109,27 +115,23 @@ int bcm2835_mbox_call_prop(u32 chan, struct bcm2835_mbox_hdr *buffer)
 	struct bcm2835_mbox_tag_hdr *tag;
 	int tag_index;
 
-#ifdef DEBUG
-	printf("mbox: TX buffer\n");
+	pr_debug("mbox: TX buffer\n");
 	dump_buf(buffer);
-#endif
 
 	ret = bcm2835_mbox_call_raw(chan, buffer, &rbuffer);
 	if (ret)
 		return ret;
 	if (rbuffer != (u32)buffer) {
-		printf("mbox: Response buffer mismatch\n");
+		pr_err("mbox: Response buffer mismatch\n");
 		return -EIO;
 	}
 
-#ifdef DEBUG
-	printf("mbox: RX buffer\n");
+	pr_debug("mbox: RX buffer\n");
 	dump_buf(buffer);
-#endif
 
 	/* Validate overall response status */
 	if (buffer->code != BCM2835_MBOX_RESP_CODE_SUCCESS) {
-		printf("mbox: Header response code invalid\n");
+		pr_err("mbox: Header response code invalid\n");
 		return -EIO;
 	}
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
