Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28Sw-0000B9-Bd
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:22:32 +0000
Received: by mail-pf1-x442.google.com with SMTP id d4-v6so427699pfn.0
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:22:16 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:21:20 -0700
Message-Id: <20180918052122.12248-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/7] net: fec_imx: Drop frame_length
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop frame_length in favour of just using len

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index ff5a64174..843eba71f 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -523,7 +523,7 @@ static int fec_recv(struct eth_device *dev)
 	struct fec_priv *fec = (struct fec_priv *)dev->priv;
 	struct buffer_descriptor __iomem *rbd = &fec->rbd_base[fec->rbd_index];
 	uint32_t ievent;
-	int frame_length, len = 0;
+	int len = 0;
 	uint16_t bd_status;
 
 	/*
@@ -579,9 +579,8 @@ static int fec_recv(struct eth_device *dev)
 			/*
 			 * Get buffer address and size
 			 */
-			frame_length = data_length - 4;
-			net_receive(dev, frame, frame_length);
-			len = frame_length;
+			len = data_length - 4;
+			net_receive(dev, frame, len);
 		}
 	}
 	/*
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
