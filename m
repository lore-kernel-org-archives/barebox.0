Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpdyF-00045w-K2
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 10:51:24 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 24 Jan 2012 11:51:05 +0100
Message-Id: <1327402267-22385-5-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 4/6] ARM: mx3/mx35_3ds: add missing nand device
To: barebox@lists.infradead.org

Otherwise the kernel would not register the nand partitions.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/boards/freescale-mx35-3-stack/env/config |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/freescale-mx35-3-stack/env/config b/arch/arm/boards/freescale-mx35-3-stack/env/config
index 17b1e31..fa45812 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/env/config
+++ b/arch/arm/boards/freescale-mx35-3-stack/env/config
@@ -45,6 +45,7 @@ rootfs_mtdblock_nor=3
 
 nand_parts="256k(barebox)ro,512k(bareboxenv),2M(kernel),-(root)"
 rootfs_mtdblock_nand=7
+nand_device=mxc_nand
 
 # set a fancy prompt (if support is compiled in)
 PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
