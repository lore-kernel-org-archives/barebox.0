Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5JUm-00086D-Ci
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 14:37:00 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 11 Oct 2010 16:34:43 +0200
Message-Id: <1286807684-17355-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101011135329.GA7412@game.jcrosoft.org>
References: <20101011135329.GA7412@game.jcrosoft.org>
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
Subject: [PATCH 5/6] defaultenv: add xmodem support for update
To: barebox@lists.infradead.org

the default mode is tftp to do not change the default behavior

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/_update      |   26 +++++++++++++++++---------
 defaultenv/bin/_update_help |   21 +++++++++++----------
 defaultenv/bin/update       |   11 ++++++++++-
 3 files changed, 38 insertions(+), 20 deletions(-)
 rewrite defaultenv/bin/_update_help (65%)

diff --git a/defaultenv/bin/_update b/defaultenv/bin/_update
index 6f2ebd3..87e6922 100644
--- a/defaultenv/bin/_update
+++ b/defaultenv/bin/_update
@@ -10,14 +10,16 @@ if [ ! -e "$part" ]; then
 	exit 1
 fi
 
-if [ x$ip = xdhcp ]; then
-	dhcp
-fi
-
-ping $eth0.serverip
-if [ $? -ne 0 ] ; then
-	echo "Server did not reply! Update aborted."
-	exit 1
+if [ x$mode = xtftp ]; then
+	if [ x$ip = xdhcp ]; then
+		dhcp
+	fi
+
+	ping $eth0.serverip
+	if [ $? -ne 0 ] ; then
+		echo "Server did not reply! Update aborted."
+		exit 1
+	fi
 fi
 
 unprotect $part
@@ -30,6 +32,12 @@ erase $part
 echo
 echo "flashing $image to $part"
 echo
-tftp $image $part
+
+if [ x$mode = xtftp ]; then
+	tftp $image $part
+else
+	loadb -f $image -c
+	cp $image $part
+fi
 
 protect $part
diff --git a/defaultenv/bin/_update_help b/defaultenv/bin/_update_help
dissimilarity index 65%
index a23f00f..1d9b28e 100644
--- a/defaultenv/bin/_update_help
+++ b/defaultenv/bin/_update_help
@@ -1,10 +1,11 @@
-#!/bin/sh
-
-echo "usage: $0 -t <kernel|rootfs> -d <nor|nand> [-f imagename] -c"
-echo "update tools."
-echo ""
-echo "options"
-echo " -c     to check the crc32 for the image and flashed one"
-echo ""
-echo "type update -t kernel -d <nor|nand> [-f imagename] to update kernel into flash"
-echo "type update -t rootfs -d <nor|nand> [-f imagename] to update rootfs into flash"
+#!/bin/sh
+
+echo "usage: $0 -t <kernel|rootfs> -d <nor|nand> [-m tftp|xmodem] [-f imagename] -c"
+echo "update tools."
+echo ""
+echo "options"
+echo " -c     to check the crc32 for the image and flashed one"
+echo ""
+echo "default mode is tftp"
+echo "type update -t kernel -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update kernel into flash"
+echo "type update -t rootfs -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update rootfs into flash"
diff --git a/defaultenv/bin/update b/defaultenv/bin/update
index 504bff6..032f340 100644
--- a/defaultenv/bin/update
+++ b/defaultenv/bin/update
@@ -5,8 +5,9 @@
 type=""
 device_type=""
 check=n
+mode=tftp
 
-while getopt "ht:d:f:c" Option
+while getopt "ht:d:f:m:c" Option
 do
 if [ ${Option} = t ]; then
 	type=${OPTARG}
@@ -16,6 +17,8 @@ elif [ ${Option} = f ]; then
 	imagename=${OPTARG}
 elif [ ${Option} = c ]; then
 	check=y
+elif [ ${Option} = m ]; then
+	mode=${OPTARG}
 else
 	. /env/bin/_update_help
 	exit 0
@@ -45,6 +48,12 @@ else
 	exit 1
 fi
 
+if [ x${mode} != xtftp ] && [ x${mode} != xxmodem ] ; then
+	echo "unsupported mode ${mode}."
+	. /env/bin/_update_help
+	exit 1
+fi
+
 . /env/bin/_update
 if [ x${check} = xy ]; then
 	crc32 -f $image -F $part
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
