Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIaVl-0004KT-F1
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 10:15:14 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile14) with ESMTP id
 t13AEpMw028788
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 19:14:51 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili12) with ESMTP id t13AEqo14464
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 19:14:52 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue,  3 Feb 2015 19:14:48 +0900
Message-Id: <1422958489-8855-6-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 5/5] MAKEALL: consolidate -j${JOBS} argument
To: barebox@lists.infradead.org

This argument is common in configuration and compilation.
Move it to ${MAKE}.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 MAKEALL | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index a4428fa..909e170 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -108,8 +108,8 @@ do_build_target() {
 		fi
 	fi
 
-	MAKE="make CROSS_COMPILE=${cross_compile} ARCH=${arch} O=${BUILDDIR}"
-	${MAKE} -j${JOBS} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
+	MAKE="make -j${JOBS} CROSS_COMPILE=${cross_compile} ARCH=${arch} O=${BUILDDIR}"
+	${MAKE} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
 
 	check_pipe_status
 	result="$?"
@@ -119,7 +119,7 @@ do_build_target() {
 	if [ "$result" = "0" ]; then
 		printf "OK     \n" | tee -a "${log_report}"
 
-		${MAKE} -j${JOBS} -s 2>&1 >> "${log_report}" | tee -a "${log_err}"
+		${MAKE} -s 2>&1 >> "${log_report}" | tee -a "${log_err}"
 
 		check_pipe_status
 		result="$?"
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
