Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x232.google.com ([2a00:1450:400c:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WozOP-0002nx-Is
 for barebox@lists.infradead.org; Mon, 26 May 2014 18:13:02 +0000
Received: by mail-we0-f178.google.com with SMTP id u56so8478176wes.9
 for <barebox@lists.infradead.org>; Mon, 26 May 2014 11:12:38 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Mon, 26 May 2014 20:12:32 +0200
Message-Id: <1401127952-10811-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] cfi_flash: show progress while during erase
To: barebox@lists.infradead.org

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/mtd/nor/cfi_flash.c |   12 ++++++++++--
 1 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 3d3d231..f2f52e1 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -470,7 +470,7 @@ flash_sect_t find_sector (struct flash_info *info, ulong addr)
 	return sector;
 }
 
-static int cfi_erase(struct flash_info *finfo, size_t count, loff_t offset)
+static int cfi_erase(struct flash_info *finfo, size_t count, loff_t offset, int verbose)
 {
         unsigned long start, end;
         int i, ret = 0;
@@ -481,17 +481,25 @@ static int cfi_erase(struct flash_info *finfo, size_t count, loff_t offset)
         end   = find_sector(finfo, (unsigned long)finfo->base + offset +
 			count - 1);
 
+	if (verbose)
+		init_progression_bar(end - start);
+
         for (i = start; i <= end; i++) {
                 ret = finfo->cfi_cmd_set->flash_erase_one(finfo, i);
                 if (ret)
                         goto out;
 
+		if (verbose)
+			show_progress(i - start);
+
 		if (ctrlc()) {
 			ret = -EINTR;
 			goto out;
 		}
         }
 out:
+	if (verbose)
+		putchar('\n');
         return ret;
 }
 
@@ -933,7 +941,7 @@ static int cfi_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
 	int ret;
 
-	ret = cfi_erase(info, instr->len, instr->addr);
+	ret = cfi_erase(info, instr->len, instr->addr, 1);
 
 	if (ret) {
 		instr->state = MTD_ERASE_FAILED;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
