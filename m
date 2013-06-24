Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ur1F4-0000Zm-V8
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 07:31:15 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 40D57BF0F5
 for <barebox@lists.infradead.org>; Mon, 24 Jun 2013 09:25:45 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Mon, 24 Jun 2013 09:30:45 +0200
Message-Id: <1372059045-18113-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] ubiformat: check file size
To: barebox@lists.infradead.org

If size of a flash image file is 0 ubiformat silently formats the volume.
Check size and abort if size == 0. This may be the case if an empty or tftp
mounted file is used.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 commands/ubiformat.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 121816f..5b4e572 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -325,6 +325,11 @@ static int flash_image(const struct mtd_dev_info *mtd,
 		goto out_close;
 	}
 
+	if (st_size == 0) {
+		sys_errmsg("file \"%s\" has size 0 bytes", args.image);
+		goto out_close;
+	}
+
 	verbose(args.verbose, "will write %d eraseblocks", img_ebs);
 	divisor = img_ebs;
 	for (eb = 0; eb < mtd->eb_cnt; eb++) {
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
