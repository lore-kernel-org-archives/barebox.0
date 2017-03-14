Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cngc2-0005IM-IR
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 07:11:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 14 Mar 2017 08:10:51 +0100
Message-Id: <20170314071052.2195-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: create bitflips in the correct page
To: Barebox List <barebox@lists.infradead.org>

In mtd_peb_create_bitflips() buf always points to the first page in a
block. If we want to create bitflips in other pages we have to add the
offset into the block.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/peb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index 66227d4ffb..c97697f6f9 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -610,7 +610,7 @@ int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
 	for (i = 0; i < num_bitflips; i++) {
 		int offs;
 		int bit;
-		u8 *pos = buf;
+		u8 *pos = buf + offset;
 
 		if (random) {
 			offs = random32() % len;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
