Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5Vex-0004AS-1I
 for barebox@lists.infradead.org; Fri, 29 Jan 2021 15:26:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 29 Jan 2021 16:25:53 +0100
Message-Id: <20210129152553.15792-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX8MM: fix sparse warnings in early clock code
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Some __iomem markers were being casted away. Fix that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index b9e01a1d1854..350d203539fc 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -35,14 +35,14 @@
 
 void imx8m_clock_set_target_val(int clock_id, u32 val)
 {
-	void *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
+	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
 
 	writel(val, ccm + IMX8M_CCM_TARGET_ROOTn(clock_id));
 }
 
 void imx8m_ccgr_clock_enable(int index)
 {
-	void *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
+	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
 
 	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
 	       ccm + IMX8M_CCM_CCGRn_SET(index));
@@ -50,7 +50,7 @@ void imx8m_ccgr_clock_enable(int index)
 
 void imx8m_ccgr_clock_disable(int index)
 {
-	void *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
+	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
 
 	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
 	       ccm + IMX8M_CCM_CCGRn_CLR(index));
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
