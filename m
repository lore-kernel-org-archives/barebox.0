Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U1weI-0005Ah-TC
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 10:18:11 +0000
Received: from mail92.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id DB859104ECC4
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 11:28:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 11:16:55 +0100
Message-Id: <1359886615-18302-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] MAKEALL: add regex support
To: barebox@lists.infradead.org

this will allow to compile only a subset of defconfig

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 MAKEALL |   16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index c08e484..18ed862 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -56,6 +56,7 @@ usage() {
 	echo "JOBS      -j      jobs"
 	echo "BUILDDIR  -O      build dir"
 	echo "LOGDIR    -l      log dir"
+	echo "REGEX     -e      regex"
 	echo ""
 }
 
@@ -152,8 +153,9 @@ do_build_target() {
 
 do_build() {
 	local arch=$1
+	local regex=$2
 
-	for i in arch/${arch}/configs/*_defconfig
+	find arch/${arch}/configs -name "${regex}_defconfig" | while read i
 	do
 		local target=$(basename $i)
 
@@ -178,7 +180,7 @@ do_build_all() {
 	return $build_target
 }
 
-while getopts "hc:j:O:l:a:" Option
+while getopts "hc:j:O:l:a:e:" Option
 do
 case $Option in
 	a )
@@ -196,6 +198,9 @@ case $Option in
 	O )
 		BUILDDIR=${OPTARG}
 		;;
+	e )
+		REGEX=${OPTARG}
+		;;
 	h )
 		usage
 		exit 0
@@ -241,6 +246,11 @@ fi
 
 [ -d "${LOGDIR}" ] || mkdir ${LOGDIR} || exit 1
 
+if [ ! "${REGEX}" ]
+then
+	REGEX="*"
+fi
+
 if [ ! "${CONFIG}" ] && [ ! "${CROSS_COMPILE+set}" ]
 then
 	echo "You need to specify a CONFIG or a CROSS_COMPILE"
@@ -262,7 +272,7 @@ fi
 
 if [ $# -eq 0 ]
 then
-	do_build ${ARCH}
+	do_build ${ARCH} "${REGEX}"
 else
 	do_build_target ${ARCH} $1
 fi
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
