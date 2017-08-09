Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dfTL7-0007nN-0o
 for barebox@lists.infradead.org; Wed, 09 Aug 2017 15:56:11 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed,  9 Aug 2017 17:55:27 +0200
Message-Id: <20170809155527.2263-1-linux@rempel-privat.de>
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
Subject: [PATCH v1] filetype: fix file type detection for Barebox MIPS
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Since there is no "0/" after "barebox" in the file header,
comparison won't stop on the right place.

Fix regression introduced by patch:
|commit 03939c0dfbf27d99e81d85e1bc0340fbee083d74
|Author: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
|Date:   Tue Jan 22 15:40:36 2013 +0100
|
| filetype: add is_barebox_mips_head support

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 include/filetype.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/filetype.h b/include/filetype.h
index 709c1869f..c84905d78 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -77,7 +77,7 @@ static inline int is_barebox_arm_head(const char *head)
 #ifdef CONFIG_MIPS
 static inline int is_barebox_mips_head(const char *head)
 {
-	return !strcmp(head + MIPS_HEAD_MAGICWORD_OFFSET, "barebox");
+	return !strncmp(head + MIPS_HEAD_MAGICWORD_OFFSET, "barebox", 7);
 }
 #else
 static inline int is_barebox_mips_head(const char *head)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
