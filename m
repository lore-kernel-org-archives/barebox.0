Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cngc2-0005IN-Gr
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 07:11:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 14 Mar 2017 08:10:52 +0100
Message-Id: <20170314071052.2195-2-s.hauer@pengutronix.de>
In-Reply-To: <20170314071052.2195-1-s.hauer@pengutronix.de>
References: <20170314071052.2195-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: when creating bitflips the offset has to be page
 aligned
To: Barebox List <barebox@lists.infradead.org>

mtd_peb_create_bitflips() assumes the offset is page aligned. Enforce
this and in the nand_bitlfip command print a warning if it's not
aligned.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nand-bitflip.c | 4 ++++
 drivers/mtd/peb.c       | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/commands/nand-bitflip.c b/commands/nand-bitflip.c
index fe56f222cf..a8a97c153a 100644
--- a/commands/nand-bitflip.c
+++ b/commands/nand-bitflip.c
@@ -69,6 +69,10 @@ static int do_nand_bitflip(int argc, char *argv[])
 
 	block += mtd_div_by_eb(offset, meminfo.mtd);
 	offset = mtd_mod_by_eb(offset, meminfo.mtd);
+	if ((int)offset % meminfo.mtd->writesize) {
+		printf("offset has to be pagesize aligned\n");
+		return 1;
+	}
 
 	if (!check) {
 		ret = mtd_peb_create_bitflips(meminfo.mtd, block, offset, meminfo.writesize,
diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index c97697f6f9..c35b63f2fd 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -565,6 +565,8 @@ int mtd_peb_create_bitflips(struct mtd_info *mtd, int pnum, int offset,
 
 	if (offset < 0 || offset + len > mtd->erasesize)
 		return -EINVAL;
+	if (offset % mtd->writesize)
+		return -EINVAL;
 	if (len <= 0)
 		return -EINVAL;
 	if (num_bitflips <= 0)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
