Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cPRQU-0002Xo-Rg
 for barebox@lists.infradead.org; Fri, 06 Jan 2017 10:07:12 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  6 Jan 2017 11:06:42 +0100
Message-Id: <20170106100642.31002-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] ARM: socfpga: remove unused entry from Makefile
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

There is no fpga.c file.
Remove the entry.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-socfpga/Makefile b/arch/arm/mach-socfpga/Makefile
index b81d57da26fd..dea0e075d145 100644
--- a/arch/arm/mach-socfpga/Makefile
+++ b/arch/arm/mach-socfpga/Makefile
@@ -2,4 +2,3 @@ obj-y += generic.o nic301.o bootsource.o reset-manager.o
 pbl-y += init.o freeze-controller.o scan-manager.o system-manager.o
 pbl-y += clock-manager.o
 obj-$(CONFIG_ARCH_SOCFPGA_XLOAD) += xload.o
-obj-$(CONFIG_ARCH_SOCFPGA_FPGA) += fpga.o
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
