Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxBHE-0004Kz-4b
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:17:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 14:16:56 +0200
Message-Id: <20170927121657.16274-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX6ull: Add SoC specific lowlevel_init function
To: Barebox List <barebox@lists.infradead.org>

On i.MX6ull (Cortex A7) We have to set the SMP bit before enabling the
caches, otherwise they won't work. Add a SoC specific lowlevel_init
function to be called by the i.MX6ull boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/cpu_init.c             | 12 ++++++++++++
 arch/arm/mach-imx/include/mach/generic.h |  1 +
 2 files changed, 13 insertions(+)

diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index 2b388cad8c..8f6d4b7902 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -14,6 +14,7 @@
 
 #include <asm/barebox-arm-head.h>
 #include <asm/errata.h>
+#include <linux/types.h>
 
 void imx5_cpu_lowlevel_init(void)
 {
@@ -34,6 +35,17 @@ void imx6_cpu_lowlevel_init(void)
 	enable_arm_errata_845369_war();
 }
 
+void imx6ull_cpu_lowlevel_init(void)
+{
+	u32 val;
+
+	asm volatile ("mrc p15, 0, %0, c1, c0, 1\n" : "=r"(val));
+	val |= (1 << 6);
+	asm volatile("mcr p15, 0, %0, c1, c0, 1" : : "r" (val));
+
+	arm_cpu_lowlevel_init();
+}
+
 void imx7_cpu_lowlevel_init(void)
 {
 	arm_cpu_lowlevel_init();
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 73be9ceb55..eb8c7a5b7b 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -48,6 +48,7 @@ int imx6_devices_init(void);
 
 void imx5_cpu_lowlevel_init(void);
 void imx6_cpu_lowlevel_init(void);
+void imx6ull_cpu_lowlevel_init(void);
 void imx7_cpu_lowlevel_init(void);
 void vf610_cpu_lowlevel_init(void);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
