Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUXRR-0001Rh-N0
 for barebox@lists.infradead.org; Mon, 31 Mar 2014 08:19:38 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 31 Mar 2014 10:18:50 +0200
Message-Id: <1396253931-3669-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: socfpga: move iocsr from mach to sockit board folder
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The current iocsr-config-cyclone5.c is actually board specific, although the
file name suggests otherwise.
As the file was generated for the SoCkit, move it there.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/terasic-sockit/Makefile                                 | 1 +
 .../arm/{mach-socfpga => boards/terasic-sockit}/iocsr-config-cyclone5.c | 0
 arch/arm/mach-socfpga/Makefile                                          | 2 +-
 3 files changed, 2 insertions(+), 1 deletion(-)
 rename arch/arm/{mach-socfpga => boards/terasic-sockit}/iocsr-config-cyclone5.c (100%)

diff --git a/arch/arm/boards/terasic-sockit/Makefile b/arch/arm/boards/terasic-sockit/Makefile
index 8c927fe..b94f918 100644
--- a/arch/arm/boards/terasic-sockit/Makefile
+++ b/arch/arm/boards/terasic-sockit/Makefile
@@ -1,2 +1,3 @@
 obj-y += lowlevel.o board.o
+pbl-y += iocsr-config-cyclone5.o
 pbl-y += lowlevel.o
diff --git a/arch/arm/mach-socfpga/iocsr-config-cyclone5.c b/arch/arm/boards/terasic-sockit/iocsr-config-cyclone5.c
similarity index 100%
rename from arch/arm/mach-socfpga/iocsr-config-cyclone5.c
rename to arch/arm/boards/terasic-sockit/iocsr-config-cyclone5.c
diff --git a/arch/arm/mach-socfpga/Makefile b/arch/arm/mach-socfpga/Makefile
index d8bf067..dea0e07 100644
--- a/arch/arm/mach-socfpga/Makefile
+++ b/arch/arm/mach-socfpga/Makefile
@@ -1,4 +1,4 @@
 obj-y += generic.o nic301.o bootsource.o reset-manager.o
 pbl-y += init.o freeze-controller.o scan-manager.o system-manager.o
-pbl-y += clock-manager.o iocsr-config-cyclone5.o
+pbl-y += clock-manager.o
 obj-$(CONFIG_ARCH_SOCFPGA_XLOAD) += xload.o
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
