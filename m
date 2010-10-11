Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5JUm-00085d-7Q
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 14:36:57 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 11 Oct 2010 16:34:41 +0200
Message-Id: <1286807684-17355-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/6] defaultenv/update: merge update_rootfs and update_kernel
To: barebox@lists.infradead.org

use getopt to simplify it and prepare for xmodem support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig               |    1 +
 defaultenv/bin/_update       |    4 ---
 defaultenv/bin/_update_help  |    8 +++++++
 defaultenv/bin/init          |    3 +-
 defaultenv/bin/update        |   45 ++++++++++++++++++++++++++++++++++++++++++
 defaultenv/bin/update_kernel |   15 --------------
 defaultenv/bin/update_rootfs |   16 --------------
 7 files changed, 55 insertions(+), 37 deletions(-)
 create mode 100644 defaultenv/bin/_update_help
 create mode 100644 defaultenv/bin/update
 delete mode 100644 defaultenv/bin/update_kernel
 delete mode 100644 defaultenv/bin/update_rootfs

diff --git a/common/Kconfig b/common/Kconfig
index fb47397..e8d467e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -393,6 +393,7 @@ config DEFAULT_ENVIRONMENT_GENERIC
 	bool
 	depends on DEFAULT_ENVIRONMENT
 	select SHELL_HUSH
+	select HUSH_GETOPT
 	prompt "Default environment generic"
 	help
 	  With this option barebox will use the generic default
diff --git a/defaultenv/bin/_update b/defaultenv/bin/_update
index ddd6b84..6f2ebd3 100644
--- a/defaultenv/bin/_update
+++ b/defaultenv/bin/_update
@@ -10,10 +10,6 @@ if [ ! -e "$part" ]; then
 	exit 1
 fi
 
-if [ $# = 1 ]; then
-	image=$1
-fi
-
 if [ x$ip = xdhcp ]; then
 	dhcp
 fi
diff --git a/defaultenv/bin/_update_help b/defaultenv/bin/_update_help
new file mode 100644
index 0000000..e6ea64c
--- /dev/null
+++ b/defaultenv/bin/_update_help
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+echo "usage: $0 -t <kernel|rootfs> -d <nor|nand> [-f imagename]"
+echo "update tools."
+echo""
+echo "type update -t kernel -d <nor|nand> [-f imagename] to update kernel into flash"
+echo "type update -t rootfs -d <nor|nand> [-f imagename] to update rootfs into flash"
+
diff --git a/defaultenv/bin/init b/defaultenv/bin/init
index a55e8e6..a39e5bd 100644
--- a/defaultenv/bin/init
+++ b/defaultenv/bin/init
@@ -25,8 +25,7 @@ echo -n "Hit any key to stop autoboot: "
 timeout -a $autoboot_timeout
 if [ $? != 0 ]; then
 	echo
-	echo "type update_kernel nand|nor [<imagename>] to update kernel into flash"
-	echo "type update_rootfs nand|nor [<imagename>] to update rootfs into flash"
+	update -h
 	echo
 	exit
 fi
diff --git a/defaultenv/bin/update b/defaultenv/bin/update
new file mode 100644
index 0000000..bdac11f
--- /dev/null
+++ b/defaultenv/bin/update
@@ -0,0 +1,45 @@
+#!/bin/sh
+
+. /env/config
+
+type=""
+device_type=""
+
+while getopt "ht:d:f:" Option
+do
+if [ ${Option} = t ]; then
+	type=${OPTARG}
+elif [ ${Option} = d ]; then
+	device_type=${OPTARG}
+elif [ ${Option} = f ]; then
+	imagename=${OPTARG}
+else
+	. /env/bin/_update_help
+	exit 0
+fi
+done
+
+if [ x${type} = xkernel ]; then
+	image=$kernelimage
+elif [ x${type} = xrootfs ]; then
+	image=$rootfsimage
+	type=root
+else
+	. /env/bin/_update_help
+	exit 1
+fi
+
+if [ x${imagename} != x ]; then
+	image=${imagename}
+fi
+
+if [ x${device_type} = xnand ]; then
+	part=/dev/nand0.${type}.bb
+elif [ x${device_type} = xnor ]; then
+	part=/dev/nor0.${type}
+else
+	. /env/bin/_update_help
+	exit 1
+fi
+
+. /env/bin/_update
diff --git a/defaultenv/bin/update_kernel b/defaultenv/bin/update_kernel
deleted file mode 100644
index 1d35ed9..0000000
--- a/defaultenv/bin/update_kernel
+++ /dev/null
@@ -1,15 +0,0 @@
-#!/bin/sh
-
-. /env/config
-image=$kernelimage
-
-if [ x$1 = xnand ]; then
-	part=/dev/nand0.kernel.bb
-elif [ x$1 = xnor ]; then
-	part=/dev/nor0.kernel
-else
-	echo "usage: $0 nor|nand [imagename]"
-	exit 1
-fi
-
-. /env/bin/_update $2
diff --git a/defaultenv/bin/update_rootfs b/defaultenv/bin/update_rootfs
deleted file mode 100644
index 6366315..0000000
--- a/defaultenv/bin/update_rootfs
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$rootfsimage
-
-if [ x$1 = xnand ]; then
-	part=/dev/nand0.root.bb
-elif [ x$1 = xnor ]; then
-	part=/dev/nor0.root
-else
-	echo "usage: $0 nor|nand [imagename]"
-	exit 1
-fi
-
-. /env/bin/_update $2
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
