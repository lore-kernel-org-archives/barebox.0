Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gAe2U-00065E-OD
 for barebox@lists.infradead.org; Thu, 11 Oct 2018 16:43:01 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23994601AbeJKQmSQu5fV (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Thu, 11 Oct 2018 18:42:18 +0200
Date: Thu, 11 Oct 2018 18:42:17 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181011164216.GB21891@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [RFC] mtd: core: set cdev offset
To: barebox@lists.infradead.org

Recently added check for overlapping environment always succeeds [*]
for mtd partitions not starting at the beginning of flash as
cdev.offset is not set. Here's a proposed fix, however someone
familiar with codebase should verify/correct this oneliner.

Thank you.

[*] Environment partition (0x00000000-0x000020ff) overlaps with partition dataflash0.at91bootstrap (0x00000000-0x000041ff), not using it
    where "Environment partition" actually starts at 0x4200.
---
 drivers/mtd/core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 58b20cbc2..b40a3303c 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -640,6 +640,7 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 
 	mtd->cdev.ops = &mtd_ops;
 	mtd->cdev.size = mtd->size;
+	mtd->cdev.offset = mtd->master_offset;
 	if (device_id == DEVICE_ID_SINGLE)
 		mtd->cdev.name = xstrdup(devname);
 	else
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
