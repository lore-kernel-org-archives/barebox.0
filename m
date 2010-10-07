Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P3tVO-0000eR-UK
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 16:39:44 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  7 Oct 2010 18:37:36 +0200
Message-Id: <1286469458-11362-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1286469458-11362-1-git-send-email-plagnioj@jcrosoft.com>
References: <1286469458-11362-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] defaultenv: add xmodem support for update
To: barebox@lists.infradead.org

this is add as last parameter to do not change the default behavior

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/_update       |   26 +++++++++++++++++---------
 defaultenv/bin/init          |    5 +++--
 defaultenv/bin/update_kernel |    7 ++++++-
 defaultenv/bin/update_rootfs |    7 ++++++-
 4 files changed, 32 insertions(+), 13 deletions(-)

diff --git a/defaultenv/bin/_update b/defaultenv/bin/_update
index ddd6b84..c60ff88 100644
--- a/defaultenv/bin/_update
+++ b/defaultenv/bin/_update
@@ -14,14 +14,16 @@ if [ $# = 1 ]; then
 	image=$1
 fi
 
-if [ x$ip = xdhcp ]; then
-	dhcp
-fi
-
-ping $eth0.serverip
-if [ $? -ne 0 ] ; then
-	echo "Server did not reply! Update aborted."
-	exit 1
+if [ x$mode = xnet ]; then
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
@@ -34,6 +36,12 @@ erase $part
 echo
 echo "flashing $image to $part"
 echo
-tftp $image $part
+
+if [ x$mode = xnet ]; then
+	tftp $image $part
+else
+	loadb -f $image -c
+	cp $image $part
+fi
 
 protect $part
diff --git a/defaultenv/bin/init b/defaultenv/bin/init
index a55e8e6..db2b525 100644
--- a/defaultenv/bin/init
+++ b/defaultenv/bin/init
@@ -25,8 +25,9 @@ echo -n "Hit any key to stop autoboot: "
 timeout -a $autoboot_timeout
 if [ $? != 0 ]; then
 	echo
-	echo "type update_kernel nand|nor [<imagename>] to update kernel into flash"
-	echo "type update_rootfs nand|nor [<imagename>] to update rootfs into flash"
+	echo "default mode is net"
+	echo "type update_kernel nand|nor [<imagename>] [net|xmodem] to update kernel into flash"
+	echo "type update_rootfs nand|nor [<imagename>] [net|xmodem] to update rootfs into flash"
 	echo
 	exit
 fi
diff --git a/defaultenv/bin/update_kernel b/defaultenv/bin/update_kernel
index 1d35ed9..b29927f 100644
--- a/defaultenv/bin/update_kernel
+++ b/defaultenv/bin/update_kernel
@@ -2,14 +2,19 @@
 
 . /env/config
 image=$kernelimage
+mode=net
 
 if [ x$1 = xnand ]; then
 	part=/dev/nand0.kernel.bb
 elif [ x$1 = xnor ]; then
 	part=/dev/nor0.kernel
 else
-	echo "usage: $0 nor|nand [imagename]"
+	echo "usage: $0 nor|nand [imagename] [net|xmodem]"
 	exit 1
 fi
 
+if [ x$3 != x ]; then
+	mode=$3
+fi
+
 . /env/bin/_update $2
diff --git a/defaultenv/bin/update_rootfs b/defaultenv/bin/update_rootfs
index 6366315..bac74ca 100644
--- a/defaultenv/bin/update_rootfs
+++ b/defaultenv/bin/update_rootfs
@@ -3,14 +3,19 @@
 . /env/config
 
 image=$rootfsimage
+mode=net
 
 if [ x$1 = xnand ]; then
 	part=/dev/nand0.root.bb
 elif [ x$1 = xnor ]; then
 	part=/dev/nor0.root
 else
-	echo "usage: $0 nor|nand [imagename]"
+	echo "usage: $0 nor|nand [imagename] [net|xmodem]"
 	exit 1
 fi
 
+if [ x$3 != x ]; then
+	mode=$3
+fi
+
 . /env/bin/_update $2
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
