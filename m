Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aq4jX-0003DX-25
 for barebox@lists.infradead.org; Tue, 12 Apr 2016 20:16:23 +0000
Received: from tellur.intern.lynxeye.de (p57B5ED0C.dip0.t-ipconnect.de
 [87.181.237.12]) by lynxeye.de (Postfix) with ESMTPA id 02C6226C2001
 for <barebox@lists.infradead.org>; Tue, 12 Apr 2016 22:15:23 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 12 Apr 2016 22:15:20 +0200
Message-Id: <1460492120-28861-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] ARM: tegra: set up stack before calling maincluster entry
To: barebox@lists.infradead.org

Allows this code to work correct regardless of the used compiler
optimizations.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index f70688e..e9ba5ee 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -255,9 +255,6 @@ void tegra_cpu_lowlevel_setup(char *fdt)
 {
 	uint32_t r;
 
-	if (tegra_cpu_is_maincomplex())
-		tegra_maincomplex_entry(fdt - get_runtime_offset());
-
 	/* set the cpu to SVC32 mode */
 	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
 	r &= ~0x1f;
@@ -265,6 +262,10 @@ void tegra_cpu_lowlevel_setup(char *fdt)
 	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
 
 	arm_setup_stack(TEGRA_IRAM_BASE + SZ_256K - 8);
+
+	if (tegra_cpu_is_maincomplex())
+		tegra_maincomplex_entry(fdt - get_runtime_offset());
+
 	tegra_ll_delay_setup();
 }
 
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
