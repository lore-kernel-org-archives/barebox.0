Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RmMtZ-000884-4n
 for barebox@lists.infradead.org; Sun, 15 Jan 2012 10:01:02 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id CFFE3FFADC3
 for <barebox@lists.infradead.org>; Sun, 15 Jan 2012 11:02:27 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Jan 2012 11:00:19 +0100
Message-Id: <1326621621-11484-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] defaultenv/boot: add boot the kernel from the mem
To: barebox@lists.infradead.org

as example uploaded via dfu

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/_boot_help |    2 +-
 defaultenv/bin/boot       |    4 +++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/defaultenv/bin/_boot_help b/defaultenv/bin/_boot_help
index e7f7f16..660dbf4 100644
--- a/defaultenv/bin/_boot_help
+++ b/defaultenv/bin/_boot_help
@@ -3,7 +3,7 @@
 echo "boot: boot [-m <mode>] [-k <kernel_option>] [-r <rootfs_option>] [-i <ip_mode>]"
 echo ""
 echo "options"
-echo " - kernel        nand, nor, nfs, tftp, disk"
+echo " - kernel        nand, nor, nfs, tftp, disk, mem"
 echo " - rootfs        nand, nor, net, disk"
 echo " - ip            dhcp, none, empty"
 echo ""
diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index d37eca8..538f506 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -94,6 +94,8 @@ if [ x$kernel_loc = xnfs -o x$kernel_loc = xtftp ]; then
 	fi
 	kdev=/image
 	$kernel_loc $kernelimage $kdev || exit 1
+elif [ x$kernel_loc = xmem ]; then
+	kdev="/dev/ram0.kernel"
 elif [ x$kernel_loc = xnor ]; then
 	kdev="/dev/nor0.kernel"
 elif [ x$kernel_loc = xnand ]; then
@@ -101,7 +103,7 @@ elif [ x$kernel_loc = xnand ]; then
 elif [ x$kernel_loc = xdisk ]; then
 	kdev="/dev/$kernel_part"
 else
-	echo "error: set kernel_loc to one of 'tftp', 'nfs', 'nand', 'nor' or 'disk'"
+	echo "error: set kernel_loc to one of 'tftp', 'nfs', 'nand', 'nor' , 'mem' or 'disk'"
 	exit 1
 fi
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
