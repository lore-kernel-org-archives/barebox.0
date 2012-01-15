Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RmMtX-000883-W3
 for barebox@lists.infradead.org; Sun, 15 Jan 2012 10:01:02 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 07704FFADB6
 for <barebox@lists.infradead.org>; Sun, 15 Jan 2012 11:02:26 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Jan 2012 11:00:18 +0100
Message-Id: <1326621621-11484-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120115095156.GH5002@game.jcrosoft.org>
References: <20120115095156.GH5002@game.jcrosoft.org>
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
Subject: [PATCH 2/5] defaultenv/boot: add getopt option support to select boot
 mode
To: barebox@lists.infradead.org

boot: boot [-m <mode>] [-k <kernel_option>] [-r <rootfs_option>] [-i <ip_mode>]

options
 - kernel        nand, nor, nfs, tftp, disk
 - rootfs        nand, nor, net, disk
 - ip            dhcp, none, empty

mode option
   mode       kernel      rootfs
   nand       nand        nand
   nor        nor         nor
   nfs        nfs         net
   tftp       fttp        net
   disk       disk        disk

default mode are used from the /env/config

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/_boot_help |   18 ++++++++++++++++++
 defaultenv/bin/boot       |   26 +++++++++++++++++++++-----
 2 files changed, 39 insertions(+), 5 deletions(-)
 create mode 100644 defaultenv/bin/_boot_help

diff --git a/defaultenv/bin/_boot_help b/defaultenv/bin/_boot_help
new file mode 100644
index 0000000..e7f7f16
--- /dev/null
+++ b/defaultenv/bin/_boot_help
@@ -0,0 +1,18 @@
+#!/bin/sh
+
+echo "boot: boot [-m <mode>] [-k <kernel_option>] [-r <rootfs_option>] [-i <ip_mode>]"
+echo ""
+echo "options"
+echo " - kernel        nand, nor, nfs, tftp, disk"
+echo " - rootfs        nand, nor, net, disk"
+echo " - ip            dhcp, none, empty"
+echo ""
+echo "mode option"
+echo "   mode       kernel      rootfs"
+echo "   nand       nand        nand"
+echo "   nor        nor         nor"
+echo "   nfs        nfs         net"
+echo "   tftp       fttp        net"
+echo "   disk       disk        disk"
+echo ""
+echo "default mode are used from the /env/config"
diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 1120757..d37eca8 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -6,19 +6,35 @@ if [ x$kernel_loc = xnet ]; then
 	kernel_loc=tftp
 fi
 
-if [ x$1 = xnand ]; then
+while getopt "hk:r:i:m:" Option
+do
+if [ ${Option} = k ]; then
+	kernel_loc=${OPTARG}
+elif [ ${Option} = r ]; then
+	rootfs_loc=${OPTARG}
+elif [ ${Option} = i ]; then
+	ip=${OPTARG}
+elif [ ${Option} = m ]; then
+	mode=${OPTARG}
+else
+	. /env/bin/_boot_help
+	exit 0
+fi
+done
+
+if [ x$mode = xnand ]; then
 	rootfs_loc=nand
 	kernel_loc=nand
-elif [ x$1 = xnor ]; then
+elif [ x$mode = xnor ]; then
 	rootfs_loc=nor
 	kernel_loc=nor
-elif [ x$1 = xnfs ]; then
+elif [ x$mode = xnfs ]; then
 	rootfs_loc=net
 	kernel_loc=nfs
-elif [ x$1 = xtftp ]; then
+elif [ x$mode = xtftp ]; then
 	rootfs_loc=net
 	kernel_loc=tftp
-elif [ x$1 = xdisk ]; then
+elif [ x$mode = xdisk ]; then
 	rootfs_loc=disk
 	kernel_loc=disk
 fi
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
