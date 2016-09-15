Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkUZ4-0003iy-SR
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 11:10:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bkUYi-0003WU-53
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 13:10:24 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 15 Sep 2016 13:10:21 +0200
Message-Id: <1473937823-30706-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: imx6: split out IPU QoS setup
To: barebox@lists.infradead.org

Split into separate function and only call it after the chip type
and revision is known.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index ba8fb8964ac8..07d3f57d8dcc 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -31,10 +31,8 @@ void imx6_init_lowlevel(void)
 {
 	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
 	void __iomem *aips2 = (void *)MX6_AIPS2_ON_BASE_ADDR;
-	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
 	bool is_imx6q = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
 	bool is_imx6d = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6D;
-	uint32_t val;
 
 	/*
 	 * Set all MPROTx to be non-bufferable, trusted for R/W,
@@ -94,6 +92,13 @@ void imx6_init_lowlevel(void)
 		       MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_528_CLR);
 	}
 
+}
+
+void imx6_setup_ipu_qos(void)
+{
+	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
+	uint32_t val;
+
 	val = readl(iomux + IOMUXC_GPR4);
 	val |= IMX6Q_GPR4_VPU_WR_CACHE_SEL | IMX6Q_GPR4_VPU_RD_CACHE_SEL |
 		IMX6Q_GPR4_VPU_P_WR_CACHE_VAL | IMX6Q_GPR4_VPU_P_RD_CACHE_VAL_MASK |
@@ -186,6 +191,8 @@ int imx6_init(void)
 
 	imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
 
+	imx6_setup_ipu_qos();
+
 	return 0;
 }
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
