Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGfUo-0005D8-Cn
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 03:10:20 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t0T39saW025366
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 12:09:54 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili14) with ESMTP id t0T39sL22480
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 12:09:54 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 12:09:51 +0900
Message-Id: <1422500991-6227-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] MAKEALL: fix do_build_all
To: barebox@lists.infradead.org

Currently, do_build_all() does nothing.

Since commit 195310fd7b48 (MAKEALL: add regex support), do_build()
takes two arguments.  To fix do_build_all(), it must pass "*" as the
second argument of do_build().

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 MAKEALL | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAKEALL b/MAKEALL
index bf9131a..cde59e4 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -172,7 +172,7 @@ do_build_all() {
 
 		if [ -d $i ]
 		then
-			do_build ${arch}
+			do_build ${arch} "*"
 			build_target=$((build_target + 1))
 		fi
 	done
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
