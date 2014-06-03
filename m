Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvOS-0004Wa-9B
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:33:13 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 2C91918B425C
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:30 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:35:05 +0200
Message-Id: <1401827717-6420-19-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 18/30] tegra: setup L2 cache on Tegra124
To: barebox@lists.infradead.org

Set SRAM latency to 3 clock cycles.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/tegra_maincomplex_init.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-tegra/tegra_maincomplex_init.c b/arch/arm/mach-tegra/tegra_maincomplex_init.c
index 83ad33d..17490a4 100644
--- a/arch/arm/mach-tegra/tegra_maincomplex_init.c
+++ b/arch/arm/mach-tegra/tegra_maincomplex_init.c
@@ -25,6 +25,8 @@
 void tegra_maincomplex_entry(void)
 {
 	uint32_t rambase, ramsize;
+	enum tegra_chiptype chiptype;
+	u32 reg = 0;
 
 	arm_cpu_lowlevel_init();
 
@@ -36,7 +38,16 @@ void tegra_maincomplex_entry(void)
 	       TEGRA_CLK_RESET_BASE + CRC_CCLK_BURST_POLICY);
 	writel(CRC_SUPER_CDIV_ENB, TEGRA_CLK_RESET_BASE + CRC_SUPER_CCLK_DIV);
 
-	switch (tegra_get_chiptype()) {
+	chiptype = tegra_get_chiptype();
+
+	if (chiptype >= TEGRA114) {
+		asm("mrc p15, 1, %0, c9, c0, 2" : : "r" (reg));
+		reg &= ~7;
+		reg |= 2;
+		asm("mcr p15, 1, %0, c9, c0, 2" : : "r" (reg));
+	}
+
+	switch (chiptype) {
 	case TEGRA20:
 		rambase = 0x0;
 		ramsize = tegra20_get_ramsize();
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
