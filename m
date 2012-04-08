Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SGofU-0007Pj-1w
 for barebox@lists.infradead.org; Sun, 08 Apr 2012 09:44:21 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id DAAC3FF861E
 for <barebox@lists.infradead.org>; Sun,  8 Apr 2012 11:45:11 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  8 Apr 2012 11:27:20 +0200
Message-Id: <1333877242-582-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] defaultenv/boot: add support for oftree boot option
 support
To: barebox@lists.infradead.org

you can now specify in the same way as it's done for the kernel where is
stored the oftree.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/_boot_help |    3 ++-
 defaultenv/bin/boot       |   17 ++++++++++++++++-
 defaultenv/config         |    2 ++
 3 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/defaultenv/bin/_boot_help b/defaultenv/bin/_boot_help
index 7c96444..a07e4e0 100644
--- a/defaultenv/bin/_boot_help
+++ b/defaultenv/bin/_boot_help
@@ -1,9 +1,10 @@
 #!/bin/sh
 
-echo "boot: boot [-m <mode>] [-k <kernel_option>] [-r <rootfs_option>] [-i <ip_mode>]"
+echo "boot: boot [-m <mode>] [-k <kernel_option>] [-r <rootfs_option>] [-i <ip_mode>] [-o <oftree_option]"
 echo ""
 echo "options"
 echo " - kernel        nand, nor, nfs, tftp, disk"
+echo " - oftree        nand, nor, nfs, tftp, disk or empty"
 echo " - rootfs        nand, nor, net, disk"
 echo " - ip            dhcp, dhcp-barebox none, empty"
 echo ""
diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index ba04373..5186aee 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -6,12 +6,14 @@ if [ x$kernel_loc = xnet ]; then
 	kernel_loc=tftp
 fi
 
-while getopt "hk:r:i:m:" Option
+while getopt "hk:r:i:m:o:" Option
 do
 if [ ${Option} = k ]; then
 	kernel_loc=${OPTARG}
 elif [ ${Option} = r ]; then
 	rootfs_loc=${OPTARG}
+elif [ ${Option} = o ]; then
+	oftree_loc=${OPTARG}
 elif [ ${Option} = i ]; then
 	ip=${OPTARG}
 elif [ ${Option} = m ]; then
@@ -114,6 +116,19 @@ else
 	exit 1
 fi
 
+if [ x$oftree_loc = xnfs -o x$oftree_loc = xtftp ]; then
+	odev=/oftree
+	$oftree_loc $oftreeimage $odev || exit 1
+elif [ x$oftree_loc = xnor ]; then
+	odev="/dev/nor0.oftree"
+elif [ x$oftree_loc = xnand ]; then
+	odev="/dev/nand0.oftree.bb"
+elif [ x$oftree_loc = xdisk ]; then
+	odev="/dev/$oftree_part"
+fi
+
+[ x$odev = x ] || bootm_opt="$bootm_opt -o $odev"
+
 echo "booting kernel from $kdev"
 
 bootm $bootm_opt $kdev
diff --git a/defaultenv/config b/defaultenv/config
index 63fc059..39a9c99 100644
--- a/defaultenv/config
+++ b/defaultenv/config
@@ -21,6 +21,8 @@ dhcp_vendor_id=barebox
 kernel_loc=tftp
 # can be either 'net', 'nand', 'nor', 'disk' or 'initrd'
 rootfs_loc=net
+# can be either 'tftp', 'nfs', 'nand', 'nor', 'disk' or none
+oftree_loc=tftp
 
 # for flash based rootfs: 'jffs2' or 'ubifs'
 # in case of disk any regular filesystem like 'ext2', 'ext3', 'reiserfs'
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
