Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28Sw-0000B1-K3
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:22:35 +0000
Received: by mail-pf1-x441.google.com with SMTP id d4-v6so427674pfn.0
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:22:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:21:16 -0700
Message-Id: <20180918052122.12248-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/7] net: fec_imx: Drop extra indentation level by exiting
 early
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop extra indentation level by exiting early which also allows us to
check for bd_status & FEC_RBD_EMPTY instead of !(bd_status &
FEC_RBD_EMPTY).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 53 ++++++++++++++++++++++---------------------
 1 file changed, 27 insertions(+), 26 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 94a159e2b..904eba30a 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -568,35 +568,36 @@ static int fec_recv(struct eth_device *dev)
 	 */
 	bd_status = readw(&rbd->status);
 
-	if (!(bd_status & FEC_RBD_EMPTY)) {
-		if ((bd_status & FEC_RBD_LAST) && !(bd_status & FEC_RBD_ERR) &&
-			((readw(&rbd->data_length) - 4) > 14)) {
-
-			if (fec_is_imx28(fec))
-				imx28_fix_endianess_rd(
-					phys_to_virt(readl(&rbd->data_pointer)),
-					(readw(&rbd->data_length) + 3) >> 2);
-
-			/*
-			 * Get buffer address and size
-			 */
-			frame = phys_to_virt(readl(&rbd->data_pointer));
-			frame_length = readw(&rbd->data_length) - 4;
-			net_receive(dev, frame->data, frame_length);
-			len = frame_length;
-		} else {
-			if (bd_status & FEC_RBD_ERR) {
-				dev_warn(&dev->dev, "error frame: 0x%p 0x%08x\n", rbd, bd_status);
-			}
-		}
+	if (bd_status & FEC_RBD_EMPTY)
+		return 0;
+
+	if ((bd_status & FEC_RBD_LAST) && !(bd_status & FEC_RBD_ERR) &&
+	    ((readw(&rbd->data_length) - 4) > 14)) {
+
+		if (fec_is_imx28(fec))
+			imx28_fix_endianess_rd(
+				phys_to_virt(readl(&rbd->data_pointer)),
+				(readw(&rbd->data_length) + 3) >> 2);
+
 		/*
-		 * free the current buffer, restart the engine
-		 * and move forward to the next buffer
+		 * Get buffer address and size
 		 */
-		fec_rbd_clean(fec->rbd_index == (FEC_RBD_NUM - 1) ? 1 : 0, rbd);
-		fec_rx_task_enable(fec);
-		fec->rbd_index = (fec->rbd_index + 1) % FEC_RBD_NUM;
+		frame = phys_to_virt(readl(&rbd->data_pointer));
+		frame_length = readw(&rbd->data_length) - 4;
+		net_receive(dev, frame->data, frame_length);
+		len = frame_length;
+	} else {
+		if (bd_status & FEC_RBD_ERR) {
+			dev_warn(&dev->dev, "error frame: 0x%p 0x%08x\n", rbd, bd_status);
+		}
 	}
+	/*
+	 * free the current buffer, restart the engine
+	 * and move forward to the next buffer
+	 */
+	fec_rbd_clean(fec->rbd_index == (FEC_RBD_NUM - 1) ? 1 : 0, rbd);
+	fec_rx_task_enable(fec);
+	fec->rbd_index = (fec->rbd_index + 1) % FEC_RBD_NUM;
 
 	return len;
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
