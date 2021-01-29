Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5Vh4-0004Wz-Jk
 for barebox@lists.infradead.org; Fri, 29 Jan 2021 15:28:19 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 29 Jan 2021 16:25:54 +0100
Message-Id: <20210129152553.15792-2-a.fatoum@pengutronix.de>
In-Reply-To: <20210129152553.15792-1-a.fatoum@pengutronix.de>
References: <20210129152553.15792-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX8MM: move system counter enabling into
 imx8mm_cpu_lowlevel_init
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <ahmad@a3f.at>

Other i.MX8MM boards will likely need this as well, so just move it
into the helper and while at it, rewrite it using
imx8m_ccgr_clock_enable, which is defined as:

  void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);

  writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
    ccm + IMX8M_CCM_CCGRn_SET(index));

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c | 5 -----
 arch/arm/mach-imx/cpu_init.c              | 4 ++++
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index 2297dc01e77f..4bd29c226912 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -172,11 +172,6 @@ static __noreturn noinline void nxp_imx8mm_evk_start(void)
 
 ENTRY_FUNCTION(start_nxp_imx8mm_evk, r0, r1, r2)
 {
-	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
-
-	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX8M_CCM_CCGRn_SET(IMX8M_CCM_CCGR_SCTR));
-
 	imx8mm_cpu_lowlevel_init();
 
 	relocate_to_current_adr();
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index cc7a409e373a..9d86353e2255 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -20,6 +20,7 @@
 #include <mach/generic.h>
 #include <mach/imx7-regs.h>
 #include <mach/imx8mq-regs.h>
+#include <mach/imx8m-ccm-regs.h>
 #include <common.h>
 #include <io.h>
 #include <asm/syscounter.h>
@@ -79,6 +80,9 @@ static void imx8m_cpu_lowlevel_init(void)
 
 void imx8mm_cpu_lowlevel_init(void)
 {
+	/* ungate system counter */
+	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_SCTR);
+
 	imx8m_cpu_lowlevel_init();
 }
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
