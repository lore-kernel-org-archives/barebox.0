Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28Sz-0000BG-Qh
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:22:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id j26-v6so407487pfi.10
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:22:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:21:19 -0700
Message-Id: <20180918052122.12248-5-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/7] net: fec_imx: Drop struct fec_frame
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop struct fec_frame since it doesn't have any real users in the
code. It is only referenced in fec_recv() and is used by that function
as a generic pointer.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 36218f3c9..ff5a64174 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -33,12 +33,6 @@
 
 #include "fec_imx.h"
 
-struct fec_frame {
-	uint8_t data[1500];	/* actual data */
-	int length;		/* actual length */
-	int used;		/* buffer in use or not */
-	uint8_t head[16];	/* MAC header(6 + 6 + 2) + 2(aligned) */
-};
 
 /*
  * MII-interface related functions
@@ -530,7 +524,6 @@ static int fec_recv(struct eth_device *dev)
 	struct buffer_descriptor __iomem *rbd = &fec->rbd_base[fec->rbd_index];
 	uint32_t ievent;
 	int frame_length, len = 0;
-	struct fec_frame *frame;
 	uint16_t bd_status;
 
 	/*
@@ -578,17 +571,16 @@ static int fec_recv(struct eth_device *dev)
 		const uint16_t data_length = readw(&rbd->data_length);
 
 		if (data_length - 4 > 14) {
+			void *frame = phys_to_virt(readl(&rbd->data_pointer));
 			if (fec_is_imx28(fec))
-				imx28_fix_endianess_rd(
-					phys_to_virt(readl(&rbd->data_pointer)),
-					(data_length + 3) >> 2);
+				imx28_fix_endianess_rd(frame,
+						       (data_length + 3) >> 2);
 
 			/*
 			 * Get buffer address and size
 			 */
-			frame = phys_to_virt(readl(&rbd->data_pointer));
 			frame_length = data_length - 4;
-			net_receive(dev, frame->data, frame_length);
+			net_receive(dev, frame, frame_length);
 			len = frame_length;
 		}
 	}
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
