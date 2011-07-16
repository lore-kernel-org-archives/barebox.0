Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QhwkW-0004QP-VA
	for barebox@lists.infradead.org; Sat, 16 Jul 2011 04:45:10 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 98251FF9D93
	for <barebox@lists.infradead.org>;
	Sat, 16 Jul 2011 06:45:27 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 16 Jul 2011 06:28:32 +0200
Message-Id: <1310790512-32022-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1310790512-32022-1-git-send-email-plagnioj@jcrosoft.com>
References: <1310790512-32022-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] at91sam9263ek: update defconfig
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

enable nand and ubi support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 arch/arm/boards/at91sam9261ek/env/config           |   25 +++++++++++++------
 .../{at91sam9261ek => at91sam9263ek}/env/config    |   25 +++++++++++++------
 2 files changed, 34 insertions(+), 16 deletions(-)
 copy arch/arm/boards/{at91sam9261ek => at91sam9263ek}/env/config (58%)

diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/env/config
index 733326d..d3ffe04 100644
--- a/arch/arm/boards/at91sam9261ek/env/config
+++ b/arch/arm/boards/at91sam9261ek/env/config
@@ -2,16 +2,19 @@
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
+#ip=dhcp
 
 # or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
+eth0.ipaddr=192.168.200.33
+eth0.netmask=255.255.255.0
+eth0.gateway=192.168.200.20
+#eth0.serverip=192.168.200.104
+eth0.serverip=192.168.200.6
+#eth0.serverip=192.168.200.11
+eth0.ethaddr=72:26:F4:51:94:37
 
 # can be either 'nfs', 'tftp' or 'nand'
-kernel_loc=tftp
+kernel_loc=nfs
 # can be either 'net', 'nand' or 'initrd'
 rootfs_loc=net
 
@@ -19,11 +22,17 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
+#nfsroot_dir=/mnt/share/atmel/rootfs
+nfsroot_dir=/opt/work/linux-2.6/makeall_builddir/at91sam9261ek_defconfig/arch/arm/
+#nfsroot_dir=/opt/work/busybox/arm9/_install
+#nfsroot_dir=/opt/work/oe-atmel/tmp/test
+nfsroot=$eth0.serverip:$nfsroot_dir
+
 # The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
 #kernelimage_type=zimage
 #kernelimage=zImage
 kernelimage_type=uimage
-kernelimage=uImage
+kernelimage=$nfsroot_dir/boot/uImage
 #kernelimage_type=raw
 #kernelimage=Image
 #kernelimage_type=raw_lzo
@@ -35,7 +44,7 @@ rootfs_mtdblock_nand=3
 
 autoboot_timeout=3
 
-bootargs="console=ttyS0,115200"
+bootargs="console=ttyS0,115200 $bootarg_extra"
 
 # set a fancy prompt (if support is compiled in)
 PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
similarity index 58%
copy from arch/arm/boards/at91sam9261ek/env/config
copy to arch/arm/boards/at91sam9263ek/env/config
index 733326d..adc7f32 100644
--- a/arch/arm/boards/at91sam9261ek/env/config
+++ b/arch/arm/boards/at91sam9263ek/env/config
@@ -2,16 +2,19 @@
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
+#ip=dhcp
 
 # or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
+eth0.ipaddr=192.168.200.33
+eth0.netmask=255.255.255.0
+eth0.gateway=192.168.200.20
+#eth0.serverip=192.168.200.104
+eth0.serverip=192.168.200.6
+#eth0.serverip=192.168.200.11
+eth0.ethaddr=72:26:F4:51:94:37
 
 # can be either 'nfs', 'tftp' or 'nand'
-kernel_loc=tftp
+kernel_loc=nfs
 # can be either 'net', 'nand' or 'initrd'
 rootfs_loc=net
 
@@ -19,11 +22,17 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
+#nfsroot_dir=/mnt/share/atmel/rootfs
+nfsroot_dir=/opt/work/linux-2.6/makeall_builddir/at91sam9263ek_defconfig/arch/arm/
+nfsroot_dir=/opt/work/busybox/arm9/_install
+#nfsroot_dir=/opt/work/oe-atmel/tmp/test
+nfsroot=$eth0.serverip:$nfsroot_dir
+
 # The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
 #kernelimage_type=zimage
 #kernelimage=zImage
 kernelimage_type=uimage
-kernelimage=uImage
+kernelimage=$nfsroot_dir/boot/uImage-at91sam9263
 #kernelimage_type=raw
 #kernelimage=Image
 #kernelimage_type=raw_lzo
@@ -35,7 +44,7 @@ rootfs_mtdblock_nand=3
 
 autoboot_timeout=3
 
-bootargs="console=ttyS0,115200"
+bootargs="console=ttyS0,115200 earlyprintk"
 
 # set a fancy prompt (if support is compiled in)
 PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
