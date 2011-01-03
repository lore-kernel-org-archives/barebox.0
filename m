Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PZlLZ-0003UI-Dj
	for barebox@lists.infradead.org; Mon, 03 Jan 2011 14:25:18 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id p03EPDcs030164
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Mon, 3 Jan 2011 08:25:16 -0600
From: Sanjeev Premi <premi@ti.com>
Date: Mon,  3 Jan 2011 19:54:54 +0530
Message-Id: <1294064695-10865-8-git-send-email-premi@ti.com>
In-Reply-To: <1294064695-10865-1-git-send-email-premi@ti.com>
References: <1294064695-10865-1-git-send-email-premi@ti.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 7/8] omap3: Avoid sudden change to SYS_CLK divider
To: barebox@lists.infradead.org

In function get_osc_clk_speed(), the SYS_CLK divider
was being changed 'suddenly'.

This change has cascading effect on the derived clocks,
leading to inconsistent behavior - often a crash.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/include/mach/omap3-clock.h |    6 ++++++
 arch/arm/mach-omap/omap3_clock.c              |   19 +++++++++++++++----
 2 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap3-clock.h b/arch/arm/mach-omap/include/mach/omap3-clock.h
index b9e2714..cccb0da 100644
--- a/arch/arm/mach-omap/include/mach/omap3-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap3-clock.h
@@ -92,6 +92,12 @@
 #define PLL_FAST_RELOCK_BYPASS	6	/* CORE */
 #define PLL_LOCK		7	/* MPU, IVA, CORE & PER */
 
+/*
+ * Bit positions indicating current SYSCLK divider
+ */
+#define SYSCLK_DIV_1		(1 << 6)
+#define SYSCLK_DIV_2		(1 << 7)
+
 /* The following configurations are OPP and SysClk value independant
  * and hence are defined here.
  */
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 1668369..16cbae9 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -65,12 +65,20 @@ static void per_clocks_enable(void);
  */
 static u32 get_osc_clk_speed(void)
 {
-	u32 start, cstart, cend, cdiff, val;
+	u32 start, cstart, cend, cdiff, cdiv, val;
 
 	val = readl(PRM_REG(CLKSRC_CTRL));
-	/* If SYS_CLK is being divided by 2, remove for now */
-	val = (val & (~(0x1 << 7))) | (0x1 << 6);
-	writel(val, PRM_REG(CLKSRC_CTRL));
+
+	if (val & SYSCLK_DIV_2)
+		cdiv = 2;
+	else if (val & SYSCLK_DIV_1)
+		cdiv = 1;
+	else
+		/*
+		 * Should never reach here!
+		 * To proceed, assume divider as 1.
+		 */
+		cdiv = 1;
 
 	/* enable timer2 */
 	val = readl(CM_REG(CLKSEL_WKUP)) | (0x1 << 0);
@@ -97,6 +105,9 @@ static u32 get_osc_clk_speed(void)
 	cend = readl(OMAP_GPTIMER1_BASE + TCRR);
 	cdiff = cend - cstart;	/* get elapsed ticks */
 
+	if (cdiv == 2)
+		cdiff *= 2;
+
 	/* based on number of ticks assign speed */
 	if (cdiff > 19000)
 		return S38_4M;
-- 
1.7.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
