Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLj9Z-00026M-LT
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 02:05:18 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t1C24r8h010450
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 11:04:53 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili17) with ESMTP id t1C24rA05571
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 11:04:53 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 12 Feb 2015 11:04:50 +0900
Message-Id: <1423706690-2966-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] pbl: remove start_barebox() stub
To: barebox@lists.infradead.org

PBL never calls start_barebox().  If it does, it is a bug.
Without this stub function, we can detect such a bug at link time.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 pbl/misc.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/pbl/misc.c b/pbl/misc.c
index 9065bf0..7e76120 100644
--- a/pbl/misc.c
+++ b/pbl/misc.c
@@ -13,9 +13,3 @@ void __noreturn panic(const char *fmt, ...)
 {
 	while(1);
 }
-
-void __noreturn start_barebox(void)
-{
-	/* Should never be here in the pbl */
-	hang();
-}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
