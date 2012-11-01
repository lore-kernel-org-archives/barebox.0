Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo4.mail-out.ovh.net ([188.165.33.112]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTrBQ-0000os-5D
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 09:35:31 +0000
Received: from mail192.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id F2138104EC34
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 10:42:33 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  1 Nov 2012 10:33:14 +0100
Message-Id: <1351762394-4597-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121031120122.GF29599@game.jcrosoft.org>
References: <20121031120122.GF29599@game.jcrosoft.org>
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
Subject: [PATCH 1/1] mtd: introduce mtd_block_isbad
To: barebox@lists.infradead.org

this allow to do not provide block_isbad at mtd driver level
as example spi flash

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/core.c      |   13 +++++++++++--
 drivers/mtd/mtdraw.c    |    2 +-
 drivers/mtd/partition.c |    2 +-
 drivers/mtd/ubi/io.c    |    2 +-
 include/linux/mtd/mtd.h |    2 ++
 5 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 7c323a1..0139851 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -30,6 +30,15 @@
 
 static LIST_HEAD(mtd_register_hooks);
 
+int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs)
+{
+	if (!mtd->block_isbad)
+		return 0;
+	if (ofs < 0 || ofs > mtd->size)
+		return -EINVAL;
+	return mtd->block_isbad(mtd, ofs);
+}
+
 static 	ssize_t mtd_read(struct cdev *cdev, void* buf, size_t count,
 			  loff_t _offset, ulong flags)
 {
@@ -130,7 +139,7 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 	switch (request) {
 	case MEMGETBADBLOCK:
 		dev_dbg(cdev->dev, "MEMGETBADBLOCK: 0x%08llx\n", *offset);
-		ret = mtd->block_isbad(mtd, *offset);
+		ret = mtd_block_isbad(mtd, *offset);
 		break;
 #ifdef CONFIG_MTD_WRITE
 	case MEMSETBADBLOCK:
@@ -189,7 +198,7 @@ static int mtd_erase(struct cdev *cdev, size_t count, loff_t offset)
 	while (count > 0) {
 		dev_dbg(cdev->dev, "erase %d %d\n", erase.addr, erase.len);
 
-		ret = mtd->block_isbad(mtd, erase.addr);
+		ret = mtd_block_isbad(mtd, erase.addr);
 		if (ret > 0) {
 			printf("Skipping bad block at 0x%08x\n", erase.addr);
 		} else {
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 079575c..ec77692 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -241,7 +241,7 @@ static int mtdraw_erase(struct cdev *cdev, size_t count, loff_t _offset)
 	while (count > 0) {
 		debug("erase %d %d\n", erase.addr, erase.len);
 
-		ret = mtd->block_isbad(mtd, erase.addr);
+		ret = mtd_block_isbad(mtd, erase.addr);
 		if (ret > 0) {
 			printf("Skipping bad block at 0x%08x\n", erase.addr);
 		} else {
diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index df2eb40..85f486d 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -71,7 +71,7 @@ static int mtd_part_block_isbad(struct mtd_info *mtd, loff_t ofs)
 	if (ofs >= mtd->size)
 		return -EINVAL;
 	ofs += part->offset;
-	return part->master->block_isbad(part->master, ofs);
+	return mtd_block_isbad(part->master, ofs);
 }
 
 static int mtd_part_block_markbad(struct mtd_info *mtd, loff_t ofs)
diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index da38837..e3598b9 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -513,7 +513,7 @@ int ubi_io_is_bad(const struct ubi_device *ubi, int pnum)
 	if (ubi->bad_allowed) {
 		int ret;
 
-		ret = mtd->block_isbad(mtd, (loff_t)pnum * ubi->peb_size);
+		ret = mtd_block_isbad(mtd, (loff_t)pnum * ubi->peb_size);
 		if (ret < 0)
 			ubi_err("error %d while checking if PEB %d is bad",
 				ret, pnum);
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 71d3c6f..5db884c 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -251,6 +251,8 @@ static inline void mtd_erase_callback(struct erase_info *instr)
 }
 #endif
 
+int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs);
+
 /*
  * Debugging macro and defines
  */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
