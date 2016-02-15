Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.85 #2 (Red Hat Linux))
 id 1aVFyx-0007JK-PV
 for barebox@lists.infradead.org; Mon, 15 Feb 2016 10:02:16 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 45385A001D1
 for <barebox@lists.infradead.org>; Mon, 15 Feb 2016 11:01:44 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Mon, 15 Feb 2016 11:01:24 +0100
Message-Id: <1455530484-17750-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH] mtd: core: check offset in mtd_block_markbad
To: barebox@lists.infradead.org

Check if the given offset is valid for the mtd device. Print an error
message if not to inform the user in the command 'nand'.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 commands/nand.c    | 9 +++++++--
 drivers/mtd/core.c | 3 +++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/commands/nand.c b/commands/nand.c
index ad1c8c9..c330ad1 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -90,8 +90,13 @@ static int do_nand(int argc, char *argv[])
 		}
 
 		ret = ioctl(fd, MEMSETBADBLOCK, &badblock);
-		if (ret)
-			perror("ioctl");
+		if (ret) {
+			if (ret == -EINVAL)
+				printf("Maybe offset %lld is out of range.\n",
+					badblock);
+			else
+				perror("ioctl");
+		}
 
 		close(fd);
 		return ret;
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 62307db..d609688 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -310,6 +310,9 @@ int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs)
 {
 	int ret;
 
+	if (ofs < 0 || ofs >= mtd->size)
+		return -EINVAL;
+
 	if (mtd->block_markbad)
 		ret = mtd->block_markbad(mtd, ofs);
 	else
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
