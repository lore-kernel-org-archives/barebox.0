Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTaXk-0008Ln-P3
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 15:49:26 +0000
Received: from mail615.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 3260FFF9DFB
 for <barebox@lists.infradead.org>; Wed, 31 Oct 2012 16:59:46 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 31 Oct 2012 16:47:11 +0100
Message-Id: <1351698431-15255-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] at91sam9xek: fix mtd partition
To: barebox@lists.infradead.org

barebox size is 384KiB
and for the official atmel release we need to rootfs at 8M

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9x5ek/env/config |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9x5ek/env/config b/arch/arm/boards/at91sam9x5ek/env/config
index 19457be..b8cf4e3 100644
--- a/arch/arm/boards/at91sam9x5ek/env/config
+++ b/arch/arm/boards/at91sam9x5ek/env/config
@@ -22,6 +22,7 @@ oftree_loc=nfs
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
+ubiroot=rootfs
 
 # The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
 kernelimage=zImage
@@ -30,7 +31,7 @@ kernelimage=zImage
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="256k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),1M(free),4M(kernel),120M(rootfs),-(data)"
+nand_parts="256k(at91bootstrap),384k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),1M(free),6M(kernel),120M(rootfs),-(data)"
 rootfs_mtdblock_nand=7
 
 autoboot_timeout=3
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
