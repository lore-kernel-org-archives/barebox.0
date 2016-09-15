Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkUZ4-0003iz-Sa
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 11:10:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bkUYi-0003WU-5Y
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 13:10:24 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 15 Sep 2016 13:10:22 +0200
Message-Id: <1473937823-30706-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1473937823-30706-1-git-send-email-l.stach@pengutronix.de>
References: <1473937823-30706-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: imx6: don't execute IPU QoS setup on MX6 SX/SL
To: barebox@lists.infradead.org

SX and SL variants only include the PXP and have no IPU, so
skip any IPU related QoS setup.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 07d3f57d8dcc..567559033770 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -99,6 +99,10 @@ void imx6_setup_ipu_qos(void)
 	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
 	uint32_t val;
 
+	if (!cpu_mx6_is_mx6q() && !cpu_mx6_is_mx6d() &&
+	    !cpu_mx6_is_mx6dl() && cpu_mx6_is_mx6s())
+		return;
+
 	val = readl(iomux + IOMUXC_GPR4);
 	val |= IMX6Q_GPR4_VPU_WR_CACHE_SEL | IMX6Q_GPR4_VPU_RD_CACHE_SEL |
 		IMX6Q_GPR4_VPU_P_WR_CACHE_VAL | IMX6Q_GPR4_VPU_P_RD_CACHE_VAL_MASK |
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
