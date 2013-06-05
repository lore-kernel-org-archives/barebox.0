Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f169.google.com ([209.85.217.169])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uk744-0006Zm-Og
 for barebox@lists.infradead.org; Wed, 05 Jun 2013 06:19:21 +0000
Received: by mail-lb0-f169.google.com with SMTP id d10so1524141lbj.28
 for <barebox@lists.infradead.org>; Tue, 04 Jun 2013 23:18:56 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  5 Jun 2013 10:17:45 +0400
Message-Id: <1370413065-27481-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MAKEALL: fix typos
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 MAKEALL |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 18ed862..bf9131a 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -34,7 +34,7 @@ usage() {
 	echo "The cross-compiler can be specify via"
 	echo "    CROSS_COMPILE               default"
 	echo "    CROSS_COMPILE_<arch>        arch default"
-	echo "    CROSS_COMPILE_<target>      deconfig specifc"
+	echo "    CROSS_COMPILE_<target>      defconfig specific"
 	echo ""
 	echo "it will be evaluated in the invert order"
 	echo ""
@@ -70,7 +70,7 @@ stats() {
 	time_diff=$((${time_stop} - ${time_start}))
 	printf "compiled in %4is\n" ${time_diff}
 	if [ ${nb_errors} -gt 0 ] ; then
-		echo "defcongids with warnings or errors: ${nb_errors} (${errors_list} )"
+		echo "defconfigs with warnings or errors: ${nb_errors} (${errors_list} )"
 	fi
 	echo "----------------------------------------------------------"
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
