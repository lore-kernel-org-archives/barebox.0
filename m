Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOOfs-0001u8-UR
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 11:54:13 +0000
Received: by mail-wm0-x243.google.com with SMTP id l65so2875733wmf.3
 for <barebox@lists.infradead.org>; Wed, 27 Jan 2016 03:53:52 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 27 Jan 2016 12:53:03 +0100
Message-Id: <1453895589-20941-2-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1453895589-20941-1-git-send-email-yegorslists@googlemail.com>
References: <1453895589-20941-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 2/8] fs: ubifs: remove redundant macro defines
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Remove macros, that were already defined in linux/stat.h.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/ubifs/ubifs.h | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index d16f780..b603c5d 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -36,6 +36,7 @@
 #include <lzo.h>
 #include <linux/fs.h>
 #include <linux/pagemap.h>
+#include <linux/stat.h>
 #include <linux/ctype.h>
 #include <linux/math64.h>
 #include <linux/rbtree.h>
@@ -227,20 +228,6 @@ struct file {
 #define S_SWAPFILE	256	/* Do not truncate: swapon got its bmaps */
 #define S_PRIVATE	512	/* Inode is fs-internal */
 
-/* include/linux/stat.h */
-
-#define S_IFMT  00170000
-#define S_IFSOCK 0140000
-#define S_IFLNK	 0120000
-#define S_IFREG  0100000
-#define S_IFBLK  0060000
-#define S_IFDIR  0040000
-#define S_IFCHR  0020000
-#define S_IFIFO  0010000
-#define S_ISUID  0004000
-#define S_ISGID  0002000
-#define S_ISVTX  0001000
-
 /* include/linux/fs.h */
 
 /*
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
