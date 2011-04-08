Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q89Ye-0007ZI-FO
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 11:08:57 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri,  8 Apr 2011 13:08:52 +0200
Message-Id: <1302260932-32208-1-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
References: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/7 v2] defaultenv: simplify scripting
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---

Changes since v1:

- fix "if [ -z x${image} ]", tnx sha

 defaultenv/bin/boot   |    2 +-
 defaultenv/bin/update |    8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index de4fa24..c97a396 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -74,7 +74,7 @@ if [ ! -e /dev/ram0.kernel ]; then
 	addpart /dev/ram0 8M@8M(kernel)
 fi
 
-if [ x$kernel_loc = xnfs ] || [ x$kernel_loc = xtftp ]; then
+if [ x$kernel_loc = xnfs -o x$kernel_loc = xtftp ]; then
 	if [ x$ip = xdhcp ]; then
 		dhcp
 	fi
diff --git a/defaultenv/bin/update b/defaultenv/bin/update
index 7c37c36..d75d678 100644
--- a/defaultenv/bin/update
+++ b/defaultenv/bin/update
@@ -32,12 +32,12 @@ elif [ x${type} = xrootfs ]; then
 	type=root
 elif [ x${type} = xbarebox ]; then
 	image=$bareboximage
-	if [ x${image} = x ]; then
+	if [ -z ${image} ]; then
 		image=barebox.bin
 	fi
 elif [ x${type} = xbareboxenv ]; then
 	image=$bareboxenvimage
-	if [ x${image} = x ]; then
+	if [ -z ${image} ]; then
 		image=bareboxenv.bin
 	fi
 else
@@ -45,7 +45,7 @@ else
 	exit 1
 fi
 
-if [ x${imagename} != x ]; then
+if [ -n ${imagename} ]; then
 	image=${imagename}
 fi
 
@@ -58,7 +58,7 @@ else
 	exit 1
 fi
 
-if [ x${mode} != xtftp ] && [ x${mode} != xxmodem ] ; then
+if [ x${mode} != xtftp -a x${mode} != xxmodem ] ; then
 	echo "unsupported mode ${mode}."
 	. /env/bin/_update_help
 	exit 1
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
