Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplt4-0001nb-71
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:14:09 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:44 +0100
Message-Id: <1297880025-7184-20-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
References: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 19/20] mini2440: Remove some A9M2440 platform leftovers
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

Also adapt the config file to the default environment.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/boards/mini2440/env/config |   71 +++++++++++++++++++++++++---------
 1 files changed, 52 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/mini2440/env/config b/arch/arm/boards/mini2440/env/config
index 05a2d01..b24877e 100644
--- a/arch/arm/boards/mini2440/env/config
+++ b/arch/arm/boards/mini2440/env/config
@@ -1,27 +1,60 @@
 #!/bin/sh
 
-# can be either 'net' or 'nand''
-kernel=net
-root=net
+machine=mini2440
+eth0.serverip=
+user=
 
-#uimage=uImage-a9m2440
-uimage=uImage
-jffs2=root-a9m2440.jffs2
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
 
-autoboot_timeout=3
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
 
-nfsroot="/home/open-nandra/rootfs"
-bootargs="console=ttySAC0,115200"
+# can be either 'net', or 'nand'
+kernel_loc=net
+# can be either 'net', 'nand' or 'initrd'
+rootfs_loc=net
 
-nand_parts="256k(barebox),128k(bareboxenv),1536k(kernel),-(root)"
-rootpart_nand="/dev/mtdblock3"
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-${machine}.${rootfs_type}
 
-# use 'dhcp' to do dhcp in barebox and in kernel
-#ip=dhcp
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage_type=zimage
+kernelimage=zImage-${machine}
+#kernelimage_type=uimage
+#kernelimage=uImage-$machine
+#kernelimage_type=raw
+#kernelimage=Image-$machine
+#kernelimage_type=raw_lzo
+#kernelimage=Image-$machine.lzo
 
-# or set your networking parameters here
-eth0.ipaddr=192.168.42.32
-eth0.netmask=255.255.0.0
-eth0.gateway=192.168.23.1
-eth0.serverip=192.168.23.2
-eth0.ethaddr=00:04:f3:00:06:35
+if [ -n $user ]; then
+	kernelimage="${user}"-"${kernelimage}"
+	nfsroot="${eth0.serverip}:/home/${user}/nfsroot/${machine}"
+	rootfsimage="${user}"-"${rootfsimage}"
+else
+	nfsroot="${eth0.serverip}:/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+#
+# "mini2440" kernel parameter
+# 0 .. 9 = screen type
+# b = backlight enabled
+# t = touch enabled
+# c = camera enabled
+# Note: can be "minit2440= " if nothing of these components are connected
+#
+bootargs="console=ttySAC0,115200 mini2440=0tbc"
+
+# TODO NOR support
+
+nand_device="nand"
+nand_parts="256k(barebox),128k(bareboxenv),1536k(kernel),-(root)"
+rootfs_mtdblock_nand=3
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
