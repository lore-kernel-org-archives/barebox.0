Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEGoQ-00062j-2M
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 09:43:20 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id EBCF2FF9E3E
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2012 11:49:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 19 Sep 2012 11:40:42 +0200
Message-Id: <1348047642-13041-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1 for master] MAKEALL: accept defconfig with '-' in it
To: barebox@lists.infradead.org

replace '-' with '_' for the configuration option

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
Hi,

	this is a fix

Best Regards,
J.
 MAKEALL |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 056a4d0..c08e484 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -96,8 +96,10 @@ do_build_target() {
 	mkdir -p "${LOGDIR}/${target}"
 	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
 
-	cross_compile=`eval echo '$CROSS_COMPILE_'${target}`
-	cross_compile_set=`eval echo '${CROSS_COMPILE_'${target}'+set}'`
+	tmp=`echo "${target}" | tr - _`
+
+	cross_compile=`eval echo '$CROSS_COMPILE_'${tmp}`
+	cross_compile_set=`eval echo '${CROSS_COMPILE_'${tmp}'+set}'`
 	if [ "${cross_compile_set}" = "" ]
 	then
 		cross_compile=`eval echo '$CROSS_COMPILE_'${arch}`
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
