Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28Sr-0000Av-Ut
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:22:23 +0000
Received: by mail-pl1-x642.google.com with SMTP id t19-v6so382071ply.13
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:22:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:21:17 -0700
Message-Id: <20180918052122.12248-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/7] net: fec_imx: Don't check bd_status & FEC_RBD_ERR twice
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Re-shuffle comparisons in order to avoid having to check for
FEC_RBD_ERR in bd_status more than once.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 904eba30a..25e2425d6 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -571,9 +571,11 @@ static int fec_recv(struct eth_device *dev)
 	if (bd_status & FEC_RBD_EMPTY)
 		return 0;
 
-	if ((bd_status & FEC_RBD_LAST) && !(bd_status & FEC_RBD_ERR) &&
-	    ((readw(&rbd->data_length) - 4) > 14)) {
-
+	if (bd_status & FEC_RBD_ERR) {
+		dev_warn(&dev->dev, "error frame: 0x%p 0x%08x\n",
+			 rbd, bd_status);
+	} else if ((bd_status & FEC_RBD_LAST) &&
+		   ((readw(&rbd->data_length) - 4) > 14)) {
 		if (fec_is_imx28(fec))
 			imx28_fix_endianess_rd(
 				phys_to_virt(readl(&rbd->data_pointer)),
@@ -586,10 +588,6 @@ static int fec_recv(struct eth_device *dev)
 		frame_length = readw(&rbd->data_length) - 4;
 		net_receive(dev, frame->data, frame_length);
 		len = frame_length;
-	} else {
-		if (bd_status & FEC_RBD_ERR) {
-			dev_warn(&dev->dev, "error frame: 0x%p 0x%08x\n", rbd, bd_status);
-		}
 	}
 	/*
 	 * free the current buffer, restart the engine
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
