Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpdyA-0001QW-NQ
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 10:51:19 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 24 Jan 2012 11:51:06 +0100
Message-Id: <1327402267-22385-6-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1327402267-22385-1-git-send-email-mkl@pengutronix.de>
References: <1327402267-22385-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 5/6] ARM: mx3/mx35_3ds: increase kernel partition size to 4 MiB
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/boards/freescale-mx35-3-stack/env/config |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx35-3-stack/env/config b/arch/arm/boards/freescale-mx35-3-stack/env/config
index fa45812..9f37348 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/env/config
+++ b/arch/arm/boards/freescale-mx35-3-stack/env/config
@@ -40,10 +40,10 @@ autoboot_timeout=3
 
 bootargs="console=ttymxc0,115200"
 
-nor_parts="256k(barebox)ro,512k(bareboxenv),2M(kernel),-(root)"
+nor_parts="256k(barebox)ro,512k(bareboxenv),4M(kernel),-(root)"
 rootfs_mtdblock_nor=3
 
-nand_parts="256k(barebox)ro,512k(bareboxenv),2M(kernel),-(root)"
+nand_parts="256k(barebox)ro,512k(bareboxenv),4M(kernel),-(root)"
 rootfs_mtdblock_nand=7
 nand_device=mxc_nand
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
