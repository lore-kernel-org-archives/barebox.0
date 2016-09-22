Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmw8D-0007iV-Cr
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 05:01:10 +0000
Received: from ravnborg.org (unknown [188.228.89.252])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 409712001E
 for <barebox@lists.infradead.org>; Thu, 22 Sep 2016 07:00:42 +0200 (CEST)
Date: Thu, 22 Sep 2016 07:00:41 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20160922050041.GA12923@ravnborg.org>
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
Subject: [PATCH] environment: "wrong magic" give the impression of an error
To: Barebox List <barebox@lists.infradead.org>

From 144e3252f9604e44c48f90735489611f636e3e36 Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <srn@skov.dk>
Date: Thu, 22 Sep 2016 06:54:42 +0200
Subject: [PATCH 1/1] environment: "wrong magic" give the impression of an
 error

Introduce a more soft wording when the magic of
the superblock does not match.
Include a hint to the typical reason "(envfs never written?)"

This prevents a "what is wrong?" moment when looking at
the boot log.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 common/environment.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index db127d7..e0dfc12 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -382,7 +382,7 @@ EXPORT_SYMBOL(envfs_save);
 static int envfs_check_super(struct envfs_super *super, size_t *size)
 {
 	if (ENVFS_32(super->magic) != ENVFS_MAGIC) {
-		printf("envfs: wrong magic\n");
+		printf("envfs: no envfs (magic mismatch) - envfs newer written?\n");
 		return -EIO;
 	}
 
@@ -436,7 +436,7 @@ static int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
 		buf += sizeof(struct envfs_inode);
 
 		if (ENVFS_32(inode->magic) != ENVFS_INODE_MAGIC) {
-			printf("envfs: wrong magic\n");
+			printf("envfs: no envfs (magic mismatch) - envfs newer written?\n");
 			ret = -EIO;
 			goto out;
 		}
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
