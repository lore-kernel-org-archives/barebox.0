Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyQ4o-00086H-4y
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 19:04:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 20:03:25 +0100
Message-Id: <1418151816-24593-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
References: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/13] scripts: Add mxsboot tool
To: barebox@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>

Copied from U-Boot v2014.10 and changed to use getopt instead
of handcrafted parsing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx28/env/config | 41 ------------------------------------
 scripts/Makefile                     |  2 +-
 2 files changed, 1 insertion(+), 42 deletions(-)
 delete mode 100644 arch/arm/boards/karo-tx28/env/config

diff --git a/arch/arm/boards/karo-tx28/env/config b/arch/arm/boards/karo-tx28/env/config
deleted file mode 100644
index a6b1025..0000000
--- a/arch/arm/boards/karo-tx28/env/config
+++ /dev/null
@@ -1,41 +0,0 @@
-#
-#
-
-baseboard=tx28stk5
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.ethaddr=de:ad:be:ef:00:00
-#eth0.netmask=a.b.c.d
-#eth0.serverip=a.b.c.d
-#eth0.gateway=a.b.c.d
-
-# can be either 'nfs' or 'tftp'
-kernel_loc=tftp
-# can be either 'net' or 'initrd'
-rootfs_loc=net
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root-${global.hostname}.$rootfs_type
-
-kernelimage=zImage-${global.hostname}
-#kernelimage=uImage-${global.hostname}
-#kernelimage=Image-${global.hostname}
-#kernelimage=Image-${global.hostname}.lzo
-
-if [ -n $user ]; then
-	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
-	rootfsimage="$user"-"$rootfsimage"
-else
-	nfsroot="$eth0.serverip:/path/to/nfs/root"
-fi
-
-autoboot_timeout=3
-
-bootargs="console=ttyAM0,115200 tx28_base=$baseboard"
diff --git a/scripts/Makefile b/scripts/Makefile
index f97fd0c..442eba5 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -19,7 +19,7 @@ hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
 hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
 hostprogs-$(CONFIG_ARCH_ZYNQ)	 += zynq_mkimage
 hostprogs-$(CONFIG_ARCH_SOCFPGA) += socfpga_mkimage
-hostprogs-$(CONFIG_ARCH_MXS)     += mxsimage
+hostprogs-$(CONFIG_ARCH_MXS)     += mxsimage mxsboot
 HOSTLOADLIBES_mxsimage  = `pkg-config --libs openssl`
 
 subdir-y			+= mod
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
