Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4iFe-0000JH-JE
 for barebox@lists.infradead.org; Tue, 25 Sep 2018 07:59:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Sep 2018 09:58:45 +0200
Message-Id: <20180925075847.4585-2-s.hauer@pengutronix.de>
In-Reply-To: <20180925075847.4585-1-s.hauer@pengutronix.de>
References: <20180925075847.4585-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] imx-bbu-nand-fcb: Improve error message
To: Barebox List <barebox@lists.infradead.org>

When printing that a FCB is not readable it's interesting to know which
one is not readable. Print the block number in the message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 2c8ca97926..5535a92d54 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -459,7 +459,7 @@ static int read_fcb(struct mtd_info *mtd, int num, struct fcb_block **retfcb)
 		fcb = read_fcb_hamming_13_8(rawpage);
 
 	if (IS_ERR(fcb)) {
-		pr_err("Cannot read fcb\n");
+		pr_err("Cannot read fcb on block %d\n", num);
 		ret = PTR_ERR(fcb);
 		goto err;
 	}
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
