Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arroyo.ext.ti.com ([192.94.94.40])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb4dy-0004jI-B7
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 05:13:44 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id p075Db6U012378
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 6 Jan 2011 23:13:40 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Fri,  7 Jan 2011 10:43:00 +0530
Message-Id: <1294377180-19672-2-git-send-email-premi@ti.com>
In-Reply-To: <1294377180-19672-1-git-send-email-premi@ti.com>
References: <1294377180-19672-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 1/1] nand: Fix warnings due to incompatible format strings
To: barebox@lists.infradead.org

This patch fixes warnings due to incompatible format strings
specified in the printf().

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 drivers/mtd/nand/nand.c      |   14 +++++++-------
 drivers/mtd/nand/nand_base.c |    2 +-
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/nand/nand.c b/drivers/mtd/nand/nand.c
index 6a150fe..08b5cc1 100644
--- a/drivers/mtd/nand/nand.c
+++ b/drivers/mtd/nand/nand.c
@@ -37,7 +37,7 @@ static 	ssize_t nand_read(struct cdev *cdev, void* buf, size_t count, ulong offs
 	size_t retlen;
 	int ret;
 
-	debug("nand_read: 0x%08x 0x%08x\n", offset, count);
+	debug("nand_read: 0x%08lx 0x%08x\n", offset, count);
 
 	ret = info->read(info, offset, count, &retlen, buf);
 
@@ -70,17 +70,17 @@ static ssize_t nand_write(struct cdev* cdev, const void *buf, size_t _count, ulo
 	size_t count = _count;
 
 	if (NOTALIGNED(offset)) {
-		printf("offset 0x%08x not page aligned\n", offset);
+		printf("offset 0x%0lx not page aligned\n", offset);
 		return -EINVAL;
 	}
 
-	debug("write: 0x%08x 0x%08x\n", offset, count);
+	debug("write: 0x%08lx 0x%08x\n", offset, count);
 
 	while (count) {
 		now = count > info->writesize ? info->writesize : count;
 
 		if (NOTALIGNED(now)) {
-			debug("not aligned: %d %d\n", info->writesize, (offset % info->writesize));
+			debug("not aligned: %d %ld\n", info->writesize, (offset % info->writesize));
 			wrbuf = xmalloc(info->writesize);
 			memset(wrbuf, 0xff, info->writesize);
 			memcpy(wrbuf + (offset % info->writesize), buf, now);
@@ -91,7 +91,7 @@ static ssize_t nand_write(struct cdev* cdev, const void *buf, size_t _count, ulo
 		} else {
 			if (!all_ff(buf, info->writesize))
 				ret = info->write(info, offset, now, &retlen, buf);
-			debug("offset: 0x%08x now: 0x%08x retlen: 0x%08x\n", offset, now, retlen);
+			debug("offset: 0x%08lx now: 0x%08x retlen: 0x%08x\n", offset, now, retlen);
 		}
 		if (ret)
 			goto out;
@@ -112,10 +112,10 @@ static int nand_ioctl(struct cdev *cdev, int request, void *buf)
 
 	switch (request) {
 	case MEMGETBADBLOCK:
-		debug("MEMGETBADBLOCK: 0x%08x\n", (off_t)buf);
+		debug("MEMGETBADBLOCK: 0x%08lx\n", (off_t)buf);
 		return info->block_isbad(info, (off_t)buf);
 	case MEMSETBADBLOCK:
-		debug("MEMSETBADBLOCK: 0x%08x\n", (off_t)buf);
+		debug("MEMSETBADBLOCK: 0x%08lx\n", (off_t)buf);
 		return info->block_markbad(info, (off_t)buf);
 	case MEMGETINFO:
 		user->type	= info->type;
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 56fafb0..22d2127 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -167,7 +167,7 @@ static void nand_select_chip(struct mtd_info *mtd, int chipnr)
 	case 0:
 		break;
 	default:
-		printf("%s: illegal chip number %d\n", chipnr);
+		printf("%s: illegal chip number %d\n", __func__, chipnr);
 	}
 }
 
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
