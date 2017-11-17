Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1eFhMo-0003it-Vl
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 14:11:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C320FA002B6
 for <barebox@lists.infradead.org>; Fri, 17 Nov 2017 15:13:08 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 17 Nov 2017 15:11:07 +0100
Message-Id: <1510927867-46260-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH] ARM: boards: phytec-som-am335x: Fix SPI boot script
To: barebox@lists.infradead.org

Because our SPI NOR flashes are too small, we require a root filesystem
in a NAND media. The kernel bootargs has a wrong parameter and lead to:

    VFS: Cannot open root device "ubi0:root" or unknown-block(0,0):

Changed 'ubi.mtd=nand0.root' to 'ubi.mtd=root'.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
index a321aa9..611bc24 100644
--- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
@@ -4,4 +4,4 @@ global.bootm.image="/dev/m25p0.kernel"
 global.bootm.oftree="/dev/m25p0.oftree"
 
 # Use rootfs from NAND
-global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs"
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
