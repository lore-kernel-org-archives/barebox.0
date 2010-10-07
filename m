Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P3tWV-0000u6-WD
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 16:40:52 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  7 Oct 2010 18:38:49 +0200
Message-Id: <1286469529-11579-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] MAKEALL: allow CROSS_COMPILE*=""
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 MAKEALL |    8 +++++---
 1 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 9353cd8..e987de2 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -97,10 +97,12 @@ do_build_target() {
 	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
 
 	cross_compile=`eval echo '$CROSS_COMPILE_'${target}`
-	if [ ! "${cross_compile}" ]
+	cross_compile_set=`eval echo '${CROSS_COMPILE_'${target}'+set}'`
+	if [ "${cross_compile_set}" = "" ]
 	then
 		cross_compile=`eval echo '$CROSS_COMPILE_'${arch}`
-		if [ ! "${cross_compile}" ]
+		cross_compile_set=`eval echo '${CROSS_COMPILE_'${arch}'+set}'`
+		if [ "${cross_compile_set}" = "" ]
 		then
 			cross_compile=${CROSS_COMPILE}
 		fi
@@ -237,7 +239,7 @@ fi
 
 [ -d "${LOGDIR}" ] || mkdir ${LOGDIR} || exit 1
 
-if [ ! "${CONFIG}" ] && [ ! "${CROSS_COMPILE}" ]
+if [ ! "${CONFIG}" ] && [ ! "${CROSS_COMPILE+set}" ]
 then
 	echo "You need to specify a CONFIG or a CROSS_COMPILE"
 	usage
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
