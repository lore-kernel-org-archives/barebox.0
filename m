Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-f170.google.com ([209.85.192.170])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiwnV-0006T4-6G
 for barebox@lists.infradead.org; Sun, 02 Jun 2013 01:09:26 +0000
Received: by mail-pd0-f170.google.com with SMTP id x10so4031058pdj.1
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2013 18:09:03 -0700 (PDT)
From: monaka@monami-ya.jp
Date: Sun,  2 Jun 2013 10:08:53 +0900
Message-Id: <1370135333-79633-1-git-send-email-monaka@monami-ya.com>
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

From: Masaki Muranaka <monaka@monami-ya.com>

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
