Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gAe2E-00065E-0E
 for barebox@lists.infradead.org; Thu, 11 Oct 2018 16:42:14 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23994601AbeJKQlrCu2cV (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Thu, 11 Oct 2018 18:41:47 +0200
Date: Thu, 11 Oct 2018 18:41:46 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181011164145.GA21891@lenoch>
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
Subject: [PATCH] environment: Fix overlapping partitions error message
To: barebox@lists.infradead.org

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
Fixes: b234a6da331f ("environment: Do not use environment when
                      overlapping with other partitions")
---
 common/startup.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 832d3262f..5793ea28a 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -110,9 +110,9 @@ static int check_overlap(const char *path)
 conflict:
 	pr_err("Environment partition (0x%08llx-0x%08llx) "
 		"overlaps with partition %s (0x%08llx-0x%08llx), not using it\n",
-		cenv->offset, cenv->offset + cenv->offset + cenv->size - 1,
+		cenv->offset, cenv->offset + cenv->size - 1,
 		cpart->name,
-		cpart->offset, cpart->offset + cpart->offset + cpart->size - 1);
+		cpart->offset, cpart->offset + cpart->size - 1);
 
 	return -EINVAL;
 }
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
