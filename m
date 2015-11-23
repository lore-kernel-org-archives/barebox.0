Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0nb5-0002ZC-J6
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 09:39:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Nov 2015 10:39:25 +0100
Message-Id: <1448271565-2374-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: core: initialize *retlen in mtd_write()
To: Barebox List <barebox@lists.infradead.org>

Some mtd drivers like the spi-nor driver do not assign a value
to the retlen pointer but instead only add the bytes written
to *retlen. Users of mtd_write expect the variable to be initialized
by the mtd core though, so we have to do it in mtd_write(). The
same is done in mtd_read already.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index d873369..62307db 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -340,6 +340,8 @@ int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
 int mtd_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
 		const u_char *buf)
 {
+	*retlen = 0;
+
 	return mtd->write(mtd, to, len, retlen, buf);
 }
 
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
