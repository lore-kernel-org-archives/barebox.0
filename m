Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUaln-0002Mj-VE
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 15:38:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dUalS-0007oD-9d
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 17:38:22 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 10 Jul 2017 17:38:22 +0200
Message-Id: <20170710153822.15379-2-l.stach@pengutronix.de>
In-Reply-To: <20170710153822.15379-1-l.stach@pengutronix.de>
References: <20170710153822.15379-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: imx6: add static annotation locally used functions
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c              | 6 +++---
 arch/arm/mach-imx/include/mach/imx6.h | 2 --
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 7df61b94ec85..d511a152e108 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -25,7 +25,7 @@
 #include <asm/mmu.h>
 #include <asm/cache-l2x0.h>
 
-void imx6_init_lowlevel(void)
+static void imx6_init_lowlevel(void)
 {
 	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
 	void __iomem *aips2 = (void *)MX6_AIPS2_ON_BASE_ADDR;
@@ -83,7 +83,7 @@ void imx6_init_lowlevel(void)
 
 }
 
-void imx6_setup_ipu_qos(void)
+static void imx6_setup_ipu_qos(void)
 {
 	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
 	void __iomem *fast2 = (void *)MX6_FAST2_BASE_ADDR;
@@ -121,7 +121,7 @@ void imx6_setup_ipu_qos(void)
 	}
 }
 
-void imx6ul_enet_clk_init(void)
+static void imx6ul_enet_clk_init(void)
 {
 	void __iomem *gprbase = IOMEM(MX6_IOMUXC_BASE_ADDR) + 0x4000;
 	uint32_t val;
diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index 6ad53433cb77..0dc66c8e0623 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -6,8 +6,6 @@
 #include <mach/imx6-regs.h>
 #include <mach/revision.h>
 
-void imx6_init_lowlevel(void);
-
 #define IMX6_ANATOP_SI_REV 0x260
 #define IMX6SL_ANATOP_SI_REV 0x280
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
