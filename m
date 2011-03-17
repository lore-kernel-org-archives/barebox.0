Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q093u-0004fh-M8
	for barebox@lists.infradead.org; Thu, 17 Mar 2011 09:00:07 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Thu, 17 Mar 2011 10:59:42 +0200
Message-Id: <0d427def4fdf14f2498cabdf90f619847d369b5b.1300352322.git.baruch@tkos.co.il>
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
Subject: [PATCH] mtd/nand_imx: fix read past buffer end
To: barebox@lists.infradead.org

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 drivers/mtd/nand/nand_imx.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 8bfa2ba..48841dc 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -566,9 +566,9 @@ static void imx_nand_read_buf(struct mtd_info *mtd, u_char * buf, int len)
 
 	n = min(n, len);
 
-	memcpy(buf, host->data_buf + col, len);
+	memcpy(buf, host->data_buf + col, n);
 
-	host->buf_start += len;
+	host->buf_start += n;
 }
 
 /*
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
