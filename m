Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8C2h-0000UO-Q9
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 13:48:08 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Apr 2011 15:40:05 +0200
Message-Id: <1302270008-21346-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110408133713.GC13978@game.jcrosoft.org>
References: <20110408133713.GC13978@game.jcrosoft.org>
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
Subject: [PATCH 1/4] defaultenv/boot: switch to getopt
To: barebox@lists.infradead.org

this will allow to add more option to overwrite the boot type
as today can only choose mode {nfs, tftp, nand, nor} and can not specify
where is each component the kernel, the rootfs and the rootfs type

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/boot      |   20 ++++++++++++++++----
 defaultenv/bin/boot_help |   29 +++++++++++++++++++++++++++++
 2 files changed, 45 insertions(+), 4 deletions(-)
 create mode 100644 defaultenv/bin/boot_help

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index de4fa24..4289b29 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -2,16 +2,28 @@
 
 . /env/config
 
-if [ x$1 = xnand ]; then
+opt_mode=""
+
+while getopt "hm:" Option
+do
+if [ ${Option} = m ]; then
+	opt_mode=${OPTARG}
+else
+	. /env/bin/boot_help
+	exit 0
+fi
+done
+
+if [ x${opt_mode} = xnand ]; then
 	rootfs_loc=nand
 	kernel_loc=nand
-elif [ x$1 = xnor ]; then
+elif [ x${opt_mode} = xnor ]; then
 	rootfs_loc=nor
 	kernel_loc=nor
-elif [ x$1 = xnfs ]; then
+elif [ x${opt_mode} = xnfs ]; then
 	rootfs_loc=net
 	kernel_loc=nfs
-elif [ x$1 = xtftp ]; then
+elif [ x${opt_mode} = xtftp ]; then
 	rootfs_loc=net
 	kernel_loc=tftp
 fi
diff --git a/defaultenv/bin/boot_help b/defaultenv/bin/boot_help
new file mode 100644
index 0000000..425c718
--- /dev/null
+++ b/defaultenv/bin/boot_help
@@ -0,0 +1,29 @@
+#!/bin/sh
+
+echo "usage: boot [-m <mode>]"
+echo "boot."
+echo ""
+echo "options"
+echo " -m     boot mode will select kernel_loc and rootfs_loc"
+echo "         mode      kernel_loc rootfs_loc"
+echo "         nfs       nfs        nfs"
+echo "         tftp      tftp       nfs"
+echo "         nor       nor        nor"
+echo "         nand      nand       nand"
+echo ""
+echo "default is"
+echo -n "kernel_loc        "
+echo ${kernel_loc}
+echo -n "kernelimage_type  "
+echo ${kernelimage_type}
+echo -n "rootfs_loc        "
+echo ${rootfs_loc}
+echo -n "rootfs_type       "
+echo ${rootfs_type}
+echo -n "ip                "
+if [ x${ip} = x ]
+then
+	echo "static"
+else
+	echo ${ip}
+fi
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
