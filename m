Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-f174.google.com ([209.85.192.174])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLBoA-000842-Qb
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 14:28:59 +0000
Received: by pdbfl12 with SMTP id fl12so14674478pdb.4
 for <barebox@lists.infradead.org>; Tue, 10 Feb 2015 06:28:37 -0800 (PST)
From: Doug Brainard <dbrainard@brainardinsight.com>
Date: Tue, 10 Feb 2015 07:28:00 -0700
Message-Id: <1423578481-25230-1-git-send-email-dbrainard@brainardinsight.com>
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
Subject: [PATCH 1/2] SAMA5D4EK - Now mostly supports booting Android from NAND.
To: barebox@lists.infradead.org

---
 arch/arm/boards/sama5d4ek/env/config | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/sama5d4ek/env/config b/arch/arm/boards/sama5d4ek/env/config
index 1007345..ee86c07 100644
--- a/arch/arm/boards/sama5d4ek/env/config
+++ b/arch/arm/boards/sama5d4ek/env/config
@@ -11,16 +11,16 @@ ip=dhcp
 #eth0.serverip=a.b.c.d
 
 # can be either 'nfs', 'tftp', 'nor' or 'nand'
-kernel_loc=nfs
+kernel_loc=nand
 # can be either 'net', 'nor', 'nand' or 'initrd'
-rootfs_loc=net
+rootfs_loc=nand
 # can be either 'nfs', 'tftp', 'nand' or empty
-oftree_loc=nfs
+oftree_loc=nand
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
-ubiroot=rootfs
+ubiroot=system
 
 # The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
 kernelimage=zImage
@@ -29,14 +29,14 @@ kernelimage=zImage
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),-(rootfs)"
-rootfs_mtdblock_nand=7
+nand_parts="256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),8M(recovery),176M(system),304M(userdata),-(cache)"
+rootfs_mtdblock_nand=10
 
 m25p80_parts="64k(bootstrap),384k(barebox),256k(bareboxenv),256k(bareboxenv2),128k(oftree),-(updater)"
 
 autoboot_timeout=3
 
-bootargs="console=ttyS0,115200"
+bootargs="console=ttyS0,115200 ubi.mtd=8 ubi.mtd=9 init=/init androidboot.hardware=sama5-pda androidboot.lcd=wvga"
 
 # set a fancy prompt (if support is compiled in)
 PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
-- 
2.3.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
