Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvNb-0004IA-Qh
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:32:20 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 5D67218B425C
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:24 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:34:49 +0200
Message-Id: <1401827717-6420-3-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 02/30] tegra: lowlevel-dvc: use __always_inline macro
To: barebox@lists.infradead.org

Cleaner code.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel-dvc.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h b/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
index 32f10d7..9ae8784 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel-dvc.h
@@ -59,7 +59,7 @@ void tegra_dvc_write_data(u32 data, u32 config)
 	writel(config, TEGRA_DVC_BASE + TEGRA_I2C_CNFG);
 }
 
-static inline __attribute__((always_inline))
+static __always_inline
 void tegra30_tps65911_cpu_rail_enable(void)
 {
 	tegra_dvc_write_addr(0x5a, 2);
@@ -71,7 +71,7 @@ void tegra30_tps65911_cpu_rail_enable(void)
 	tegra_ll_delay_usec(10 * 1000);
 }
 
-static inline __attribute__((always_inline))
+static __always_inline
 void tegra30_tps62366a_ramp_vddcore(void)
 {
 	tegra_dvc_write_addr(0xc0, 2);
@@ -80,7 +80,7 @@ void tegra30_tps62366a_ramp_vddcore(void)
 	tegra_ll_delay_usec(1000);
 }
 
-static inline __attribute__((always_inline))
+static __always_inline
 void tegra30_tps62361b_ramp_vddcore(void)
 {
 	tegra_dvc_write_addr(0xc0, 2);
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
