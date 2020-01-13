Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir5WS-0007fl-KJ
 for barebox@lists.infradead.org; Mon, 13 Jan 2020 19:37:13 +0000
Received: from astat.fritz.box (a89-183-121-189.net-htp.de [89.183.121.189])
 by lynxeye.de (Postfix) with ESMTPA id 144D3E741C4
 for <barebox@lists.infradead.org>; Mon, 13 Jan 2020 20:36:41 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 13 Jan 2020 20:36:37 +0100
Message-Id: <20200113193637.133182-1-dev@lynxeye.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: zynq: zed: partially revert zynq_cpu_lowlevel_init()
 chnages
To: barebox@lists.infradead.org

Calling arm_cpu_lowlevel_init() from zynq_cpu_lowlevel_init() adds a stack
push/pop to the latter function which doesn't work this early in the boot.

As the BootROM apparently hands proccessor control to us in abort(!?!)
mode, setting up a stack requires duplicating most of arm_cpu_lowlevel_init().
To get around this catch-22 move the call to arm_cpu_lowlevel_init back into
the board lowlevel start function, so we don't need a stack at all.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 1 +
 arch/arm/mach-zynq/cpu_init.c             | 2 --
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index c987db75b068..8edc6293f210 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -284,6 +284,7 @@ ENTRY_FUNCTION(start_avnet_zedboard, r0, r1, r2)
 
 	void *fdt = __dtb_zynq_zed_start + get_runtime_offset();
 
+	arm_cpu_lowlevel_init();
 	zynq_cpu_lowlevel_init();
 
 	avnet_zedboard_ps7_init();
diff --git a/arch/arm/mach-zynq/cpu_init.c b/arch/arm/mach-zynq/cpu_init.c
index ec5ee59e169d..ca7c4b297988 100644
--- a/arch/arm/mach-zynq/cpu_init.c
+++ b/arch/arm/mach-zynq/cpu_init.c
@@ -7,8 +7,6 @@
 
 void zynq_cpu_lowlevel_init(void)
 {
-	arm_cpu_lowlevel_init();
-
 	enable_arm_errata_761320_war();
 	enable_arm_errata_794072_war();
 	enable_arm_errata_845369_war();
-- 
2.24.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
