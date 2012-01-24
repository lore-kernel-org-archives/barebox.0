Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpdyB-0001Qn-1x
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 10:51:20 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 24 Jan 2012 11:51:04 +0100
Message-Id: <1327402267-22385-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1327402267-22385-1-git-send-email-mkl@pengutronix.de>
References: <1327402267-22385-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 3/6] defaultenv: update: add nfs support
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 defaultenv/bin/_update      |   11 ++++-------
 defaultenv/bin/_update_help |   10 +++++-----
 defaultenv/bin/update       |    2 +-
 3 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/defaultenv/bin/_update b/defaultenv/bin/_update
index 9e88dea..e7cf149 100644
--- a/defaultenv/bin/_update
+++ b/defaultenv/bin/_update
@@ -10,7 +10,7 @@ if [ ! -e "$part" ]; then
 	exit 1
 fi
 
-if [ x$mode = xtftp ]; then
+if [ x$mode = xtftp -o x$mode = xnfs ]; then
 	if [ x$ip = xdhcp ]; then
 		dhcp
 	fi
@@ -20,6 +20,7 @@ if [ x$mode = xtftp ]; then
 		echo "Server did not reply! Update aborted."
 		exit 1
 	fi
+	load=$mode
 fi
 
 if [ x$mode = xxmodem ]; then
@@ -28,6 +29,7 @@ if [ x$mode = xxmodem ]; then
 		echo "loadb failed or cancelled! Update aborted."
 		exit 1
 	fi
+	load="cp -v"
 fi
 
 unprotect $part
@@ -40,11 +42,6 @@ erase $part || exit 1
 echo
 echo "flashing $image to $part"
 echo
-
-if [ x$mode = xtftp ]; then
-	tftp $image $part || exit 1
-else
-	cp -v $image $part || exit 1
-fi
+$load $image $part || exit 1
 
 protect $part
diff --git a/defaultenv/bin/_update_help b/defaultenv/bin/_update_help
index 92d6772..3b7ad23 100644
--- a/defaultenv/bin/_update_help
+++ b/defaultenv/bin/_update_help
@@ -7,8 +7,8 @@ echo "options"
 echo " -c     to check the crc32 for the image and flashed one"
 echo ""
 echo "default mode is tftp"
-echo "type update -t kernel -d <nor|nand|disk> [-m tftp|xmodem] [-f imagename] to update kernel into flash"
-echo "type update -t rootfs -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update rootfs into flash"
-echo "type update -t barebox -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update barebox into flash"
-echo "type update -t bareboxenv -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update bareboxenv into flash"
-echo "type update -t xload -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update xload into flash"
+echo "type update -t kernel -d <nor|nand|disk> [-m tftp|xmodem|nfs] [-f imagename] to update kernel into flash"
+echo "type update -t rootfs -d <nor|nand> [-m tftp|xmodem|nfs] [-f imagename] to update rootfs into flash"
+echo "type update -t barebox -d <nor|nand> [-m tftp|xmodem|nfs] [-f imagename] to update barebox into flash"
+echo "type update -t bareboxenv -d <nor|nand> [-m tftp|xmodem|nfs] [-f imagename] to update bareboxenv into flash"
+echo "type update -t xload -d <nor|nand> [-m tftp|xmodem|nfs] [-f imagename] to update xload into flash"
diff --git a/defaultenv/bin/update b/defaultenv/bin/update
index 39e7591..96442b1 100644
--- a/defaultenv/bin/update
+++ b/defaultenv/bin/update
@@ -63,7 +63,7 @@ else
 	exit 1
 fi
 
-if [ x${mode} != xtftp -a x${mode} != xxmodem ] ; then
+if [ x${mode} != xtftp -a x${mode} != xxmodem -a x${mode} != xnfs ]; then
 	echo "unsupported mode ${mode}."
 	. /env/bin/_update_help
 	exit 1
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
