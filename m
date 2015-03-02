Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSYCI-0000Fr-TL
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 21:48:20 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id AB94726C2001
 for <barebox@lists.infradead.org>; Mon,  2 Mar 2015 22:47:23 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon,  2 Mar 2015 22:47:20 +0100
Message-Id: <1425332840-13427-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] tegra: avp_init: write DT address register earlier
To: barebox@lists.infradead.org

Otherwise the write would be skipped if we are already running on the main CPU
cluster. In practice this means that a second stage barebox will reuse the DT
of the first stage, instead of using it's own.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
Sascha, it would be nice if you could squeeze into master as this is
clearly a simple bugfix.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/tegra_avp_init.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 619fecf..91fd894 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -262,6 +262,9 @@ void tegra_avp_reset_vector(uint32_t boarddata)
 	int num_cores;
 	unsigned int entry_address = 0;
 
+	/* put boarddata in scratch reg, for main CPU to fetch after startup */
+	writel(boarddata, TEGRA_PMC_BASE + PMC_SCRATCH(10));
+
 	if (tegra_cpu_is_maincomplex())
 		tegra_maincomplex_entry();
 
@@ -291,9 +294,6 @@ void tegra_avp_reset_vector(uint32_t boarddata)
 	}
 	writel(entry_address, TEGRA_EXCEPTION_VECTORS_BASE + 0x100);
 
-	/* put boarddata in scratch reg, for main CPU to fetch after startup */
-	writel(boarddata, TEGRA_PMC_BASE + PMC_SCRATCH(10));
-
 	/* bring up main CPU complex */
 	start_cpu0_clocks();
 	maincomplex_powerup();
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
