Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIaVl-0004KP-Ex
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 10:15:14 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t13AEpvu007053
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 19:14:51 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili13) with ESMTP id t13AEqJ29277
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 19:14:52 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue,  3 Feb 2015 19:14:47 +0900
Message-Id: <1422958489-8855-5-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1422958489-8855-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1422958489-8855-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 4/5] MAKEALL: do not pass unneeded -C option to make
To: barebox@lists.infradead.org

We do not change the working directory in this script.
"-C ${here}" is not necessary.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 MAKEALL | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index dd4acb2..a4428fa 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -10,8 +10,6 @@ errors_list=""
 nb_defconfigs=0
 ret=0
 
-here=$(pwd)
-
 time_start=$(date +%s)
 
 filename=$(basename $0)
@@ -110,7 +108,7 @@ do_build_target() {
 		fi
 	fi
 
-	MAKE="make -C ${here} CROSS_COMPILE=${cross_compile} ARCH=${arch} O=${BUILDDIR}"
+	MAKE="make CROSS_COMPILE=${cross_compile} ARCH=${arch} O=${BUILDDIR}"
 	${MAKE} -j${JOBS} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
 
 	check_pipe_status
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
