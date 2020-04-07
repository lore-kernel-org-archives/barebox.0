Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLkun-0002Co-Cg
 for barebox@lists.infradead.org; Tue, 07 Apr 2020 09:53:07 +0000
From: Yunus Bas <y.bas@phytec.de>
Date: Tue, 7 Apr 2020 11:52:56 +0200
Message-Id: <1586253176-225056-1-git-send-email-y.bas@phytec.de>
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
Subject: [PATCH] ARM: i.MX: phytec-som-imx6: Fix paths to SPI-NOR partition
To: barebox@lists.infradead.org

Due to a previously change of the partition namings, the kernel- and
oftree-paths in the SPI-bootscript have to be adapted to the changes.

The previous change can be found here:
commit 72ba815bf6feaa0a98d2496f52784dd5b4258e73

Signed-off-by: Yunus Bas <y.bas@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi
index 2000a16..8fb71f5 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/spi
@@ -1,5 +1,5 @@
 #!/bin/sh
 
-global.bootm.image="/dev/m25p0.kernel"
-global.bootm.oftree="/dev/m25p0.oftree"
+global.bootm.image="/dev/m25p0.nor.kernel"
+global.bootm.oftree="/dev/m25p0.nor.oftree"
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs rw"
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
