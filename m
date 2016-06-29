Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bICLJ-000557-Fk
 for barebox@lists.infradead.org; Wed, 29 Jun 2016 10:03:38 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A41AEA001AB
 for <barebox@lists.infradead.org>; Wed, 29 Jun 2016 12:04:23 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Jun 2016 12:01:06 +0200
Message-Id: <1467194468-31049-2-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1467194468-31049-1-git-send-email-t.remmet@phytec.de>
References: <1467194468-31049-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 2/4] OMAP: xload: nand: Check for redundant barebox partition
To: barebox@lists.infradead.org

Add a support for a redundant barebox backup partition if loading
barebox image from first barebox partitions fails.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/board.c |  2 ++
 arch/arm/mach-omap/include/mach/generic.h |  2 ++
 arch/arm/mach-omap/xload.c                | 17 ++++++++++++++++-
 3 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
index 7a87841..ca325b5 100644
--- a/arch/arm/boards/phytec-som-am335x/board.c
+++ b/arch/arm/boards/phytec-som-am335x/board.c
@@ -47,6 +47,8 @@ coredevice_initcall(physom_coredevice_init);
 static struct omap_barebox_part physom_barebox_part = {
 	.nand_offset = SZ_512K,
 	.nand_size = SZ_512K,
+	.nand_bkup_offset = SZ_1M,
+	.nand_bkup_size = SZ_512K,
 	.nor_offset = SZ_128K,
 	.nor_size = SZ_512K,
 };
diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-omap/include/mach/generic.h
index a2a48cc..fe194b3 100644
--- a/arch/arm/mach-omap/include/mach/generic.h
+++ b/arch/arm/mach-omap/include/mach/generic.h
@@ -55,6 +55,8 @@ extern unsigned int __omap_cpu_type;
 struct omap_barebox_part {
 	unsigned int nand_offset;
 	unsigned int nand_size;
+	unsigned int nand_bkup_offset;
+	unsigned int nand_bkup_size;
 	unsigned int nor_offset;
 	unsigned int nor_size;
 };
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 91890b2..14a631e 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -24,6 +24,8 @@ struct omap_barebox_part *barebox_part;
 static struct omap_barebox_part default_part = {
 	.nand_offset = SZ_128K,
 	.nand_size = SZ_1M,
+	.nand_bkup_offset = 0,
+	.nand_bkup_size = 0,
 	.nor_offset = SZ_128K,
 	.nor_size = SZ_1M,
 };
@@ -99,11 +101,24 @@ static void *read_mtd_barebox(const char *partition)
 
 static void *omap_xload_boot_nand(struct omap_barebox_part *part)
 {
+	void *to;
+
 	devfs_add_partition("nand0", part->nand_offset, part->nand_size,
 					DEVFS_PARTITION_FIXED, "x");
 	dev_add_bb_dev("x", "bbx");
 
-	return read_mtd_barebox("bbx");
+	to = read_mtd_barebox("bbx");
+	if (to == NULL && part->nand_bkup_size != 0) {
+		printf("trying to load image from backup partition.\n");
+		devfs_add_partition("nand0", part->nand_bkup_offset,
+				part->nand_bkup_size,
+				DEVFS_PARTITION_FIXED, "x_bkup");
+		dev_add_bb_dev("x_bkup", "bbx_bkup");
+
+		to = read_mtd_barebox("bbx_bkup");
+	}
+
+	return to;
 }
 
 static void *omap_xload_boot_mmc(void)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
