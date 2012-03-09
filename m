Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S5wA7-000199-Vo
 for barebox@lists.infradead.org; Fri, 09 Mar 2012 09:31:00 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id AD020A30A1
 for <barebox@lists.infradead.org>; Thu,  8 Mar 2012 10:25:44 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Fri, 9 Mar 2012 10:30:56 +0100
Message-Id: <1331285456-12277-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] ENV: remove kernelimage_type from env/config
To: barebox@lists.infradead.org

drop kernelimage_type bootm now boots all of them.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/at91sam9260ek/env/config |    5 -----
 arch/openrisc/boards/generic/env/config  |    1 -
 2 files changed, 0 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/env/config b/arch/arm/boards/at91sam9260ek/env/config
index ba14c2b..8db18ef 100644
--- a/arch/arm/boards/at91sam9260ek/env/config
+++ b/arch/arm/boards/at91sam9260ek/env/config
@@ -19,14 +19,9 @@ rootfs_loc=net
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-#kernelimage_type=zimage
 #kernelimage=zImage
-kernelimage_type=uimage
 kernelimage=uImage
-#kernelimage_type=raw
 #kernelimage=Image
-#kernelimage_type=raw_lzo
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
diff --git a/arch/openrisc/boards/generic/env/config b/arch/openrisc/boards/generic/env/config
index 9dee8d9..4027f27 100644
--- a/arch/openrisc/boards/generic/env/config
+++ b/arch/openrisc/boards/generic/env/config
@@ -5,7 +5,6 @@ kernel=flash
 root=flash
 
 kernel_loc=nor
-kernelimage_type=uimage
 
 # use 'dhcp' todo dhcp in barebox and in kernel
 ip=none
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
