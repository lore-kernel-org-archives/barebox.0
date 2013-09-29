Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQN6x-0001zT-Hy
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 19:57:02 +0000
Received: from tellur.localdomain (p54831980.dip0.t-ipconnect.de
 [84.131.25.128]) by lynxeye.de (Postfix) with ESMTPA id 5E38E26C2004
 for <barebox@lists.infradead.org>; Sun, 29 Sep 2013 21:56:07 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 29 Sep 2013 21:59:31 +0200
Message-Id: <1380484776-32266-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
References: <1380484776-32266-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/8] tegra: start maincomplex execution at correct offset
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/tegra_avp_init.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 5099e91..ba275ad 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -19,6 +19,7 @@
 
 #include <common.h>
 #include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
 #include <mach/lowlevel.h>
 #include <mach/tegra20-car.h>
 #include <mach/tegra20-pmc.h>
@@ -194,13 +195,6 @@ void barebox_arm_reset_vector(void)
 	/* minimal initialization, OK for both ARMv4 and ARMv7 */
 	tegra_cpu_lowlevel_setup();
 
-	/*
-	 * If we are already running on the main CPU complex jump straight
-	 * to the maincomplex entry point.
-	 */
-	if (tegra_cpu_is_maincomplex())
-		tegra_maincomplex_entry();
-
 	/* get the number of cores in the main CPU complex of the current SoC */
 	num_cores = tegra_get_num_cores();
 	if (!num_cores)
@@ -212,7 +206,8 @@ void barebox_arm_reset_vector(void)
 	stop_maincomplex_clocks(num_cores);
 
 	/* set start address for the main CPU complex processors */
-	writel(barebox_arm_head, TEGRA_EXCEPTION_VECTORS_BASE + 0x100);
+	writel(tegra_maincomplex_entry - get_runtime_offset(),
+	       TEGRA_EXCEPTION_VECTORS_BASE + 0x100);
 
 	/* bring up main CPU complex */
 	start_cpu0_clocks();
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
