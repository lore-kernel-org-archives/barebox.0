Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkUZ4-0003j0-SK
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 11:10:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bkUYi-0003WU-7B
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 13:10:24 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 15 Sep 2016 13:10:23 +0200
Message-Id: <1473937823-30706-3-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: imx6qp: set NoC regulator to bypass
To: barebox@lists.infradead.org

The NoC regulator only passes the QoS signals through if it is
in bypass mode. This is a safe setting to give the IPU priority
over other requests. The kernel may change it to some other setting
once it knows the bandwidth requirements of the use-case.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c                   | 11 +++++++++++
 arch/arm/mach-imx/include/mach/imx6-regs.h |  3 +++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 567559033770..f90eec8bd2c8 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -97,6 +97,7 @@ void imx6_init_lowlevel(void)
 void imx6_setup_ipu_qos(void)
 {
 	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
+	void __iomem *fast2 = (void *)MX6_FAST2_BASE_ADDR;
 	uint32_t val;
 
 	if (!cpu_mx6_is_mx6q() && !cpu_mx6_is_mx6d() &&
@@ -119,6 +120,16 @@ void imx6_setup_ipu_qos(void)
 	val &= ~(IMX6Q_GPR7_IPU2_ID00_RD_QOS_MASK | IMX6Q_GPR7_IPU2_ID01_RD_QOS_MASK);
 	val |= (0xf << 16) | (0x7 << 20);
 	writel(val, iomux + IOMUXC_GPR7);
+
+	/*
+	 * On i.MX6 QP/DP the NoC regulator for the IPU ports needs to be in
+	 * bypass mode for the above settings to take effect.
+	 */
+	if ((cpu_mx6_is_mx6q() || cpu_mx6_is_mx6d()) &&
+	    imx_silicon_revision() >= IMX_CHIP_REV_2_0) {
+		writel(0x2, fast2 + 0xb048c);
+		writel(0x2, fast2 + 0xb050c);
+	}
 }
 
 int imx6_init(void)
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index 68be43c9ab5b..e661c4ed120b 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -3,6 +3,9 @@
 
 #define MX6_GPMI_BASE_ADDR		0x00112000
 
+#define MX6_FAST1_BASE_ADDR		0x00c00000
+#define MX6_FAST2_BASE_ADDR		0x00b00000
+
 #define MX6_AIPS1_ARB_BASE_ADDR		0x02000000
 #define MX6_AIPS2_ARB_BASE_ADDR		0x02100000
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
