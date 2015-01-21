Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDnY0-00052k-20
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 05:09:45 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t0L59MmK001172
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 14:09:22 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili16) with ESMTP id t0L59MM30289
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 14:09:22 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 21 Jan 2015 14:09:18 +0900
Message-Id: <1421816959-19004-5-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1421816959-19004-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1421816959-19004-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 4/5] linux/kernel.h: rename USHORT_MAX, SHORT_MAX, SHORT_MIN
To: barebox@lists.infradead.org

Linux uses SHRT_* instead of SHORT_*.  The <limits.h> of C does
the same.  Let's follow this standard.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 fs/parseopt.c          | 2 +-
 include/linux/kernel.h | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/parseopt.c b/fs/parseopt.c
index fbe53cf..12dbe18 100644
--- a/fs/parseopt.c
+++ b/fs/parseopt.c
@@ -26,7 +26,7 @@ again:
 	}
 
 	v = simple_strtoul(start + optlen + 1, &endp, 0);
-	if (v > USHORT_MAX)
+	if (v > USHRT_MAX)
 		return;
 
 	if (*endp == ',' || *endp == '\0')
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 33cf62e..4d7e41e 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -4,9 +4,9 @@
 #include <linux/compiler.h>
 #include <linux/barebox-wrapper.h>
 
-#define USHORT_MAX	((u16)(~0U))
-#define SHORT_MAX	((s16)(USHORT_MAX>>1))
-#define SHORT_MIN	(-SHORT_MAX - 1)
+#define USHRT_MAX	((u16)(~0U))
+#define SHRT_MAX	((s16)(USHRT_MAX>>1))
+#define SHRT_MIN	((s16)(-SHRT_MAX - 1))
 #define INT_MAX		((int)(~0U>>1))
 #define INT_MIN		(-INT_MAX - 1)
 #define UINT_MAX	(~0U)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
