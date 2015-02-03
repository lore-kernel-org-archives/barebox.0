Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIaVl-0004KO-F2
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 10:15:15 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t13AEoRQ007044
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 19:14:50 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili14) with ESMTP id t13AEpL05565
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 19:14:51 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue,  3 Feb 2015 19:14:44 +0900
Message-Id: <1422958489-8855-2-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 1/5] MAKEALL: check the return code of "make" rather than
 "printf"
To: barebox@lists.infradead.org

Currently, MAKEALL always reports "Configure: OK" and "Compile: OK"
regardless of the result of the configuration and compile.

$ LANG=C CROSS_COMPILE=arm-linux-gnueabi- ./MAKEALL -a arm foo_defconfig
Building arm foo_defconfig
make[2]: *** [foo_defconfig] Error 1
make[1]: *** [foo_defconfig] Error 2
make: *** [foo_defconfig] Error 2
Configure: OK
***
*** Configuration file ".config" not found!
***
*** Please run some configurator (e.g. "make oldconfig" or
*** "make menuconfig" or "make xconfig").
***
make[3]: *** [silentoldconfig] Error 1
make[2]: *** [silentoldconfig] Error 2
make[1]: *** No rule to make target `include/config/auto.conf',
needed by `include/config/kernel.release'.  Stop.
make[1]: *** Waiting for unfinished jobs....
make: *** [_all] Error 2
Compile: OK
arm-linux-gnueabi-size: 'makeall_builddir/barebox': No such file
Compiled in    2s

The check_pipe_status() function must be called right after "make"
command, not "printf" command.  ("printf" probably succeeds all
the time.)

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 MAKEALL | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 9bd7b2e..9a56ceb 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -113,17 +113,22 @@ do_build_target() {
 	MAKE="make -C ${here} CROSS_COMPILE=${cross_compile} ARCH=${arch} O=${BUILDDIR}"
 	${MAKE} -j${JOBS} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
 
-	printf "Configure: " | tee -a "${log_report}"
 	check_pipe_status
-	if [ "$?" = "0" ]; then
+	result="$?"
+
+	printf "Configure: " | tee -a "${log_report}"
+
+	if [ "$result" = "0" ]; then
 		printf "OK     \n" | tee -a "${log_report}"
 
 		${MAKE} -j${JOBS} -s 2>&1 >> "${log_report}" | tee -a "${log_err}"
 
+		check_pipe_status
+		result="$?"
+
 		printf "Compile: " ${target} | tee -a "${log_report}"
 
-		check_pipe_status
-		if [ "$?" = "0" ]; then
+		if [ "$result" = "0" ]; then
 			printf "OK     \n" | tee -a "${log_report}"
 			${cross_compile}size ${BUILDDIR}/barebox | tee -a "${log_report}"
 		else
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
