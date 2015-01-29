Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGfaV-0008My-25
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 03:16:11 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile14) with ESMTP id
 t0T3FnXC020104
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 12:15:49 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili16) with ESMTP id t0T3FnM23313
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 12:15:49 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 12:15:46 +0900
Message-Id: <1422501346-8201-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] MAKEALL: do not create build directory explicitly
To: barebox@lists.infradead.org

Since commit e7554c0cb245 (kbuild: create a build directory
automatically for out-of-tree build), MAKEALL does not have to
create a build directory.  It it done by the top Makefile.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 MAKEALL | 1 -
 1 file changed, 1 deletion(-)

diff --git a/MAKEALL b/MAKEALL
index 194860b..c9cc138 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -93,7 +93,6 @@ do_build_target() {
 	local log_err="${LOGDIR}/${target}/errors.log"
 
 	rm -rf "${BUILDDIR}"
-	mkdir -p "${BUILDDIR}"
 	mkdir -p "${LOGDIR}/${target}"
 	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
