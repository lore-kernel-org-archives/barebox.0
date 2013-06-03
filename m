Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-f172.google.com ([209.85.192.172])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjPTu-0007vi-VZ
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 07:47:07 +0000
Received: by mail-pd0-f172.google.com with SMTP id t10so1746118pdi.31
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2013 00:46:45 -0700 (PDT)
From: Masaki Muranaka <monaka@monami-ya.jp>
Date: Mon,  3 Jun 2013 16:46:33 +0900
Message-Id: <1370245593-68520-1-git-send-email-monaka@monami-ya.jp>
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
Subject: [PATCH] Fix typo.
To: barebox@lists.infradead.org

This fix is harmless and obvious.

Signed-off-by: Masaki Muranaka <monaka@monami-ya.jp>
---
 include/stdio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/stdio.h b/include/stdio.h
index 5c091a8..0eacdfc 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -70,7 +70,7 @@ static inline int ctrlc (void)
 {
 	return 0;
 }
-#endif /* ARCH_HAS_CTRC */
+#endif /* ARCH_HAS_CTRLC */
 
 #endif
 
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
