Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SHWvJ-0001t8-PY
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 08:59:41 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B3CA8FF9069
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2012 11:00:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 10 Apr 2012 10:42:23 +0200
Message-Id: <1334047344-8533-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120410082259.GH29577@game.jcrosoft.org>
References: <20120410082259.GH29577@game.jcrosoft.org>
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
Subject: [PATCH 6/7] tny-a926x: add oftree config support
To: barebox@lists.infradead.org

Boot zImage and update nand partition layout to store the oftree.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/tny-a926x/env/config |    8 +++++---
 1 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/tny-a926x/env/config b/arch/arm/boards/tny-a926x/env/config
index fa1f626..110354b 100644
--- a/arch/arm/boards/tny-a926x/env/config
+++ b/arch/arm/boards/tny-a926x/env/config
@@ -17,18 +17,20 @@ ip=dhcp-barebox
 kernel_loc=nand
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=nand
+# can be either 'nfs', 'tftp', 'nor', 'nand' or empty
+oftree_loc=nand
 
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
+nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),128k(oftree),4M(kernel),120M(rootfs),-(data)"
 rootfs_mtdblock_nand=5
 
 autoboot_timeout=3
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
