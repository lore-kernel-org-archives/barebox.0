Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIaVl-0004KS-F0
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 10:15:14 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t13AEp5O007061
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 19:14:51 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili14) with ESMTP id t13AEqL05604
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 19:14:52 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue,  3 Feb 2015 19:14:46 +0900
Message-Id: <1422958489-8855-4-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 3/5] MAKEALL: use $(...) instead of `...` for readability
To: barebox@lists.infradead.org

The mixture of single quotes and back quotes in the same line makes
scripts unreadable.

Here, do_build_target() is especially unreadable.  Using $(...)
instead of `...` would make it a little better.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 MAKEALL | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 67e6a60..dd4acb2 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -14,7 +14,7 @@ here=$(pwd)
 
 time_start=$(date +%s)
 
-filename=`basename $0`
+filename=$(basename $0)
 
 is_print_stats=1
 
@@ -96,14 +96,14 @@ do_build_target() {
 	mkdir -p "${LOGDIR}/${target}"
 	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
 
-	tmp=`echo "${target}" | tr - _`
+	tmp=$(echo "${target}" | tr - _)
 
-	cross_compile=`eval echo '$CROSS_COMPILE_'${tmp}`
-	cross_compile_set=`eval echo '${CROSS_COMPILE_'${tmp}'+set}'`
+	cross_compile=$(eval echo '$CROSS_COMPILE_'${tmp})
+	cross_compile_set=$(eval echo '${CROSS_COMPILE_'${tmp}'+set}')
 	if [ "${cross_compile_set}" = "" ]
 	then
-		cross_compile=`eval echo '$CROSS_COMPILE_'${arch}`
-		cross_compile_set=`eval echo '${CROSS_COMPILE_'${arch}'+set}'`
+		cross_compile=$(eval echo '$CROSS_COMPILE_'${arch})
+		cross_compile_set=$(eval echo '${CROSS_COMPILE_'${arch}'+set}')
 		if [ "${cross_compile_set}" = "" ]
 		then
 			cross_compile=${CROSS_COMPILE}
@@ -238,7 +238,7 @@ fi
 
 if [ "${CONFIG}" ]
 then
-	basedir=`dirname ${CONFIG}`
+	basedir=$(dirname ${CONFIG})
 
 	if [ ! "${basedir}" ] || [ "${basedir}" = "." ]
 	then
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
