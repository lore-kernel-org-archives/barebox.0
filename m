Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T3Sqd-0006Qb-Gx
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 14:21:06 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 20 Aug 2012 16:20:25 +0200
Message-Id: <1345472428-17417-11-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 10/13] defaultenv: support NAND and NOR kernel partitions at
 the same time
To: barebox@lists.infradead.org

Also make the NOR device names configurable.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 defaultenv/bin/boot |   24 ++++++++++++++++++++----
 defaultenv/bin/init |    4 ++--
 defaultenv/config   |    8 +++++---
 3 files changed, 27 insertions(+), 9 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 61b893a..cc72af5 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -79,7 +79,11 @@ else
 	fi
 
 	if [ x$rootfs_type = xubifs ]; then
-		if [ -z $ubiroot ]; then
+		if [ x$rootfs_loc = xnand -a -n ${ubiroot_nand} ]; then
+			ubiroot=${ubiroot_nand}
+		elif [ x$rootfs_loc = xnor -a -n ${ubiroot_nor} ]; then
+			ubiroot=${ubiroot_nor}
+		elif [ -z $ubiroot ]; then
 			ubiroot="root"
 		fi
 		bootargs="$bootargs root=ubi0:$ubiroot ubi.mtd=$rootfs_mtdblock"
@@ -91,7 +95,13 @@ else
 fi
 
 if [ -n $nor_parts ]; then
-	mtdparts="${mtdparts}physmap-flash.0:${nor_parts}"
+	if [ -z $nor_name ]; then
+		nor_name="nor0"
+	fi
+	if [ -z $nor_device ]; then
+		nor_device="physmap-flash.0"
+	fi
+	mtdparts="${mtdparts}${nor_device}:${nor_parts}"
 fi
 
 if [ -n $nand_parts ]; then
@@ -109,9 +119,15 @@ if [ x$kernel_loc = xnfs -o x$kernel_loc = xtftp ]; then
 	kdev=/image
 	$kernel_loc $kernelimage $kdev || exit 1
 elif [ x$kernel_loc = xnor ]; then
-	kdev="/dev/nor0.kernel"
+	if [ -z $kernel_mtd_nor ]; then
+		kernel_mtd_nor="kernel"
+	fi
+	kdev="/dev/${nor_name}.${kernel_mtd_nor}"
 elif [ x$kernel_loc = xnand ]; then
-	kdev="/dev/nand0.kernel.bb"
+	if [ -z $kernel_mtd_nand ]; then
+		kernel_mtd_nand="kernel"
+	fi
+	kdev="/dev/nand0.${kernel_mtd_nand}.bb"
 elif [ x$kernel_loc = xdisk ]; then
 	kdev="/dev/$kernel_part"
 else
diff --git a/defaultenv/bin/init b/defaultenv/bin/init
index f535e37..56fb66c 100644
--- a/defaultenv/bin/init
+++ b/defaultenv/bin/init
@@ -4,8 +4,8 @@ PATH=/env/bin
 export PATH
 
 . /env/config
-if [ -e /dev/nor0 -a -n "$nor_parts" ]; then
-	addpart /dev/nor0 $nor_parts
+if [ -e /dev/$nor_name -a -n "$nor_parts" ]; then
+	addpart /dev/$nor_name $nor_parts
 fi
 
 if [ -e /dev/disk0 -a -n "$disk_parts" ]; then
diff --git a/defaultenv/config b/defaultenv/config
index 7b61d29..97e796b 100644
--- a/defaultenv/config
+++ b/defaultenv/config
@@ -58,12 +58,14 @@ autoboot_timeout=3
 
 bootargs="console=ttyFIXME,115200"
 
+#nor_name="FIXME" # device name in barebox, default is nor0
 nor_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
-rootfs_mtdblock_nor=3
+nor_device="FIXME" # device name in the kernel
+rootfs_mtdblock_nor=3 # this can also be a name when using ubi
 
 nand_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
-nand_device="FIXME"
-rootfs_mtdblock_nand=7
+nand_device="FIXME" # device name in the kernel
+rootfs_mtdblock_nand=7 # this can also be a name when using ubi
 
 # set a fancy prompt (if support is compiled in)
 PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
