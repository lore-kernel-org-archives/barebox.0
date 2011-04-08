Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8C2h-0000UP-QX
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 13:48:08 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Apr 2011 15:40:07 +0200
Message-Id: <1302270008-21346-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] defaultenv/boot: add -r and -T option to select rootfs
	location and type
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/boot      |   17 ++++++++++++++++-
 defaultenv/bin/boot_help |    4 +++-
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 597b080..bae73d4 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -4,8 +4,9 @@
 
 opt_mode=""
 opt_kernel_loc=""
+opt_rootfs_loc=""
 
-while getopt "hm:k:t:" Option
+while getopt "hm:k:t:r:T:" Option
 do
 if [ ${Option} = m ]; then
 	opt_mode=${OPTARG}
@@ -13,6 +14,10 @@ elif [ ${Option} = k ]; then
 	opt_kernel_loc=${OPTARG}
 elif [ ${Option} = t ]; then
 	kernelimage_type=${OPTARG}
+elif [ ${Option} = r ]; then
+	opt_rootfs_loc=${OPTARG}
+elif [ ${Option} = T ]; then
+	rootfs_type=${OPTARG}
 else
 	. /env/bin/boot_help
 	exit 0
@@ -43,6 +48,16 @@ elif [ x${opt_kernel_loc} = xtftp ]; then
 	kernel_loc=tftp
 fi
 
+if [ x${opt_rootfs_loc} = xnand ]; then
+	rootfs_loc=nand
+elif [ x${opt_rootfs_loc} = xnor ]; then
+	rootfs_loc=nor
+elif [ x${opt_rootfs_loc} = xnfs ]; then
+	rootfs_loc=nfs
+elif [ x${opt_rootfs_loc} = xinitrd ]; then
+	rootfs_loc=initrd
+fi
+
 if [ x$ip = xdhcp ]; then
 	bootargs="$bootargs ip=dhcp"
 elif [ x$ip = xnone ]; then
diff --git a/defaultenv/bin/boot_help b/defaultenv/bin/boot_help
index 28436b8..41b5353 100644
--- a/defaultenv/bin/boot_help
+++ b/defaultenv/bin/boot_help
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-echo "usage: boot [-m <mode>] [-k <kernel location>] [-t <kernel image type]"
+echo "usage: boot [-m <mode>] [-k <kernel location>] [-t <kernel image type] [-r <rootfs location>] [-T <rootfs type>]"
 echo "boot."
 echo ""
 echo "options"
@@ -13,6 +13,8 @@ echo "         nand      nand       nand"
 echo ""
 echo " -k      kernel location tftp, nfs, nand, nor"
 echo " -t      kernel image type uimage, zimage, raw or raw_lzo"
+echo " -r      rootfs location nfs, nand, nor, initrd"
+echo " -T      rootfs type ubi, jffs2, ext2, etc..."
 echo ""
 echo ""
 echo "default is"
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
