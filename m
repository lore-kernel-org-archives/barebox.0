Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kA6V8-0001wH-J4
 for barebox@lists.infradead.org; Mon, 24 Aug 2020 07:02:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Aug 2020 09:02:40 +0200
Message-Id: <20200824070240.20188-2-s.hauer@pengutronix.de>
In-Reply-To: <20200824070240.20188-1-s.hauer@pengutronix.de>
References: <20200824070240.20188-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] treewide: s/filed/field/
To: Barebox List <barebox@lists.infradead.org>

Fix typos.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/mvebu/armada-38x.c | 2 +-
 drivers/clk/mvebu/armada-xp.c  | 2 +-
 include/linux/mtd/bbm.h        | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/mvebu/armada-38x.c b/drivers/clk/mvebu/armada-38x.c
index 627de7de6c..80865965e1 100644
--- a/drivers/clk/mvebu/armada-38x.c
+++ b/drivers/clk/mvebu/armada-38x.c
@@ -17,7 +17,7 @@
 /*
  * Core Clocks
  *
- * Armada XP Sample At Reset is a 64 bit bitfiled split in two
+ * Armada XP Sample At Reset is a 64 bit bitfield split in two
  * register of 32 bits
  */
 
diff --git a/drivers/clk/mvebu/armada-xp.c b/drivers/clk/mvebu/armada-xp.c
index d79f846d3f..f0276d32f5 100644
--- a/drivers/clk/mvebu/armada-xp.c
+++ b/drivers/clk/mvebu/armada-xp.c
@@ -16,7 +16,7 @@
 /*
  * Core Clocks
  *
- * Armada XP Sample At Reset is a 64 bit bitfiled split in two
+ * Armada XP Sample At Reset is a 64 bit bitfield split in two
  * register of 32 bits
  */
 
diff --git a/include/linux/mtd/bbm.h b/include/linux/mtd/bbm.h
index 36bb6a503f..1e39883a2d 100644
--- a/include/linux/mtd/bbm.h
+++ b/include/linux/mtd/bbm.h
@@ -159,7 +159,7 @@ struct bbm_info {
 
 	int (*isbad_bbt)(struct mtd_info *mtd, loff_t ofs, int allowbbt);
 
-	/* TODO Add more NAND specific fileds */
+	/* TODO Add more NAND specific fields */
 	struct nand_bbt_descr *badblock_pattern;
 
 	void *priv;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
