Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQWcI-0004Px-Rt
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 11:28:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9E30FA00288
 for <barebox@lists.infradead.org>; Wed,  6 Jun 2018 13:28:27 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 6 Jun 2018 13:28:22 +0200
Message-Id: <1528284502-39491-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH] mtd: core: Fix printing partitions in hex
To: barebox@lists.infradead.org

When printing the partition size with "0x" prefix the value has to
be displayed in hex.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index d2012b5f70d6..ae7818a189d7 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -473,7 +473,7 @@ static char *print_size(uint64_t s)
 		return basprintf("%lldM", s >> 20);
 	if (!(s & ((1 << 10) - 1)))
 		return basprintf("%lldk", s >> 10);
-	return basprintf("0x%lld", s);
+	return basprintf("0x%llx", s);
 }
 
 static int print_part(char *buf, int bufsize, struct mtd_info *mtd, uint64_t last_ofs,
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
