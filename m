Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQN6x-0001zU-H6
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 19:57:01 +0000
Received: from tellur.localdomain (p54831980.dip0.t-ipconnect.de
 [84.131.25.128]) by lynxeye.de (Postfix) with ESMTPA id 4570426C2002
 for <barebox@lists.infradead.org>; Sun, 29 Sep 2013 21:56:08 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 29 Sep 2013 21:59:32 +0200
Message-Id: <1380484776-32266-5-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 4/8] tegra: fix PBL build
To: barebox@lists.infradead.org

Drop useless BUG(), we are too early for them to be of any use.
Make sure we build the AVP code as ARMv4 even in PBL case.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/Makefile                 | 1 +
 arch/arm/mach-tegra/tegra_avp_init.c         | 4 ----
 arch/arm/mach-tegra/tegra_maincomplex_init.c | 2 +-
 3 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index fd6a870..0fa8430 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -1,4 +1,5 @@
 CFLAGS_tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t
+CFLAGS_pbl-tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t
 lwl-y += tegra_avp_init.o
 lwl-y += tegra_maincomplex_init.o
 obj-y += tegra20.o
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index ba275ad..557af66 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -109,8 +109,6 @@ static void init_pllx(void)
 		return;
 
 	chiptype = tegra_get_chiptype();
-	if (chiptype < 0)
-		BUG();
 
 	osc_freq = (readl(TEGRA_CLK_RESET_BASE + CRC_OSC_CTRL) &
 		    CRC_OSC_CTRL_OSC_FREQ_MASK) >> CRC_OSC_CTRL_OSC_FREQ_SHIFT;
@@ -197,8 +195,6 @@ void barebox_arm_reset_vector(void)
 
 	/* get the number of cores in the main CPU complex of the current SoC */
 	num_cores = tegra_get_num_cores();
-	if (!num_cores)
-		BUG();
 
 	/* bring down main CPU complex (this may be a warm boot) */
 	enable_maincomplex_powerrail();
diff --git a/arch/arm/mach-tegra/tegra_maincomplex_init.c b/arch/arm/mach-tegra/tegra_maincomplex_init.c
index dea9c91..343edd6 100644
--- a/arch/arm/mach-tegra/tegra_maincomplex_init.c
+++ b/arch/arm/mach-tegra/tegra_maincomplex_init.c
@@ -33,7 +33,7 @@ void tegra_maincomplex_entry(void)
 		break;
 	default:
 		/* If we don't know the chiptype, better bail out */
-		BUG();
+		unreachable();
 	}
 
 	/*
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
