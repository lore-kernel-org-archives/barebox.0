Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBP1-00088i-B2
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 09:37:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 11:36:15 +0200
Message-Id: <1269855383-22716-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/12] imx_nand: use memcpy for copying from/to buffer
To: barebox@lists.infradead.org

We do not need to use memcpy32 in read_buf/write_buf because
in these functions we only access SDRAM and not the internal SRAM
buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nand/nand_imx.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nand/nand_imx.c b/drivers/nand/nand_imx.c
index 5f92e2f..398a268 100644
--- a/drivers/nand/nand_imx.c
+++ b/drivers/nand/nand_imx.c
@@ -505,7 +505,7 @@ static void imx_nand_write_buf(struct mtd_info *mtd,
 	int n = mtd->oobsize + mtd->writesize - col;
 
 	n = min(n, len);
-	memcpy32(host->data_buf + col, buf, n);
+	memcpy(host->data_buf + col, buf, n);
 
 	host->buf_start += n;
 }
@@ -529,7 +529,7 @@ static void imx_nand_read_buf(struct mtd_info *mtd, u_char * buf, int len)
 
 	n = min(n, len);
 
-	memcpy32(buf, host->data_buf + col, len);
+	memcpy(buf, host->data_buf + col, len);
 
 	host->buf_start += len;
 }
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
