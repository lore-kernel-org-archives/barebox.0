Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIDxX-0006Ah-0l
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 06:56:48 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 133C3FF8F7C
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2012 08:57:49 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 12 Apr 2012 08:39:15 +0200
Message-Id: <1334212755-11526-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] Atmel reference board: add oftree boot support
To: barebox@lists.infradead.org

add oftree partition to store the dtb
set the oftree location
use a zImage by default now

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/env/config    |   10 ++++++----
 arch/arm/boards/at91sam9261ek/env/config    |   12 +++++++-----
 arch/arm/boards/at91sam9263ek/env/config    |   14 ++++++++------
 arch/arm/boards/at91sam9m10g45ek/env/config |   12 +++++++-----
 arch/arm/boards/at91sam9x5ek/env/config     |    6 ++++--
 5 files changed, 32 insertions(+), 22 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/env/config b/arch/arm/boards/at91sam9260ek/env/config
index 2c0f075..06b9faf 100644
--- a/arch/arm/boards/at91sam9260ek/env/config
+++ b/arch/arm/boards/at91sam9260ek/env/config
@@ -21,19 +21,21 @@ fi
 kernel_loc=nfs
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
+# can be either 'nfs', 'tftp', 'nor', 'nand' or empty
+oftree_loc=nfs
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-#kernelimage=zImage
-kernelimage=uImage
+kernelimage=zImage
+#kernelimage=uImage
 #kernelimage=Image
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),4M(kernel),120M(rootfs),-(data)"
-rootfs_mtdblock_nand=5
+nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
+rootfs_mtdblock_nand=6
 
 autoboot_timeout=3
 
diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/env/config
index be4d37c..820485d 100644
--- a/arch/arm/boards/at91sam9261ek/env/config
+++ b/arch/arm/boards/at91sam9261ek/env/config
@@ -18,22 +18,24 @@ fi
 #eth0.serverip=a.b.c.d
 
 # can be either 'nfs', 'tftp' or 'nand'
-kernel_loc=tftp
+kernel_loc=nfs
 # can be either 'net', 'nand' or 'initrd'
 rootfs_loc=net
+# can be either 'nfs', 'tftp', 'nand' or empty
+oftree_loc=nfs
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-#kernelimage=zImage
-kernelimage=uImage
+kernelimage=zImage
+#kernelimage=uImage
 #kernelimage=Image
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),4M(kernel),120M(rootfs),-(data)"
-rootfs_mtdblock_nand=5
+nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
+rootfs_mtdblock_nand=6
 
 autoboot_timeout=3
 
diff --git a/arch/arm/boards/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
index 93eeb1e..a09bc26 100644
--- a/arch/arm/boards/at91sam9263ek/env/config
+++ b/arch/arm/boards/at91sam9263ek/env/config
@@ -12,24 +12,26 @@ dhcp_vendor_id=barebox-at91sam9263ek
 #eth0.serverip=a.b.c.d
 
 # can be either 'nfs', 'tftp', 'nor' or 'nand'
-kernel_loc=tftp
+kernel_loc=nfs
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
+# can be either 'nfs', 'tftp', 'nor', 'nand' or empty
+oftree_loc=nfs
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-#kernelimage=zImage
-kernelimage=uImage
+kernelimage=zImage
+#kernelimage=uImage
 #kernelimage=Image
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),4M(kernel),120M(rootfs),-(data)"
-rootfs_mtdblock_nand=5
+nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
+rootfs_mtdblock_nand=6
 
-nor_parts="256k(barebox),64k(bareboxenv),4M(kernel),-(root)"
+nor_parts="256k(barebox),64k(bareboxenv),64k(oftree)4M(kernel),-(root)"
 
 autoboot_timeout=3
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/config b/arch/arm/boards/at91sam9m10g45ek/env/config
index f31fdd5..37a20e9 100644
--- a/arch/arm/boards/at91sam9m10g45ek/env/config
+++ b/arch/arm/boards/at91sam9m10g45ek/env/config
@@ -12,22 +12,24 @@ dhcp_vendor_id=barebox-at91sam9m10g45ek
 #eth0.serverip=a.b.c.d
 
 # can be either 'nfs', 'tftp' or 'nand'
-kernel_loc=tftp
+kernel_loc=nfs
 # can be either 'net', 'nand' or 'initrd'
 rootfs_loc=net
+# can be either 'nfs', 'tftp', 'nand' or empty
+oftree_loc=nfs
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-#kernelimage=zImage
-kernelimage=uImage
+kernelimage=zImage
+#kernelimage=uImage
 #kernelimage=Image
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),4M(kernel),120M(rootfs),-(data)"
-rootfs_mtdblock_nand=5
+nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
+rootfs_mtdblock_nand=6
 
 autoboot_timeout=3
 
diff --git a/arch/arm/boards/at91sam9x5ek/env/config b/arch/arm/boards/at91sam9x5ek/env/config
index cc72867..dafe875 100644
--- a/arch/arm/boards/at91sam9x5ek/env/config
+++ b/arch/arm/boards/at91sam9x5ek/env/config
@@ -15,6 +15,8 @@ dhcp_vendor_id=barebox-at91sam9x5ek
 kernel_loc=nfs
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
+# can be either 'nfs', 'tftp', 'nand' or empty
+oftree_loc=nfs
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
@@ -27,8 +29,8 @@ kernelimage=zImage
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="256k(at91bootstrap),384k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),1152k(free),6M(kernel),120M(rootfs),-(data)"
-rootfs_mtdblock_nand=5
+nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),1M(free),4M(kernel),120M(rootfs),-(data)"
+rootfs_mtdblock_nand=7
 
 autoboot_timeout=3
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
