Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28St-0000Ax-NE
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:22:25 +0000
Received: by mail-pl1-x644.google.com with SMTP id g23-v6so390791plq.9
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:22:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:21:18 -0700
Message-Id: <20180918052122.12248-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/7] net: fec_imx: Read data_length only once
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Data length of a given Rx data descriptor isn't going to change until
that descriptor is processed and given back to HW. Re-work the code to
save and re-use that value instead.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 31 +++++++++++++++++--------------
 1 file changed, 17 insertions(+), 14 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 25e2425d6..36218f3c9 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -574,20 +574,23 @@ static int fec_recv(struct eth_device *dev)
 	if (bd_status & FEC_RBD_ERR) {
 		dev_warn(&dev->dev, "error frame: 0x%p 0x%08x\n",
 			 rbd, bd_status);
-	} else if ((bd_status & FEC_RBD_LAST) &&
-		   ((readw(&rbd->data_length) - 4) > 14)) {
-		if (fec_is_imx28(fec))
-			imx28_fix_endianess_rd(
-				phys_to_virt(readl(&rbd->data_pointer)),
-				(readw(&rbd->data_length) + 3) >> 2);
-
-		/*
-		 * Get buffer address and size
-		 */
-		frame = phys_to_virt(readl(&rbd->data_pointer));
-		frame_length = readw(&rbd->data_length) - 4;
-		net_receive(dev, frame->data, frame_length);
-		len = frame_length;
+	} else if (bd_status & FEC_RBD_LAST) {
+		const uint16_t data_length = readw(&rbd->data_length);
+
+		if (data_length - 4 > 14) {
+			if (fec_is_imx28(fec))
+				imx28_fix_endianess_rd(
+					phys_to_virt(readl(&rbd->data_pointer)),
+					(data_length + 3) >> 2);
+
+			/*
+			 * Get buffer address and size
+			 */
+			frame = phys_to_virt(readl(&rbd->data_pointer));
+			frame_length = data_length - 4;
+			net_receive(dev, frame->data, frame_length);
+			len = frame_length;
+		}
 	}
 	/*
 	 * free the current buffer, restart the engine
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
