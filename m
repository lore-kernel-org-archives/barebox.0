Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q88n5-0007BN-AD
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 10:19:48 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri,  8 Apr 2011 12:19:08 +0200
Message-Id: <1302257948-18174-8-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
References: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 7/7] defaultenv: add config template
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

This patch add a config template to the defaultenv.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 defaultenv/config |   67 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 67 insertions(+), 0 deletions(-)
 create mode 100644 defaultenv/config

diff --git a/defaultenv/config b/defaultenv/config
new file mode 100644
index 0000000..c2fe6ce
--- /dev/null
+++ b/defaultenv/config
@@ -0,0 +1,67 @@
+#!/bin/sh
+
+machine=FIXME
+#user=
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.serverip=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.ethaddr=de:ad:be:ef:00:00
+
+# can be either 'tftp', 'nfs', 'nand', 'nor' or 'disk'
+kernel_loc=tftp
+# can be either 'net', 'nand', 'nor', 'disk' or 'initrd'
+rootfs_loc=net
+
+# for flash based rootfs: 'jffs2' or 'ubifs'
+# in case of disk any regular filesystem like 'ext2', 'ext3', 'reiserfs'
+rootfs_type=ubifs
+# where is the rootfs in case of 'rootfs_loc=disk' (linux name)
+rootfs_part_linux_dev=mmcblk0p4
+rootfsimage=rootfs-${machine}.$rootfs_type
+
+# where is the kernel image in case of 'kernel_loc=disk'
+kernel_part=disk0.2
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage_type=zimage
+kernelimage=zImage-$machine
+#kernelimage_type=uimage
+#kernelimage=uImage-$machine
+#kernelimage_type=raw
+#kernelimage=Image-$machine
+#kernelimage_type=raw_lzo
+#kernelimage=Image-$machine.lzo
+
+bareboximage=barebox-${machine}.bin
+bareboxenvimage=barebox-${machine}.bin
+
+if [ -n $user ]; then
+	bareboximage="$user"-"$bareboximage"
+	bareboxenvimage="$user"-"$bareboxenvimage"
+	kernelimage="$user"-"$kernelimage"
+	rootfsimage="$user"-"$rootfsimage"
+	nfsroot="/home/$user/nfsroot/$machine"
+else
+	nfsroot="/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttyFIXME,115200"
+
+nor_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
+rootfs_mtdblock_nor=3
+
+nand_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
+nand_device="FIXME"
+rootfs_mtdblock_nand=7
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
