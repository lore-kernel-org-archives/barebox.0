Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zf7Wi-0001Us-Qf
 for barebox@lists.infradead.org; Thu, 24 Sep 2015 14:29:40 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 188B0A0032D
 for <barebox@lists.infradead.org>; Thu, 24 Sep 2015 16:29:20 +0200 (CEST)
From: Jan Remmet <j.remmet@phytec.de>
Date: Thu, 24 Sep 2015 16:28:18 +0200
Message-Id: <1443104898-11695-1-git-send-email-j.remmet@phytec.de>
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
Subject: [PATCH] ubiformat: remove dead code
To: barebox@lists.infradead.org

divisor isn't used.

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
 commands/ubiformat.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index f9d952c..8516e11 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -297,7 +297,7 @@ static int mark_bad(const struct mtd_dev_info *mtd, struct ubi_scan_info *si, in
 static int flash_image(const struct mtd_dev_info *mtd,
 		       const struct ubigen_info *ui, struct ubi_scan_info *si)
 {
-	int fd, img_ebs, eb, written_ebs = 0, divisor, ret = -1;
+	int fd, img_ebs, eb, written_ebs = 0, ret = -1;
 	off_t st_size;
 	char *buf = NULL;
 
@@ -332,7 +332,6 @@ static int flash_image(const struct mtd_dev_info *mtd,
 	}
 
 	verbose(args.verbose, "will write %d eraseblocks", img_ebs);
-	divisor = img_ebs;
 	for (eb = 0; eb < mtd->eb_cnt; eb++) {
 		int err, new_len;
 		long long ec;
@@ -342,10 +341,8 @@ static int flash_image(const struct mtd_dev_info *mtd,
 			       eb, (eb + 1) * 100 / mtd->eb_cnt);
 		}
 
-		if (si->ec[eb] == EB_BAD) {
-			divisor += 1;
+		if (si->ec[eb] == EB_BAD)
 			continue;
-		}
 
 		if (args.verbose) {
 			normsg_cont("eraseblock %d: erase", eb);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
